@interface CoordinationXPC.Server
- (void)graphUpdatedWithSource:(id)source completion:(id)completion;
- (void)migrateViewDatabasesWithCompletion:(id)completion;
- (void)sourceUpdatedWithSourceType:(id)type sourceIdentifier:(id)identifier completion:(id)completion;
- (void)streamUpdatedWithStreamName:(id)name isDelete:(BOOL)delete completion:(id)completion;
- (void)streamsChangedWithUpdated:(id)updated deletes:(id)deletes completion:(id)completion;
- (void)sysdiagnoseInfoWithCompletion:(id)completion;
@end

@implementation CoordinationXPC.Server

- (void)graphUpdatedWithSource:(id)source completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (source)
  {
    v7 = sub_1C4F01138();
    source = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  selfCopy = self;
  sub_1C469E7DC(v7, source, selfCopy, v6);
  _Block_release(v6);
}

- (void)sourceUpdatedWithSourceType:(id)type sourceIdentifier:(id)identifier completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_1C4F01138();
  v9 = v8;
  v10 = sub_1C4F01138();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_1C469ED8C(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);
}

- (void)streamUpdatedWithStreamName:(id)name isDelete:(BOOL)delete completion:(id)completion
{
  deleteCopy = delete;
  v7 = _Block_copy(completion);
  v8 = sub_1C4F01138();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_1C469F364(v8, v10, deleteCopy, selfCopy, v7);
  _Block_release(v7);
}

- (void)streamsChangedWithUpdated:(id)updated deletes:(id)deletes completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_1C4F01678();
  v8 = sub_1C4F01678();
  _Block_copy(v6);
  selfCopy = self;
  sub_1C469F8D8(v7, v8, selfCopy, v6);
  _Block_release(v6);
}

- (void)migrateViewDatabasesWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_1C469FE24(selfCopy, v4);
  _Block_release(v4);
}

- (void)sysdiagnoseInfoWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_1C446D134(&unk_1C4F17CD8, v5);
}

@end