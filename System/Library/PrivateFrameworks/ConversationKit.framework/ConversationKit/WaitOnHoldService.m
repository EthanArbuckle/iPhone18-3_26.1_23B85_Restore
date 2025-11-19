@interface WaitOnHoldService
- (void)updateForCallWithUUID:(id)a3;
@end

@implementation WaitOnHoldService

- (void)updateForCallWithUUID:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  WaitOnHoldService.updateForCall(withUUID:)(v8);
}

@end