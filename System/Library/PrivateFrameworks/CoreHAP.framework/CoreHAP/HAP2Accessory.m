@interface HAP2Accessory
+ (BOOL)validateAccessoryInformationService:(id)a3;
+ (BOOL)validateDiscoveredServices:(id)a3 isPrimary:(BOOL)a4;
+ (BOOL)validateProtocolInformationService:(id)a3;
+ (HAP2Accessory)accessoryWithAccessoryServer:(id)a3 instanceID:(unint64_t)a4 discoveredServices:(id)a5;
- (BOOL)updateDiscoveredServices:(id)a3;
- (HAP2Accessory)initWithAccessoryServer:(id)a3 instanceID:(unint64_t)a4 discoveredServices:(id)a5;
- (HAP2AccessoryDelegate)delegate;
- (HAP2PairedAccessoryServerPrivate)accessoryServerPrivate;
- (NSArray)services;
- (NSString)firmwareVersion;
- (NSString)manufacturer;
- (NSString)model;
- (NSString)name;
- (NSString)productData;
- (NSString)serialNumber;
- (double)sleepInterval;
- (id)disableNotificationsForCharacteristics:(id)a3 completion:(id)a4;
- (id)enableNotificationsForCharacteristics:(id)a3 completion:(id)a4;
- (id)identifyWithCompletion:(id)a3;
- (id)internalSleepInterval;
- (id)readValuesForCharacteristics:(id)a3 timeout:(double)a4 completion:(id)a5;
- (id)writeValuesForCharacteristics:(id)a3 timeout:(double)a4 completion:(id)a5;
- (unint64_t)category;
- (unint64_t)connectionState;
- (void)_handleUpdatedAccessoryInformationService:(id)a3;
- (void)_handleUpdatedAccessoryRuntimeInformationService:(id)a3;
- (void)_updateDiscoveredServices:(id)a3;
- (void)characteristicValueChanged:(id)a3;
- (void)setFirmwareVersion:(id)a3;
- (void)setInternalSleepInterval:(id)a3;
- (void)setManufacturer:(id)a3;
- (void)setModel:(id)a3;
- (void)setName:(id)a3;
- (void)setProductData:(id)a3;
- (void)setSerialNumber:(id)a3;
- (void)setServices:(id)a3;
- (void)updateConnectionState:(unint64_t)a3;
@end

@implementation HAP2Accessory

- (HAP2PairedAccessoryServerPrivate)accessoryServerPrivate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessoryServerPrivate);

  return WeakRetained;
}

- (HAP2AccessoryDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_updateDiscoveredServices:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17482;
  v19 = __Block_byref_object_dispose__17483;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__17482;
  v13 = __Block_byref_object_dispose__17483;
  v14 = 0;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v6 = [(HAP2Accessory *)self services];
  [HAPService hap2_mergeServices:v6 discoveredServices:v4 mergedServices:v5];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HAP2Accessory__updateDiscoveredServices___block_invoke;
  v8[3] = &unk_2786D61D8;
  v8[4] = &v15;
  v8[5] = &v9;
  [v5 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];
  [(HAP2Accessory *)self _handleUpdatedAccessoryInformationService:v16[5]];
  if (v10[5])
  {
    [(HAP2Accessory *)self _handleUpdatedAccessoryRuntimeInformationService:?];
  }

  v7 = [v5 copy];
  [(HAP2Accessory *)self setServices:v7];

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v15, 8);
}

void __43__HAP2Accessory__updateDiscoveredServices___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v4 = [v9 type];
  v5 = [v4 isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

  if (v5)
  {
    v6 = 32;
  }

  else
  {
    v7 = [v9 type];
    v8 = [v7 isEqualToString:@"00000239-0000-1000-8000-0026BB765291"];

    if (!v8)
    {
      goto LABEL_6;
    }

    v6 = 40;
  }

  objc_storeStrong((*(*(a1 + v6) + 8) + 40), a2);
LABEL_6:
}

- (void)_handleUpdatedAccessoryRuntimeInformationService:(id)a3
{
  v4 = [a3 characteristics];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __66__HAP2Accessory__handleUpdatedAccessoryRuntimeInformationService___block_invoke;
  v5[3] = &unk_2786D60B0;
  v5[4] = self;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v5];
}

void __66__HAP2Accessory__handleUpdatedAccessoryRuntimeInformationService___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 type];
  v4 = [v3 isEqualToString:@"0000023A-0000-1000-8000-0026BB765291"];

  if (v4)
  {
    v5 = [v8 value];

    if (v5)
    {
      v6 = [v8 value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [v8 value];
      }

      else
      {
        v7 = 0;
      }

      [*(a1 + 32) setInternalSleepIntervalMs:v7];
    }
  }
}

- (void)_handleUpdatedAccessoryInformationService:(id)a3
{
  v4 = [a3 characteristics];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HAP2Accessory__handleUpdatedAccessoryInformationService___block_invoke;
  v8[3] = &unk_2786D60B0;
  v8[4] = self;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v8];

  if ([(HAP2Accessory *)self isPrimary])
  {
    v5 = [(HAP2Accessory *)self name];

    if (!v5)
    {
      v6 = [(HAP2Accessory *)self accessoryServer];
      v7 = [v6 name];
      [(HAP2Accessory *)self setName:v7];
    }
  }
}

void __59__HAP2Accessory__handleUpdatedAccessoryInformationService___block_invoke(uint64_t a1, void *a2)
{
  v28 = a2;
  v3 = [v28 value];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [MEMORY[0x277D0F888] hmf_cachedInstanceForString:v5];

  v7 = [v28 type];
  v8 = [v7 isEqualToString:@"00000023-0000-1000-8000-0026BB765291"];

  if (v8)
  {
    v9 = [v28 value];

    if (v9)
    {
      [*(a1 + 32) setName:v6];
    }
  }

  else
  {
    v10 = [v28 type];
    v11 = [v10 isEqualToString:@"00000020-0000-1000-8000-0026BB765291"];

    if (v11)
    {
      v12 = [v28 value];

      if (v12)
      {
        [*(a1 + 32) setManufacturer:v6];
      }
    }

    else
    {
      v13 = [v28 type];
      v14 = [v13 isEqualToString:@"00000021-0000-1000-8000-0026BB765291"];

      if (v14)
      {
        v15 = [v28 value];

        if (v15)
        {
          [*(a1 + 32) setModel:v6];
        }
      }

      else
      {
        v16 = [v28 type];
        v17 = [v16 isEqualToString:@"00000052-0000-1000-8000-0026BB765291"];

        if (v17)
        {
          v18 = [v28 value];

          if (v18)
          {
            [*(a1 + 32) setFirmwareVersion:v6];
          }
        }

        else
        {
          v19 = [v28 type];
          v20 = [v19 isEqualToString:@"00000030-0000-1000-8000-0026BB765291"];

          if (v20)
          {
            v21 = [v28 value];

            if (v21)
            {
              [*(a1 + 32) setSerialNumber:v6];
            }
          }

          else
          {
            v22 = [v28 type];
            v23 = [v22 isEqualToString:@"00000220-0000-1000-8000-0026BB765291"];

            if (v23)
            {
              v24 = [v28 value];

              if (v24)
              {
                v25 = [v28 value];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = [v28 value];
                }

                else
                {
                  v26 = 0;
                }

                v27 = [HAPAccessory productDataStringFromData:v26];
                [*(a1 + 32) setProductData:v27];
              }
            }
          }
        }
      }
    }
  }
}

- (void)characteristicValueChanged:(id)a3
{
  v5 = a3;
  v4 = [(HAP2Accessory *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 accessory:self didNotifyForUpdatedValuesOnCharacteristic:v5];
  }
}

- (BOOL)updateDiscoveredServices:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() validateDiscoveredServices:v4 isPrimary:{-[HAP2Accessory isPrimary](self, "isPrimary")}];
  if (v5)
  {
    [(HAP2Accessory *)self _updateDiscoveredServices:v4];
    v6 = [(HAP2Accessory *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v6 accessoryDidUpdateServices:self];
    }
  }

  return v5;
}

- (void)updateConnectionState:(unint64_t)a3
{
  v4 = [(HAP2Accessory *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 accessoryDidUpdateConnectionState:self];
  }
}

- (id)disableNotificationsForCharacteristics:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAP2Accessory *)self accessoryServerPrivate];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 disableNotificationsForCharacteristics:v6 completion:v7];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __67__HAP2Accessory_disableNotificationsForCharacteristics_completion___block_invoke;
    block[3] = &unk_2786D6490;
    v14 = v7;
    dispatch_async(v11, block);

    v10 = +[HAP2Cancelable ignore];
  }

  return v10;
}

void __67__HAP2Accessory_disableNotificationsForCharacteristics_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)enableNotificationsForCharacteristics:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HAP2Accessory *)self accessoryServerPrivate];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 enableNotificationsForCharacteristics:v6 completion:v7];
  }

  else
  {
    v11 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__HAP2Accessory_enableNotificationsForCharacteristics_completion___block_invoke;
    block[3] = &unk_2786D6490;
    v14 = v7;
    dispatch_async(v11, block);

    v10 = +[HAP2Cancelable ignore];
  }

  return v10;
}

void __66__HAP2Accessory_enableNotificationsForCharacteristics_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)writeValuesForCharacteristics:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HAP2Accessory *)self accessoryServerPrivate];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 writeValuesForCharacteristics:v8 timeout:v9 completion:a4];
  }

  else
  {
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__HAP2Accessory_writeValuesForCharacteristics_timeout_completion___block_invoke;
    block[3] = &unk_2786D6490;
    v16 = v9;
    dispatch_async(v13, block);

    v12 = +[HAP2Cancelable ignore];
  }

  return v12;
}

void __66__HAP2Accessory_writeValuesForCharacteristics_timeout_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)readValuesForCharacteristics:(id)a3 timeout:(double)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(HAP2Accessory *)self accessoryServerPrivate];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 readValuesForCharacteristics:v8 timeout:v9 completion:a4];
  }

  else
  {
    v13 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HAP2Accessory_readValuesForCharacteristics_timeout_completion___block_invoke;
    block[3] = &unk_2786D6490;
    v16 = v9;
    dispatch_async(v13, block);

    v12 = +[HAP2Cancelable ignore];
  }

  return v12;
}

void __65__HAP2Accessory_readValuesForCharacteristics_timeout_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] hapErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)identifyWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = MEMORY[0x277CCACA8];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (void)setServices:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Accessory *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__HAP2Accessory_setServices___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

uint64_t __29__HAP2Accessory_setServices___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 88);
  *(v3 + 88) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSArray)services
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17482;
  v11 = __Block_byref_object_dispose__17483;
  v12 = 0;
  v3 = [(HAP2Accessory *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __25__HAP2Accessory_services__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setProductData:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Accessory *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__HAP2Accessory_setProductData___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

uint64_t __32__HAP2Accessory_setProductData___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 72);
  *(v3 + 72) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)productData
{
  if ([(HAP2Accessory *)self isPrimary])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__17482;
    v11 = __Block_byref_object_dispose__17483;
    v12 = 0;
    v3 = [(HAP2Accessory *)self propertyLock];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __28__HAP2Accessory_productData__block_invoke;
    v6[3] = &unk_2786D6E60;
    v6[4] = self;
    v6[5] = &v7;
    [v3 performReadingBlock:v6];

    v4 = v8[5];
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __28__HAP2Accessory_productData__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 72) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setInternalSleepInterval:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Accessory *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HAP2Accessory_setInternalSleepInterval___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

uint64_t __42__HAP2Accessory_setInternalSleepInterval___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 80);
  *(v3 + 80) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)internalSleepInterval
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17482;
  v11 = __Block_byref_object_dispose__17483;
  v12 = 0;
  v3 = [(HAP2Accessory *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__HAP2Accessory_internalSleepInterval__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (double)sleepInterval
{
  v2 = [(HAP2Accessory *)self internalSleepIntervalMs];
  [HAPAccessoryReachabilityProfile timeIntervalFromMillisecondNumberValue:v2];
  v4 = v3;

  return v4;
}

- (void)setFirmwareVersion:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Accessory *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__HAP2Accessory_setFirmwareVersion___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

uint64_t __36__HAP2Accessory_setFirmwareVersion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)firmwareVersion
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17482;
  v11 = __Block_byref_object_dispose__17483;
  v12 = 0;
  v3 = [(HAP2Accessory *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__HAP2Accessory_firmwareVersion__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __32__HAP2Accessory_firmwareVersion__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setSerialNumber:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Accessory *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__HAP2Accessory_setSerialNumber___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

uint64_t __33__HAP2Accessory_setSerialNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)serialNumber
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17482;
  v11 = __Block_byref_object_dispose__17483;
  v12 = 0;
  v3 = [(HAP2Accessory *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__HAP2Accessory_serialNumber__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __29__HAP2Accessory_serialNumber__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setManufacturer:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Accessory *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__HAP2Accessory_setManufacturer___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

uint64_t __33__HAP2Accessory_setManufacturer___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)manufacturer
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17482;
  v11 = __Block_byref_object_dispose__17483;
  v12 = 0;
  v3 = [(HAP2Accessory *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __29__HAP2Accessory_manufacturer__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __29__HAP2Accessory_manufacturer__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setModel:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Accessory *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__HAP2Accessory_setModel___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

uint64_t __26__HAP2Accessory_setModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)model
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17482;
  v11 = __Block_byref_object_dispose__17483;
  v12 = 0;
  v3 = [(HAP2Accessory *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __22__HAP2Accessory_model__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __22__HAP2Accessory_model__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(HAP2Accessory *)self propertyLock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __25__HAP2Accessory_setName___block_invoke;
  v7[3] = &unk_2786D7050;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performWritingBlock:v7];
}

uint64_t __25__HAP2Accessory_setName___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return MEMORY[0x2821F96F8]();
}

- (NSString)name
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__17482;
  v11 = __Block_byref_object_dispose__17483;
  v12 = 0;
  v3 = [(HAP2Accessory *)self propertyLock];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __21__HAP2Accessory_name__block_invoke;
  v6[3] = &unk_2786D6E60;
  v6[4] = self;
  v6[5] = &v7;
  [v3 performReadingBlock:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __21__HAP2Accessory_name__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (unint64_t)category
{
  v2 = [(HAP2Accessory *)self accessoryServer];
  v3 = [v2 category];

  return v3;
}

- (unint64_t)connectionState
{
  v2 = [(HAP2Accessory *)self accessoryServer];
  v3 = [v2 connectionState];

  return v3;
}

- (HAP2Accessory)initWithAccessoryServer:(id)a3 instanceID:(unint64_t)a4 discoveredServices:(id)a5
{
  v8 = a3;
  v9 = a5;
  v21.receiver = self;
  v21.super_class = HAP2Accessory;
  v10 = [(HAP2Accessory *)&v21 init];
  if (v10)
  {
    v11 = [HAP2PropertyLock lockWithName:@"HAP2Accessory.propertyLock"];
    propertyLock = v10->_propertyLock;
    v10->_propertyLock = v11;

    objc_storeWeak(&v10->_accessoryServerPrivate, v8);
    v10->_instanceID = a4;
    v13 = MEMORY[0x277CCACA8];
    v14 = [v8 deviceID];
    v15 = [v14 deviceIDString];
    v16 = [v13 stringWithFormat:@"%@+%lu", v15, a4];
    identifier = v10->_identifier;
    v10->_identifier = v16;

    if ([v9 count])
    {
      [(HAP2Accessory *)v10 _updateDiscoveredServices:v9];
    }

    else
    {
      v18 = [MEMORY[0x277CBEA60] array];
      services = v10->_services;
      v10->_services = v18;
    }
  }

  return v10;
}

+ (HAP2Accessory)accessoryWithAccessoryServer:(id)a3 instanceID:(unint64_t)a4 discoveredServices:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 conformsToProtocol:&unk_283EB63D0])
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  if (v11 && [a1 validateDiscoveredServices:v9 isPrimary:a4 == 1])
  {
    v12 = [[HAP2Accessory alloc] initWithAccessoryServer:v11 instanceID:a4 discoveredServices:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)validateProtocolInformationService:(id)a3
{
  v3 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [v3 characteristics];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HAP2Accessory_validateProtocolInformationService___block_invoke;
  v9[3] = &unk_2786D5800;
  v9[4] = &v14;
  v9[5] = &v10;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v9];

  if (v11[3])
  {
LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if ((v15[3] & 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, "Protocol Information service does not contain a Version characteristic", v8, 2u);
    }

    goto LABEL_8;
  }

  v5 = 1;
LABEL_9:
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);

  return v5;
}

void __52__HAP2Accessory_validateProtocolInformationService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  v5 = [v4 isEqualToString:@"00000037-0000-1000-8000-0026BB765291"];

  if (v5)
  {
    v6 = a1 + 32;
    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v7 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_11;
      }

      v14 = 0;
      v8 = "Protocol Information service contains more than one Version characteristic";
      v9 = &v14;
    }

    else
    {
      v10 = [v3 metadata];
      v11 = [v10 format];
      v12 = HAPCharacteristicFormatFromString(v11);

      if (v12 == 11)
      {
LABEL_12:
        *(*(*v6 + 8) + 24) = 1;
        goto LABEL_13;
      }

      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v7 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
LABEL_11:
        v6 = a1 + 40;
        goto LABEL_12;
      }

      v13 = 0;
      v8 = "Protocol Information service contains an invalid Version characteristic";
      v9 = &v13;
    }

    _os_log_error_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, v8, v9, 2u);
    goto LABEL_11;
  }

LABEL_13:
}

+ (BOOL)validateAccessoryInformationService:(id)a3
{
  v3 = a3;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = [v3 characteristics];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__HAP2Accessory_validateAccessoryInformationService___block_invoke;
  v10[3] = &unk_2786D57D8;
  v10[4] = &v37;
  v10[5] = &v11;
  v10[6] = &v33;
  v10[7] = &v29;
  v10[8] = &v25;
  v10[9] = &v21;
  v10[10] = &v17;
  v10[11] = v15;
  [v4 hmf_enumerateWithAutoreleasePoolUsingBlock:v10];

  if (v12[3])
  {
    goto LABEL_34;
  }

  if ((v38[3] & 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *v9 = 0;
    v7 = "Accessory Information service does not contain an Identify characteristic";
LABEL_33:
    _os_log_error_impl(&dword_22AADC000, v6, OS_LOG_TYPE_ERROR, v7, v9, 2u);
LABEL_34:
    v5 = 0;
    goto LABEL_35;
  }

  if ((v34[3] & 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *v9 = 0;
    v7 = "Accessory Information service does not contain a Name characteristic";
    goto LABEL_33;
  }

  if ((v30[3] & 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *v9 = 0;
    v7 = "Accessory Information service does not contain a Manufacturer characteristic";
    goto LABEL_33;
  }

  if ((v26[3] & 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *v9 = 0;
    v7 = "Accessory Information service does not contain a Model characteristic";
    goto LABEL_33;
  }

  if ((v22[3] & 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *v9 = 0;
    v7 = "Accessory Information service does not contain a Firmware Revision characteristic";
    goto LABEL_33;
  }

  if ((v18[3] & 1) == 0)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v6 = hap2Log_accessory;
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_34;
    }

    *v9 = 0;
    v7 = "Accessory Information service does not contain a Serial Number characteristic";
    goto LABEL_33;
  }

  v5 = 1;
LABEL_35:
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v15, 8);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v5;
}

void __53__HAP2Accessory_validateAccessoryInformationService___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = [v6 type];
  v8 = [v7 isEqualToString:@"00000014-0000-1000-8000-0026BB765291"];

  if (v8)
  {
    if (*(*(a1[4] + 8) + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains more than one Identify characteristic";
LABEL_78:
      _os_log_error_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, v10, v47, 2u);
LABEL_79:
      v16 = a1[5];
      goto LABEL_80;
    }

    v13 = [v6 metadata];
    v14 = [v13 format];
    v15 = HAPCharacteristicFormatFromString(v14);

    if (v15 != 9)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains an invalid Identify characteristic";
      goto LABEL_78;
    }

    v16 = a1[4];
LABEL_80:
    *(*(v16 + 8) + 24) = 1;
    goto LABEL_81;
  }

  v11 = [v6 type];
  v12 = [v11 isEqualToString:@"00000023-0000-1000-8000-0026BB765291"];

  if (v12)
  {
    if (*(*(a1[6] + 8) + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains more than one Name characteristic";
      goto LABEL_78;
    }

    v19 = [v6 metadata];
    v20 = [v19 format];
    v21 = HAPCharacteristicFormatFromString(v20);

    if (v21 != 11)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains an invalid Name characteristic";
      goto LABEL_78;
    }

    v16 = a1[6];
    goto LABEL_80;
  }

  v17 = [v6 type];
  v18 = [v17 isEqualToString:@"00000020-0000-1000-8000-0026BB765291"];

  if (v18)
  {
    if (*(*(a1[7] + 8) + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains more than one Manufacturer characteristic";
      goto LABEL_78;
    }

    v24 = [v6 metadata];
    v25 = [v24 format];
    v26 = HAPCharacteristicFormatFromString(v25);

    if (v26 != 11)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains an invalid Manufacturer characteristic";
      goto LABEL_78;
    }

    v16 = a1[7];
    goto LABEL_80;
  }

  v22 = [v6 type];
  v23 = [v22 isEqualToString:@"00000021-0000-1000-8000-0026BB765291"];

  if (v23)
  {
    if (*(*(a1[8] + 8) + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains more than one Model characteristic";
      goto LABEL_78;
    }

    v29 = [v6 metadata];
    v30 = [v29 format];
    v31 = HAPCharacteristicFormatFromString(v30);

    if (v31 != 11)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains an invalid Model characteristic";
      goto LABEL_78;
    }

    v16 = a1[8];
    goto LABEL_80;
  }

  v27 = [v6 type];
  v28 = [v27 isEqualToString:@"00000052-0000-1000-8000-0026BB765291"];

  if (v28)
  {
    if (*(*(a1[9] + 8) + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains more than one Firmware Revision characteristic";
      goto LABEL_78;
    }

    v36 = [v6 metadata];
    v37 = [v36 format];
    v38 = HAPCharacteristicFormatFromString(v37);

    if (v38 != 11)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains an invalid Firmware Revision characteristic";
      goto LABEL_78;
    }

    v16 = a1[9];
    goto LABEL_80;
  }

  v32 = [v6 type];
  v33 = [v32 isEqualToString:@"00000030-0000-1000-8000-0026BB765291"];

  if (v33)
  {
    if (*(*(a1[10] + 8) + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v34 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      *v47 = 0;
      v35 = "Accessory Information service contains more than one Serial Number characteristic";
LABEL_89:
      _os_log_error_impl(&dword_22AADC000, v34, OS_LOG_TYPE_ERROR, v35, v47, 2u);
LABEL_68:
      *(*(a1[5] + 8) + 24) = 1;
      *a4 = 1;
      goto LABEL_81;
    }

    v41 = [v6 metadata];
    v42 = [v41 format];
    v43 = HAPCharacteristicFormatFromString(v42);

    if (v43 != 11)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains an invalid Serial Number characteristic";
      goto LABEL_78;
    }

    goto LABEL_83;
  }

  v39 = [v6 type];
  v40 = [v39 isEqualToString:@"00000220-0000-1000-8000-0026BB765291"];

  if (v40)
  {
    if (*(*(a1[11] + 8) + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v34 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_68;
      }

      *v47 = 0;
      v35 = "Accessory Information service contains more than one Product Data characteristic";
      goto LABEL_89;
    }

    v44 = [v6 metadata];
    v45 = [v44 format];
    v46 = HAPCharacteristicFormatFromString(v45);

    if (v46 != 12)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v9 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_79;
      }

      *v47 = 0;
      v10 = "Accessory Information service contains an invalid Product Data characteristic";
      goto LABEL_78;
    }

LABEL_83:
    v16 = a1[10];
    goto LABEL_80;
  }

LABEL_81:
}

+ (BOOL)validateDiscoveredServices:(id)a3 isPrimary:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy__17482;
  v39 = __Block_byref_object_dispose__17483;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__17482;
  v33 = __Block_byref_object_dispose__17483;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__17482;
  v27 = __Block_byref_object_dispose__17483;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __54__HAP2Accessory_validateDiscoveredServices_isPrimary___block_invoke;
  v18[3] = &unk_2786D57B0;
  v18[4] = &v35;
  v18[5] = &v19;
  v18[6] = &v29;
  v18[7] = &v23;
  [v6 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];
  if (v20[3])
  {
    goto LABEL_36;
  }

  v7 = v36[5];
  if (!v7)
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v14 = hap2Log_accessory;
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v15 = "Service list contains no Accessory Information service";
LABEL_28:
    _os_log_error_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
LABEL_36:
    v16 = 0;
    goto LABEL_37;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  if (!v30[5])
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v14 = hap2Log_accessory;
    if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    *buf = 0;
    v15 = "Service list contains no Protocol Information service";
    goto LABEL_28;
  }

  if (!v24[5])
  {
    if (hap2LogInitialize_onceToken != -1)
    {
      dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
    }

    v8 = hap2Log_accessory;
    if (os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22AADC000, v8, OS_LOG_TYPE_DEFAULT, "Service list contains no Accessory Runtime Information service", buf, 2u);
    }

    v7 = v36[5];
  }

LABEL_11:
  if (![a1 validateAccessoryInformationService:v7] || v30[5] && !objc_msgSend(a1, "validateProtocolInformationService:"))
  {
    goto LABEL_36;
  }

  v9 = v24[5];
  if (v9)
  {
    v10 = v9;
    v52 = 0;
    v53 = &v52;
    v54 = 0x2020000000;
    v55 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v51 = 0;
    v11 = [v10 characteristics];
    *buf = MEMORY[0x277D85DD0];
    v43 = 3221225472;
    v44 = __validateAccessoryRuntimeInformationService_block_invoke;
    v45 = &unk_2786D5800;
    v46 = &v52;
    v47 = &v48;
    [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:buf];

    if (*(v49 + 24) == 1)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v12 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *v41 = 0;
      v13 = "Accessory Runtime Information service is invalid";
LABEL_39:
      _os_log_error_impl(&dword_22AADC000, v12, OS_LOG_TYPE_ERROR, v13, v41, 2u);
LABEL_35:
      _Block_object_dispose(&v48, 8);
      _Block_object_dispose(&v52, 8);

      goto LABEL_36;
    }

    if ((v53[3] & 1) == 0)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v12 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_35;
      }

      *v41 = 0;
      v13 = "Accessory Runtime Information service does not contain required characteristics";
      goto LABEL_39;
    }

    _Block_object_dispose(&v48, 8);
    _Block_object_dispose(&v52, 8);
  }

  v16 = 1;
LABEL_37:
  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v16;
}

void __54__HAP2Accessory_validateDiscoveredServices_isPrimary___block_invoke(void *a1, void *a2)
{
  v4 = a2;
  v5 = [v4 type];
  v6 = [v5 isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

  if (v6)
  {
    v7 = *(a1[4] + 8);
    v9 = *(v7 + 40);
    v8 = (v7 + 40);
    if (v9)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v10 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v23 = 0;
      v11 = "Service list contains more than one Accessory Information service";
      v12 = &v23;
LABEL_19:
      _os_log_error_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, v11, v12, 2u);
LABEL_20:
      *(*(a1[5] + 8) + 24) = 1;
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v13 = [v4 type];
  v14 = [v13 isEqualToString:@"000000A2-0000-1000-8000-0026BB765291"];

  if (v14)
  {
    v15 = *(a1[6] + 8);
    v16 = *(v15 + 40);
    v8 = (v15 + 40);
    if (v16)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v10 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v22 = 0;
      v11 = "Service list contains more than one Protocol Information service";
      v12 = &v22;
      goto LABEL_19;
    }

    goto LABEL_21;
  }

  v17 = [v4 type];
  v18 = [v17 isEqualToString:@"00000239-0000-1000-8000-0026BB765291"];

  if (v18)
  {
    v19 = *(a1[7] + 8);
    v20 = *(v19 + 40);
    v8 = (v19 + 40);
    if (v20)
    {
      if (hap2LogInitialize_onceToken != -1)
      {
        dispatch_once(&hap2LogInitialize_onceToken, &__block_literal_global_1996);
      }

      v10 = hap2Log_accessory;
      if (!os_log_type_enabled(hap2Log_accessory, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      v21 = 0;
      v11 = "Service list contains more than one Accessory Runtime Information service";
      v12 = &v21;
      goto LABEL_19;
    }

LABEL_21:
    objc_storeStrong(v8, a2);
  }

LABEL_22:
}

@end