@interface LACCompanionAuthenticationSignpostEvent
+ (LACSignpostEvent)authenticationRequestDidFinish;
+ (LACSignpostEvent)authenticationRequestWillStart;
+ (LACSignpostEvent)eligibleDevicesRequestDidFinish;
+ (LACSignpostEvent)eligibleDevicesRequestWillStart;
@end

@implementation LACCompanionAuthenticationSignpostEvent

+ (LACSignpostEvent)authenticationRequestWillStart
{
  v2 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_3_1];

  return v2;
}

void __73__LACCompanionAuthenticationSignpostEvent_authenticationRequestWillStart__block_invoke_2()
{
  v0 = LACLogABM();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CompanionAuthenticationRequest", "", v1, 2u);
  }
}

+ (LACSignpostEvent)authenticationRequestDidFinish
{
  v2 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_7_1];

  return v2;
}

void __73__LACCompanionAuthenticationSignpostEvent_authenticationRequestDidFinish__block_invoke_2()
{
  v0 = LACLogABM();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CompanionAuthenticationRequest", "", v1, 2u);
  }
}

+ (LACSignpostEvent)eligibleDevicesRequestWillStart
{
  v2 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_11_1];

  return v2;
}

void __74__LACCompanionAuthenticationSignpostEvent_eligibleDevicesRequestWillStart__block_invoke_2()
{
  v0 = LACLogABM();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CompanionEligibleDevicesRequest", "", v1, 2u);
  }
}

+ (LACSignpostEvent)eligibleDevicesRequestDidFinish
{
  v2 = [[LACSignpostEvent alloc] initWithSendBlock:&__block_literal_global_15];

  return v2;
}

void __74__LACCompanionAuthenticationSignpostEvent_eligibleDevicesRequestDidFinish__block_invoke_2()
{
  v0 = LACLogABM();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_1B0233000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CompanionEligibleDevicesRequest", "", v1, 2u);
  }
}

@end