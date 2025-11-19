@interface VideoAdProviderMetricsHelper
- (_TtC7NewsAds28VideoAdProviderMetricsHelper)init;
- (void)muteStateChanged:(BOOL)a3;
- (void)playbackFailedWithError:(id)a3;
- (void)playbackFinished;
- (void)playbackPassedQuartile:(unint64_t)a3;
- (void)playbackReadyToStart;
- (void)playbackStarted;
- (void)tappedToToggleControlVisibility:(BOOL)a3;
- (void)willUnload;
@end

@implementation VideoAdProviderMetricsHelper

- (_TtC7NewsAds28VideoAdProviderMetricsHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)playbackReadyToStart
{
  v2 = self;
  VideoAdProviderMetricsHelper.playbackReadyToStart()();
}

- (void)playbackStarted
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v2)
  {
    [v2 mediaStarted];
  }
}

- (void)playbackFinished
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v2)
  {
    [v2 mediaFinished];
  }
}

- (void)playbackFailedWithError:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_diagnosticMetricsHelper);
  if (a3)
  {
    swift_getErrorValue();
    v6 = self;
    v7 = a3;
    sub_1D7704A80();
  }

  else
  {
    v8 = self;
  }

  v9 = sub_1D7704230();

  [v5 mediaPlaybackFailedWithReason_];
}

- (void)muteStateChanged:(BOOL)a3
{
  v4 = self;
  VideoAdProviderMetricsHelper.muteStateChanged(_:)(a3);
}

- (void)playbackPassedQuartile:(unint64_t)a3
{
  v4 = self;
  VideoAdProviderMetricsHelper.playbackPassed(quartile:)(a3);
}

- (void)tappedToToggleControlVisibility:(BOOL)a3
{
  if (!a3)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (v3)
    {
      v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata);
      v5 = self;
      [v4 time];
      [v3 mediaShowControlsAtPosition_];
    }
  }
}

- (void)willUnload
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
  if (v2)
  {
    [v2 mediaUserExitedArticle];
  }
}

@end