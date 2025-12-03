@interface _PBUIImageSlotRepositoryEntry
- (CGSize)size;
- (IOSurface)ioSurface;
- (void)_setBlockSet:(CGImageBlockSet *)set;
- (void)dealloc;
@end

@implementation _PBUIImageSlotRepositoryEntry

- (void)dealloc
{
  [(_PBUIImageSlotRepositoryEntry *)self _setBlockSet:0];
  v3.receiver = self;
  v3.super_class = _PBUIImageSlotRepositoryEntry;
  [(_PBUIImageSlotRepositoryEntry *)&v3 dealloc];
}

- (IOSurface)ioSurface
{
  p_ioSurface = &self->_ioSurface;
  ioSurface = self->_ioSurface;
  if (!ioSurface)
  {
    ioSurface = self->_image;
    if (ioSurface)
    {
      v7 = 0;
      v5 = PBUICreateIOSurfaceForImage(ioSurface, &v7, 1);
      if (v5)
      {
        objc_storeStrong(p_ioSurface, v5);
        [(_PBUIImageSlotRepositoryEntry *)self _setBlockSet:v7];
      }

      if (v7)
      {
        CGImageBlockSetRelease();
      }

      ioSurface = *p_ioSurface;
    }
  }

  return ioSurface;
}

- (void)_setBlockSet:(CGImageBlockSet *)set
{
  blockSet = self->_blockSet;
  if (blockSet != set)
  {
    CGImageBlockSetRetain();
    self->_blockSet = set;
    if (blockSet)
    {

      CGImageBlockSetRelease();
    }
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end