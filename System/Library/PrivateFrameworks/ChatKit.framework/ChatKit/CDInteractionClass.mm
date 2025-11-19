@interface CDInteractionClass
@end

@implementation CDInteractionClass

Class __get_CDInteractionClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_CDInteraction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_CDInteractionClass_block_invoke_cold_1();
  }

  get_CDInteractionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_CDInteractionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_CDInteractionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKSMSComposeViewServiceController.m" lineNumber:95 description:{@"Unable to find class %s", "_CDInteraction"}];

  __break(1u);
}

@end