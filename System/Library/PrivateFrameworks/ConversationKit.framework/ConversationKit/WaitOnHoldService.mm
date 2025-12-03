@interface WaitOnHoldService
- (void)updateForCallWithUUID:(id)d;
@end

@implementation WaitOnHoldService

- (void)updateForCallWithUUID:(id)d
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  WaitOnHoldService.updateForCall(withUUID:)(v8);
}

@end