@interface CWFNetworkDenyListInfo
- (CWFNetworkDenyListInfo)init;
@end

@implementation CWFNetworkDenyListInfo

- (CWFNetworkDenyListInfo)init
{
  v3.receiver = self;
  v3.super_class = CWFNetworkDenyListInfo;
  return [(CWFNetworkDenyListInfo *)&v3 init];
}

@end