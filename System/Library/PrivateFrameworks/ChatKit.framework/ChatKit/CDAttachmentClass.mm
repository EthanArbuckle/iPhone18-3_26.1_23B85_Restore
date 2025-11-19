@interface CDAttachmentClass
@end

@implementation CDAttachmentClass

Class __get_CDAttachmentClass_block_invoke(uint64_t a1)
{
  CoreDuetLibrary();
  result = objc_getClass("_CDAttachment");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __get_CDAttachmentClass_block_invoke_cold_1();
  }

  get_CDAttachmentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void __get_CDAttachmentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class get_CDAttachmentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"CKSMSComposeViewServiceController.m" lineNumber:93 description:{@"Unable to find class %s", "_CDAttachment"}];

  __break(1u);
}

@end