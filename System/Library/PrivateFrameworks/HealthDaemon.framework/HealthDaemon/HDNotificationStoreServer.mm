@interface HDNotificationStoreServer
+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7;
+ (id)requiredEntitlements;
@end

@implementation HDNotificationStoreServer

+ (id)createTaskServerWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [v13 profile];
  v16 = [v15 notificationManager];

  if (v16)
  {
    v17 = [(HDStandardTaskServer *)[HDNotificationStoreServer alloc] initWithUUID:v11 configuration:v12 client:v13 delegate:v14];
    v18 = v16;
    notificationManager = v17->_notificationManager;
    v17->_notificationManager = v18;
  }

  else
  {
    notificationManager = [MEMORY[0x277CCA9B8] hk_featureUnavailableForProfileError];
    if (notificationManager)
    {
      if (a7)
      {
        v20 = notificationManager;
        *a7 = notificationManager;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v17 = 0;
  }

  return v17;
}

+ (id)requiredEntitlements
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

@end