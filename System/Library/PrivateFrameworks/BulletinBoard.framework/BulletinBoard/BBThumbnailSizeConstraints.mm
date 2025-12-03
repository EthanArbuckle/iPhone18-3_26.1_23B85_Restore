@interface BBThumbnailSizeConstraints
- (BBThumbnailSizeConstraints)initWithCoder:(id)coder;
- (BOOL)areReasonable;
- (CGSize)sizeFromAspectRatio:(double)ratio;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBThumbnailSizeConstraints

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p type=", v5, self];

  constraintType = self->_constraintType;
  if (constraintType <= 1)
  {
    if (constraintType)
    {
      if (constraintType != 1)
      {
        goto LABEL_15;
      }

      v9 = @"; fixedHeight=%g";
      v10 = 12;
      v8 = @"BBConstraintFixedHeight";
    }

    else
    {
      v9 = @"; fixedWidth=%g";
      v10 = 8;
      v8 = @"BBConstraintFixedWidth";
    }

    goto LABEL_13;
  }

  if (constraintType != 2)
  {
    if (constraintType == 3)
    {
      v8 = @"BBConstraintFixedLargeDimension";
    }

    else
    {
      if (constraintType != 4)
      {
        goto LABEL_15;
      }

      v8 = @"BBConstraintFixedSmallDimension";
    }

    v9 = @"; fixedDimension=%g";
    v10 = 16;
LABEL_13:
    [v6 appendString:v8];
    [v6 appendFormat:v9, *(&self->super.isa + v10)];
    v11 = @"; maxAspectRatio=%g";
    v12 = 24;
    v13 = 20;
    v14 = @"; minAspectRatio=%g";
    goto LABEL_14;
  }

  [v6 appendString:@"BBConstraintFixedSized"];
  v11 = @"; fixedHeight=%g";
  v12 = 12;
  v13 = 8;
  v14 = @"; fixedWidth=%g";
LABEL_14:
  [v6 appendFormat:v14, *(&self->super.isa + v13)];
  [v6 appendFormat:v11, *(&self->super.isa + v12)];
LABEL_15:
  areReasonable = [(BBThumbnailSizeConstraints *)self areReasonable];
  v16 = @"NO";
  if (areReasonable)
  {
    v16 = @"YES";
  }

  [v6 appendFormat:@"; thumbnailScale=%g; reasonable? %@>", self->_thumbnailScale, v16];

  return v6;
}

- (BBThumbnailSizeConstraints)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = BBThumbnailSizeConstraints;
  v5 = [(BBThumbnailSizeConstraints *)&v7 init];
  if (v5)
  {
    -[BBThumbnailSizeConstraints setConstraintType:](v5, "setConstraintType:", [coderCopy decodeIntegerForKey:@"constraintType"]);
    [coderCopy decodeFloatForKey:@"fixedWidth"];
    [(BBThumbnailSizeConstraints *)v5 setFixedWidth:?];
    [coderCopy decodeFloatForKey:@"fixedHeight"];
    [(BBThumbnailSizeConstraints *)v5 setFixedHeight:?];
    [coderCopy decodeFloatForKey:@"fixedDimension"];
    [(BBThumbnailSizeConstraints *)v5 setFixedDimension:?];
    [coderCopy decodeFloatForKey:@"minAspectRatio"];
    [(BBThumbnailSizeConstraints *)v5 setMinAspectRatio:?];
    [coderCopy decodeFloatForKey:@"maxAspectRatio"];
    [(BBThumbnailSizeConstraints *)v5 setMaxAspectRatio:?];
    [coderCopy decodeFloatForKey:@"thumbnailScale"];
    [(BBThumbnailSizeConstraints *)v5 setThumbnailScale:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BBThumbnailSizeConstraints constraintType](self forKey:{"constraintType"), @"constraintType"}];
  [(BBThumbnailSizeConstraints *)self fixedWidth];
  [coderCopy encodeFloat:@"fixedWidth" forKey:?];
  [(BBThumbnailSizeConstraints *)self fixedHeight];
  [coderCopy encodeFloat:@"fixedHeight" forKey:?];
  [(BBThumbnailSizeConstraints *)self fixedDimension];
  [coderCopy encodeFloat:@"fixedDimension" forKey:?];
  [(BBThumbnailSizeConstraints *)self minAspectRatio];
  [coderCopy encodeFloat:@"minAspectRatio" forKey:?];
  [(BBThumbnailSizeConstraints *)self maxAspectRatio];
  [coderCopy encodeFloat:@"maxAspectRatio" forKey:?];
  [(BBThumbnailSizeConstraints *)self thumbnailScale];
  [coderCopy encodeFloat:@"thumbnailScale" forKey:?];
}

- (BOOL)areReasonable
{
  v2 = 0;
  fixedWidth = self->_fixedWidth;
  fixedHeight = self->_fixedHeight;
  v6 = fixedWidth <= 1000.0 && fixedWidth >= 10.0;
  v8 = fixedHeight <= 1000.0 && fixedHeight >= 10.0;
  fixedDimension = self->_fixedDimension;
  minAspectRatio = self->_minAspectRatio;
  v12 = fixedDimension <= 1000.0 && fixedDimension >= 10.0;
  if (minAspectRatio >= 0.1)
  {
    maxAspectRatio = self->_maxAspectRatio;
    v2 = maxAspectRatio <= 10.0;
    if (minAspectRatio > maxAspectRatio)
    {
      v2 = 0;
    }
  }

  v14 = 0;
  constraintType = self->_constraintType;
  if (constraintType > 2)
  {
    if ((constraintType - 3) < 2)
    {
      return v12 && v2;
    }
  }

  else if (constraintType)
  {
    if (constraintType == 1)
    {
      return v8 && v2;
    }

    else if (constraintType == 2)
    {
      return v6 && v8;
    }
  }

  else
  {
    return v6 && v2;
  }

  return v14;
}

- (CGSize)sizeFromAspectRatio:(double)ratio
{
  v3 = 0.0;
  if (ratio <= 0.0)
  {
    v11 = 0.0;
    goto LABEL_12;
  }

  [(BBThumbnailSizeConstraints *)self minAspectRatio];
  v7 = v6;
  [(BBThumbnailSizeConstraints *)self maxAspectRatio];
  ratioCopy = v8;
  if (ratioCopy >= ratio)
  {
    ratioCopy = ratio;
  }

  if (ratioCopy > v7)
  {
    v7 = ratioCopy;
  }

  constraintType = [(BBThumbnailSizeConstraints *)self constraintType];
  if (constraintType > 1)
  {
    if (constraintType == 4)
    {
      v17 = v7;
      [(BBThumbnailSizeConstraints *)self fixedDimension];
      v11 = v18;
      if (v7 >= 1.0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (constraintType != 3)
      {
        v11 = 0.0;
        if (constraintType == 2)
        {
          [(BBThumbnailSizeConstraints *)self fixedWidth];
          v11 = v12;
          [(BBThumbnailSizeConstraints *)self fixedHeight];
          v3 = v13;
        }

        goto LABEL_12;
      }

      v17 = v7;
      [(BBThumbnailSizeConstraints *)self fixedDimension];
      v11 = v19;
      if (v7 <= 1.0)
      {
LABEL_19:
        v3 = v11;
        v11 = v17 * v11;
        goto LABEL_12;
      }
    }

    v3 = v11 / v17;
    goto LABEL_12;
  }

  if (constraintType)
  {
    v11 = 0.0;
    if (constraintType == 1)
    {
      [(BBThumbnailSizeConstraints *)self fixedHeight];
      v3 = v16;
      v11 = v7 * v16;
    }
  }

  else
  {
    [(BBThumbnailSizeConstraints *)self fixedWidth];
    v11 = v20;
    v3 = v20 / v7;
  }

LABEL_12:
  v14 = v11;
  v15 = v3;
  result.height = v15;
  result.width = v14;
  return result;
}

@end