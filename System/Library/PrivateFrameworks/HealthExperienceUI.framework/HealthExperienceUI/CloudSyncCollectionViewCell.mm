@interface CloudSyncCollectionViewCell
- (_TtC18HealthExperienceUI27CloudSyncCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)awakeFromNib;
@end

@implementation CloudSyncCollectionViewCell

- (_TtC18HealthExperienceUI27CloudSyncCollectionViewCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_cloudSyncDetailView;
  initWithFrame_ = [objc_allocWithZone(type metadata accessor for ActivityIndicatorDetailView(0)) initWithFrame_];
  [initWithFrame_ setTranslatesAutoresizingMaskIntoConstraints_];
  *(&self->super.super.super.super.super.isa + v8) = initWithFrame_;
  v10 = self + OBJC_IVAR____TtC18HealthExperienceUI27CloudSyncCollectionViewCell_item;
  v11 = type metadata accessor for CloudSyncCollectionViewCell();
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v14.receiver = self;
  v14.super_class = v11;
  height = [(CloudSyncCollectionViewCell *)&v14 initWithFrame:x, y, width, height];
  sub_1BA060A74();

  return height;
}

- (void)awakeFromNib
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for CloudSyncCollectionViewCell();
  [(CloudSyncCollectionViewCell *)&v2 awakeFromNib];
}

@end