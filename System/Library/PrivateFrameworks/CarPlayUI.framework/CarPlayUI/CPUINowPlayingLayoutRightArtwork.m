@interface CPUINowPlayingLayoutRightArtwork
- (BOOL)playModeControlButtonsFullWidth;
- (CGSize)maximumTitleViewSize;
- (CPUINowPlayingLayoutRightArtwork)initWithSafeArea:(CGRect)a3 frame:(CGRect)a4 displayScale:(double)a5 showsArtwork:(BOOL)a6;
- (UIEdgeInsets)layoutMargins;
- (double)albumArtWidthMultiplier;
- (unint64_t)trackInfoFontStyle;
@end

@implementation CPUINowPlayingLayoutRightArtwork

- (CPUINowPlayingLayoutRightArtwork)initWithSafeArea:(CGRect)a3 frame:(CGRect)a4 displayScale:(double)a5 showsArtwork:(BOOL)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
  v29.receiver = self;
  v29.super_class = CPUINowPlayingLayoutRightArtwork;
  v14 = [(_CPUINowPlayingLayout *)&v29 initWithSafeArea:a6 frame:a3.origin.x displayScale:*&a5 showsArtwork:?];
  v15 = v14;
  if (v14)
  {
    [(CPUINowPlayingLayoutRightArtwork *)v14 layoutMargins];
    v27 = v17;
    v28 = v16;
    [CPUISongDetailsView maximumHeightForTrackInfoFontStyle:1];
    rect = v10;
    v19 = v18;
    [(_CPUINowPlayingLayout *)v15 transportControlButtonHeight];
    v21 = v19 + v20 + 12.0;
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v22 = CGRectGetWidth(v30) * 0.360000014;
    v31.origin.x = v13;
    v31.origin.y = v12;
    v31.size.width = v11;
    v31.size.height = rect;
    v23 = CGRectGetHeight(v31) - v28 - v27;
    if (v22 < v23)
    {
      v23 = v22;
    }

    if (v21 + 6.0 + 14.0 + 28.0 <= v23)
    {
      v24 = 2;
    }

    else
    {
      v24 = v21 <= v23;
    }

    [(_CPUINowPlayingLayout *)v15 setVerticalCentering:v24];
    if (![(CPUINowPlayingLayoutRightArtwork *)v15 playModeControlButtonsFullWidth])
    {
      [(_CPUINowPlayingLayout *)v15 setVerticalCentering:2];
    }
  }

  return v15;
}

- (double)albumArtWidthMultiplier
{
  [(CPUINowPlayingLayoutRightArtwork *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  Width = CGRectGetWidth(v16);
  [(_CPUINowPlayingLayout *)self viewAreaFrame];
  v12 = CGRectGetWidth(v17) * 0.360000014;
  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  v13 = CGRectGetHeight(v18) - v4 - v8;
  if (v12 >= v13)
  {
    v12 = v13;
  }

  [(_CPUINowPlayingLayout *)self minimumDesiredPlayModeControlButtonWidth];
  if (Width + v10 * -2.0 - v6 - v12 < v14)
  {
    [(_CPUINowPlayingLayout *)self safeAreaFrame];
    v12 = CGRectGetHeight(v19) - v8 - v4 - 14.0 - 28.0 + -12.0;
  }

  return fmin(floor(v12) / Width, 0.360000014);
}

- (unint64_t)trackInfoFontStyle
{
  [(CPUINowPlayingLayoutRightArtwork *)self maximumTitleViewSize];
  v3 = v2;
  v5 = v4;
  [CPUISongDetailsView maximumHeightForTrackInfoFontStyle:0];
  v7 = v6;
  [CPUISongDetailsView minimumHeightForTrackInfoFontStyle:1];
  if (v7 >= v8)
  {
    v8 = v7;
  }

  if (v5 < v8)
  {
    return 0;
  }

  v9 = 1;
  [CPUISongDetailsView maximumHeightForTrackInfoFontStyle:1];
  if (v5 < v10 && v3 <= 330.0)
  {
    return 0;
  }

  return v9;
}

- (BOOL)playModeControlButtonsFullWidth
{
  if ([(_CPUINowPlayingLayout *)self verticalCentering]== 2)
  {
    return 0;
  }

  [(CPUINowPlayingLayoutRightArtwork *)self layoutMargins];
  v5 = v4;
  v7 = v6;
  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  v8 = CGRectGetHeight(v10) - (v7 + v5);
  [(_CPUINowPlayingLayout *)self _effectiveAlbumArtSize];
  return v8 - v9 >= 28.0;
}

- (UIEdgeInsets)layoutMargins
{
  v2 = _UISolariumEnabled();
  v3 = 0.0;
  if (v2)
  {
    v3 = 8.0;
  }

  v4 = 12.0;
  v5 = 12.0;
  v6 = 12.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)maximumTitleViewSize
{
  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  Height = CGRectGetHeight(v21);
  [(CPUINowPlayingLayoutRightArtwork *)self layoutMargins];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(_CPUINowPlayingLayout *)self transportControlButtonHeight];
  v13 = v12;
  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  v14 = round(CGRectGetWidth(v22)) - (v7 + v11 * 2.0);
  if ([(_CPUINowPlayingLayout *)self showsArtwork])
  {
    [(_CPUINowPlayingLayout *)self _effectiveAlbumArtSize];
    v14 = v14 - v15;
  }

  v16 = v14;
  v17 = floorf(v16);
  v18 = round(Height) - (v5 + v9) - (14.0 + 28.0) - v13 + -18.0;
  v19 = floorf(v18);
  result.height = v19;
  result.width = v17;
  return result;
}

@end