@interface TagFeedViewerSportsEventTitleView
- (void)layoutSubviews;
@end

@implementation TagFeedViewerSportsEventTitleView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(TagFeedViewerSportsEventTitleView *)&v5 layoutSubviews];
  v3 = [v2 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (v4 == 2)
  {
    sub_218D623BC();
  }

  else
  {
    sub_218D62698();
  }
}

@end