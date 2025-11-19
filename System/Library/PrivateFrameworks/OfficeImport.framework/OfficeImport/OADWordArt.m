@interface OADWordArt
- (OADWordArt)init;
- (id)description;
@end

@implementation OADWordArt

- (OADWordArt)init
{
  v3.receiver = self;
  v3.super_class = OADWordArt;
  return [(OADShape *)&v3 init];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADWordArt;
  v2 = [(OADShape *)&v4 description];

  return v2;
}

@end