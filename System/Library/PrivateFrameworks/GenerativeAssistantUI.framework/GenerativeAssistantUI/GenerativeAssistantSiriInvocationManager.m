@interface GenerativeAssistantSiriInvocationManager
- (void)invokeTypeToSiriForFollowup;
@end

@implementation GenerativeAssistantSiriInvocationManager

- (void)invokeTypeToSiriForFollowup
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v2 = getSiriSimpleActivationSourceClass_softClass;
  v9 = getSiriSimpleActivationSourceClass_softClass;
  if (!getSiriSimpleActivationSourceClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getSiriSimpleActivationSourceClass_block_invoke;
    v5[3] = &unk_27969A380;
    v5[4] = &v6;
    __getSiriSimpleActivationSourceClass_block_invoke(v5);
    v2 = v7[3];
  }

  v3 = v2;
  _Block_object_dispose(&v6, 8);
  v4 = objc_alloc_init(v2);
  [v4 activateFromSource:56];
  [v4 invalidate];
}

@end