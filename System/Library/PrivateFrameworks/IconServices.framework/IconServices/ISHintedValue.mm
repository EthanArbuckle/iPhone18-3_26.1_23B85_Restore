@interface ISHintedValue
- (BOOL)sizeOutsideHintedRange:(CGSize)a3;
- (ISHintedValue)initWithOptions:(unint64_t)a3;
- (double)interpolationFactorForSize:(CGSize)a3;
- (double)scaleFactorForSize:(CGSize)a3;
- (id)hintedValueForIndex:(int64_t)a3;
- (id)hintedValueForSize:(CGSize)a3;
- (int64_t)indexForSize:(CGSize)a3;
- (void)addHintedValue:(id)a3 forSize:(CGSize)a4;
@end

@implementation ISHintedValue

- (ISHintedValue)initWithOptions:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = ISHintedValue;
  v4 = [(ISHintedValue *)&v10 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    dimensions = v4->_dimensions;
    v4->_dimensions = v5;

    v7 = [MEMORY[0x1E695DF70] array];
    values = v4->_values;
    v4->_values = v7;

    v4->_options = a3;
  }

  return v4;
}

- (int64_t)indexForSize:(CGSize)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3.width >= a3.height)
  {
    width = a3.width;
  }

  else
  {
    width = a3.height;
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

- (void)addHintedValue:(id)a3 forSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v17 = a3;
  v7 = [(ISHintedValue *)self indexForSize:width, height];
  v8 = 0.0;
  if (v7 < [(NSMutableArray *)self->_dimensions count])
  {
    v9 = [(NSMutableArray *)self->_dimensions objectAtIndexedSubscript:v7];
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

    [(NSMutableArray *)self->_values addObject:v17];
  }

  else
  {
    v12 = v7 + (~v7 >> 63);
    v13 = self->_dimensions;
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
    [(NSMutableArray *)v13 insertObject:v14 atIndex:v12];

    [(NSMutableArray *)self->_values insertObject:v17 atIndex:v12];
  }
}

- (id)hintedValueForSize:(CGSize)a3
{
  v4 = [(ISHintedValue *)self indexForSize:a3.width, a3.height];

  return [(ISHintedValue *)self hintedValueForIndex:v4];
}

- (id)hintedValueForIndex:(int64_t)a3
{
  v5 = [(NSMutableArray *)self->_values count];
  values = self->_values;
  if (v5 <= a3)
  {
    [(NSMutableArray *)values lastObject];
  }

  else
  {
    [(NSMutableArray *)values objectAtIndexedSubscript:a3];
  }
  v7 = ;

  return v7;
}

- (BOOL)sizeOutsideHintedRange:(CGSize)a3
{
  if (a3.width >= a3.height)
  {
    width = a3.width;
  }

  else
  {
    width = a3.height;
  }

  v5 = [(NSMutableArray *)self->_dimensions lastObject];
  [v5 doubleValue];
  v7 = v6;

  if (width > v7)
  {
    return 1;
  }

  v9 = [(NSMutableArray *)self->_dimensions firstObject];
  [v9 doubleValue];
  v8 = width < v10;

  return v8;
}

- (double)scaleFactorForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = 1.0;
  if ([(NSMutableArray *)self->_dimensions count])
  {
    if (width < height)
    {
      width = height;
    }

    v7 = [(NSMutableArray *)self->_dimensions lastObject];
    [v7 doubleValue];
    v9 = v8;

    dimensions = self->_dimensions;
    if (width > v9)
    {
      v11 = [(NSMutableArray *)dimensions lastObject];
LABEL_8:
      v15 = v11;
      [v11 doubleValue];
      v6 = width / v16;

      return v6;
    }

    v12 = [(NSMutableArray *)dimensions firstObject];
    [v12 doubleValue];
    v14 = v13;

    if (width < v14)
    {
      v11 = [(NSMutableArray *)self->_dimensions firstObject];
      goto LABEL_8;
    }
  }

  return v6;
}

- (double)interpolationFactorForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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