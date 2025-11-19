@interface FRCFaceHandLegBlock
+ (id)faceHandLegBlockWithRect:(CGRect)a3 numberOfBlocks:(unint64_t)a4 category:(unint64_t)a5;
- (CGRect)rect;
@end

@implementation FRCFaceHandLegBlock

+ (id)faceHandLegBlockWithRect:(CGRect)a3 numberOfBlocks:(unint64_t)a4 category:(unint64_t)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___FRCFaceHandLegBlock;
  v11 = [objc_msgSendSuper2(&v15 alloc)];
  v12 = v11;
  if (v11)
  {
    [v11 setCategory:a5];
    [v12 setRect:{x, y, width, height}];
    [v12 setNumberOfBlocks:a4];
    v13 = v12;
  }

  return v12;
}

- (CGRect)rect
{
  x = self->_rect.origin.x;
  y = self->_rect.origin.y;
  width = self->_rect.size.width;
  height = self->_rect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end