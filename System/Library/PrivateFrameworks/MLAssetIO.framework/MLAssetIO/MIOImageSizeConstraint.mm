@interface MIOImageSizeConstraint
- (BOOL)allowsImageSize:(id)size;
- (BOOL)isEqual:(id)equal;
- (MIOImageSizeConstraint)init;
- (MIOImageSizeConstraint)initWithEnumeratedImageSizes:(id)sizes;
- (MIOImageSizeConstraint)initWithPixelsWideRange:(_MIORange)range pixelsHighRange:(_MIORange)highRange;
- (MIOImageSizeConstraint)initWithSpecification:(const void *)specification;
- (_MIORange)pixelsHighRange;
- (_MIORange)pixelsWideRange;
- (id)description;
- (unint64_t)hash;
@end

@implementation MIOImageSizeConstraint

- (MIOImageSizeConstraint)init
{
  v8.receiver = self;
  v8.super_class = MIOImageSizeConstraint;
  v2 = [(MIOImageSizeConstraint *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_type = 0;
    v2->_pixelsWideRange.lowerBound = MIOMakeRange(0x7FFFFFFFFFFFFFFFLL, -1);
    v3->_pixelsWideRange.upperBound = v4;
    v3->_pixelsHighRange.lowerBound = MIOMakeRange(0x7FFFFFFFFFFFFFFFLL, -1);
    v3->_pixelsHighRange.upperBound = v5;
    enumeratedImageSizes = v3->_enumeratedImageSizes;
    v3->_enumeratedImageSizes = MEMORY[0x1E695E0F0];
  }

  return v3;
}

- (MIOImageSizeConstraint)initWithPixelsWideRange:(_MIORange)range pixelsHighRange:(_MIORange)highRange
{
  upperBound = highRange.upperBound;
  lowerBound = highRange.lowerBound;
  v6 = range.upperBound;
  v7 = range.lowerBound;
  result = [(MIOImageSizeConstraint *)self init];
  if (result)
  {
    result->_type = 3;
    result->_pixelsWideRange.lowerBound = v7;
    result->_pixelsWideRange.upperBound = v6;
    result->_pixelsHighRange.lowerBound = lowerBound;
    result->_pixelsHighRange.upperBound = upperBound;
  }

  return result;
}

- (MIOImageSizeConstraint)initWithEnumeratedImageSizes:(id)sizes
{
  v31 = *MEMORY[0x1E69E9840];
  sizesCopy = sizes;
  v25 = [(MIOImageSizeConstraint *)self init];
  if ([sizesCopy count])
  {
    if ([sizesCopy count] == 1)
    {
      v4 = [sizesCopy objectAtIndexedSubscript:0];
      if ([v4 pixelsWide])
      {
      }

      else
      {
        v5 = [sizesCopy objectAtIndexedSubscript:0];
        pixelsHigh = [v5 pixelsHigh];

        if (!pixelsHigh)
        {
          goto LABEL_25;
        }
      }
    }

    if (v25)
    {
      v25->_type = 2;
      v7 = [sizesCopy sortedArrayUsingSelector:sel_compare_];
      enumeratedImageSizes = v25->_enumeratedImageSizes;
      v25->_enumeratedImageSizes = v7;

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v9 = sizesCopy;
      v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v10)
      {
        v11 = *v27;
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        v13 = 0x8000000000000000;
        v14 = 0x8000000000000000;
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v27 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v17 = *(*(&v26 + 1) + 8 * i);
            pixelsHigh2 = [v17 pixelsHigh];
            pixelsWide = [v17 pixelsWide];
            if (pixelsWide < v15)
            {
              v15 = pixelsWide;
            }

            if (v14 <= pixelsWide)
            {
              v14 = pixelsWide;
            }

            if (pixelsHigh2 < v12)
            {
              v12 = pixelsHigh2;
            }

            if (v13 <= pixelsHigh2)
            {
              v13 = pixelsHigh2;
            }
          }

          v10 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v10);
      }

      else
      {

        v14 = 0x8000000000000000;
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        v12 = 0x7FFFFFFFFFFFFFFFLL;
        v13 = 0x8000000000000000;
      }

      v25->_pixelsWideRange.lowerBound = MIOMakeRange(v15, v14);
      v25->_pixelsWideRange.upperBound = v20;
      v25->_pixelsHighRange.lowerBound = MIOMakeRange(v12, v13);
      v25->_pixelsHighRange.upperBound = v21;
    }
  }

LABEL_25:

  v22 = *MEMORY[0x1E69E9840];
  return v25;
}

- (MIOImageSizeConstraint)initWithSpecification:(const void *)specification
{
  v35[1] = *MEMORY[0x1E69E9840];
  CoreML::Specification::ImageFeatureType_ImageSize::ImageFeatureType_ImageSize(v33, 0, 0);
  v34 = *(specification + 1);
  v5 = [[MIOImageSize alloc] initWithSpecification:v33];
  if ([(MIOImageSize *)v5 pixelsWide])
  {
    v6 = [(MIOImageSize *)v5 pixelsHigh]!= 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = *(specification + 13);
  switch(v7)
  {
    case 0:
      if (!v6)
      {
        v22 = [(MIOImageSizeConstraint *)self init];
LABEL_41:
        self = v22;
        break;
      }

      v35[0] = v5;
      array = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
      v30 = [(MIOImageSizeConstraint *)self initWithEnumeratedImageSizes:array];
      goto LABEL_39;
    case 21:
      array = [MEMORY[0x1E695DF70] array];
      if (*(specification + 13) == 21)
      {
        v24 = *(specification + 5);
      }

      else
      {
        v24 = &CoreML::Specification::_ImageFeatureType_EnumeratedImageSizes_default_instance_;
      }

      v25 = v24[4];
      if (v25)
      {
        v26 = v25 + 1;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(v24 + 6);
      if (v27)
      {
        v28 = 8 * v27;
        do
        {
          v29 = [[MIOImageSize alloc] initWithSpecification:*v26];
          [array addObject:v29];

          ++v26;
          v28 -= 8;
        }

        while (v28);
      }

      if (![array count])
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MIOImageSizeConstraint initWithSpecification:];
        }

        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [MIOImageSizeConstraint initWithSpecification:];
        }

        [array addObject:v5];
      }

      v30 = [(MIOImageSizeConstraint *)self initWithEnumeratedImageSizes:array];
LABEL_39:
      self = v30;

      break;
    case 31:
      v8 = *(*(specification + 5) + 16);
      if (!v8)
      {
        v8 = &CoreML::Specification::_SizeRange_default_instance_;
      }

      v9 = v8[2];
      v10 = v8[3];
      if (v10 <= 0)
      {
        v11 = -1;
      }

      else
      {
        v11 = v10;
      }

      v12 = MIOMakeRange(v9, v11);
      v14 = v13;
      if (*(specification + 13) == 31)
      {
        v15 = *(specification + 5);
      }

      else
      {
        v15 = &CoreML::Specification::_ImageFeatureType_ImageSizeRange_default_instance_;
      }

      v16 = v15[3];
      if (!v16)
      {
        v16 = &CoreML::Specification::_SizeRange_default_instance_;
      }

      v17 = v16[2];
      v18 = v16[3];
      if (v18 <= 0)
      {
        v19 = -1;
      }

      else
      {
        v19 = v18;
      }

      v20 = MIOMakeRange(v17, v19);
      v22 = [(MIOImageSizeConstraint *)self initWithPixelsWideRange:v12 pixelsHighRange:v14, v20, v21];
      goto LABEL_41;
  }

  CoreML::Specification::ImageFeatureType_ImageSize::~ImageFeatureType_ImageSize(v33);
  v31 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)allowsImageSize:(id)size
{
  sizeCopy = size;
  v5 = sizeCopy;
  type = self->_type;
  if (!type)
  {
    v8 = 1;
    goto LABEL_10;
  }

  if (type == 2)
  {
    v7 = [(NSArray *)self->_enumeratedImageSizes containsObject:sizeCopy];
    goto LABEL_8;
  }

  if (type == 3 && MIOLocationInRange([sizeCopy pixelsWide], self->_pixelsWideRange.lowerBound, self->_pixelsWideRange.upperBound))
  {
    v7 = MIOLocationInRange([v5 pixelsHigh], self->_pixelsHighRange.lowerBound, self->_pixelsHighRange.upperBound);
LABEL_8:
    v8 = v7;
    goto LABEL_10;
  }

  v8 = 0;
LABEL_10:

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  type = [(MIOImageSizeConstraint *)self type];
  v5 = @"unspecified";
  if (type == 3)
  {
    v5 = @"ranges";
  }

  if (type == 2)
  {
    v5 = @"enumerated";
  }

  v6 = [v3 initWithFormat:@"MIOImageSizeConstraint (%@) ", v5];
  if ([(MIOImageSizeConstraint *)self type]== 2)
  {
    enumeratedImageSizes = [(MIOImageSizeConstraint *)self enumeratedImageSizes];
    v8 = [enumeratedImageSizes componentsJoinedByString:{@", "}];
    [v6 appendFormat:@"[%@]", v8];
  }

  else
  {
    if ([(MIOImageSizeConstraint *)self type]!= 3)
    {
      goto LABEL_10;
    }

    pixelsWideRange = [(MIOImageSizeConstraint *)self pixelsWideRange];
    enumeratedImageSizes = NSStringFromMIORange(pixelsWideRange, v10);
    pixelsHighRange = [(MIOImageSizeConstraint *)self pixelsHighRange];
    v8 = NSStringFromMIORange(pixelsHighRange, v12);
    [v6 appendFormat:@"Wide: %@ High: %@", enumeratedImageSizes, v8];
  }

LABEL_10:

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      type = [(MIOImageSizeConstraint *)self type];
      if (type == [(MIOImageSizeConstraint *)v5 type])
      {
        if ([(MIOImageSizeConstraint *)self type]== 2)
        {
          enumeratedImageSizes = [(MIOImageSizeConstraint *)self enumeratedImageSizes];
          enumeratedImageSizes2 = [(MIOImageSizeConstraint *)v5 enumeratedImageSizes];
          v9 = [enumeratedImageSizes isEqual:enumeratedImageSizes2];

LABEL_12:
          goto LABEL_13;
        }

        if ([(MIOImageSizeConstraint *)self type]!= 3)
        {
          v9 = 1;
          goto LABEL_12;
        }

        pixelsWideRange = [(MIOImageSizeConstraint *)self pixelsWideRange];
        v12 = v11;
        pixelsWideRange2 = [(MIOImageSizeConstraint *)v5 pixelsWideRange];
        if (MIOEqualRanges(pixelsWideRange, v12, pixelsWideRange2, v14))
        {
          pixelsHighRange = [(MIOImageSizeConstraint *)self pixelsHighRange];
          v17 = v16;
          pixelsHighRange2 = [(MIOImageSizeConstraint *)v5 pixelsHighRange];
          v9 = MIOEqualRanges(pixelsHighRange, v17, pixelsHighRange2, v19);
          goto LABEL_12;
        }
      }

      v9 = 0;
      goto LABEL_12;
    }

    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (unint64_t)hash
{
  type = [(MIOImageSizeConstraint *)self type];
  enumeratedImageSizes = [(MIOImageSizeConstraint *)self enumeratedImageSizes];
  v5 = [enumeratedImageSizes hash];
  pixelsWideRange = [(MIOImageSizeConstraint *)self pixelsWideRange];
  v8 = NSStringFromMIORange(pixelsWideRange, v7);
  v9 = [v8 hash];
  pixelsHighRange = [(MIOImageSizeConstraint *)self pixelsHighRange];
  v12 = NSStringFromMIORange(pixelsHighRange, v11);
  v13 = [v12 hash];

  return v5 ^ type ^ v9 ^ v13;
}

- (_MIORange)pixelsWideRange
{
  upperBound = self->_pixelsWideRange.upperBound;
  lowerBound = self->_pixelsWideRange.lowerBound;
  result.upperBound = upperBound;
  result.lowerBound = lowerBound;
  return result;
}

- (_MIORange)pixelsHighRange
{
  upperBound = self->_pixelsHighRange.upperBound;
  lowerBound = self->_pixelsHighRange.lowerBound;
  result.upperBound = upperBound;
  result.lowerBound = lowerBound;
  return result;
}

@end