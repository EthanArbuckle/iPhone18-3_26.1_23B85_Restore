@interface CPUINowPlayingLayoutSportsLandscape
- (BOOL)playModeControlButtonsFullWidth;
- (double)sportsScoreTextSize;
@end

@implementation CPUINowPlayingLayoutSportsLandscape

- (BOOL)playModeControlButtonsFullWidth
{
  [(CPUINowPlayingLayoutRightArtwork *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  v7 = CGRectGetHeight(v10) - (v6 + v4);
  [(_CPUINowPlayingLayout *)self _effectiveAlbumArtSize];
  return v7 - v8 + -40.0 >= 28.0 + 12.0 + 14.0;
}

- (double)sportsScoreTextSize
{
  v2 = [(CPUINowPlayingLayoutSportsLandscape *)self playModeControlButtonsFullWidth];
  result = 52.0;
  if (v2)
  {
    return 40.0;
  }

  return result;
}

@end