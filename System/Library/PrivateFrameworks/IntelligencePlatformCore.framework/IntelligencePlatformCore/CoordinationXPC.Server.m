@interface CoordinationXPC.Server
- (void)graphUpdatedWithSource:(id)a3 completion:(id)a4;
- (void)migrateViewDatabasesWithCompletion:(id)a3;
- (void)sourceUpdatedWithSourceType:(id)a3 sourceIdentifier:(id)a4 completion:(id)a5;
- (void)streamUpdatedWithStreamName:(id)a3 isDelete:(BOOL)a4 completion:(id)a5;
- (void)streamsChangedWithUpdated:(id)a3 deletes:(id)a4 completion:(id)a5;
- (void)sysdiagnoseInfoWithCompletion:(id)a3;
@end

@implementation CoordinationXPC.Server

- (void)graphUpdatedWithSource:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    v7 = sub_1C4F01138();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  v9 = self;
  sub_1C469E7DC(v7, a3, v9, v6);
  _Block_release(v6);
}

- (void)sourceUpdatedWithSourceType:(id)a3 sourceIdentifier:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1C4F01138();
  v9 = v8;
  v10 = sub_1C4F01138();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_1C469ED8C(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
}

- (void)streamUpdatedWithStreamName:(id)a3 isDelete:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v7 = _Block_copy(a5);
  v8 = sub_1C4F01138();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_1C469F364(v8, v10, v5, v11, v7);
  _Block_release(v7);
}

- (void)streamsChangedWithUpdated:(id)a3 deletes:(id)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_1C4F01678();
  v8 = sub_1C4F01678();
  _Block_copy(v6);
  v9 = self;
  sub_1C469F8D8(v7, v8, v9, v6);
  _Block_release(v6);
}

- (void)migrateViewDatabasesWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1C469FE24(v5, v4);
  _Block_release(v4);
}

- (void)sysdiagnoseInfoWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_1C446D134(&unk_1C4F17CD8, v5);
}

@end