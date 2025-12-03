@interface FRCFaceHandLegBlock
+ (id)faceHandLegBlockWithRect:(CGRect)rect numberOfBlocks:(unint64_t)blocks category:(unint64_t)category;
- (CGRect)rect;
@end

@implementation FRCFaceHandLegBlock

+ (id)faceHandLegBlockWithRect:(CGRect)rect numberOfBlocks:(unint64_t)blocks category:(unint64_t)category
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___FRCFaceHandLegBlock;
  v11 = [objc_msgSendSuper2(&v15 alloc)];
  v12 = v11;
  if (v11)
  {
    [v11 setCategory:category];
    [v12 setRect:{x, y, width, height}];
    [v12 setNumberOfBlocks:blocks];
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