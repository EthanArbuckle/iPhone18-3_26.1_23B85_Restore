@interface CUICPhoneLockStateObserver
- (id)listenWith:(id)with;
- (void)dealloc;
@end

@implementation CUICPhoneLockStateObserver

- (id)listenWith:(id)with
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v19 - v7;
  v9 = _Block_copy(with);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_1C2F768AC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  sub_1C2F7688C();
  selfCopy = self;

  v13 = sub_1C2F7687C();
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = selfCopy;
  v14[5] = sub_1C2F458F4;
  v14[6] = v10;
  v16 = sub_1C2F06F8C(0, 0, v8, &unk_1C2F7C458, v14);

  v19[1] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076C58, &qword_1C2F7C3F8);
  v17 = sub_1C2F76F0C();

  return v17;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___CUICPhoneLockStateObserver_token;
  swift_beginAccess();
  LODWORD(v4) = *(&self->super.isa + v4);
  selfCopy = self;
  notify_cancel(v4);
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(CUICPhoneLockStateObserver *)&v6 dealloc];
}

@end