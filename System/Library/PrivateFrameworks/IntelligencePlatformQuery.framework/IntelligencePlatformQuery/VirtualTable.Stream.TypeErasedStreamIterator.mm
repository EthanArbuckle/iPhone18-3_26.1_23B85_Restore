@interface VirtualTable.Stream.TypeErasedStreamIterator
- (int64_t)receiveInput:(id)a3;
- (void)cancel;
- (void)receiveCompletion:(id)a3;
- (void)receiveSubscription:(id)a3;
@end

@implementation VirtualTable.Stream.TypeErasedStreamIterator

- (int64_t)receiveInput:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = VirtualTable.Stream.TypeErasedStreamIterator.receiveInput(_:)(v7);

  __swift_destroy_boxed_opaque_existential_0(v7);
  return v5;
}

- (void)receiveSubscription:(id)a3
{
  v4 = a3;
  v5 = self;
  VirtualTable.Stream.TypeErasedStreamIterator.receive(_:)(v4);
}

- (void)receiveCompletion:(id)a3
{
  v4 = a3;
  v5 = self;
  VirtualTable.Stream.TypeErasedStreamIterator.receive(_:)(v4);
}

- (void)cancel
{
  v2 = self;
  VirtualTable.Stream.TypeErasedStreamIterator.cancel()();
}

@end