@interface Message
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation Message

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BC869894();
}

- (NSString)description
{
  v2 = self;
  sub_1BC86D344();

  v3 = sub_1BC8F7BE4();

  return v3;
}

@end