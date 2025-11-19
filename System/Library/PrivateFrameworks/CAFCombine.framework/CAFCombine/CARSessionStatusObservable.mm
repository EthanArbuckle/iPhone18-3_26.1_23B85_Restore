@interface CARSessionStatusObservable
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
@end

@implementation CARSessionStatusObservable

- (void)sessionDidConnect:(id)a3
{
  v4 = a3;
  v5 = self;
  CARSessionStatusObservable.sessionDidConnect(_:)(v4);
}

- (void)sessionDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  CARSessionStatusObservable.sessionDidDisconnect(_:)();
}

@end