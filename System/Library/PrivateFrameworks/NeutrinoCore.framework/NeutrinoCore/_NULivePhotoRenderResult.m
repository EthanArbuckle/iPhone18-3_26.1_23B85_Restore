@interface _NULivePhotoRenderResult
- (void)dealloc;
- (void)setPhotoTime:(id *)a3;
@end

@implementation _NULivePhotoRenderResult

- (void)setPhotoTime:(id *)a3
{
  var3 = a3->var3;
  *&self->_photoTime.value = *&a3->var0;
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