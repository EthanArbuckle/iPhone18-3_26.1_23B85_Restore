@interface BWVISProcessorControllerConfiguration
- (CGRect)livePhotoCleanOutputRect;
- (void)dealloc;
@end

@implementation BWVISProcessorControllerConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWVISProcessorControllerConfiguration;
  [(BWVISProcessorControllerConfiguration *)&v3 dealloc];
}

- (CGRect)livePhotoCleanOutputRect
{
  x = self->_livePhotoCleanOutputRect.origin.x;
  y = self->_livePhotoCleanOutputRect.origin.y;
  width = self->_livePhotoCleanOutputRect.size.width;
  height = self->_livePhotoCleanOutputRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end