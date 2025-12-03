@interface CUIRenditionSliceInformation
- ($01BB1521EC52D44A8E7628F5261DCEC8)edgeInsets;
- (CGRect)destinationRect;
- (CGSize)_bottomRightCapSize;
- (CGSize)_topLeftCapSize;
- (CUIRenditionSliceInformation)initWithRenditionType:(int64_t)type destinationRect:(CGRect)rect topLeftInset:(CGSize)inset bottomRightInset:(CGSize)rightInset;
- (CUIRenditionSliceInformation)initWithSliceInformation:(id)information destinationRect:(CGRect)rect;
- (double)positionOfSliceBoundary:(unint64_t)boundary;
- (id)description;
@end

@implementation CUIRenditionSliceInformation

- ($01BB1521EC52D44A8E7628F5261DCEC8)edgeInsets
{
  top = self->_edgeInsets.top;
  left = self->_edgeInsets.left;
  bottom = self->_edgeInsets.bottom;
  right = self->_edgeInsets.right;
  result.var3 = right;
  result.var2 = bottom;
  result.var1 = left;
  result.var0 = top;
  return result;
}

- (CUIRenditionSliceInformation)initWithSliceInformation:(id)information destinationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [information destinationRect];
  v11 = v10;
  v13 = v12;
  [information _topLeftCapSize];
  v15 = v14;
  v17 = v16;
  [information _bottomRightCapSize];
  v20 = v18;
  v21 = v19;
  if (v15 + v18 > width)
  {
    v15 = width * v15 / v11;
    v20 = width * v18 / v11;
  }

  if (v17 + v19 > height)
  {
    v17 = height * v17 / v13;
    v21 = height * v19 / v13;
  }

  v22 = *(information + 1);

  return [(CUIRenditionSliceInformation *)self initWithRenditionType:v22 destinationRect:x topLeftInset:y bottomRightInset:width, height, v15, v17, v20, v21];
}

- (CUIRenditionSliceInformation)initWithRenditionType:(int64_t)type destinationRect:(CGRect)rect topLeftInset:(CGSize)inset bottomRightInset:(CGSize)rightInset
{
  height = rightInset.height;
  width = rightInset.width;
  v8 = inset.height;
  v9 = inset.width;
  v10 = rect.size.height;
  v11 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v16.receiver = self;
  v16.super_class = CUIRenditionSliceInformation;
  result = [(CUIRenditionSliceInformation *)&v16 init];
  if (result)
  {
    result->_destinationRect.origin.x = x;
    result->_destinationRect.origin.y = y;
    result->_destinationRect.size.width = v11;
    result->_destinationRect.size.height = v10;
    result->_renditionType = type;
    if (type <= 999)
    {
      if (type <= 1)
      {
        if (type != -1 && type)
        {
          if (type == 1)
          {
            height = 0.0;
            v8 = 0.0;
          }

          goto LABEL_6;
        }
      }

      else if ((type - 4) >= 6)
      {
        if (type == 2)
        {
          width = 0.0;
          v9 = 0.0;
        }

        goto LABEL_6;
      }
    }

    else if ((type - 1000) > 0x15 || type == 1003)
    {
      goto LABEL_6;
    }

    width = NSZeroSize.width;
    height = NSZeroSize.height;
    v9 = NSZeroSize.width;
    v8 = height;
LABEL_6:
    result->_boundaries[0] = x + v9;
    result->_boundaries[1] = y + height;
    result->_boundaries[2] = x + v11 - width;
    result->_boundaries[3] = y + v10 - v8;
    result->_edgeInsets.top = v8;
    result->_edgeInsets.left = v9;
    result->_edgeInsets.bottom = height;
    result->_edgeInsets.right = width;
  }

  return result;
}

- (CGSize)_topLeftCapSize
{
  v2 = self->_boundaries[0] - self->_destinationRect.origin.x;
  v3 = self->_destinationRect.origin.y + self->_destinationRect.size.height - self->_boundaries[3];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_bottomRightCapSize
{
  v2 = self->_destinationRect.origin.x + self->_destinationRect.size.width - self->_boundaries[2];
  v3 = self->_boundaries[1] - self->_destinationRect.origin.y;
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)positionOfSliceBoundary:(unint64_t)boundary
{
  result = 0.0;
  if (boundary <= 3)
  {
    return self->_boundaries[boundary];
  }

  return result;
}

- (id)description
{
  v5.receiver = self;
  v5.super_class = CUIRenditionSliceInformation;
  v3 = [(CUIRenditionSliceInformation *)&v5 description];
  return [v3 stringByAppendingFormat:@" %@, destination: %@, min x: %f, min y: %f, max x: %f, max y: %f", +[CUIThemeRendition displayNameForRenditionType:](CUIThemeRendition, "displayNameForRenditionType:", self->_renditionType), NSStringFromRect(self->_destinationRect), *&self->_boundaries[0], *&self->_boundaries[1], *&self->_boundaries[2], *&self->_boundaries[3]];
}

- (CGRect)destinationRect
{
  x = self->_destinationRect.origin.x;
  y = self->_destinationRect.origin.y;
  width = self->_destinationRect.size.width;
  height = self->_destinationRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end