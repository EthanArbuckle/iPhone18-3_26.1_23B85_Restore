@interface PARSubscriptionStatus
- (PARSubscriptionStatus)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARSubscriptionStatus

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[PARSubscriptionStatus isSubscribed](self forKey:{"isSubscribed"), @"isSubscribed"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setIsSubscribed:{-[PARSubscriptionStatus isSubscribed](self, "isSubscribed")}];
  return v4;
}

- (PARSubscriptionStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PARSubscriptionStatus;
  v5 = [(PARSubscriptionStatus *)&v7 init];
  if (v5)
  {
    -[PARSubscriptionStatus setIsSubscribed:](v5, "setIsSubscribed:", [v4 decodeBoolForKey:@"isSubscribed"]);
  }

  return v5;
}

@end