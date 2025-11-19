@interface _NTKTransientPhoto
- (CGRect)originalCrop;
@end

@implementation _NTKTransientPhoto

- (CGRect)originalCrop
{
  x = self->_originalCrop.origin.x;
  y = self->_originalCrop.origin.y;
  width = self->_originalCrop.size.width;
  height = self->_originalCrop.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end