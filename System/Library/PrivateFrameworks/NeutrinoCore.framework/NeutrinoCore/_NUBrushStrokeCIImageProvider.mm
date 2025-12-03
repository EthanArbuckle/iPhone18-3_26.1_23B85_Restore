@interface _NUBrushStrokeCIImageProvider
- (_NUBrushStrokeCIImageProvider)initWithStroke:(id)stroke closed:(BOOL)closed pressureMode:(int64_t)mode filled:(BOOL)filled;
- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info;
@end

@implementation _NUBrushStrokeCIImageProvider

- (void)provideImageData:(void *)data bytesPerRow:(unint64_t)row origin:(unint64_t)origin :(unint64_t)a6 size:(unint64_t)size :(unint64_t)a8 userInfo:(id)info
{
  bzero(data, a8 * row);
  if ([(NUBrushStroke *)self->_stroke pointCount])
  {
    v16 = self->_extent.origin.x + origin;
    v17 = self->_extent.size.height + self->_extent.origin.y - (a8 + a6);
    v18 = self->_stroke;
    v31 = v18;
    if (self->_filled)
    {
      v19 = [(NUBrushStroke *)v18 mutableCopy];
      [(NUBrushStroke *)v19 pointAtIndex:0];
      [(NUBrushStroke *)v19 appendPoint:?];

      closed = 1;
      v31 = v19;
    }

    else
    {
      closed = self->_closed;
    }

    v21 = [NUMutableBufferAdapter alloc];
    v22 = +[NUPixelFormat R8];
    data = [(NUMutableBufferAdapter *)v21 initWithSize:size format:a8 rowBytes:v22 mutableBytes:row, data];

    [NUBrushRasterizer rasterizeBrushStroke:v31 atPoint:v16 toBuffer:v17 close:data startIndex:closed, -1];
    if (self->_filled)
    {
      v24 = CGBitmapContextCreate(data, size, a8, 8uLL, row, 0, 7u);
      Mutable = CGPathCreateMutable();
      [(NUBrushStroke *)self->_stroke pointAtIndex:0];
      CGPathMoveToPoint(Mutable, 0, v26, v27);
      if ([(NUBrushStroke *)self->_stroke pointCount]>= 2)
      {
        v28 = 1;
        do
        {
          [(NUBrushStroke *)self->_stroke pointAtIndex:v28];
          CGPathAddLineToPoint(Mutable, 0, v29, v30);
          ++v28;
        }

        while (v28 < [(NUBrushStroke *)self->_stroke pointCount]);
      }

      CGPathCloseSubpath(Mutable);
      CGContextTranslateCTM(v24, -v16, -v17);
      CGContextAddPath(v24, Mutable);
      CGContextFillPath(v24);
      CGContextRelease(v24);
      CGPathRelease(Mutable);
    }
  }
}

- (_NUBrushStrokeCIImageProvider)initWithStroke:(id)stroke closed:(BOOL)closed pressureMode:(int64_t)mode filled:(BOOL)filled
{
  strokeCopy = stroke;
  v18.receiver = self;
  v18.super_class = _NUBrushStrokeCIImageProvider;
  v12 = [(_NUBrushStrokeCIImageProvider *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_stroke, stroke);
    v13->_closed = closed;
    v13->_pressureMode = mode;
    stroke = v13->_stroke;
    if (stroke)
    {
      [(NUBrushStroke *)stroke extent];
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    v13->_extent.origin = v16;
    v13->_extent.size = v17;
    v13->_filled = filled;
  }

  return v13;
}

@end