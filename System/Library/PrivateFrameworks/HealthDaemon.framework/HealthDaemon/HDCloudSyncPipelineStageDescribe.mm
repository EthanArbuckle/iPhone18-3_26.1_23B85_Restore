@interface HDCloudSyncPipelineStageDescribe
- (HDCloudSyncPipelineStageDescribe)initWithConfiguration:(id)configuration cloudState:(id)state;
- (HDCloudSyncPipelineStageDescribe)initWithConfiguration:(id)configuration cloudState:(id)state respositoryDescriptionHandler:(id)handler;
- (id)respositoryDescriptionHandler;
- (void)main;
@end

@implementation HDCloudSyncPipelineStageDescribe

- (id)respositoryDescriptionHandler
{
  v2 = *(self + OBJC_IVAR___HDCloudSyncPipelineStageDescribe_respositoryDescriptionHandler + 8);
  v5[4] = *(self + OBJC_IVAR___HDCloudSyncPipelineStageDescribe_respositoryDescriptionHandler);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_2289C6B18;
  v5[3] = &block_descriptor_15;
  v3 = _Block_copy(v5);

  return v3;
}

- (HDCloudSyncPipelineStageDescribe)initWithConfiguration:(id)configuration cloudState:(id)state respositoryDescriptionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = (self + OBJC_IVAR___HDCloudSyncPipelineStageDescribe_respositoryDescriptionHandler);
  *v10 = sub_228A103CC;
  v10[1] = v9;
  v12.receiver = self;
  v12.super_class = HDCloudSyncPipelineStageDescribe;
  return [(HDCloudSyncPipelineStage *)&v12 initWithConfiguration:configuration cloudState:state];
}

- (void)main
{
  selfCopy = self;
  HDCloudSyncPipelineStageDescribe.main()();
}

- (HDCloudSyncPipelineStageDescribe)initWithConfiguration:(id)configuration cloudState:(id)state
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end