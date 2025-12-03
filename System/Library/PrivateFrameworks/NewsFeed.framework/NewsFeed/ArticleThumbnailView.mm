@interface ArticleThumbnailView
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation ArticleThumbnailView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(ArticleThumbnailView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_staticContentView];
  [v2 bounds];
  [v3 setFrame_];
  v4 = *&v2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView];
  [v2 bounds];
  [v4 setFrame_];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(ArticleThumbnailView *)&v3 didMoveToSuperview];
  if (([*&v2[OBJC_IVAR____TtC8NewsFeed20ArticleThumbnailView_dynamicContentView] isHidden] & 1) == 0)
  {
    sub_1D7041968();
  }
}

- (void)removeFromSuperview
{
  selfCopy = self;
  ArticleThumbnailView.removeFromSuperview()();
}

@end