@interface CNKDestinationQueryControllerInternal
- (CNKDestinationQueryControllerDelegate)delegate;
- (void)handleIDSStatusChanged;
- (void)queryAddresses:(id)a3;
- (void)reset;
- (void)setDelegate:(id)a3;
@end

@implementation CNKDestinationQueryControllerInternal

- (CNKDestinationQueryControllerDelegate)delegate
{
  v2 = DestinationQueryController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  DestinationQueryController.delegate.setter();
}

- (void)handleIDSStatusChanged
{
  v2 = self;
  DestinationQueryController.handleIDSStatusChanged()();
}

- (void)reset
{
  v2 = self;
  DestinationQueryController.reset()();
}

- (void)queryAddresses:(id)a3
{
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  DestinationQueryController.queryAddresses(_:)(v4);
}

@end