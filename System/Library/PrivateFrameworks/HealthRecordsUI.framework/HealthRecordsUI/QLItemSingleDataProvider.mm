@interface QLItemSingleDataProvider
- (_TtC15HealthRecordsUI24QLItemSingleDataProvider)init;
- (id)provideDataForItem:(id)item;
@end

@implementation QLItemSingleDataProvider

- (id)provideDataForItem:(id)item
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI24QLItemSingleDataProvider_data);
  v4 = *&self->data[OBJC_IVAR____TtC15HealthRecordsUI24QLItemSingleDataProvider_data];
  sub_1D1083D58(v3, v4);
  v5 = sub_1D138D3CC();
  sub_1D1083DAC(v3, v4);

  return v5;
}

- (_TtC15HealthRecordsUI24QLItemSingleDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end