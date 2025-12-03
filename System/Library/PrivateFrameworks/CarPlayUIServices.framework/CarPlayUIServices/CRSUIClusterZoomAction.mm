@interface CRSUIClusterZoomAction
- (CRSUIClusterZoomAction)initWithZoomDirection:(int64_t)direction;
- (int64_t)zoomDirection;
@end

@implementation CRSUIClusterZoomAction

- (CRSUIClusterZoomAction)initWithZoomDirection:(int64_t)direction
{
  v5 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:direction];
  [v5 setObject:v6 forSetting:1];

  v9.receiver = self;
  v9.super_class = CRSUIClusterZoomAction;
  v7 = [(CRSUIClusterZoomAction *)&v9 initWithInfo:v5 timeout:0 forResponseOnQueue:0 withHandler:0.0];

  return v7;
}

- (int64_t)zoomDirection
{
  info = [(CRSUIClusterZoomAction *)self info];
  v3 = [info objectForSetting:1];
  integerValue = [v3 integerValue];

  return integerValue;
}

@end