@interface FAKeyStore
+ (id)keyStoreForChecklist;
@end

@implementation FAKeyStore

+ (id)keyStoreForChecklist
{
  v2 = [objc_alloc(MEMORY[0x277CCAD80]) initWithStoreIdentifier:@"com.apple.familycircle.checklist" type:2];

  return v2;
}

@end