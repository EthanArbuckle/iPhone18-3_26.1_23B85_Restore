@interface NSKeyedUnarchiver
@end

@implementation NSKeyedUnarchiver

void __102__NSKeyedUnarchiver_WFFileCoder__wf_securelyUnarchiveObjectWithData_allowedClasses_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = [*(a1 + 32) wf_unarchiveRootObjectAndFinishWithAllowedClasses:*(a1 + 40)];
  (*(v1 + 16))(v1, v2);
}

@end