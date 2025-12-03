@interface WebsiteDataUtilities
+ (void)getDatabaseQuotaForOrigin:(id)origin currentQuota:(unint64_t)quota currentOriginUsage:(unint64_t)usage currentDatabaseUsage:(unint64_t)databaseUsage expectedUsage:(unint64_t)expectedUsage dialogPresenter:(id)presenter completionHandler:(id)handler;
@end

@implementation WebsiteDataUtilities

+ (void)getDatabaseQuotaForOrigin:(id)origin currentQuota:(unint64_t)quota currentOriginUsage:(unint64_t)usage currentDatabaseUsage:(unint64_t)databaseUsage expectedUsage:(unint64_t)expectedUsage dialogPresenter:(id)presenter completionHandler:(id)handler
{
  originCopy = origin;
  presenterCopy = presenter;
  handlerCopy = handler;
  v17 = handlerCopy;
  if (!quota && expectedUsage <= 0x500000)
  {
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __151__WebsiteDataUtilities_getDatabaseQuotaForOrigin_currentQuota_currentOriginUsage_currentDatabaseUsage_expectedUsage_dialogPresenter_completionHandler___block_invoke;
    v34[3] = &unk_2781D4D90;
    v18 = &v35;
    v35 = handlerCopy;
    v19 = MEMORY[0x277D85CD0];
    v20 = v34;
LABEL_13:
    dispatch_async(v19, v20);
    goto LABEL_14;
  }

  v21 = 0;
  v22 = expectedUsage + usage;
  if (databaseUsage)
  {
    v22 = quota + 0x100000;
  }

  while (1)
  {
    v23 = leastPresetSizeGreaterThanOrEqualTo_presetQuotas[v21];
    if (v23 >= v22)
    {
      break;
    }

    if (++v21 == 6)
    {
      v24 = v22 * 1.1;
      v23 = vcvtd_n_u64_f64(ceil(v24 / 52428800.0) * 50.0, 0x14uLL);
      if (v23 >> 23 >= 0x7D)
      {
        v23 = (ceil(v24 / 107374182.0) * 107374182.0);
      }

      break;
    }
  }

  if (!v23)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __151__WebsiteDataUtilities_getDatabaseQuotaForOrigin_currentQuota_currentOriginUsage_currentDatabaseUsage_expectedUsage_dialogPresenter_completionHandler___block_invoke_2;
    block[3] = &unk_2781D4D90;
    v18 = &v33;
    v33 = handlerCopy;
    v19 = MEMORY[0x277D85CD0];
    v20 = block;
    goto LABEL_13;
  }

  v25 = MEMORY[0x277D28C48];
  v27 = MEMORY[0x277D85DD0];
  v28 = 3221225472;
  v29 = __151__WebsiteDataUtilities_getDatabaseQuotaForOrigin_currentQuota_currentOriginUsage_currentDatabaseUsage_expectedUsage_dialogPresenter_completionHandler___block_invoke_3;
  v30 = &unk_2781D8448;
  v18 = v31;
  v31[0] = handlerCopy;
  v31[1] = v23;
  v26 = [v25 increaseDatabaseQuotaDialogForOrigin:originCopy newQuota:v23 completionHandler:&v27];
  [presenterCopy presentDialog:v26 sender:{0, v27, v28, v29, v30}];

LABEL_14:
}

uint64_t __151__WebsiteDataUtilities_getDatabaseQuotaForOrigin_currentQuota_currentOriginUsage_currentDatabaseUsage_expectedUsage_dialogPresenter_completionHandler___block_invoke_3(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 40);
  }

  else
  {
    v4 = 0;
  }

  return (*(v3 + 16))(v3, v4);
}

@end