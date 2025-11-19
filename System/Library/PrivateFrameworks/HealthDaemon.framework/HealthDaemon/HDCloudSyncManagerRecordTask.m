@interface HDCloudSyncManagerRecordTask
- (HDCloudSyncManagerRecordTask)initWithManager:(id)a3 context:(id)a4 accessibilityAssertion:(id)a5 completion:(id)a6;
- (HDCloudSyncManagerRecordTask)initWithManager:(id)a3 context:(id)a4 accessibilityAssertion:(id)a5 recordsToCreate:(id)a6 recordsToDelete:(id)a7 completion:(id)a8;
- (id)pipelineForRepository:(id)a3;
@end

@implementation HDCloudSyncManagerRecordTask

- (HDCloudSyncManagerRecordTask)initWithManager:(id)a3 context:(id)a4 accessibilityAssertion:(id)a5 recordsToCreate:(id)a6 recordsToDelete:(id)a7 completion:(id)a8
{
  v11 = _Block_copy(a8);
  sub_22911C5BC();
  v12 = sub_22911C45C();
  v13 = sub_22911C45C();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  return sub_2289C0150(v15, v16, a5, v12, v13, sub_2289C1030, v14);
}

- (id)pipelineForRepository:(id)a3
{
  v4 = a3;
  v5 = self;
  HDCloudSyncManagerRecordTask.pipeline(for:)(v6, v4);
  v8 = v7;

  return v8;
}

- (HDCloudSyncManagerRecordTask)initWithManager:(id)a3 context:(id)a4 accessibilityAssertion:(id)a5 completion:(id)a6
{
  _Block_copy(a6);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end