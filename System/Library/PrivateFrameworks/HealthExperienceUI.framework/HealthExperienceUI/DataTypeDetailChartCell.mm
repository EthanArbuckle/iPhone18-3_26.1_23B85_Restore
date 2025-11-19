@interface DataTypeDetailChartCell
- (NSString)chartOverlayVersion;
- (NSString)description;
- (_TtC18HealthExperienceUI23DataTypeDetailChartCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI23DataTypeDetailChartCell)initWithFrame:(CGRect)a3;
@end

@implementation DataTypeDetailChartCell

- (NSString)description
{
  swift_getObjectType();
  v3 = self;
  v4 = sub_1BA4A85D8();
  MEMORY[0x1BFAF1350](v4);

  MEMORY[0x1BFAF1350](8250, 0xE200000000000000);
  sub_1BA4A7FB8();

  v5 = sub_1BA4A6758();

  return v5;
}

- (_TtC18HealthExperienceUI23DataTypeDetailChartCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController) = 0;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  v9 = type metadata accessor for DataTypeDetailChartCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(DataTypeDetailChartCell *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI23DataTypeDetailChartCell)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_chartViewController) = 0;
  v5 = self + OBJC_IVAR____TtC18HealthExperienceUI23DataTypeDetailChartCell_item;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DataTypeDetailChartCell();
  v6 = a3;
  v7 = [(DataTypeDetailChartCell *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

- (NSString)chartOverlayVersion
{
  v2 = self;
  v3 = DataTypeDetailChartCell.chartOverlayVersion.getter();

  return v3;
}

@end