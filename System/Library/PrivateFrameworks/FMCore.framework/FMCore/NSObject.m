@interface NSObject
@end

@implementation NSObject

uint64_t __76__NSObject_NSObject_KVOBlock__addOneShotKVOBlockForKeyPath_options_handler___block_invoke(void *a1)
{
  (*(a1[5] + 16))();
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);

  return [v2 removeKVOBlockForToken:v3];
}

@end