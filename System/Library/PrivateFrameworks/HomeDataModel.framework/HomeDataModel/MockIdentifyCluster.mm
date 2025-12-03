@interface MockIdentifyCluster
- (_TtC13HomeDataModel19MockIdentifyCluster)initWithDevice:(id)device endpoint:(unsigned __int16)endpoint queue:(id)queue;
- (_TtC13HomeDataModel19MockIdentifyCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue;
- (void)identifyWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion;
@end

@implementation MockIdentifyCluster

- (void)identifyWithParams:(id)params expectedValues:(id)values expectedValueInterval:(id)interval completion:(id)completion
{
  v10 = _Block_copy(completion);
  if (values)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    sub_1D1E67C1C();
  }

  _Block_copy(v10);
  paramsCopy = params;
  intervalCopy = interval;
  selfCopy = self;
  sub_1D19FB700(selfCopy, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (_TtC13HomeDataModel19MockIdentifyCluster)initWithDevice:(id)device endpointID:(id)d queue:(id)queue
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeDataModel19MockIdentifyCluster)initWithDevice:(id)device endpoint:(unsigned __int16)endpoint queue:(id)queue
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end