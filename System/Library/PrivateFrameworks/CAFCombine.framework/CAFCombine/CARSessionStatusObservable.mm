@interface CARSessionStatusObservable
- (void)sessionDidConnect:(id)connect;
- (void)sessionDidDisconnect:(id)disconnect;
@end

@implementation CARSessionStatusObservable

- (void)sessionDidConnect:(id)connect
{
  connectCopy = connect;
  selfCopy = self;
  CARSessionStatusObservable.sessionDidConnect(_:)(connectCopy);
}

- (void)sessionDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  selfCopy = self;
  CARSessionStatusObservable.sessionDidDisconnect(_:)();
}

@end