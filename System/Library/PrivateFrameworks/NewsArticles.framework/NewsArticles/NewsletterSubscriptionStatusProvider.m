@interface NewsletterSubscriptionStatusProvider
- (_TtC12NewsArticles36NewsletterSubscriptionStatusProvider)init;
- (unint64_t)newsletterSubscriptionStatus;
- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)a3;
@end

@implementation NewsletterSubscriptionStatusProvider

- (_TtC12NewsArticles36NewsletterSubscriptionStatusProvider)init
{
  v2 = OBJC_IVAR____TtC12NewsArticles36NewsletterSubscriptionStatusProvider_observers;
  *(&self->super.isa + v2) = [objc_opt_self() weakObjectsHashTable];
  result = sub_1D7D3160C();
  __break(1u);
  return result;
}

- (unint64_t)newsletterSubscriptionStatus
{
  v2 = self;
  v3 = sub_1D7B1B64C();

  return v3;
}

- (void)newsletterSubscriptionChangedFromSubscription:(int64_t)a3
{
  v4 = self;
  sub_1D7B1B7B8(a3);
}

@end