@interface ShardSpinnerDownloadCell
- (_TtC19HealthMedicationsUI24ShardSpinnerDownloadCell)initWithCoder:(id)a3;
- (_TtC19HealthMedicationsUI24ShardSpinnerDownloadCell)initWithFrame:(CGRect)a3;
@end

@implementation ShardSpinnerDownloadCell

- (_TtC19HealthMedicationsUI24ShardSpinnerDownloadCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = self + OBJC_IVAR____TtC19HealthMedicationsUI24ShardSpinnerDownloadCell_item;
  v9 = type metadata accessor for ShardSpinnerDownloadCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v13.receiver = self;
  v13.super_class = v9;
  v10 = [(ShardSpinnerDownloadCell *)&v13 initWithFrame:x, y, width, height];
  [(ShardSpinnerDownloadCell *)v10 setUserInteractionEnabled:0];
  v11 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  [(ShardSpinnerDownloadCell *)v10 setBackgroundColor:v11];

  sub_22835030C();
  return v10;
}

- (_TtC19HealthMedicationsUI24ShardSpinnerDownloadCell)initWithCoder:(id)a3
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