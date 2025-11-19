@interface OADGraphic
- (id)description;
@end

@implementation OADGraphic

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADGraphic;
  v2 = [(OADDrawable *)&v4 description];

  return v2;
}

@end