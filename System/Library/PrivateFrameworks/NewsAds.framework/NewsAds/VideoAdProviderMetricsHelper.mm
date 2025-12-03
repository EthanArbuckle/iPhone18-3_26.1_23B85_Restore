@interface VideoAdProviderMetricsHelper
- (_TtC7NewsAds28VideoAdProviderMetricsHelper)init;
- (void)muteStateChanged:(BOOL)changed;
- (void)playbackFailedWithError:(id)error;
- (void)playbackFinished;
- (void)playbackPassedQuartile:(unint64_t)quartile;
- (void)playbackReadyToStart;
- (void)playbackStarted;
- (void)tappedToToggleControlVisibility:(BOOL)visibility;
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
  selfCopy = self;
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

- (void)playbackFailedWithError:(id)error
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_diagnosticMetricsHelper);
  if (error)
  {
    swift_getErrorValue();
    selfCopy = self;
    errorCopy = error;
    sub_1D7704A80();
  }

  else
  {
    selfCopy2 = self;
  }

  v9 = sub_1D7704230();

  [v5 mediaPlaybackFailedWithReason_];
}

- (void)muteStateChanged:(BOOL)changed
{
  selfCopy = self;
  VideoAdProviderMetricsHelper.muteStateChanged(_:)(changed);
}

- (void)playbackPassedQuartile:(unint64_t)quartile
{
  selfCopy = self;
  VideoAdProviderMetricsHelper.playbackPassed(quartile:)(quartile);
}

- (void)tappedToToggleControlVisibility:(BOOL)visibility
{
  if (!visibility)
  {
    v3 = *(&self->super.isa + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_mediaMetricsHelper);
    if (v3)
    {
      v4 = *(&self->super.isa + OBJC_IVAR____TtC7NewsAds28VideoAdProviderMetricsHelper_metadata);
      selfCopy = self;
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