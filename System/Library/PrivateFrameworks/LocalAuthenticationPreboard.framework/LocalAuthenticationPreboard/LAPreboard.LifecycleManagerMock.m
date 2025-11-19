@interface LAPreboard.LifecycleManagerMock
- (_TtCE27LocalAuthenticationPreboardCSo10LAPreboardP33_DB3825892A0424A537C397595CD60A8F20LifecycleManagerMock)init;
- (void)rebootDeviceWithReason:(id)a3 completion:(id)a4;
- (void)rebootDeviceWithReason:(id)a3 forced:(BOOL)a4 completion:(id)a5;
@end

@implementation LAPreboard.LifecycleManagerMock

- (void)rebootDeviceWithReason:(id)a3 forced:(BOOL)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
  v5[2](v5, 0);

  _Block_release(v5);
}

- (void)rebootDeviceWithReason:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  v4[2](v4, 0);

  _Block_release(v4);
}

- (_TtCE27LocalAuthenticationPreboardCSo10LAPreboardP33_DB3825892A0424A537C397595CD60A8F20LifecycleManagerMock)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LAPreboard.LifecycleManagerMock();
  return [(LAPreboard.LifecycleManagerMock *)&v3 init];
}

@end