@interface WDOleObject
- (id)description;
@end

@implementation WDOleObject

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDOleObject;
  v2 = [(WDPicture *)&v4 description];

  return v2;
}

@end