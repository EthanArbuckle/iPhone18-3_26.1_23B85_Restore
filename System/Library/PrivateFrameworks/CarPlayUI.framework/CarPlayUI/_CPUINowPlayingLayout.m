@interface _CPUINowPlayingLayout
- (BOOL)isEqual:(id)a3;
- (BOOL)progressViewFullWidth;
- (CGRect)safeAreaFrame;
- (CGRect)viewAreaFrame;
- (CGSize)maximumNowPlayingSize;
- (CGSize)maximumTitleViewSize;
- (UIEdgeInsets)layoutMargins;
- (_CPUINowPlayingLayout)initWithSafeArea:(CGRect)a3 frame:(CGRect)a4 displayScale:(double)a5 showsArtwork:(BOOL)a6;
- (double)_effectiveAlbumArtSize;
- (double)_scaledHeight;
- (double)_scaledWidth;
- (double)minimumDesiredPlayModeControlButtonWidth;
- (double)playModeControlButtonSpacing;
- (double)transportControlButtonHeight;
- (double)transportControlButtonSpacing;
- (unint64_t)hash;
@end

@implementation _CPUINowPlayingLayout

- (_CPUINowPlayingLayout)initWithSafeArea:(CGRect)a3 frame:(CGRect)a4 displayScale:(double)a5 showsArtwork:(BOOL)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3.size.height;
  v12 = a3.size.width;
  v13 = a3.origin.y;
  v14 = a3.origin.x;
  v16.receiver = self;
  v16.super_class = _CPUINowPlayingLayout;
  result = [(_CPUINowPlayingLayout *)&v16 init];
  if (result)
  {
    result->_safeAreaFrame.origin.x = v14;
    result->_safeAreaFrame.origin.y = v13;
    result->_safeAreaFrame.size.width = v12;
    result->_safeAreaFrame.size.height = v11;
    result->_viewAreaFrame.origin.x = x;
    result->_viewAreaFrame.origin.y = y;
    result->_viewAreaFrame.size.width = width;
    result->_viewAreaFrame.size.height = height;
    result->_displayScale = a5;
    result->_showsArtwork = a6;
    result->_verticalCentering = 0;
  }

  return result;
}

- (unint64_t)hash
{
  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  v3 = NSStringFromCGRect(v19);
  v4 = [v3 hash];
  [(_CPUINowPlayingLayout *)self viewAreaFrame];
  v5 = NSStringFromCGRect(v20);
  v6 = [v5 hash] ^ v4;
  v7 = MEMORY[0x277CCABB0];
  [(_CPUINowPlayingLayout *)self displayScale];
  v8 = [v7 numberWithDouble:?];
  v9 = v6 ^ [v8 hash];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_CPUINowPlayingLayout artworkPosition](self, "artworkPosition")}];
  v11 = [v10 hash];
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[_CPUINowPlayingLayout showsArtwork](self, "showsArtwork")}];
  v13 = v9 ^ v11 ^ [v12 hash];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[_CPUINowPlayingLayout verticalCentering](self, "verticalCentering")}];
  v15 = [v14 hash];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[_CPUINowPlayingLayout isSportsLayout](self, "isSportsLayout")}];
  v17 = v15 ^ [v16 hash];

  return v13 ^ v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v37) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [(_CPUINowPlayingLayout *)self safeAreaFrame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;
      [(_CPUINowPlayingLayout *)v5 safeAreaFrame];
      v41.origin.x = v14;
      v41.origin.y = v15;
      v41.size.width = v16;
      v41.size.height = v17;
      v39.origin.x = v7;
      v39.origin.y = v9;
      v39.size.width = v11;
      v39.size.height = v13;
      if (CGRectEqualToRect(v39, v41) && ([(_CPUINowPlayingLayout *)self viewAreaFrame], v19 = v18, v21 = v20, v23 = v22, v25 = v24, [(_CPUINowPlayingLayout *)v5 viewAreaFrame], v42.origin.x = v26, v42.origin.y = v27, v42.size.width = v28, v42.size.height = v29, v40.origin.x = v19, v40.origin.y = v21, v40.size.width = v23, v40.size.height = v25, CGRectEqualToRect(v40, v42)) && ([(_CPUINowPlayingLayout *)self displayScale], v31 = v30, [(_CPUINowPlayingLayout *)v5 displayScale], vabdd_f64(v31, v32) < 0.00000011920929) && (v33 = [(_CPUINowPlayingLayout *)self artworkPosition], v33 == [(_CPUINowPlayingLayout *)v5 artworkPosition]) && (v34 = [(_CPUINowPlayingLayout *)self showsArtwork], v34 == [(_CPUINowPlayingLayout *)v5 showsArtwork]) && (v35 = [(_CPUINowPlayingLayout *)self verticalCentering], v35 == [(_CPUINowPlayingLayout *)v5 verticalCentering]))
      {
        v36 = [(_CPUINowPlayingLayout *)self isSportsLayout];
        v37 = v36 ^ [(_CPUINowPlayingLayout *)v5 isSportsLayout]^ 1;
      }

      else
      {
        LOBYTE(v37) = 0;
      }
    }

    else
    {
      LOBYTE(v37) = 0;
    }
  }

  return v37;
}

- (double)_scaledWidth
{
  [(_CPUINowPlayingLayout *)self viewAreaFrame];
  Width = CGRectGetWidth(v6);
  [(_CPUINowPlayingLayout *)self displayScale];
  return Width * v4;
}

- (double)_scaledHeight
{
  [(_CPUINowPlayingLayout *)self viewAreaFrame];
  Height = CGRectGetHeight(v6);
  [(_CPUINowPlayingLayout *)self displayScale];
  return Height * v4;
}

- (double)_effectiveAlbumArtSize
{
  [(_CPUINowPlayingLayout *)self albumArtWidthMultiplier];
  v4 = v3;
  [(_CPUINowPlayingLayout *)self viewAreaFrame];
  return v4 * CGRectGetWidth(v6);
}

- (CGSize)maximumNowPlayingSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)transportControlButtonHeight
{
  [(_CPUINowPlayingLayout *)self _scaledWidth];
  v4 = v3;
  [(_CPUINowPlayingLayout *)self _scaledHeight];
  v7 = (v4 >= 1400.0 || v5 < 624.0) && v5 <= 720.0;
  result = 36.0;
  if (!v7)
  {
    return 44.0;
  }

  return result;
}

- (double)transportControlButtonSpacing
{
  [(_CPUINowPlayingLayout *)self _scaledWidth];
  v3 = v2 < 1120.0;
  result = 16.0;
  if (v3)
  {
    return 10.0;
  }

  return result;
}

- (double)minimumDesiredPlayModeControlButtonWidth
{
  [(_CPUINowPlayingLayout *)self playModeControlButtonWidth];
  v4 = v3;
  [(_CPUINowPlayingLayout *)self playModeControlButtonSpacing];
  return v5 * 4.0 + v4 * 5.0;
}

- (double)playModeControlButtonSpacing
{
  [(_CPUINowPlayingLayout *)self _scaledWidth];
  v3 = v2 < 1120.0;
  result = 16.0;
  if (v3)
  {
    return 10.0;
  }

  return result;
}

- (UIEdgeInsets)layoutMargins
{
  [(_CPUINowPlayingLayout *)self doesNotRecognizeSelector:a2];
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (BOOL)progressViewFullWidth
{
  [(_CPUINowPlayingLayout *)self layoutMargins];
  v4 = v3;
  v6 = v5;
  [(_CPUINowPlayingLayout *)self safeAreaFrame];
  v7 = CGRectGetHeight(v10) - (v6 + v4);
  [(_CPUINowPlayingLayout *)self _effectiveAlbumArtSize];
  return floor(v7 - v8 + -12.0 - 28.0) >= 14.0;
}

- (CGSize)maximumTitleViewSize
{
  [(_CPUINowPlayingLayout *)self doesNotRecognizeSelector:a2];
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGRect)safeAreaFrame
{
  x = self->_safeAreaFrame.origin.x;
  y = self->_safeAreaFrame.origin.y;
  width = self->_safeAreaFrame.size.width;
  height = self->_safeAreaFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)viewAreaFrame
{
  x = self->_viewAreaFrame.origin.x;
  y = self->_viewAreaFrame.origin.y;
  width = self->_viewAreaFrame.size.width;
  height = self->_viewAreaFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end