@interface PARSubscriptionChannel
- (PARSubscriptionChannel)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PARSubscriptionChannel

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = [objc_opt_class() allocWithZone:a3];

  return [v3 init];
}

- (PARSubscriptionChannel)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = PARSubscriptionChannel;
  return [(PARSubscriptionChannel *)&v4 init];
}

@end