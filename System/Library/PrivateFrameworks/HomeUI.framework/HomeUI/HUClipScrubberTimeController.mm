@interface HUClipScrubberTimeController
- (BOOL)isAtMinimumZoom;
- (HUClipScrubberTimeController)init;
- (double)_numberOfPosterFrameUnitsForEvent:(id)event timeScale:(double)scale;
- (double)clampGestureScale:(double)scale;
- (double)maximumGestureScale;
- (double)numberOfPosterFrameUnitsForEvent:(id)event;
- (double)posterFrameWidthFromCameraLiveSource;
- (double)timelineWidthForEvent:(id)event;
- (double)updateTimeScaleForGestureScale:(double)scale;
- (void)dealloc;
- (void)expandTimelineToMaximumZoom;
- (void)recalculateMaximumPosterFrameDuration:(id)duration;
- (void)shrinkTimelineToMinimumZoom;
- (void)updateTimeScaleIfNeeded;
@end

@implementation HUClipScrubberTimeController

- (HUClipScrubberTimeController)init
{
  v3.receiver = self;
  v3.super_class = HUClipScrubberTimeController;
  result = [(HUClipScrubberTimeController *)&v3 init];
  if (result)
  {
    *&result->_timeScale = xmmword_20D5CB460;
  }

  return result;
}

- (void)recalculateMaximumPosterFrameDuration:(id)duration
{
  durationCopy = duration;
  [(HUClipScrubberTimeController *)self _numberOfPosterFrameUnitsForEvent:durationCopy timeScale:10.0];
  v6 = v5;
  [durationCopy duration];
  v8 = v7;

  v9 = v8 / v6;
  [(HUClipScrubberTimeController *)self maximumPosterFrameDuration];
  if (v9 > v10)
  {
    [(HUClipScrubberTimeController *)self setMaximumPosterFrameDuration:v9];
  }

  [(HUClipScrubberTimeController *)self maximumPosterFrameDuration];
  [(HUClipScrubberTimeController *)self setMaximumPosterFrameDuration:fmax(v11, 2.0)];

  [(HUClipScrubberTimeController *)self updateTimeScaleIfNeeded];
}

- (void)updateTimeScaleIfNeeded
{
  [(HUClipScrubberTimeController *)self timeScale];
  if (v3 < 2.0 || ![(HUClipScrubberTimeController *)self userControlled])
  {
    [(HUClipScrubberTimeController *)self maximumPosterFrameDuration];
    [(HUClipScrubberTimeController *)self setTimeScale:fmax(v4, 2.0)];
  }

  if ([MEMORY[0x277D14500] shouldCacheScrubberTimeScale])
  {
    [MEMORY[0x277D14500] cachedScrubberTimeScale];
    if (v5 < 2.0)
    {
      v5 = 2.0;
    }

    [(HUClipScrubberTimeController *)self setTimeScale:v5];
  }
}

- (double)maximumGestureScale
{
  [(HUClipScrubberTimeController *)self maximumPosterFrameDuration];
  v4 = v3;
  [(HUClipScrubberTimeController *)self minimumPosterFrameDuration];
  return v4 / v5;
}

- (double)clampGestureScale:(double)scale
{
  [(HUClipScrubberTimeController *)self maximumGestureScale];
  if (result > scale)
  {
    result = scale;
  }

  if (result < 1.0)
  {
    return 1.0;
  }

  return result;
}

- (double)updateTimeScaleForGestureScale:(double)scale
{
  [(HUClipScrubberTimeController *)self maximumPosterFrameDuration];
  v6 = v5 / scale;
  [(HUClipScrubberTimeController *)self minimumPosterFrameDuration];
  if (v6 >= v7)
  {
    v7 = v6;
  }

  [(HUClipScrubberTimeController *)self setTimeScale:v7];

  [(HUClipScrubberTimeController *)self timeScale];
  return result;
}

- (double)numberOfPosterFrameUnitsForEvent:(id)event
{
  eventCopy = event;
  [(HUClipScrubberTimeController *)self timeScale];
  [(HUClipScrubberTimeController *)self _numberOfPosterFrameUnitsForEvent:eventCopy timeScale:?];
  v6 = v5;

  return v6;
}

- (double)_numberOfPosterFrameUnitsForEvent:(id)event timeScale:(double)scale
{
  eventCopy = event;
  [eventCopy duration];
  v8 = v7;
  [(HUClipScrubberTimeController *)self timeScale];
  if (fabs(v9 + -10.0) >= 0.00000011920929)
  {
    v11 = v8 / scale;
  }

  else
  {
    [eventCopy duration];
    v11 = sqrt(v10);
  }

  v12 = v11;
  if (v12 < 1.0)
  {
    v12 = 1.0;
  }

  v13 = v12;

  return v13;
}

- (double)timelineWidthForEvent:(id)event
{
  eventCopy = event;
  [(HUClipScrubberTimeController *)self posterFrameWidth];
  v6 = v5;
  [(HUClipScrubberTimeController *)self numberOfPosterFrameUnitsForEvent:eventCopy];
  v8 = v7;

  return v6 * v8;
}

- (double)posterFrameWidthFromCameraLiveSource
{
  portraitMode = [(HUClipScrubberTimeController *)self portraitMode];
  result = 58.0;
  if (portraitMode)
  {
    return 33.0;
  }

  return result;
}

- (BOOL)isAtMinimumZoom
{
  [(HUClipScrubberTimeController *)self maximumPosterFrameDuration];
  v4 = v3;
  [(HUClipScrubberTimeController *)self timeScale];
  return v4 - v5 < 0.00000011920929;
}

- (void)expandTimelineToMaximumZoom
{
  [(HUClipScrubberTimeController *)self minimumPosterFrameDuration];

  [(HUClipScrubberTimeController *)self setTimeScale:?];
}

- (void)shrinkTimelineToMinimumZoom
{
  [(HUClipScrubberTimeController *)self maximumPosterFrameDuration];

  [(HUClipScrubberTimeController *)self setTimeScale:?];
}

- (void)dealloc
{
  if ([MEMORY[0x277D14500] shouldCacheScrubberTimeScale])
  {
    v3 = MEMORY[0x277D14500];
    [(HUClipScrubberTimeController *)self timeScale];
    [v3 cacheScrubberTimeScale:?];
  }

  v4.receiver = self;
  v4.super_class = HUClipScrubberTimeController;
  [(HUClipScrubberTimeController *)&v4 dealloc];
}

@end