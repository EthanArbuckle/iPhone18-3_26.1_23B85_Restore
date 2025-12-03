@interface VirtualTable.Stream.TypeErasedStreamIterator
- (int64_t)receiveInput:(id)input;
- (void)cancel;
- (void)receiveCompletion:(id)completion;
- (void)receiveSubscription:(id)subscription;
@end

@implementation VirtualTable.Stream.TypeErasedStreamIterator

- (int64_t)receiveInput:(id)input
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = VirtualTable.Stream.TypeErasedStreamIterator.receiveInput(_:)(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (void)receiveSubscription:(id)subscription
{
  subscriptionCopy = subscription;
  selfCopy = self;
  VirtualTable.Stream.TypeErasedStreamIterator.receive(_:)(subscriptionCopy);
}

- (void)receiveCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  VirtualTable.Stream.TypeErasedStreamIterator.receive(_:)(completionCopy);
}

- (void)cancel
{
  selfCopy = self;
  VirtualTable.Stream.TypeErasedStreamIterator.cancel()();
}

@end