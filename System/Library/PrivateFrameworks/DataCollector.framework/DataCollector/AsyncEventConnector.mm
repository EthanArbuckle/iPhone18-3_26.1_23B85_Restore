@interface AsyncEventConnector
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation AsyncEventConnector

- (int64_t)receiveInput:(id)input
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2485C8F10();
  swift_unknownObjectRelease();
  v5 = sub_2485B42F4(v7);

  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  selfCopy = self;
  sub_2485B4774();
}

- (void)receiveCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  sub_2485B4918();
}

- (void)cancel
{
  selfCopy = self;
  sub_2485B3864();
}

@end