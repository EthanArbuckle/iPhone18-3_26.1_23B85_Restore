@interface OADPathElement
- (id)description;
@end

@implementation OADPathElement

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADPathElement;
  v2 = [(OADPathElement *)&v4 description];

  return v2;
}

@end