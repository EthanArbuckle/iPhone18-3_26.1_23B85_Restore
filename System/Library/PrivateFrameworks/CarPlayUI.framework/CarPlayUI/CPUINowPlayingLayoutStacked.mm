@interface CPUINowPlayingLayoutStacked
- (CGSize)maximumNowPlayingSize;
- (CGSize)maximumTitleViewSize;
- (UIEdgeInsets)layoutMargins;
- (double)albumArtWidthMultiplier;
- (unint64_t)trackInfoFontStyle;
@end

@implementation CPUINowPlayingLayoutStacked

- (double)albumArtWidthMultiplier
{
  [(CPUINowPlayingLayoutStacked *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  v11 = CGRectGetHeight(v18) - v4 - v8 - (28.0 + 14.0);
  [(CPUINowPlayingLayoutStacked *)self transportControlButtonHeight];
  v13 = v11 - v12 + -36.0 + -6.0;
  [CPUISongDetailsView maximumHeightForTrackInfoFontStyle:0];
  v15 = v13 - v14;
  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  v16 = CGRectGetWidth(v19) - v6 - v10;
  if (v15 >= v16)
  {
    v15 = v16;
  }

  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  return v15 / CGRectGetWidth(v20);
}

- (unint64_t)trackInfoFontStyle
{
  [(CPUINowPlayingLayoutStacked *)self maximumTitleViewSize];
  v3 = v2;
  v5 = v4;
  [CPUISongDetailsView maximumHeightForTrackInfoFontStyle:1];
  return v3 >= 300.0 && v5 >= v6;
}

- (UIEdgeInsets)layoutMargins
{
  v2 = _UISolariumEnabled();
  v3 = 0.0;
  if (v2)
  {
    v3 = 12.0;
  }

  v4 = 20.0;
  v5 = 20.0;
  v6 = 20.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (CGSize)maximumTitleViewSize
{
  [(CPUINowPlayingLayoutStacked *)self maximumNowPlayingSize];
  if (v4 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    [(_CPUINowPlayingLayout *)self safeAreaFrame];
    v7 = round(CGRectGetHeight(v23));
  }

  else
  {
    [(CPUINowPlayingLayoutStacked *)self maximumNowPlayingSize];
    v7 = v6;
  }

  [(CPUINowPlayingLayoutStacked *)self layoutMargins];
  v9 = v8;
  v11 = v10;
  v14 = v7 - (v12 + v13) - (28.0 + 14.0);
  [(CPUINowPlayingLayoutStacked *)self transportControlButtonHeight];
  v16 = v14 - v15 + -18.0;
  if ([(_CPUINowPlayingLayout *)self showsArtwork])
  {
    [(_CPUINowPlayingLayout *)self _effectiveAlbumArtSize];
    v16 = v16 + -6.0 - v17;
  }

  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  v18 = round(CGRectGetWidth(v24)) - (v11 + v9);
  v19 = floorf(v18);
  v20 = v16;
  v21 = floorf(v20);
  result.height = v21;
  result.width = v19;
  return result;
}

- (CGSize)maximumNowPlayingSize
{
  if ([(_CPUINowPlayingLayout *)self showsArtwork])
  {
    v4 = *MEMORY[0x277CBF3A8];
    v3 = *(MEMORY[0x277CBF3A8] + 8);
  }

  else
  {
    [(_CPUINowPlayingLayout *)self safeAreaFrame];
    if (CGRectEqualToRect(v9, *MEMORY[0x277CBF3A0]))
    {
      v3 = 480.0;
      v4 = 500.0;
    }

    else
    {
      [(_CPUINowPlayingLayout *)self safeAreaFrame];
      Width = CGRectGetWidth(v10);
      if (Width <= 500.0)
      {
        v4 = Width;
      }

      else
      {
        v4 = 500.0;
      }

      [(_CPUINowPlayingLayout *)self safeAreaFrame];
      Height = CGRectGetHeight(v11);
      v3 = 480.0;
      if (Height <= 480.0)
      {
        v3 = Height;
      }
    }
  }

  v7 = v4;
  result.height = v3;
  result.width = v7;
  return result;
}

@end