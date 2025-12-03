@interface HMDConfigurationMessageFilter
+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error;
@end

@implementation HMDConfigurationMessageFilter

+ (int64_t)filterMessage:(id)message withPolicies:(id)policies error:(id *)error
{
  messageCopy = message;
  policiesCopy = policies;
  if (!messageCopy)
  {
    goto LABEL_6;
  }

  v9 = +[HMDDeviceCapabilities deviceCapabilities];
  supportsCloudDataSync = [v9 supportsCloudDataSync];

  if (!supportsCloudDataSync)
  {
    goto LABEL_7;
  }

  productInfo = [MEMORY[0x277D0F8E8] productInfo];
  if ([productInfo productPlatform] != 4 || (objc_msgSend(messageCopy, "proxyConnection"), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v15 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v13 = v12;
  isEntitledForSPIAccess = [messageCopy isEntitledForSPIAccess];

  if ((isEntitledForSPIAccess & 1) == 0)
  {
LABEL_7:
    productInfo = [policiesCopy hmf_objectPassingTest:&__block_literal_global_72363];
    if ([productInfo operationTypes])
    {
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:48 description:@"Operation not supported" reason:@"Configuration changes not supported" suggestion:0];
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