@interface LockdownModeManagerInternal
+ (LockdownModeManagerInternal)shared;
- (BOOL)enabledInAccount;
- (LockdownModeManagerInternal)init;
- (void)migrateIfNeededWithCompletion:(id)completion;
- (void)notifyRestrictionChanged:(id)changed;
- (void)rebootIfNeeded;
- (void)setEnabled:(BOOL)enabled options:(id)options completion:(id)completion;
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
  selfCopy = self;
  v3 = LockdownModeManager.enabledInAccount.getter();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)enabled options:(id)options completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (options)
  {
    options = sub_1DA9BFED8();
  }

  _Block_copy(v8);
  selfCopy = self;
  sub_1DA9BF828(enabled, options, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)notifyRestrictionChanged:(id)changed
{
  v4 = sub_1DA9BFEF8();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LockdownModeManager.notifyRestrictionChanged(_:)(v8);
}

- (void)migrateIfNeededWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1DA9BFA40(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)rebootIfNeeded
{
  selfCopy = self;
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