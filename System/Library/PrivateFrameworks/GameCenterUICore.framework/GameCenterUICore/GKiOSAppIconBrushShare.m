@interface GKiOSAppIconBrushShare
- (CGSize)outputSize;
- (CGSize)sizeForInput:(id)a3;
@end

@implementation GKiOSAppIconBrushShare

- (CGSize)sizeForInput:(id)a3
{
  v4 = a3;
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  if (width == 0.0 && height == 0.0)
  {
    v11.receiver = self;
    v11.super_class = GKiOSAppIconBrushShare;
    [(GKImageBrush *)&v11 sizeForInput:v4];
    width = v7;
    height = v8;
  }

  v9 = width;
  v10 = height;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end