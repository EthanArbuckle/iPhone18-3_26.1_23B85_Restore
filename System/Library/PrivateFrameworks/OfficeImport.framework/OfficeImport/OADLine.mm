@interface OADLine
- (id)description;
@end

@implementation OADLine

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADLine;
  v2 = [(OADShape *)&v4 description];

  return v2;
}

@end