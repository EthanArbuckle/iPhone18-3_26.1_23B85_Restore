@interface CNKDestinationQueryControllerInternal
- (CNKDestinationQueryControllerDelegate)delegate;
- (void)handleIDSStatusChanged;
- (void)queryAddresses:(id)addresses;
- (void)reset;
- (void)setDelegate:(id)delegate;
@end

@implementation CNKDestinationQueryControllerInternal

- (CNKDestinationQueryControllerDelegate)delegate
{
  v2 = DestinationQueryController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  DestinationQueryController.delegate.setter();
}

- (void)handleIDSStatusChanged
{
  selfCopy = self;
  DestinationQueryController.handleIDSStatusChanged()();
}

- (void)reset
{
  selfCopy = self;
  DestinationQueryController.reset()();
}

- (void)queryAddresses:(id)addresses
{
  v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DestinationQueryController.queryAddresses(_:)(v4);
}

@end