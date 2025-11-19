@interface SummaryHeaderProfileAvatarImageCell
- (_TtC18HealthExperienceUI35SummaryHeaderProfileAvatarImageCell)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI35SummaryHeaderProfileAvatarImageCell)initWithFrame:(CGRect)a3;
- (void)showProfileViewController;
@end

@implementation SummaryHeaderProfileAvatarImageCell

- (void)showProfileViewController
{
  v2 = self;
  sub_1BA25EA84();
}

- (_TtC18HealthExperienceUI35SummaryHeaderProfileAvatarImageCell)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SummaryHeaderProfileAvatarImageCell();
  return [(ProfileAvatarImageCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI35SummaryHeaderProfileAvatarImageCell)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SummaryHeaderProfileAvatarImageCell();
  v4 = a3;
  v5 = [(ProfileAvatarImageCell *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end