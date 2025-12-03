@interface PARSubscriptionChannel
- (PARSubscriptionChannel)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PARSubscriptionChannel

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [objc_opt_class() allocWithZone:zone];

  return [v3 init];
}

- (PARSubscriptionChannel)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = PARSubscriptionChannel;
  return [(PARSubscriptionChannel *)&v4 init];
}

@end