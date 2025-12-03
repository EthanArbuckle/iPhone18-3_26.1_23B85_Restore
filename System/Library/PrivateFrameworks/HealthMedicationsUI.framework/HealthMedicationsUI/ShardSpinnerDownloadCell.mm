@interface ShardSpinnerDownloadCell
- (_TtC19HealthMedicationsUI24ShardSpinnerDownloadCell)initWithCoder:(id)coder;
- (_TtC19HealthMedicationsUI24ShardSpinnerDownloadCell)initWithFrame:(CGRect)frame;
@end

@implementation ShardSpinnerDownloadCell

- (_TtC19HealthMedicationsUI24ShardSpinnerDownloadCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI24ShardSpinnerDownloadCell_item;
  v9 = type metadata accessor for ShardSpinnerDownloadCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v13.receiver = self;
  v13.super_class = v9;
  height = [(ShardSpinnerDownloadCell *)&v13 initWithFrame:x, y, width, height];
  [(ShardSpinnerDownloadCell *)height setUserInteractionEnabled:0];
  secondarySystemGroupedBackgroundColor = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [(ShardSpinnerDownloadCell *)height setBackgroundColor:secondarySystemGroupedBackgroundColor];

  sub_22835030C();
  return height;
}

- (_TtC19HealthMedicationsUI24ShardSpinnerDownloadCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC19HealthMedicationsUI24ShardSpinnerDownloadCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_228393300();
  __break(1u);
  return result;
}

@end