@interface OADConnection
- (id)description;
@end

@implementation OADConnection

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADConnection;
  v2 = [(OADConnection *)&v4 description];

  return v2;
}

@end