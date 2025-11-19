@interface AsyncEventConnector
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation AsyncEventConnector

- (int64_t)receiveInput:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_2485C8F10();
  swift_unknownObjectRelease();
  v5 = sub_2485B42F4(v7);

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2485B4774();
}

- (void)receiveCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2485B4918();
}

- (void)cancel
{
  v2 = self;
  sub_2485B3864();
}

@end