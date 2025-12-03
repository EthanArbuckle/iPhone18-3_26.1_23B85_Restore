@interface _HKStretchableImage
- (double)_desiredWidth;
- (void)_renderSingleImageInContext:(CGContext *)context point:(CGPoint)point contextBounds:(CGRect)bounds alpha:(double)alpha;
- (void)_renderStretchedInContext:(CGContext *)context frame:(CGRect)frame contextBounds:(CGRect)bounds alpha:(double)alpha;
- (void)renderInContext:(CGContext *)context topCenter:(CGPoint)center bottomCenter:(CGPoint)bottomCenter contextBounds:(CGRect)bounds alpha:(double)alpha;
@end

@implementation _HKStretchableImage

- (void)_renderStretchedInContext:(CGContext *)context frame:(CGRect)frame contextBounds:(CGRect)bounds alpha:(double)alpha
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectIntersectsRect(frame, bounds))
  {
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    MinX = CGRectGetMinX(v27);
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v13 = CGRectGetWidth(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v14 = CGRectGetHeight(v29);
    [(UIImage *)self->_topImage size];
    v16 = v14 - v15;
    [(UIImage *)self->_bottomImage size];
    if (v16 - v17 >= 0.0)
    {
      v18 = v16 - v17;
    }

    else
    {
      v18 = 0.0;
    }

    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    MinY = CGRectGetMinY(v30);
    [(UIImage *)self->_topImage size];
    v31.size.height = v19;
    v23 = v19;
    v31.origin.x = MinX;
    v31.origin.y = MinY;
    v31.size.width = v13;
    MaxY = CGRectGetMaxY(v31);
    v32.origin.x = MinX;
    v32.origin.y = MaxY;
    v32.size.width = v13;
    v32.size.height = v18;
    v25 = CGRectGetMaxY(v32);
    v33.origin.x = x;
    v33.origin.y = y;
    v33.size.width = width;
    v33.size.height = height;
    v21 = CGRectGetMaxY(v33);
    v34.origin.x = MinX;
    v34.origin.y = MaxY;
    v34.size.width = v13;
    v34.size.height = v18;
    v22 = v21 - CGRectGetMaxY(v34);
    CGContextSaveGState(context);
    _RenderImageInRect(context, self->_topImage, MinX, MinY, v13, v23, alpha);
    _RenderImageInRect(context, self->_centerImage, MinX, MaxY, v13, v18, alpha);
    _RenderImageInRect(context, self->_bottomImage, MinX, v25, v13, v22, alpha);

    CGContextRestoreGState(context);
  }
}

- (void)_renderSingleImageInContext:(CGContext *)context point:(CGPoint)point contextBounds:(CGRect)bounds alpha:(double)alpha
{
  singlePointImage = self->_singlePointImage;
  if (singlePointImage)
  {
    y = bounds.origin.y;
    x = bounds.origin.x;
    v10 = point.y;
    v11 = point.x;
    height = bounds.size.height;
    width = bounds.size.width;
    [(UIImage *)singlePointImage size];
    v15 = v14;
    v17 = v16;
    v18 = v11 - v14 * 0.5;
    v19 = v10 - v16 * 0.5;
    v23.origin.x = v18;
    v23.origin.y = v19;
    v23.size.width = v15;
    v23.size.height = v17;
    v24.origin.x = x;
    v24.origin.y = y;
    v24.size.width = width;
    v24.size.height = height;
    if (CGRectIntersectsRect(v23, v24))
    {
      v20 = self->_singlePointImage;

      [(UIImage *)v20 drawInRect:0 blendMode:v18 alpha:v19, v15, v17, alpha];
    }
  }
}

- (void)renderInContext:(CGContext *)context topCenter:(CGPoint)center bottomCenter:(CGPoint)bottomCenter contextBounds:(CGRect)bounds alpha:(double)alpha
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v11 = bottomCenter.y;
  v12 = center.y;
  v13 = center.x;
  if (HKUIEqualDoubles(center.y, bottomCenter.y))
  {

    [(_HKStretchableImage *)self _renderSingleImageInContext:context point:v13 contextBounds:v12 alpha:x, y, width, height, alpha];
  }

  else
  {
    [(_HKStretchableImage *)self _desiredWidth];
    v22 = height;
    v17 = v16;
    [(UIImage *)self->_topImage size];
    v21 = width;
    v19 = v18;
    [(UIImage *)self->_bottomImage size];

    [(_HKStretchableImage *)self _renderStretchedInContext:context frame:v13 + v17 * -0.5 contextBounds:v12 - v19 alpha:v17, v11 - v12 + v19 + v20, x, y, v21, v22];
  }
}

- (double)_desiredWidth
{
  [(UIImage *)self->_topImage size];
  v4 = v3;
  [(UIImage *)self->_bottomImage size];
  if (v4 >= result)
  {
    return v4;
  }

  return result;
}

@end