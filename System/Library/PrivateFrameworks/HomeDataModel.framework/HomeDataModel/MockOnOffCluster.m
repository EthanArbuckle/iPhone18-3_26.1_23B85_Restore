@interface MockOnOffCluster
- (_TtC13HomeDataModel16MockOnOffCluster)initWithDevice:(id)a3 endpoint:(unsigned __int16)a4 queue:(id)a5;
- (_TtC13HomeDataModel16MockOnOffCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5;
- (id)readAttributeOnOffWithParams:(id)a3;
@end

@implementation MockOnOffCluster

- (id)readAttributeOnOffWithParams:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  v5 = *MEMORY[0x1E696F568];
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v6;
  v7 = self;
  v8 = sub_1D19F86D0();
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = v8 & 1;
  sub_1D18D6538(inited);
  swift_setDeallocating();
  sub_1D1741A30(inited + 32, &qword_1EC646238, &qword_1D1E7E8D0);

  v9 = sub_1D1E675DC();

  return v9;
}

- (_TtC13HomeDataModel16MockOnOffCluster)initWithDevice:(id)a3 endpointID:(id)a4 queue:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HomeDataModel16MockOnOffCluster)initWithDevice:(id)a3 endpoint:(unsigned __int16)a4 queue:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end