@interface CPSScaledImageView
- (CGSize)intrinsicContentSize;
- (void)invalidateIntrinsicContentSize;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CPSScaledImageView

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = CPSScaledImageView;
  changeCopy = change;
  [(CPSScaledImageView *)&v8 traitCollectionDidChange:changeCopy];
  v5 = [(CPSScaledImageView *)self traitCollection:v8.receiver];
  preferredContentSizeCategory = [v5 preferredContentSizeCategory];
  preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];

  LOBYTE(changeCopy) = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];
  if ((changeCopy & 1) == 0)
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
    image = [(CPSScaledImageView *)self image];
    if (image)
    {
      traitCollection = [(CPSScaledImageView *)self traitCollection];
      if (self->_textStyleForScaling)
      {
        textStyleForScaling = self->_textStyleForScaling;
      }

      else
      {
        textStyleForScaling = *MEMORY[0x277D76918];
      }

      v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:textStyleForScaling compatibleWithTraitCollection:traitCollection];
      [image size];
      v8 = v7;
      [v6 _scaledValueForValue:?];
      [v6 _scaledValueForValue:v8];
      [traitCollection displayScale];
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