@interface FASettingProtoAccountRestrictionsOperation
- (FASettingProtoAccountRestrictionsOperation)init;
- (void)applyDefaultRestrictionsForProtoAccountWithScreenTimeCore:(FAScreenTimeCoreSoftLinking *)core completion:(id)completion;
@end

@implementation FASettingProtoAccountRestrictionsOperation

- (void)applyDefaultRestrictionsForProtoAccountWithScreenTimeCore:(FAScreenTimeCoreSoftLinking *)core completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = core;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008DD60;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008C7F0;
  v16[5] = v15;
  coreCopy = core;
  selfCopy = self;
  sub_100071FE8(0, 0, v11, &unk_10008C6E0, v16);
}

- (FASettingProtoAccountRestrictionsOperation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SettingProtoAccountRestrictionsOperation();
  return [(FASettingProtoAccountRestrictionsOperation *)&v3 init];
}

@end