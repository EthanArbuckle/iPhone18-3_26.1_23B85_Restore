@interface NTKLayoutRule
+ (id)layoutRuleForDevice:(id)device withReferenceFrame:(CGRect)frame horizontalLayout:(int64_t)layout verticalLayout:(int64_t)verticalLayout clip:(BOOL)clip;
- (BOOL)isEqual:(id)equal;
- (CGRect)calculateLayoutFrameForBoundsSize:(CGSize)size;
- (CGRect)referenceFrame;
- (CGSize)maximumSize;
- (double)calculateLayoutFrameHeightForBoundsSize:(CGSize)size;
- (double)calculateLayoutFrameWidthForBoundsSize:(CGSize)size;
- (double)calculateLayoutFrameXOriginForBoundsSize:(CGSize)size;
- (double)calculateLayoutFrameYOriginForBoundsSize:(CGSize)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initForDevice:(id)device;
- (id)layoutRuleByConvertingToCoordinateSpaceWithFrame:(CGRect)frame;
- (unint64_t)hash;
- (void)validate;
@end

@implementation NTKLayoutRule

- (id)initForDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = NTKLayoutRule;
  v6 = [(NTKLayoutRule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

+ (id)layoutRuleForDevice:(id)device withReferenceFrame:(CGRect)frame horizontalLayout:(int64_t)layout verticalLayout:(int64_t)verticalLayout clip:(BOOL)clip
{
  clipCopy = clip;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v16 = [[self alloc] initForDevice:deviceCopy];

  [v16 setReferenceFrame:{x, y, width, height}];
  [v16 setHorizontalLayout:layout];
  [v16 setVerticalLayout:verticalLayout];
  [v16 setClipsToReferenceFrame:clipCopy];
  [v16 validate];

  return v16;
}

- (id)layoutRuleByConvertingToCoordinateSpaceWithFrame:(CGRect)frame
{
  y = frame.origin.y;
  x = frame.origin.x;
  v5 = [(NTKLayoutRule *)self copy:frame.origin.x];
  [v5 referenceFrame];
  v9 = CGRectOffset(v8, -x, -y);
  [v5 setReferenceFrame:{v9.origin.x, v9.origin.y, v9.size.width, v9.size.height}];

  return v5;
}

- (double)calculateLayoutFrameXOriginForBoundsSize:(CGSize)size
{
  width = size.width;
  horizontalLayout = [(NTKLayoutRule *)self horizontalLayout];
  result = 0.0;
  if (horizontalLayout > 2)
  {
    if ((horizontalLayout - 3) > 1)
    {
      return result;
    }

    goto LABEL_7;
  }

  switch(horizontalLayout)
  {
    case 0:
LABEL_7:
      [(NTKLayoutRule *)self referenceFrame];
      return result;
    case 1:
      [(NTKLayoutRule *)self referenceFrame];
      CLKRectCenteredXInRectForDevice();
      break;
    case 2:
      [(NTKLayoutRule *)self referenceFrame];
      return CGRectGetMaxX(v7) - width;
  }

  return result;
}

- (double)calculateLayoutFrameYOriginForBoundsSize:(CGSize)size
{
  height = size.height;
  verticalLayout = [(NTKLayoutRule *)self verticalLayout];
  result = 0.0;
  if (verticalLayout > 2)
  {
    if ((verticalLayout - 3) > 1)
    {
      return result;
    }

    goto LABEL_7;
  }

  switch(verticalLayout)
  {
    case 0:
LABEL_7:
      [(NTKLayoutRule *)self referenceFrame];
      return v7;
    case 1:
      [(NTKLayoutRule *)self referenceFrame];
      CLKRectCenteredYInRectForDevice();
      return v7;
    case 2:
      [(NTKLayoutRule *)self referenceFrame];
      return CGRectGetMaxY(v8) - height;
  }

  return result;
}

- (double)calculateLayoutFrameWidthForBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(NTKLayoutRule *)self verticalLayout]== 4)
  {
    if (height != 0.0)
    {
      [(NTKLayoutRule *)self referenceFrame];
      return width * (v6 / height);
    }
  }

  else
  {
    horizontalLayout = [(NTKLayoutRule *)self horizontalLayout];
    if (horizontalLayout >= 3)
    {
      if (horizontalLayout - 3 < 2)
      {
        [(NTKLayoutRule *)self referenceFrame];
        return v9;
      }
    }

    else if ([(NTKLayoutRule *)self clipsToReferenceFrame])
    {
      [(NTKLayoutRule *)self referenceFrame];
      if (width > v8)
      {
        return v8;
      }
    }
  }

  return width;
}

- (double)calculateLayoutFrameHeightForBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if ([(NTKLayoutRule *)self horizontalLayout]== 4)
  {
    if (width != 0.0)
    {
      [(NTKLayoutRule *)self referenceFrame];
      return height * (v6 / width);
    }
  }

  else
  {
    verticalLayout = [(NTKLayoutRule *)self verticalLayout];
    if (verticalLayout >= 3)
    {
      if (verticalLayout - 3 < 2)
      {
        [(NTKLayoutRule *)self referenceFrame];
        return v9;
      }
    }

    else if ([(NTKLayoutRule *)self clipsToReferenceFrame])
    {
      [(NTKLayoutRule *)self referenceFrame];
      if (height > v8)
      {
        return v8;
      }
    }
  }

  return height;
}

- (CGRect)calculateLayoutFrameForBoundsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(NTKLayoutRule *)self validate];
  [(NTKLayoutRule *)self calculateLayoutFrameWidthForBoundsSize:width, height];
  v7 = v6;
  [(NTKLayoutRule *)self calculateLayoutFrameHeightForBoundsSize:width, height];
  v9 = v8;
  [(NTKLayoutRule *)self calculateLayoutFrameXOriginForBoundsSize:v7, v8];
  v11 = v10;
  [(NTKLayoutRule *)self calculateLayoutFrameYOriginForBoundsSize:v7, v9];
  v13 = v12;
  v14 = v11;
  v15 = v7;
  v16 = v9;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v13;
  result.origin.x = v14;
  return result;
}

- (CGSize)maximumSize
{
  if ([(NTKLayoutRule *)self clipsToReferenceFrame])
  {
    [(NTKLayoutRule *)self referenceFrame];
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = 1.79769313e308;
    v6 = 1.79769313e308;
  }

  result.height = v6;
  result.width = v4;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[NTKLayoutRule referenceFrame](self, "referenceFrame"), v6 = v5, v8 = v7, v10 = v9, v12 = v11, [equalCopy referenceFrame], v23.origin.x = v13, v23.origin.y = v14, v23.size.width = v15, v23.size.height = v16, v22.origin.x = v6, v22.origin.y = v8, v22.size.width = v10, v22.size.height = v12, CGRectEqualToRect(v22, v23)) && (v17 = -[NTKLayoutRule horizontalLayout](self, "horizontalLayout"), v17 == objc_msgSend(equalCopy, "horizontalLayout")) && (v18 = -[NTKLayoutRule verticalLayout](self, "verticalLayout"), v18 == objc_msgSend(equalCopy, "verticalLayout")))
  {
    clipsToReferenceFrame = [(NTKLayoutRule *)self clipsToReferenceFrame];
    v20 = clipsToReferenceFrame ^ [equalCopy clipsToReferenceFrame] ^ 1;
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  return v20;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCAE60] valueWithCGRect:{self->_referenceFrame.origin.x, self->_referenceFrame.origin.y, self->_referenceFrame.size.width, self->_referenceFrame.size.height}];
  v4 = [v3 hash] + 32 * self->_horizontalLayout + (self->_verticalLayout << 10) + (self->_clipsToReferenceFrame << 15);

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(NTKLayoutRule *)self referenceFrame];
  [v4 setReferenceFrame:?];
  [v4 setHorizontalLayout:{-[NTKLayoutRule horizontalLayout](self, "horizontalLayout")}];
  [v4 setVerticalLayout:{-[NTKLayoutRule verticalLayout](self, "verticalLayout")}];
  [v4 setClipsToReferenceFrame:{-[NTKLayoutRule clipsToReferenceFrame](self, "clipsToReferenceFrame")}];
  return v4;
}

- (void)validate
{
  v26 = *MEMORY[0x277D85DE8];
  horizontalLayout = [(NTKLayoutRule *)self horizontalLayout];
  verticalLayout = [(NTKLayoutRule *)self verticalLayout];
  if (horizontalLayout == 4)
  {
    if ((verticalLayout - 3) > 1)
    {
      return;
    }

    verticalLayout2 = [(NTKLayoutRule *)self verticalLayout];
    horizontalLayout2 = [(NTKLayoutRule *)self horizontalLayout];
    if ((verticalLayout2 - 1) > 3)
    {
      v7 = @"NTKLayoutMin";
    }

    else
    {
      v7 = off_2787804E0[verticalLayout2 - 1];
    }

    if ((horizontalLayout2 - 1) > 3)
    {
      v11 = @"NTKLayoutMin";
    }

    else
    {
      v11 = off_2787804E0[horizontalLayout2 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** Error in <NTKLayoutRule %p>: %@ for verticalLayout does not make sense when horizontalLayout is %@.", self, v7, v11];
    v13 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      verticalLayout3 = [(NTKLayoutRule *)self verticalLayout];
      if ((verticalLayout3 - 1) > 3)
      {
        v15 = @"NTKLayoutMin";
      }

      else
      {
        v15 = off_2787804E0[verticalLayout3 - 1];
      }

      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Breaking verticalLayout by resetting %@ to NTKLayoutMin", v15];
      *buf = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v17;
      _os_log_impl(&dword_22D9C5000, v13, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
    }

    [(NTKLayoutRule *)self setVerticalLayout:0];
    goto LABEL_29;
  }

  if (verticalLayout == 4 && ([(NTKLayoutRule *)self horizontalLayout]- 3) <= 1)
  {
    horizontalLayout3 = [(NTKLayoutRule *)self horizontalLayout];
    verticalLayout4 = [(NTKLayoutRule *)self verticalLayout];
    if ((horizontalLayout3 - 1) > 3)
    {
      v10 = @"NTKLayoutMin";
    }

    else
    {
      v10 = off_2787804E0[horizontalLayout3 - 1];
    }

    if ((verticalLayout4 - 1) > 3)
    {
      v16 = @"NTKLayoutMin";
    }

    else
    {
      v16 = off_2787804E0[verticalLayout4 - 1];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** Error in <NTKLayoutRule %p>: %@ for horizontalLayout does not make sense when verticalLayout is %@.", self, v10, v16];
    v18 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      horizontalLayout4 = [(NTKLayoutRule *)self horizontalLayout];
      if ((horizontalLayout4 - 1) > 3)
      {
        v20 = @"NTKLayoutMin";
      }

      else
      {
        v20 = off_2787804E0[horizontalLayout4 - 1];
      }

      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Breaking horizontalLayout by resetting %@ to NTKLayoutMin", v20];
      *buf = 138412546;
      v23 = v12;
      v24 = 2112;
      v25 = v21;
      _os_log_impl(&dword_22D9C5000, v18, OS_LOG_TYPE_DEFAULT, "%@ %@", buf, 0x16u);
    }

    [(NTKLayoutRule *)self setHorizontalLayout:0];
LABEL_29:
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  [(NTKLayoutRule *)self referenceFrame];
  v4 = NSStringFromCGRect(v14);
  v5 = [(NTKLayoutRule *)self horizontalLayout]- 1;
  if (v5 > 3)
  {
    v6 = @"NTKLayoutMin";
  }

  else
  {
    v6 = off_2787804E0[v5];
  }

  v7 = [(NTKLayoutRule *)self verticalLayout]- 1;
  if (v7 > 3)
  {
    v8 = @"NTKLayoutMin";
  }

  else
  {
    v8 = off_2787804E0[v7];
  }

  clipsToReferenceFrame = [(NTKLayoutRule *)self clipsToReferenceFrame];
  v10 = @"no";
  if (clipsToReferenceFrame)
  {
    v10 = @"yes";
  }

  v11 = [v3 stringWithFormat:@"[%@] h:%@ v:%@ clip:%@", v4, v6, v8, v10];

  return v11;
}

- (CGRect)referenceFrame
{
  x = self->_referenceFrame.origin.x;
  y = self->_referenceFrame.origin.y;
  width = self->_referenceFrame.size.width;
  height = self->_referenceFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end