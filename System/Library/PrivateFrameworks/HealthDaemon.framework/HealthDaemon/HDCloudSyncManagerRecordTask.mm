@interface HDCloudSyncManagerRecordTask
- (HDCloudSyncManagerRecordTask)initWithManager:(id)manager context:(id)context accessibilityAssertion:(id)assertion completion:(id)completion;
- (HDCloudSyncManagerRecordTask)initWithManager:(id)manager context:(id)context accessibilityAssertion:(id)assertion recordsToCreate:(id)create recordsToDelete:(id)delete completion:(id)completion;
- (id)pipelineForRepository:(id)repository;
@end

@implementation HDCloudSyncManagerRecordTask

- (HDCloudSyncManagerRecordTask)initWithManager:(id)manager context:(id)context accessibilityAssertion:(id)assertion recordsToCreate:(id)create recordsToDelete:(id)delete completion:(id)completion
{
  v11 = _Block_copy(completion);
  sub_22911C5BC();
  v12 = sub_22911C45C();
  v13 = sub_22911C45C();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  managerCopy = manager;
  contextCopy = context;
  assertionCopy = assertion;
  return sub_2289C0150(managerCopy, contextCopy, assertion, v12, v13, sub_2289C1030, v14);
}

- (id)pipelineForRepository:(id)repository
{
  repositoryCopy = repository;
  selfCopy = self;
  HDCloudSyncManagerRecordTask.pipeline(for:)(v6, repositoryCopy);
  v8 = v7;

  return v8;
}

- (HDCloudSyncManagerRecordTask)initWithManager:(id)manager context:(id)context accessibilityAssertion:(id)assertion completion:(id)completion
{
  _Block_copy(completion);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end