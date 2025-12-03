@interface DownloadingDataCell
- (_TtC18HealthExperienceUI19DownloadingDataCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI19DownloadingDataCell)initWithFrame:(CGRect)frame;
@end

@implementation DownloadingDataCell

- (_TtC18HealthExperienceUI19DownloadingDataCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC18HealthExperienceUI19DownloadingDataCell_item;
  v9 = type metadata accessor for DownloadingDataCell();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v15.receiver = self;
  v15.super_class = v9;
  height = [(DownloadingDataCell *)&v15 initWithFrame:x, y, width, height];
  v11 = objc_opt_self();
  v12 = height;
  secondarySystemGroupedBackgroundColor = [v11 secondarySystemGroupedBackgroundColor];
  [(DownloadingDataCell *)v12 setBackgroundColor:secondarySystemGroupedBackgroundColor];

  sub_1BA39C070();
  return v12;
}

- (_TtC18HealthExperienceUI19DownloadingDataCell)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC18HealthExperienceUI19DownloadingDataCell_item;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end