@interface LockdownModeManagerInternal
+ (LockdownModeManagerInternal)shared;
- (BOOL)enabledInAccount;
- (LockdownModeManagerInternal)init;
- (void)migrateIfNeededWithCompletion:(id)a3;
- (void)notifyRestrictionChanged:(id)a3;
- (void)rebootIfNeeded;
- (void)setEnabled:(BOOL)a3 options:(id)a4 completion:(id)a5;
@end

@implementation LockdownModeManagerInternal

- (LockdownModeManagerInternal)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___LockdownModeManagerInternal____lazy_storage___connection) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(LockdownModeManagerInternal *)&v5 init];
}

+ (LockdownModeManagerInternal)shared
{
  if (qword_1ED51B638 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED51B640;

  return v3;
}

- (BOOL)enabledInAccount
{
  v2 = self;
  v3 = LockdownModeManager.enabledInAccount.getter();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)a3 options:(id)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  if (a4)
  {
    a4 = sub_1DA9BFED8();
  }

  _Block_copy(v8);
  v9 = self;
  sub_1DA9BF828(a3, a4, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)notifyRestrictionChanged:(id)a3
{
  v4 = sub_1DA9BFEF8();
  v6 = v5;
  v7 = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LockdownModeManager.notifyRestrictionChanged(_:)(v8);
}

- (void)migrateIfNeededWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1DA9BFA40(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)rebootIfNeeded
{
  v5 = self;
  v2 = sub_1DA9BD558(sub_1DA9BD660, &block_descriptor_94, &selRef_synchronousRemoteObjectProxyWithErrorHandler_);
  if (v2)
  {
    v3 = v2;
    aBlock[4] = sub_1DA9BE834;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DA9BDCC8;
    aBlock[3] = &block_descriptor_63;
    v4 = _Block_copy(aBlock);
    [v3 rebootIfNeededWithCompletion_];
    swift_unknownObjectRelease();

    _Block_release(v4);
  }

  else
  {
  }
}

@end