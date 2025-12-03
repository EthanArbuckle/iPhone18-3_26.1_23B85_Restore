@interface NUViewGeometry
- (CGPoint)origin;
- (CGRect)boundingCropRect;
- (CGRect)cropRect;
- (CGRect)imageBounds;
- (CGRect)proposedBoundsForBounds:(CGRect)bounds inFrame:(CGRect)frame;
- (CGSize)imageSize;
- (CGSize)viewImageSize;
- (NUViewGeometry)init;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)contentInsetsWithScale:(double)scale;
- (uint64_t)insetBoundsForCrop:(CGFloat)crop inBounds:(CGFloat)bounds inFrame:(CGFloat)frame;
@end

@implementation NUViewGeometry

- (CGPoint)origin
{
  x = self->_origin.x;
  y = self->_origin.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)imageSize
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)boundingCropRect
{
  [(NUViewGeometry *)self cropRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  CGAffineTransformMakeScale(&v20, 1.0 / self->_backingScale, 1.0 / self->_backingScale);
  v21.origin.x = v4;
  v21.origin.y = v6;
  v21.size.width = v8;
  v21.size.height = v10;
  v22 = CGRectApplyAffineTransform(v21, &v20);
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  [(NUViewGeometry *)self angle];
  v16 = NUBoundingRectForRotatedRect(x, y, width, height, v15);
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (UIEdgeInsets)contentInsetsWithScale:(double)scale
{
  [(NUViewGeometry *)self contentInsets];
  v5 = v4 * scale;
  v7 = v6 * scale;
  v9 = v8 * scale;
  v11 = v10 * scale;
  result.right = v11;
  result.bottom = v9;
  result.left = v7;
  result.top = v5;
  return result;
}

- (uint64_t)insetBoundsForCrop:(CGFloat)crop inBounds:(CGFloat)bounds inFrame:(CGFloat)frame
{
  v24.origin.x = a10;
  v24.origin.y = a11;
  v24.size.width = a12;
  v24.size.height = a13;
  Width = CGRectGetWidth(v24);
  v25.origin.x = a2;
  v25.origin.y = crop;
  v25.size.width = bounds;
  v25.size.height = frame;
  CGRectGetWidth(v25);
  v26.origin.x = a10;
  v26.origin.y = a11;
  v26.size.width = a12;
  v26.size.height = a13;
  CGRectGetHeight(v26);
  v27.origin.x = a2;
  v27.origin.y = crop;
  v27.size.width = bounds;
  v27.size.height = frame;
  CGRectGetHeight(v27);
  return [self contentInsets];
}

- (CGRect)proposedBoundsForBounds:(CGRect)bounds inFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = bounds.size.height;
  v9 = bounds.size.width;
  v10 = bounds.origin.y;
  v11 = bounds.origin.x;
  if (CGRectIsEmpty(bounds))
  {
    v13 = *MEMORY[0x277CBF3A0];
    v14 = *(MEMORY[0x277CBF3A0] + 8);
    v79 = *(MEMORY[0x277CBF3A0] + 16);
    v80 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v66 = *MEMORY[0x277CBF348];
    v68 = *(MEMORY[0x277CBF348] + 8);
    v81.origin.x = x;
    v81.origin.y = y;
    v81.size.width = width;
    v81.size.height = height;
    v79 = v9;
    v80 = v8;
    recta = height;
    v15 = CGRectGetWidth(v81);
    v82.origin.x = v11;
    v82.origin.y = v10;
    v82.size.width = v9;
    v82.size.height = v8;
    v16 = v15 / CGRectGetWidth(v82);
    v83.origin.x = x;
    v83.origin.y = y;
    v83.size.width = width;
    v83.size.height = recta;
    v17 = CGRectGetHeight(v83);
    v73 = v11;
    v84.origin.x = v11;
    v62 = v10;
    v84.origin.y = v10;
    v84.size.width = v9;
    v84.size.height = v8;
    v18 = v17 / CGRectGetHeight(v84);
    if (v16 >= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v16;
    }

    [(NUViewGeometry *)self viewImageSize];
    v22 = NUBoundingRectForRotatedRect(v66, v68, v20, v21, self->_angle);
    v24 = v23;
    v75 = v25;
    rect = v23;
    v26 = v25;
    v28 = v27;
    [(NUViewGeometry *)self contentInsetsWithScale:1.0 / v19];
    v63 = v30;
    v64 = v29;
    v32 = v31;
    v34 = v33;
    v35 = NURectCenterRectInRect(v22, v24, v26, v28, v66, v68, v79, v8);
    v71 = v36;
    v72 = v35;
    v69 = v38;
    v70 = v37;
    if ([(NUViewGeometry *)self isFlipped])
    {
      v39 = v64;
    }

    else
    {
      v39 = v34;
    }

    v40 = v68 + v39;
    v41 = v79 - (v63 + v32);
    v42 = v8 - (v64 + v34);
    if (v41 <= 0.0)
    {
      v43 = v66 + v32 + v41 * 0.5;
    }

    else
    {
      v43 = v66 + v32;
    }

    if (v41 <= 0.0)
    {
      v44 = 0.0;
    }

    else
    {
      v44 = v79 - (v63 + v32);
    }

    if (v42 <= 0.0)
    {
      v45 = v40 + v42 * 0.5;
    }

    else
    {
      v45 = v40;
    }

    if (v42 <= 0.0)
    {
      v46 = 0.0;
    }

    else
    {
      v46 = v80 - (v64 + v34);
    }

    v67 = v22;
    v85.origin.x = v22;
    v85.size.width = v75;
    v85.origin.y = rect;
    v85.size.height = v28;
    v47 = v72;
    v48 = round(CGRectGetWidth(v85));
    v86.origin.x = v43;
    v86.origin.y = v45;
    v86.size.width = v44;
    v86.size.height = v46;
    v65 = v44;
    if (v48 <= round(CGRectGetWidth(v86)))
    {
      v87.origin.x = v43;
      v87.origin.y = v45;
      v87.size.width = v44;
      v87.size.height = v46;
      MaxX = CGRectGetMaxX(v87);
      v88.origin.x = v72;
      v88.origin.y = v71;
      v88.size.width = v70;
      v88.size.height = v69;
      v61 = CGRectGetMaxX(v88);
      v89.origin.x = v43;
      v89.origin.y = v45;
      v89.size.width = v44;
      v89.size.height = v46;
      MinX = CGRectGetMinX(v89);
      v90.origin.x = v72;
      v90.origin.y = v71;
      v90.size.width = v70;
      v90.size.height = v69;
      v50 = CGRectGetMinX(v90);
      if (v61 >= MaxX)
      {
        v51 = 0.0;
        if (v61 > MaxX)
        {
          v51 = -(v50 - (v61 - MaxX));
        }
      }

      else
      {
        v51 = -v50;
      }

      if (v50 >= MinX)
      {
        v52 = v51;
      }

      else
      {
        v52 = -MinX;
      }

      v73 = v52;
      v47 = v72;
      v44 = v65;
    }

    v91.origin.x = v67;
    v91.size.height = v28;
    v91.size.width = v75;
    v91.origin.y = rect;
    v53 = round(CGRectGetHeight(v91));
    v92.origin.x = v43;
    v92.origin.y = v45;
    v92.size.width = v44;
    v92.size.height = v46;
    if (v53 <= round(CGRectGetHeight(v92)))
    {
      v93.origin.x = v43;
      v93.origin.y = v45;
      v93.size.width = v44;
      v93.size.height = v46;
      rectb = CGRectGetMaxY(v93);
      v94.origin.x = v47;
      v94.origin.y = v71;
      v94.size.width = v70;
      v94.size.height = v69;
      MaxY = CGRectGetMaxY(v94);
      v95.origin.x = v43;
      v95.origin.y = v45;
      v95.size.width = v65;
      v95.size.height = v46;
      MinY = CGRectGetMinY(v95);
      v96.origin.x = v47;
      v96.origin.y = v71;
      v96.size.width = v70;
      v96.size.height = v69;
      v56 = CGRectGetMinY(v96);
      v57 = v56 - (MaxY - rectb);
      if (MaxY < rectb)
      {
        v57 = v56;
      }

      if (v56 >= MinY)
      {
        v58 = v57;
      }

      else
      {
        v58 = MinY;
      }

      v14 = -v58;
    }

    else
    {
      v14 = v62;
    }

    v13 = v73;
  }

  v59 = v79;
  v60 = v80;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)imageBounds
{
  width = self->_imageSize.width;
  height = self->_imageSize.height;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (CGSize)viewImageSize
{
  backingScale = self->_backingScale;
  v3 = self->_imageSize.width / backingScale;
  v4 = self->_imageSize.height / backingScale;
  result.height = v4;
  result.width = v3;
  return result;
}

- (NUViewGeometry)init
{
  v3.receiver = self;
  v3.super_class = NUViewGeometry;
  result = [(NUViewGeometry *)&v3 init];
  result->_maximumScale = 1.0;
  result->_backingScale = 1.0;
  return result;
}

@end