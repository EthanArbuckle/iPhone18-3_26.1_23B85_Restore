@interface BiometricKitCoreAnalyticsLockState
- (BiometricKitCoreAnalyticsLockState)initWithName:(id)a3;
- (void)reset;
- (void)serviceMatchWithServer:(id)a3;
@end

@implementation BiometricKitCoreAnalyticsLockState

- (BiometricKitCoreAnalyticsLockState)initWithName:(id)a3
{
  v15[8] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = BiometricKitCoreAnalyticsLockState;
  v3 = [(BiometricKitCoreAnalyticsEvent *)&v14 initWithName:a3];
  if (v3)
  {
    v15[0] = @"eventCanceled";
    v15[1] = @"displayOn";
    v15[2] = @"deviceEnclosureColor";
    v15[3] = @"timeSinceLastEnrollment";
    v15[4] = @"timeSinceLastEnrollmentBinned";
    v15[5] = @"timeSinceLastEvent";
    v15[6] = @"previousEventDate";
    v15[7] = @"passcodeSet";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:8];
    privateProperties = v3->super._privateProperties;
    v3->super._privateProperties = v4;

    v6 = [MEMORY[0x277CBEB38] dictionary];
    v7 = _currentLockStateForUser;
    _currentLockStateForUser = v6;

    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = _previousLockStateForUser;
    _previousLockStateForUser = v8;

    v10 = [MEMORY[0x277CBEB38] dictionary];
    v11 = _unlockTokenForUser;
    _unlockTokenForUser = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)reset
{
  v19.receiver = self;
  v19.super_class = BiometricKitCoreAnalyticsLockState;
  [(BiometricKitCoreAnalyticsEvent *)&v19 reset];
  unlockTotal = self->_unlockTotal;
  self->_unlockTotal = &unk_28374C4B0;

  biometryUnlockTotal = self->_biometryUnlockTotal;
  self->_biometryUnlockTotal = &unk_28374C4B0;

  remoteUnlockTotal = self->_remoteUnlockTotal;
  self->_remoteUnlockTotal = &unk_28374C4B0;

  remoteUnlockBiometryAvailable = self->_remoteUnlockBiometryAvailable;
  self->_remoteUnlockBiometryAvailable = &unk_28374C4B0;

  remoteUnlockBiometryUnavailable = self->_remoteUnlockBiometryUnavailable;
  self->_remoteUnlockBiometryUnavailable = &unk_28374C4B0;

  remoteUnlockBiometryDisabled = self->_remoteUnlockBiometryDisabled;
  self->_remoteUnlockBiometryDisabled = &unk_28374C4B0;

  passcodeUnlockTotal = self->_passcodeUnlockTotal;
  self->_passcodeUnlockTotal = &unk_28374C4B0;

  passcodeUnlockBiometryAvailable = self->_passcodeUnlockBiometryAvailable;
  self->_passcodeUnlockBiometryAvailable = &unk_28374C4B0;

  passcodeUnlockBiometryUnavailable = self->_passcodeUnlockBiometryUnavailable;
  self->_passcodeUnlockBiometryUnavailable = &unk_28374C4B0;

  passcodeUnlockBiometryDisabled = self->_passcodeUnlockBiometryDisabled;
  self->_passcodeUnlockBiometryDisabled = &unk_28374C4B0;

  passcodeValidatedTotal = self->_passcodeValidatedTotal;
  self->_passcodeValidatedTotal = &unk_28374C4B0;

  passcodeValidatedBiometryAvailable = self->_passcodeValidatedBiometryAvailable;
  self->_passcodeValidatedBiometryAvailable = &unk_28374C4B0;

  passcodeValidatedBiometryUnavailable = self->_passcodeValidatedBiometryUnavailable;
  self->_passcodeValidatedBiometryUnavailable = &unk_28374C4B0;

  passcodeAuthenticatedTotal = self->_passcodeAuthenticatedTotal;
  self->_passcodeAuthenticatedTotal = &unk_28374C4B0;

  passcodeAuthenticatedBiometryAvailable = self->_passcodeAuthenticatedBiometryAvailable;
  self->_passcodeAuthenticatedBiometryAvailable = &unk_28374C4B0;

  passcodeAuthenticatedBiometryUnavailable = self->_passcodeAuthenticatedBiometryUnavailable;
  self->_passcodeAuthenticatedBiometryUnavailable = &unk_28374C4B0;
}

- (void)serviceMatchWithServer:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_storeStrong(&_server, a3);
    v6 = dispatch_get_global_queue(21, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__BiometricKitCoreAnalyticsLockState_serviceMatchWithServer___block_invoke;
    v7[3] = &unk_2784FA3F0;
    v7[4] = self;
    v8 = v5;
    dispatch_async(v6, v7);
  }

  else
  {
    [BiometricKitCoreAnalyticsLockState serviceMatchWithServer:];
  }
}

void __61__BiometricKitCoreAnalyticsLockState_serviceMatchWithServer___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v2 = [*(a1 + 40) identities];
  v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = *v20;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v19 + 1) + 8 * i);
        v7 = _currentLockStateForUser;
        v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "userID", obj)}];
        v9 = [v7 objectForKey:v8];
        LODWORD(v7) = v9 == 0;

        if (v7)
        {
          v18 = 0;
          if ([_server performGetSKSLockStateCommand:objc_msgSend(v6 outState:{"userID"), &v18}])
          {
            __61__BiometricKitCoreAnalyticsLockState_serviceMatchWithServer___block_invoke_cold_1();
            goto LABEL_11;
          }

          v10 = _currentLockStateForUser;
          v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
          v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "userID")}];
          [v10 setObject:v11 forKey:v12];

          v13 = _previousLockStateForUser;
          v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v18];
          v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v6, "userID")}];
          [v13 setObject:v14 forKey:v15];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(obj);
  v16 = *MEMORY[0x277D85DE8];
}

- (void)serviceMatchWithServer:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __61__BiometricKitCoreAnalyticsLockState_serviceMatchWithServer___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  if (OUTLINED_FUNCTION_8_0(__osLog))
  {
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_7_1(&dword_223E00000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5, 2u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)isBiometryUnlockEnabledForUser:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8[0] = 136316162;
    OUTLINED_FUNCTION_6_0();
    v9 = a1;
    OUTLINED_FUNCTION_26();
    v10 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    v11 = 281;
    _os_log_impl(&dword_223E00000, v6, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, 0x30u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)isBiometryUnlockEnabledForUser:(_BYTE *)a1 .cold.2(_BYTE *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (__osLog)
  {
    v2 = __osLog;
  }

  else
  {
    v2 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4[0] = 136316162;
    OUTLINED_FUNCTION_6_0();
    v5 = 0;
    OUTLINED_FUNCTION_26();
    v6 = &unk_223E5FC53;
    OUTLINED_FUNCTION_1();
    v7 = 279;
    _os_log_impl(&dword_223E00000, v2, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, 0x30u);
  }

  *a1 = 0;
  v3 = *MEMORY[0x277D85DE8];
}

@end