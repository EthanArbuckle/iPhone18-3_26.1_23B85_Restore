@interface CloudSyncCollectionViewCell
- (_TtC18HealthExperienceUI27CloudSyncCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)awakeFromNib;
@end

@implementation CloudSyncCollectionViewCell

- (_TtC18HealthExperienceUI27CloudSyncCollectionViewCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_cloudSyncDetailView;
  v9 = [objc_allocWithZone(type metadata accessor for ActivityIndicatorDetailView(0)) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.isa + v8) = v9;
  v10 = self + OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_item;
  v11 = type metadata accessor for CloudSyncCollectionViewCell();
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v14.receiver = self;
  v14.super_class = v11;
  v12 = [(CloudSyncCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  sub_1BA060A74();

  return v12;
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for CloudSyncCollectionViewCell();
  [(CloudSyncCollectionViewCell *)&v2 awakeFromNib];
}

@end