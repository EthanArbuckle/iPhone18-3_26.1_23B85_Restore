@interface EKEventStore(Suggestions)
+ (id)sg_newStore;
@end

@implementation EKEventStore(Suggestions)

+ (id)sg_newStore
{
  v0 = [objc_alloc(MEMORY[0x277CC5A40]) initWithEKOptions:128];

  return v0;
}

@end