@interface DDDetectionController(TextKitBackEnd)
@end

@implementation DDDetectionController(TextKitBackEnd)

- (void)urlifyTextView:()TextKitBackEnd withExternalResults:context:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"DDDetectionController+TextKit.m" lineNumber:366 description:@"-[DDDetectionController urlifyTextView:withExternalResults:context:] Should be called from the main thread"];
}

@end