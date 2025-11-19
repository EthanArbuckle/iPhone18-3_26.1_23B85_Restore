@interface NSManagedObjectContext
@end

@implementation NSManagedObjectContext

void __74__NSManagedObjectContext_IC__ic_performBlock_andPerformBlockOnMainThread___block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);
  v3 = MEMORY[0x1E69E96A0];

  dispatch_async(v3, v2);
}

@end