@interface HMDConfigurationMessageFilter
+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 error:(id *)a5;
@end

@implementation HMDConfigurationMessageFilter

+ (int64_t)filterMessage:(id)a3 withPolicies:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    goto LABEL_6;
  }

  v9 = +[HMDDeviceCapabilities deviceCapabilities];
  v10 = [v9 supportsCloudDataSync];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x277D0F8E8] productInfo];
  if ([v11 productPlatform] != 4 || (objc_msgSend(v7, "proxyConnection"), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v13 = v12;
  v14 = [v7 isEntitledForSPIAccess];

  if ((v14 & 1) == 0)
  {
LABEL_7:
    v11 = [v8 hmf_objectPassingTest:&__block_literal_global_110951];
    if ([v11 operationTypes])
    {
      if (a5)
      {
        *a5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Operation not supported" reason:@"Configuration changes not supported" suggestion:0];
      }

      v15 = -1;
    }

    else
    {
      v15 = 1;
    }

    goto LABEL_13;
  }

LABEL_6:
  v15 = 0;
LABEL_14:

  return v15;
}

uint64_t __66__HMDConfigurationMessageFilter_filterMessage_withPolicies_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end