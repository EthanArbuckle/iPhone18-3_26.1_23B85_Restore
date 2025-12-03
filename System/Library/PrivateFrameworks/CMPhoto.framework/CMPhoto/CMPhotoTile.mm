@interface CMPhotoTile
- (CGRect)contentsRect;
- (CGRect)imageRect;
- (id)description;
- (void)dealloc;
- (void)setDecodedSurface:(__IOSurface *)surface;
@end

@implementation CMPhotoTile

- (void)setDecodedSurface:(__IOSurface *)surface
{
  decodedSurface = self->_decodedSurface;
  if (decodedSurface != surface)
  {
    if (surface)
    {
      CFRetain(surface);
      decodedSurface = self->_decodedSurface;
    }

    if (decodedSurface)
    {
      IOSurfaceDecrementUseCount(decodedSurface);
      v6 = self->_decodedSurface;
      if (v6)
      {
        CFRelease(v6);
      }
    }

    self->_decodedSurface = surface;
  }
}

- (void)dealloc
{
  [(CMPhotoTile *)self setKey:0];
  [(CMPhotoTile *)self setDecodedSurface:0];
  v3.receiver = self;
  v3.super_class = CMPhotoTile;
  [(CMPhotoTile *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  ID = IOSurfaceGetID([(CMPhotoTile *)self decodedSurface]);
  [(CMPhotoTile *)self imageRect];
  v9 = _NSStringFromCGRect(v5, v6, v7, v8);
  [(CMPhotoTile *)self contentsRect];
  v14 = _NSStringFromCGRect(v10, v11, v12, v13);
  visible = [(CMPhotoTile *)self visible];
  v16 = @"NO";
  if (visible)
  {
    v16 = @"YES";
  }

  return [v3 stringWithFormat:@"<CMPhotoTile: %p; surface %4x; imageRect %@; contentsRect %@, visible: %@", self, ID, v9, v14, v16];
}

- (CGRect)imageRect
{
  x = self->_imageRect.origin.x;
  y = self->_imageRect.origin.y;
  width = self->_imageRect.size.width;
  height = self->_imageRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end