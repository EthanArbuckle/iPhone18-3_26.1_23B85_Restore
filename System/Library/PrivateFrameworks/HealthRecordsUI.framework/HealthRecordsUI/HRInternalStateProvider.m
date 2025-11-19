@interface HRInternalStateProvider
- (HRInternalStateProvider)init;
- (HRInternalStateProvider)initWithHealthStore:(id)a3;
- (HRInternalStateProvider)initWithProfile:(id)a3;
- (void)clinicalIngestionStore:(id)a3 ingestionStateDidUpdateTo:(int64_t)a4;
- (void)conceptStore:(id)a3 indexManagerDidChangeState:(unint64_t)a4;
- (void)fetchJSONWithCompletion:(id)a3;
@end

@implementation HRInternalStateProvider

- (HRInternalStateProvider)initWithHealthStore:(id)a3
{
  v4 = objc_allocWithZone(MEMORY[0x1E696C038]);
  v5 = a3;
  v6 = [v4 initWithHealthStore_];
  v7 = [objc_allocWithZone(MEMORY[0x1E696C1A8]) initWithHealthStore_];
  v8 = objc_allocWithZone(type metadata accessor for InternalStateProvider());
  v9 = sub_1D11E0D98(v6, v7);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v9;
}

- (HRInternalStateProvider)initWithProfile:(id)a3
{
  v3 = a3;
  v4 = [v3 conceptStore];
  v5 = [v3 healthRecordsStore];
  v6 = objc_allocWithZone(type metadata accessor for InternalStateProvider());
  v7 = sub_1D11E0D98(v4, v5);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)fetchJSONWithCompletion:(id)a3
{
  sub_1D11E640C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1D13905DC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1D13A80C8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1D13A80D8;
  v12[5] = v11;
  v13 = self;
  sub_1D11E58DC(0, 0, v7, &unk_1D13A80E8, v12);
}

- (HRInternalStateProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)clinicalIngestionStore:(id)a3 ingestionStateDidUpdateTo:(int64_t)a4
{
  sub_1D11E640C(0, &qword_1EE06A650, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1D13905DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = a4;
  v11 = self;
  sub_1D107877C(0, 0, v8, &unk_1D13A8098, v10);
}

- (void)conceptStore:(id)a3 indexManagerDidChangeState:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_1D11E60E8();
}

@end