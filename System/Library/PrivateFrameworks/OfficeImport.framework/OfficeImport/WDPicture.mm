@interface WDPicture
- (id)description;
@end

@implementation WDPicture

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDPicture;
  v2 = [(WDOfficeArt *)&v4 description];

  return v2;
}

@end