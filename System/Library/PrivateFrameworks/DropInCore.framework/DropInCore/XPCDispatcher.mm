@interface XPCDispatcher
- (void)cancelSessionWithContext:(id)context session:(id)session error:(id)error completionHandler:(id)handler;
- (void)requestStateForDevice:(id)device completionHandler:(id)handler;
- (void)setUplinkMutedForCurrentSession:(BOOL)session completionHandler:(id)handler;
- (void)updateState:(int64_t)state reason:(id)reason completionHandler:(id)handler;
@end

@implementation XPCDispatcher

- (void)cancelSessionWithContext:(id)context session:(id)session error:(id)error completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  contextCopy = context;
  sessionCopy = session;

  errorCopy = error;
  sub_249DFF4C0(contextCopy, sessionCopy, error, sub_249E04BAC, v10);
}

- (void)setUplinkMutedForCurrentSession:(BOOL)session completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  _Block_copy(v6);

  sub_249E0067C(session, self, v6);
  _Block_release(v6);
}

- (void)updateState:(int64_t)state reason:(id)reason completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_249E7AAA8();
  v10 = v9;
  _Block_copy(v7);

  sub_249E02684(state, v8, v10, self, v7);
  _Block_release(v7);
}

- (void)requestStateForDevice:(id)device completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  deviceCopy = device;

  sub_249E03120(deviceCopy, sub_249E0439C, v6);
}

@end