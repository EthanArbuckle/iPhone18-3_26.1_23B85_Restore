@interface MockIdentifyCluster
- (_TtC13HomeDataModel19MockIdentifyCluster)initWithDevice:(id)a3 endpoint:(unsigned __int16)a4 queue:(id)a5;
- (_TtC13HomeDataModel19MockIdentifyCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5;
- (void)identifyWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6;
@end

@implementation MockIdentifyCluster

- (void)identifyWithParams:(id)a3 expectedValues:(id)a4 expectedValueInterval:(id)a5 completion:(id)a6
{
  v10 = _Block_copy(a6);
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    sub_1D1E67C1C();
  }

  _Block_copy(v10);
  v11 = a3;
  v12 = a5;
  v13 = self;
  sub_1D19FB700(v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

- (_TtC13HomeDataModel19MockIdentifyCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeDataModel19MockIdentifyCluster)initWithDevice:(id)a3 endpoint:(unsigned __int16)a4 queue:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end