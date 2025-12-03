@interface BBBiometricResource
- (BBBiometricResource)initWithQueue:(id)queue;
- (void)_registerForBKEnrollmentChange;
- (void)_registerForBiometricUnlockAllowedChange;
- (void)_registerForPasscodeChange;
- (void)_unregisterForBKEnrollmentChange;
- (void)_unregisterForBiometricUnlockAllowedChange;
- (void)_updateHasEnrolledPearlIdentities;
- (void)_updateIsBiometricUnlockAllowed;
- (void)_updateIsPasscodeSet;
- (void)dealloc;
@end

@implementation BBBiometricResource

- (BBBiometricResource)initWithQueue:(id)queue
{
  v31 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  v29.receiver = self;
  v29.super_class = BBBiometricResource;
  v6 = [(BBBiometricResource *)&v29 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v7->_isBiometricUnlockAllowed = 0;
    [(BBBiometricResource *)v7 _updateIsPasscodeSet];
    [(BBBiometricResource *)v7 _updateIsBiometricUnlockAllowed];
    pearlDevice = v7->_pearlDevice;
    v7->_pearlDevice = 0;

    if (__loadBiometricKitIfNecessary_onceToken != -1)
    {
      [BBBiometricResource initWithQueue:];
    }

    if (__loadBiometricKitIfNecessary_biometricKit)
    {
      v23 = queueCopy;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      availableDevices = [NSClassFromString(&cfstr_Bkdevicemanage.isa) availableDevices];
      v10 = [availableDevices countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = v10;
      v12 = *v26;
      while (1)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(availableDevices);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          v15 = NSClassFromString(&cfstr_Bkdevice.isa);
          v24 = 0;
          v16 = [(objc_class *)v15 deviceWithDescriptor:v14 error:&v24];
          v17 = v24;
          descriptor = [v16 descriptor];
          if ([descriptor type] == 2)
          {
            NSClassFromString(&cfstr_Bkdevicepearl.isa);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) == 0)
            {
              goto LABEL_14;
            }

            v20 = v16;
            descriptor = v7->_pearlDevice;
            v7->_pearlDevice = v20;
          }

LABEL_14:
        }

        v11 = [availableDevices countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (!v11)
        {
LABEL_16:

          queueCopy = v23;
          break;
        }
      }
    }

    [(BBBiometricResource *)v7 _updateHasEnrolledPearlIdentities];
    if (v7->_pearlDevice)
    {
      [(BBBiometricResource *)v7 _registerForBKEnrollmentChange];
    }

    [(BBBiometricResource *)v7 _registerForBiometricUnlockAllowedChange];
    [(BBBiometricResource *)v7 _registerForPasscodeChange];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  [(BBBiometricResource *)self _unregisterForBKEnrollmentChange];
  [(BBBiometricResource *)self _unregisterForBiometricUnlockAllowedChange];
  v3.receiver = self;
  v3.super_class = BBBiometricResource;
  [(BBBiometricResource *)&v3 dealloc];
}

- (void)_registerForBKEnrollmentChange
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _handleBKEnrollmentChange, @"com.apple.BiometricKit.enrollmentChanged", 0, 0);
}

- (void)_unregisterForBKEnrollmentChange
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.BiometricKit.enrollmentChanged", 0);
}

- (void)_registerForBiometricUnlockAllowedChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__updateIsBiometricUnlockAllowed name:*MEMORY[0x277D25CA0] object:0];
}

- (void)_unregisterForBiometricUnlockAllowedChange
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D25CA0] object:0];
}

- (void)_registerForPasscodeChange
{
  out_token = 0;
  v3 = [*MEMORY[0x277D26138] cStringUsingEncoding:4];
  queue = self->_queue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__BBBiometricResource__registerForPasscodeChange__block_invoke;
  v5[3] = &unk_278D2B138;
  v5[4] = self;
  notify_register_dispatch(v3, &out_token, queue, v5);
}

- (void)_updateIsPasscodeSet
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  self->_isPasscodeSet = [mEMORY[0x277D262A0] isPasscodeSet];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"BBBiometricResourceStateChanged" object:self userInfo:0];
}

- (void)_updateIsBiometricUnlockAllowed
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__BBBiometricResource__updateIsBiometricUnlockAllowed__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

void __54__BBBiometricResource__updateIsBiometricUnlockAllowed__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [MEMORY[0x277D262A0] sharedConnection];
  if ([v3 isFingerprintUnlockAllowed])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  *(*(a1 + 32) + 16) = v4;
  if (v4 != v2)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 postNotificationName:@"BBBiometricResourceStateChanged" object:*(a1 + 32) userInfo:0];
  }
}

- (void)_updateHasEnrolledPearlIdentities
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__BBBiometricResource__updateHasEnrolledPearlIdentities__block_invoke;
  block[3] = &unk_278D2A600;
  block[4] = self;
  dispatch_async(queue, block);
}

void __56__BBBiometricResource__updateHasEnrolledPearlIdentities__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = 0;
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v6 = 0;
    v3 = [v2 identitiesWithError:&v6];
    v4 = v6;
    if ([v3 count])
    {
      *(*(a1 + 32) + 24) = 1;
    }
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"BBBiometricResourceStateChanged" object:*(a1 + 32) userInfo:0];
}

@end