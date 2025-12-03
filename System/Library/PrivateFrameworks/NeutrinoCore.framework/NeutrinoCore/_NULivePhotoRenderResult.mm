@interface _NULivePhotoRenderResult
- (void)dealloc;
- (void)setPhotoTime:(id *)time;
@end

@implementation _NULivePhotoRenderResult

- (void)setPhotoTime:(id *)time
{
  var3 = time->var3;
  *&self->_photoTime.value = *&time->var0;
  self->_photoTime.epoch = var3;
}

- (void)dealloc
{
  CGImageRelease(self->_photo);
  v3.receiver = self;
  v3.super_class = _NULivePhotoRenderResult;
  [(_NULivePhotoRenderResult *)&v3 dealloc];
}

@end