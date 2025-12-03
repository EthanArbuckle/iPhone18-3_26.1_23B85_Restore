@interface NANowPlayingLayoutSpec
+ (double)artworkBottomMarginInView:(id)view;
+ (double)bottomControlsTopMarginInView:(id)view;
+ (double)nextTrackAndRewindButtonPointSizeInView:(id)view;
+ (double)playPausePointSizeInView:(id)view;
+ (double)playbackControlsHorizontalInsetInView:(id)view;
+ (double)publisherLogoBottomMarginInView:(id)view;
+ (double)publisherLogoHeightInView:(id)view;
+ (double)titleLabelFontSizeInView:(id)view;
+ (double)titleViewBottomMarginInView:(id)view;
@end

@implementation NANowPlayingLayoutSpec

+ (double)artworkBottomMarginInView:(id)view
{
  [view bounds];
  v3 = CGRectGetHeight(v5) > 568.0;
  result = 36.0;
  if (!v3)
  {
    return 16.0;
  }

  return result;
}

+ (double)bottomControlsTopMarginInView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v4 = 0.0;
  if (CGRectGetHeight(v6) > 568.0)
  {
    [viewCopy bounds];
    v4 = 10.0;
    if (CGRectGetHeight(v7) > 667.0)
    {
      [viewCopy bounds];
      if (CGRectGetHeight(v8) <= 736.0)
      {
        v4 = 14.0;
      }

      else
      {
        v4 = 17.0;
      }
    }
  }

  return v4;
}

+ (double)playPausePointSizeInView:(id)view
{
  [view bounds];
  v3 = CGRectGetHeight(v5) > 736.0;
  result = 34.0;
  if (v3)
  {
    return 46.0;
  }

  return result;
}

+ (double)nextTrackAndRewindButtonPointSizeInView:(id)view
{
  [view bounds];
  v3 = CGRectGetHeight(v5) > 736.0;
  result = 24.0;
  if (v3)
  {
    return 30.0;
  }

  return result;
}

+ (double)titleLabelFontSizeInView:(id)view
{
  [view bounds];
  v3 = CGRectGetHeight(v5) > 568.0;
  result = 22.0;
  if (v3)
  {
    return 26.0;
  }

  return result;
}

+ (double)publisherLogoBottomMarginInView:(id)view
{
  [view bounds];
  v3 = CGRectGetHeight(v5) > 568.0;
  result = 3.0;
  if (v3)
  {
    return 5.0;
  }

  return result;
}

+ (double)publisherLogoHeightInView:(id)view
{
  [view bounds];
  v3 = CGRectGetHeight(v5) > 736.0;
  result = 14.0;
  if (v3)
  {
    return 20.0;
  }

  return result;
}

+ (double)playbackControlsHorizontalInsetInView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v4 = 27.0;
  if (CGRectGetHeight(v6) > 568.0)
  {
    [viewCopy bounds];
    if (CGRectGetHeight(v7) <= 667.0)
    {
      v4 = 55.0;
    }

    else
    {
      [viewCopy bounds];
      if (CGRectGetHeight(v8) <= 736.0)
      {
        v4 = 67.0;
      }

      else
      {
        v4 = 34.0;
      }
    }
  }

  return v4;
}

+ (double)titleViewBottomMarginInView:(id)view
{
  viewCopy = view;
  [viewCopy bounds];
  v4 = 0.0;
  if (CGRectGetHeight(v6) > 568.0)
  {
    [viewCopy bounds];
    v4 = 4.0;
    if (CGRectGetHeight(v7) > 667.0)
    {
      [viewCopy bounds];
      if (CGRectGetHeight(v8) <= 736.0)
      {
        v4 = 0.0;
      }

      else
      {
        v4 = 18.0;
      }
    }
  }

  return v4;
}

@end