@interface NSXPCInterface(HCSRemoteProtocols)
+ (id)hu_homeControlServiceXPCInterface;
@end

@implementation NSXPCInterface(HCSRemoteProtocols)

+ (id)hu_homeControlServiceXPCInterface
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [self interfaceWithProtocol:&unk_2825BD6C0];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:3];
  v3 = [MEMORY[0x277CBEB98] setWithArray:{v2, v5, v6}];
  [v1 setClasses:v3 forSelector:sel_getTransitionSubviewFramesWithCompletion_ argumentIndex:0 ofReply:1];

  return v1;
}

@end