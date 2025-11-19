@interface NSNotificationCenter
@end

@implementation NSNotificationCenter

uint64_t __87__NSNotificationCenter_MessageAdditions__mf_addImmediateObserver_selector_name_object___block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));
  v5 = *(a1 + 40);

  return [Weak performSelector:v5 withObject:a2];
}

@end