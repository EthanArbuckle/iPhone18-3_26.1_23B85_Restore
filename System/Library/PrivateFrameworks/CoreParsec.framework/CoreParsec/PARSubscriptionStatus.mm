@interface PARSubscriptionStatus
- (PARSubscriptionStatus)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARSubscriptionStatus

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[PARSubscriptionStatus isSubscribed](self forKey:{"isSubscribed"), @"isSubscribed"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setIsSubscribed:{-[PARSubscriptionStatus isSubscribed](self, "isSubscribed")}];
  return v4;
}

- (PARSubscriptionStatus)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PARSubscriptionStatus;
  v5 = [(PARSubscriptionStatus *)&v7 init];
  if (v5)
  {
    -[PARSubscriptionStatus setIsSubscribed:](v5, "setIsSubscribed:", [coderCopy decodeBoolForKey:@"isSubscribed"]);
  }

  return v5;
}

@end