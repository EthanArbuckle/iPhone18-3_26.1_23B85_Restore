@interface ArticleViewerAppStateMonitor
- (_TtC12NewsArticles28ArticleViewerAppStateMonitor)init;
- (void)performOnApplicationDidEnterBackground:(id)background;
- (void)performOnApplicationWillEnterForeground:(id)foreground;
- (void)performOnApplicationWindowDidBecomeBackground:(id)background;
- (void)performOnApplicationWindowDidBecomeForeground:(id)foreground;
@end

@implementation ArticleViewerAppStateMonitor

- (_TtC12NewsArticles28ArticleViewerAppStateMonitor)init
{
  ObjectType = swift_getObjectType();
  v4 = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles28ArticleViewerAppStateMonitor_onForegroundClosures) = MEMORY[0x1E69E7CC0];
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles28ArticleViewerAppStateMonitor_onEnterBackgroundClosures) = v4;
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles28ArticleViewerAppStateMonitor_onWindowForegroundClosures) = v4;
  *(&self->super.isa + OBJC_IVAR____TtC12NewsArticles28ArticleViewerAppStateMonitor_onWindowBackgroundClosures) = v4;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ArticleViewerAppStateMonitor *)&v6 init];
}

- (void)performOnApplicationWillEnterForeground:(id)foreground
{
  v4 = _Block_copy(foreground);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D7B9AEEC;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR____TtC12NewsArticles28ArticleViewerAppStateMonitor_onForegroundClosures;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  selfCopy = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&self->super.isa + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1D79E4CFC(0, *(v8 + 2) + 1, 1, v8);
    *(&self->super.isa + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1D79E4CFC((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = (v8 + 16 * v12);
  v13[4] = sub_1D7A66DA0;
  v13[5] = v6;
  *(&self->super.isa + v7) = v8;
  swift_endAccess();
}

- (void)performOnApplicationDidEnterBackground:(id)background
{
  v4 = _Block_copy(background);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D7B9AEEC;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR____TtC12NewsArticles28ArticleViewerAppStateMonitor_onEnterBackgroundClosures;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  selfCopy = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&self->super.isa + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1D79E4CFC(0, *(v8 + 2) + 1, 1, v8);
    *(&self->super.isa + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1D79E4CFC((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = (v8 + 16 * v12);
  v13[4] = sub_1D7A66DA0;
  v13[5] = v6;
  *(&self->super.isa + v7) = v8;
  swift_endAccess();
}

- (void)performOnApplicationWindowDidBecomeForeground:(id)foreground
{
  v4 = _Block_copy(foreground);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D7B9AEEC;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR____TtC12NewsArticles28ArticleViewerAppStateMonitor_onWindowForegroundClosures;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  selfCopy = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&self->super.isa + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1D79E4CFC(0, *(v8 + 2) + 1, 1, v8);
    *(&self->super.isa + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1D79E4CFC((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = (v8 + 16 * v12);
  v13[4] = sub_1D7A66DA0;
  v13[5] = v6;
  *(&self->super.isa + v7) = v8;
  swift_endAccess();
}

- (void)performOnApplicationWindowDidBecomeBackground:(id)background
{
  v4 = _Block_copy(background);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D7B9AEDC;
  *(v6 + 24) = v5;
  v7 = OBJC_IVAR____TtC12NewsArticles28ArticleViewerAppStateMonitor_onWindowBackgroundClosures;
  swift_beginAccess();
  v8 = *(&self->super.isa + v7);
  selfCopy = self;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&self->super.isa + v7) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1D79E4CFC(0, *(v8 + 2) + 1, 1, v8);
    *(&self->super.isa + v7) = v8;
  }

  v12 = *(v8 + 2);
  v11 = *(v8 + 3);
  if (v12 >= v11 >> 1)
  {
    v8 = sub_1D79E4CFC((v11 > 1), v12 + 1, 1, v8);
  }

  *(v8 + 2) = v12 + 1;
  v13 = (v8 + 16 * v12);
  v13[4] = sub_1D79C932C;
  v13[5] = v6;
  *(&self->super.isa + v7) = v8;
  swift_endAccess();
}

@end