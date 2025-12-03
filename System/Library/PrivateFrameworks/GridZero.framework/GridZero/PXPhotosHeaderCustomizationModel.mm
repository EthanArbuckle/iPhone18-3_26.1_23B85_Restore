@interface PXPhotosHeaderCustomizationModel
- (PXPhotosHeaderCustomizationModel)init;
- (void)setAlpha:(double)alpha;
- (void)setShouldUseTextStyles:(BOOL)styles;
- (void)setVerticalFloatingOffset:(double)offset;
- (void)setVerticalVisibilityOffset:(double)offset;
@end

@implementation PXPhotosHeaderCustomizationModel

- (void)setShouldUseTextStyles:(BOOL)styles
{
  if (self->_shouldUseTextStyles != styles)
  {
    self->_shouldUseTextStyles = styles;
    [(PXPhotosHeaderCustomizationModel *)self signalChange:8];
  }
}

- (void)setAlpha:(double)alpha
{
  if (self->_alpha != alpha)
  {
    self->_alpha = alpha;
    [(PXPhotosHeaderCustomizationModel *)self signalChange:4];
  }
}

- (void)setVerticalFloatingOffset:(double)offset
{
  if (self->_verticalFloatingOffset != offset)
  {
    self->_verticalFloatingOffset = offset;
    [(PXPhotosHeaderCustomizationModel *)self signalChange:2];
  }
}

- (void)setVerticalVisibilityOffset:(double)offset
{
  if (self->_verticalVisibilityOffset != offset)
  {
    self->_verticalVisibilityOffset = offset;
    [(PXPhotosHeaderCustomizationModel *)self signalChange:1];
  }
}

- (PXPhotosHeaderCustomizationModel)init
{
  v3.receiver = self;
  v3.super_class = PXPhotosHeaderCustomizationModel;
  result = [(PXPhotosHeaderCustomizationModel *)&v3 init];
  if (result)
  {
    result->_alpha = 1.0;
    result->_titleTextStyle = 1;
    result->_subtitleTextStyle = 8;
    result->_shouldUseTextStyles = 0;
  }

  return result;
}

@end