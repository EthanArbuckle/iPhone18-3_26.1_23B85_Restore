@interface ISHintedValue
- (BOOL)sizeOutsideHintedRange:(CGSize)range;
- (ISHintedValue)initWithOptions:(unint64_t)options;
- (double)interpolationFactorForSize:(CGSize)size;
- (double)scaleFactorForSize:(CGSize)size;
- (id)hintedValueForIndex:(int64_t)index;
- (id)hintedValueForSize:(CGSize)size;
- (int64_t)indexForSize:(CGSize)size;
- (void)addHintedValue:(id)value forSize:(CGSize)size;
@end

@implementation ISHintedValue

- (ISHintedValue)initWithOptions:(unint64_t)options
{
  v10.receiver = self;
  v10.super_class = ISHintedValue;
  v4 = [(ISHintedValue *)&v10 init];
  if (v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    dimensions = v4->_dimensions;
    v4->_dimensions = array;

    array2 = [MEMORY[0x1E695DF70] array];
    values = v4->_values;
    v4->_values = array2;

    v4->_options = options;
  }

  return v4;
}

- (int64_t)indexForSize:(CGSize)size
{
  v19 = *MEMORY[0x1E69E9840];
  if (size.width >= size.height)
  {
    width = size.width;
  }

  else
  {
    width = size.height;
  }

  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_dimensions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v15;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      v7 += v6;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v14 + 1) + 8 * v9) doubleValue];
        if (width <= v11)
        {
          v7 = v10;
          goto LABEL_15;
        }

        ++v10;
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_15:

  v12 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)addHintedValue:(id)value forSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  valueCopy = value;
  height = [(ISHintedValue *)self indexForSize:width, height];
  v8 = 0.0;
  if (height < [(NSMutableArray *)self->_dimensions count])
  {
    v9 = [(NSMutableArray *)self->_dimensions objectAtIndexedSubscript:height];
    [v9 doubleValue];
    v8 = v10;
  }

  if (width >= height)
  {
    v11 = width;
  }

  else
  {
    v11 = height;
  }

  if (v8 <= v11)
  {
    dimensions = self->_dimensions;
    v16 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [(NSMutableArray *)dimensions addObject:v16];

    [(NSMutableArray *)self->_values addObject:valueCopy];
  }

  else
  {
    v12 = height + (~height >> 63);
    v13 = self->_dimensions;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [(NSMutableArray *)v13 insertObject:v14 atIndex:v12];

    [(NSMutableArray *)self->_values insertObject:valueCopy atIndex:v12];
  }
}

- (id)hintedValueForSize:(CGSize)size
{
  v4 = [(ISHintedValue *)self indexForSize:size.width, size.height];

  return [(ISHintedValue *)self hintedValueForIndex:v4];
}

- (id)hintedValueForIndex:(int64_t)index
{
  v5 = [(NSMutableArray *)self->_values count];
  values = self->_values;
  if (v5 <= index)
  {
    [(NSMutableArray *)values lastObject];
  }

  else
  {
    [(NSMutableArray *)values objectAtIndexedSubscript:index];
  }
  v7 = ;

  return v7;
}

- (BOOL)sizeOutsideHintedRange:(CGSize)range
{
  if (range.width >= range.height)
  {
    width = range.width;
  }

  else
  {
    width = range.height;
  }

  lastObject = [(NSMutableArray *)self->_dimensions lastObject];
  [lastObject doubleValue];
  v7 = v6;

  if (width > v7)
  {
    return 1;
  }

  firstObject = [(NSMutableArray *)self->_dimensions firstObject];
  [firstObject doubleValue];
  v8 = width < v10;

  return v8;
}

- (double)scaleFactorForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = 1.0;
  if ([(NSMutableArray *)self->_dimensions count])
  {
    if (width < height)
    {
      width = height;
    }

    lastObject = [(NSMutableArray *)self->_dimensions lastObject];
    [lastObject doubleValue];
    v9 = v8;

    dimensions = self->_dimensions;
    if (width > v9)
    {
      lastObject2 = [(NSMutableArray *)dimensions lastObject];
LABEL_8:
      v15 = lastObject2;
      [lastObject2 doubleValue];
      v6 = width / v16;

      return v6;
    }

    firstObject = [(NSMutableArray *)dimensions firstObject];
    [firstObject doubleValue];
    v14 = v13;

    if (width < v14)
    {
      lastObject2 = [(NSMutableArray *)self->_dimensions firstObject];
      goto LABEL_8;
    }
  }

  return v6;
}

- (double)interpolationFactorForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [(ISHintedValue *)self indexForSize:?];
  if (v6 >= [(NSMutableArray *)self->_dimensions count])
  {
    v6 = [(NSMutableArray *)self->_dimensions count]- 1;
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = v6 - 1;
  if (v6 >= 1)
  {
    v9 = [(NSMutableArray *)self->_dimensions objectAtIndexedSubscript:v6];
    [v9 doubleValue];
    v11 = v10;

    v12 = [(NSMutableArray *)self->_dimensions objectAtIndexedSubscript:v8];
    [v12 doubleValue];
    v14 = v13;
LABEL_6:

    goto LABEL_8;
  }

  v14 = 0.0;
  v11 = 0.0;
  if (!v6)
  {
    v12 = [(NSMutableArray *)self->_dimensions objectAtIndexedSubscript:0];
    [v12 doubleValue];
    v11 = v17;
    goto LABEL_6;
  }

LABEL_8:
  if (width >= height)
  {
    v15 = width;
  }

  else
  {
    v15 = height;
  }

  return v7 + (v15 - v14) / (v11 - v14);
}

@end