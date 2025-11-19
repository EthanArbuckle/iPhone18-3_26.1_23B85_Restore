@interface FAScreenTimeCommunicationLimitsViewControllerProvider
+ (id)communicationLimitsViewControllerForDSID:(id)a3;
@end

@implementation FAScreenTimeCommunicationLimitsViewControllerProvider

+ (id)communicationLimitsViewControllerForDSID:(id)a3
{
  v3 = a3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = getSTCommunicationLimitsViewControllerProviderClass_softClass;
  v12 = getSTCommunicationLimitsViewControllerProviderClass_softClass;
  if (!getSTCommunicationLimitsViewControllerProviderClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __getSTCommunicationLimitsViewControllerProviderClass_block_invoke;
    v8[3] = &unk_2782F2988;
    v8[4] = &v9;
    __getSTCommunicationLimitsViewControllerProviderClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  v6 = [v4 communicationLimitsViewControllerForDSID:v3];

  return v6;
}

@end