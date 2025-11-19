@interface NSObject
@end

@implementation NSObject

os_log_t __69__NSObject_TSUAdditions__tsu_addObserver_forKeyPath_options_context___block_invoke()
{
  result = TSULogCreateCategory("TSUDefaultCat");
  TSUDefaultCat_log_t = result;
  return result;
}

@end