@interface CPSScaledImageView
- (CGSize)intrinsicContentSize;
- (void)invalidateIntrinsicContentSize;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation CPSScaledImageView

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = CPSScaledImageView;
  v4 = a3;
  [(CPSScaledImageView *)&v8 traitCollectionDidChange:v4];
  v5 = [(CPSScaledImageView *)self traitCollection:v8.receiver];
  v6 = [v5 preferredContentSizeCategory];
  v7 = [v4 preferredContentSizeCategory];

  LOBYTE(v4) = [v6 isEqualToString:v7];
  if ((v4 & 1) == 0)
  {
    [(CPSScaledImageView *)self invalidateIntrinsicContentSize];
  }
}

- (void)invalidateIntrinsicContentSize
{
  v3.receiver = self;
  v3.super_class = CPSScaledImageView;
  [(CPSScaledImageView *)&v3 invalidateIntrinsicContentSize];
  self->_needsUpdateScaledImageSize = 1;
}

- (CGSize)intrinsicContentSize
{
  if (self->_needsUpdateScaledImageSize)
  {
    self->_needsUpdateScaledImageSize = 0;
    v3 = [(CPSScaledImageView *)self image];
    if (v3)
    {
      v4 = [(CPSScaledImageView *)self traitCollection];
      if (self->_textStyleForScaling)
      {
        textStyleForScaling = self->_textStyleForScaling;
      }

      else
      {
        textStyleForScaling = *MEMORY[0x277D76918];
      }

      v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:textStyleForScaling compatibleWithTraitCollection:v4];
      [v3 size];
      v8 = v7;
      [v6 _scaledValueForValue:?];
      [v6 _scaledValueForValue:v8];
      [v4 displayScale];
      UISizeRoundToScale();
      self->_scaledImageSize.width = v9;
      self->_scaledImageSize.height = v10;
    }

    else
    {
      self->_scaledImageSize = *MEMORY[0x277CBF3A8];
    }
  }

  width = self->_scaledImageSize.width;
  height = self->_scaledImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end