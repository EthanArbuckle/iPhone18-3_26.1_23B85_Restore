@interface SummaryHeaderProfileAvatarImageCell
- (_TtC18HealthExperienceUI35SummaryHeaderProfileAvatarImageCell)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI35SummaryHeaderProfileAvatarImageCell)initWithFrame:(CGRect)frame;
- (void)showProfileViewController;
@end

@implementation SummaryHeaderProfileAvatarImageCell

- (void)showProfileViewController
{
  selfCopy = self;
  sub_1BA25EA84();
}

- (_TtC18HealthExperienceUI35SummaryHeaderProfileAvatarImageCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SummaryHeaderProfileAvatarImageCell();
  return [(ProfileAvatarImageCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI35SummaryHeaderProfileAvatarImageCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SummaryHeaderProfileAvatarImageCell();
  coderCopy = coder;
  v5 = [(ProfileAvatarImageCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end