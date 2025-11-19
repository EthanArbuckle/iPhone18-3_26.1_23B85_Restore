@interface PXPhotosHeaderCustomizationModel
- (PXPhotosHeaderCustomizationModel)init;
- (void)setAlpha:(double)a3;
- (void)setShouldUseTextStyles:(BOOL)a3;
- (void)setVerticalFloatingOffset:(double)a3;
- (void)setVerticalVisibilityOffset:(double)a3;
@end

@implementation PXPhotosHeaderCustomizationModel

- (void)setShouldUseTextStyles:(BOOL)a3
{
  if (self->_shouldUseTextStyles != a3)
  {
    self->_shouldUseTextStyles = a3;
    [(PXPhotosHeaderCustomizationModel *)self signalChange:8];
  }
}

- (void)setAlpha:(double)a3
{
  if (self->_alpha != a3)
  {
    self->_alpha = a3;
    [(PXPhotosHeaderCustomizationModel *)self signalChange:4];
  }
}

- (void)setVerticalFloatingOffset:(double)a3
{
  if (self->_verticalFloatingOffset != a3)
  {
    self->_verticalFloatingOffset = a3;
    [(PXPhotosHeaderCustomizationModel *)self signalChange:2];
  }
}

- (void)setVerticalVisibilityOffset:(double)a3
{
  if (self->_verticalVisibilityOffset != a3)
  {
    self->_verticalVisibilityOffset = a3;
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