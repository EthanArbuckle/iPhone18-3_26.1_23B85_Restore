@interface XPCDispatcher
- (void)cancelSessionWithContext:(id)a3 session:(id)a4 error:(id)a5 completionHandler:(id)a6;
- (void)requestStateForDevice:(id)a3 completionHandler:(id)a4;
- (void)setUplinkMutedForCurrentSession:(BOOL)a3 completionHandler:(id)a4;
- (void)updateState:(int64_t)a3 reason:(id)a4 completionHandler:(id)a5;
@end

@implementation XPCDispatcher

- (void)cancelSessionWithContext:(id)a3 session:(id)a4 error:(id)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a3;
  v12 = a4;

  v13 = a5;
  sub_249DFF4C0(v11, v12, a5, sub_249E04BAC, v10);
}

- (void)setUplinkMutedForCurrentSession:(BOOL)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);

  sub_249E0067C(a3, self, v6);
  _Block_release(v6);
}

- (void)updateState:(int64_t)a3 reason:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_249E7AAA8();
  v10 = v9;
  _Block_copy(v7);

  sub_249E02684(a3, v8, v10, self, v7);
  _Block_release(v7);
}

- (void)requestStateForDevice:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = a3;

  sub_249E03120(v7, sub_249E0439C, v6);
}

@end