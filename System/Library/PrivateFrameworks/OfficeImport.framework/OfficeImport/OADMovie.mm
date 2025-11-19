@interface OADMovie
- (id)description;
@end

@implementation OADMovie

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADMovie;
  v2 = [(OADMovie *)&v4 description];

  return v2;
}

@end