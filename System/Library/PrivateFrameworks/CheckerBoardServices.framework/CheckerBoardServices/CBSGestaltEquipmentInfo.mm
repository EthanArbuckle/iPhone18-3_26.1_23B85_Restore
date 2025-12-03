@interface CBSGestaltEquipmentInfo
+ (id)CurrentEquipmentInfo;
- (CBSGestaltEquipmentInfo)initWithSerialNumber:(id)number andMEID:(id)d andIMEIArray:(id)array;
@end

@implementation CBSGestaltEquipmentInfo

- (CBSGestaltEquipmentInfo)initWithSerialNumber:(id)number andMEID:(id)d andIMEIArray:(id)array
{
  numberCopy = number;
  dCopy = d;
  arrayCopy = array;
  v15.receiver = self;
  v15.super_class = CBSGestaltEquipmentInfo;
  v12 = [(CBSGestaltEquipmentInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serialNumber, number);
    objc_storeStrong(&v13->_meid, d);
    objc_storeStrong(&v13->_imeiArray, array);
  }

  return v13;
}

+ (id)CurrentEquipmentInfo
{
  if (CurrentEquipmentInfo_dispatchOnceToken != -1)
  {
    +[CBSGestaltEquipmentInfo CurrentEquipmentInfo];
  }

  v3 = CurrentEquipmentInfo_currentEquipmentInfo;

  return v3;
}

void __47__CBSGestaltEquipmentInfo_CurrentEquipmentInfo__block_invoke()
{
  v0 = MGCopyAnswer();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = dispatch_semaphore_create(0);
  v2 = objc_alloc_init(MEMORY[0x277CC37B0]);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CBSGestaltEquipmentInfo_CurrentEquipmentInfo__block_invoke_3;
  v8[3] = &unk_278DB2E08;
  v10 = &v18;
  v11 = &v12;
  v3 = v1;
  v9 = v3;
  [v2 copyMobileEquipmentInfo:v8];
  v4 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v3, v4);
  v5 = [CBSGestaltEquipmentInfo alloc];
  v6 = [(CBSGestaltEquipmentInfo *)v5 initWithSerialNumber:v0 andMEID:v19[5] andIMEIArray:v13[5]];
  v7 = CurrentEquipmentInfo_currentEquipmentInfo;
  CurrentEquipmentInfo_currentEquipmentInfo = v6;

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v18, 8);
}

intptr_t __47__CBSGestaltEquipmentInfo_CurrentEquipmentInfo__block_invoke_3(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [a2 meInfoList];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v19 + 1) + 8 * i);
        v9 = [v8 MEID];

        if (v9)
        {
          v10 = [v8 MEID];
          v11 = [v10 copy];
          v12 = *(*(a1 + 40) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v11;
        }

        v14 = *(*(*(a1 + 48) + 8) + 40);
        v15 = [v8 IMEI];
        v16 = [v15 copy];
        [v14 addObject:v16];
      }

      v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v5);
  }

  result = dispatch_semaphore_signal(*(a1 + 32));
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

@end