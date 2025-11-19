@interface AAUIServerUIHookHandler(FamilyCircleUI)
+ (id)fcui_defaultFresnoServerHooks;
@end

@implementation AAUIServerUIHookHandler(FamilyCircleUI)

+ (id)fcui_defaultFresnoServerHooks
{
  v18[15] = *MEMORY[0x277D85DE8];
  v17 = objc_alloc_init(FAInvokeMessageHook);
  v18[0] = v17;
  v16 = objc_alloc_init(FALaunchServicesHook);
  v18[1] = v16;
  v15 = objc_alloc_init(FABuyStorageHook);
  v18[2] = v15;
  v14 = objc_alloc_init(FALocationSharingHook);
  v18[3] = v14;
  v13 = objc_alloc_init(FALaunchScreenTimeSetupHook);
  v18[4] = v13;
  v12 = objc_alloc_init(FACreateChildAccountHook);
  v18[5] = v12;
  v0 = objc_alloc_init(FAShowFamilyScreenTimeHook);
  v18[6] = v0;
  v1 = objc_alloc_init(MEMORY[0x277CECA80]);
  v18[7] = v1;
  v2 = objc_alloc_init(FAShowSubscriptionsHook);
  v18[8] = v2;
  v3 = objc_alloc_init(FAShowAccountDetailsHook);
  v18[9] = v3;
  v4 = objc_alloc_init(FAResendFamilyInviteHook);
  v18[10] = v4;
  v5 = objc_alloc_init(_TtC14FamilyCircleUI37FAPrivacyDisclosureAcknowledgmentHook);
  v18[11] = v5;
  v6 = objc_alloc_init(_TtC14FamilyCircleUI26ExpressParentalControlHook);
  v18[12] = v6;
  v7 = objc_alloc_init(FAAgeRangeAttestationOnboardingHook);
  v18[13] = v7;
  v8 = objc_alloc_init(FAPeerPaymentHook);
  v18[14] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:15];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end