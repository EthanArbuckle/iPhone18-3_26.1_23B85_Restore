@interface CAMOverlayDiscreteFloatRange
- (BOOL)containsValue:(id)a3;
- (BOOL)isEqualToRange:(id)a3;
- (BOOL)isValueExpectedType:(id)a3;
- (CAMOverlayDiscreteFloatRange)initWithCoder:(id)a3;
- (CAMOverlayDiscreteFloatRange)initWithMinimum:(double)a3 maximum:(double)a4 step:(double)a5;
- (CAMOverlayDiscreteFloatRange)initWithValues:(id)a3;
- (NSString)description;
- (double)valueClosestToValue:(double)a3;
- (id)indexesOfValuesInRange:(id)a3;
- (id)valueAtIndex:(unint64_t)a3;
- (unint64_t)indexOfValue:(id)a3;
- (unint64_t)indexOfValueClosestToValue:(double)a3;
- (unint64_t)indexOfValueGreaterThanValue:(double)a3;
- (unint64_t)indexOfValueLessThanValue:(double)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAMOverlayDiscreteFloatRange

- (CAMOverlayDiscreteFloatRange)initWithValues:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CAMOverlayDiscreteFloatRange;
  v5 = [(CAMOverlayDiscreteFloatRange *)&v15 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB70] orderedSetWithArray:v4];
    v7 = [v6 sortedArrayUsingComparator:&__block_literal_global];
    explicitStorage = v5->__explicitStorage;
    v5->__explicitStorage = v7;

    v9 = [(NSArray *)v5->__explicitStorage firstObject];
    [v9 doubleValue];
    v5->_minimum = v10;

    v11 = [(NSArray *)v5->__explicitStorage lastObject];
    [v11 doubleValue];
    v5->_maximum = v12;

    v5->_count = [(NSArray *)v5->__explicitStorage count];
    v13 = v5;
  }

  return v5;
}

- (CAMOverlayDiscreteFloatRange)initWithMinimum:(double)a3 maximum:(double)a4 step:(double)a5
{
  v15.receiver = self;
  v15.super_class = CAMOverlayDiscreteFloatRange;
  v8 = [(CAMOverlayDiscreteFloatRange *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v10 = fmin(a3, a4);
    v11 = fmax(a3, a4);
    v12 = 1.79769313e308;
    if (a5 > 0.0)
    {
      v12 = a5;
    }

    v8->__implicitStep = v12;
    v8->_minimum = v10;
    v8->_maximum = v11;
    v8->_count = vcvtmd_u64_f64((v11 - v10) / v12 + 0.0001) + 1;
    v13 = v8;
  }

  return v9;
}

- (NSString)description
{
  if (self->__explicitStorage)
  {
    v3 = [MEMORY[0x277CCAB68] string];
    explicitStorage = self->__explicitStorage;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __43__CAMOverlayDiscreteFloatRange_description__block_invoke;
    v13[3] = &unk_278851A68;
    v13[4] = self;
    v14 = v3;
    v5 = v3;
    [(NSArray *)explicitStorage enumerateObjectsUsingBlock:v13];
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"<%@ %p %lu values: %@>", v8, self, self->_count, v5];;
  }

  else
  {
    v10 = MEMORY[0x277CCACA8];
    v11 = objc_opt_class();
    v5 = NSStringFromClass(v11);
    v9 = [v10 stringWithFormat:@"<%@ %p %lu values; min: %.3f; max: %.3f; step: %.3f>", v5, self, self->_count, *&self->_minimum, *&self->_maximum, *&self->__implicitStep];;
  }

  return v9;
}

void __43__CAMOverlayDiscreteFloatRange_description__block_invoke(uint64_t a1, void *a2, unint64_t a3, _BYTE *a4)
{
  v12 = a2;
  if (a3 < 2 || [*(*(a1 + 32) + 32) count] < 4)
  {
    v10 = *(a1 + 40);
    [v12 doubleValue];
    [v10 appendFormat:@"%.3f", v11];
    if ([*(*(a1 + 32) + 32) count] - 1 > a3)
    {
      [*(a1 + 40) appendString:{@", "}];
    }
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [*(*(a1 + 32) + 32) lastObject];
    [v8 doubleValue];
    [v7 appendFormat:@" ... %.3f", v9];

    *a4 = 1;
  }
}

- (CAMOverlayDiscreteFloatRange)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = MEMORY[0x277CCACA8];
  v9 = objc_opt_class();
  v10 = NSStringFromClass(v9);
  v11 = [v8 stringWithFormat:@"%@.%@", v10, @"_explicitStorage"];
  v12 = [v5 decodeObjectOfClasses:v7 forKey:v11];
  explicitStorage = self->__explicitStorage;
  self->__explicitStorage = v12;

  v14 = MEMORY[0x277CCACA8];
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  v17 = [v14 stringWithFormat:@"%@.%@", v16, @"_implicitStep"];
  [v5 decodeDoubleForKey:v17];
  self->__implicitStep = v18;

  v19 = MEMORY[0x277CCACA8];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  v22 = [v19 stringWithFormat:@"%@.%@", v21, @"minimum"];
  [v5 decodeDoubleForKey:v22];
  self->_minimum = v23;

  v24 = MEMORY[0x277CCACA8];
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  v27 = [v24 stringWithFormat:@"%@.%@", v26, @"maximum"];
  [v5 decodeDoubleForKey:v27];
  v29 = v28;

  self->_maximum = v29;
  if (self->__explicitStorage)
  {
    if (self->__implicitStep == 0.0 && self->_minimum == 0.0 && self->_maximum == 0.0)
    {

      return [(CAMOverlayDiscreteFloatRange *)self initWithValues:?];
    }

    else
    {

      return 0;
    }
  }

  else
  {
    minimum = self->_minimum;
    maximum = self->_maximum;
    implicitStep = self->__implicitStep;

    return [(CAMOverlayDiscreteFloatRange *)self initWithMinimum:minimum maximum:maximum step:implicitStep];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];

  if (v5)
  {
    v26 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"%@.%@", v8, @"_explicitStorage"];
    [v4 encodeObject:v26 forKey:v9];

    v4 = v9;
  }

  else
  {
    [(CAMOverlayDiscreteFloatRange *)self _implicitStep];
    v11 = v10;
    v12 = MEMORY[0x277CCACA8];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    v15 = [v12 stringWithFormat:@"%@.%@", v14, @"_implicitStep"];
    [v4 encodeDouble:v15 forKey:v11];

    [(CAMOverlayDiscreteFloatRange *)self minimum];
    v17 = v16;
    v18 = MEMORY[0x277CCACA8];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v18 stringWithFormat:@"%@.%@", v20, @"minimum"];
    [v4 encodeDouble:v21 forKey:v17];

    [(CAMOverlayDiscreteFloatRange *)self maximum];
    v23 = v22;
    v24 = MEMORY[0x277CCACA8];
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v8 = [v24 stringWithFormat:@"%@.%@", v26, @"maximum"];
    [v4 encodeDouble:v8 forKey:v23];
  }
}

- (BOOL)isEqualToRange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v19 = 1;
    }

    else
    {
      v5 = v4;
      [(CAMOverlayDiscreteFloatRange *)v5 minimum];
      v7 = v6;
      [(CAMOverlayDiscreteFloatRange *)self minimum];
      if (v7 == v8 && ([(CAMOverlayDiscreteFloatRange *)v5 maximum], v10 = v9, [(CAMOverlayDiscreteFloatRange *)self maximum], v10 == v11) && ([(CAMOverlayDiscreteFloatRange *)v5 _implicitStep], v13 = v12, [(CAMOverlayDiscreteFloatRange *)self _implicitStep], v13 == v14))
      {
        v15 = [(CAMOverlayDiscreteFloatRange *)v5 _explicitStorage];
        v16 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];
        if (v15 == v16)
        {
          v19 = 1;
        }

        else
        {
          v17 = [(CAMOverlayDiscreteFloatRange *)v5 _explicitStorage];
          v18 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];
          v19 = [v17 isEqualToArray:v18];
        }
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)containsValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 doubleValue];
    v6 = v5;
    v7 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];
    if ([v7 containsObject:v4])
    {
      v8 = 1;
    }

    else
    {
      [(CAMOverlayDiscreteFloatRange *)self _implicitStep];
      if (v9 == 0.0 || ([(CAMOverlayDiscreteFloatRange *)self minimum], v6 < v10) || ([(CAMOverlayDiscreteFloatRange *)self maximum], v6 > v11))
      {
        v8 = 0;
      }

      else
      {
        [(CAMOverlayDiscreteFloatRange *)self minimum];
        v14 = v6 - v13;
        [(CAMOverlayDiscreteFloatRange *)self _implicitStep];
        v8 = fabs(fmod(v14, v15)) < 0.0001;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isValueExpectedType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (unint64_t)indexOfValue:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];

  if (v5)
  {
    v6 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];
    v7 = [v6 indexOfObject:v4];
  }

  else if ([(CAMOverlayDiscreteFloatRange *)self containsValue:v4])
  {
    [v4 doubleValue];
    v9 = v8;
    [(CAMOverlayDiscreteFloatRange *)self minimum];
    v11 = v9 - v10;
    [(CAMOverlayDiscreteFloatRange *)self _implicitStep];
    v7 = vcvtad_u64_f64(v11 / v12);
  }

  else
  {
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)valueAtIndex:(unint64_t)a3
{
  v5 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];

  if (v5)
  {
    v6 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];
    v7 = [v6 objectAtIndexedSubscript:a3];
  }

  else
  {
    [(CAMOverlayDiscreteFloatRange *)self minimum];
    v9 = v8;
    [(CAMOverlayDiscreteFloatRange *)self _implicitStep];
    v11 = v9 + a3 * v10;
    v12 = round(v11);
    if (vabdd_f64(v12, v11) < 0.0001)
    {
      v11 = v12;
    }

    if (v11 == 0.0)
    {
      v11 = 0.0;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
  }

  return v7;
}

- (unint64_t)indexOfValueClosestToValue:(double)a3
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0x7FFFFFFFFFFFFFFFLL;
  v5 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];

  if (v5)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0x7FEFFFFFFFFFFFFFLL;
    v6 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__CAMOverlayDiscreteFloatRange_indexOfValueClosestToValue___block_invoke;
    v16[3] = &unk_278851A90;
    *&v16[6] = a3;
    v16[4] = v17;
    v16[5] = &v18;
    [v6 enumerateObjectsUsingBlock:v16];

    _Block_object_dispose(v17, 8);
    v7 = v19[3];
  }

  else
  {
    [(CAMOverlayDiscreteFloatRange *)self minimum];
    v9 = v8;
    [(CAMOverlayDiscreteFloatRange *)self maximum];
    v11 = v10;
    [(CAMOverlayDiscreteFloatRange *)self minimum];
    v13 = v12;
    [(CAMOverlayDiscreteFloatRange *)self _implicitStep];
    v7 = vcvtad_u64_f64((fmax(v9, fmin(v11, a3)) - v13) / v14);
    v19[3] = v7;
  }

  _Block_object_dispose(&v18, 8);
  return v7;
}

uint64_t __59__CAMOverlayDiscreteFloatRange_indexOfValueClosestToValue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 doubleValue];
  v9 = vabdd_f64(v8, *(a1 + 48));
  v10 = *(*(a1 + 32) + 8);
  if (v9 >= *(v10 + 24))
  {
    *a4 = 1;
  }

  else
  {
    *(v10 + 24) = v9;
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  return result;
}

- (unint64_t)indexOfValueGreaterThanValue:(double)a3
{
  v5 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];

  if (v5)
  {
    v6 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __61__CAMOverlayDiscreteFloatRange_indexOfValueGreaterThanValue___block_invoke;
    v14[3] = &__block_descriptor_40_e25_B32__0__NSNumber_8Q16_B24l;
    *&v14[4] = a3;
    v7 = [v6 indexOfObjectPassingTest:v14];
  }

  else
  {
    [(CAMOverlayDiscreteFloatRange *)self maximum];
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (v8 > a3)
    {
      [(CAMOverlayDiscreteFloatRange *)self minimum];
      v10 = a3 - v9;
      [(CAMOverlayDiscreteFloatRange *)self _implicitStep];
      v12 = floor(v10 / v11) + 1.0;
      if (v12 < [(CAMOverlayDiscreteFloatRange *)self count])
      {
        return v12;
      }
    }
  }

  return v7;
}

- (unint64_t)indexOfValueLessThanValue:(double)a3
{
  v5 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];

  if (v5)
  {
    v6 = [(CAMOverlayDiscreteFloatRange *)self _explicitStorage];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__CAMOverlayDiscreteFloatRange_indexOfValueLessThanValue___block_invoke;
    v13[3] = &__block_descriptor_40_e25_B32__0__NSNumber_8Q16_B24l;
    *&v13[4] = a3;
    v7 = [v6 indexOfObjectWithOptions:2 passingTest:v13];
  }

  else
  {
    [(CAMOverlayDiscreteFloatRange *)self minimum];
    if (v8 >= a3)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      [(CAMOverlayDiscreteFloatRange *)self minimum];
      v10 = a3 - v9;
      [(CAMOverlayDiscreteFloatRange *)self _implicitStep];
      return (ceil(v10 / v11) + -1.0);
    }
  }

  return v7;
}

- (double)valueClosestToValue:(double)a3
{
  v4 = [(CAMOverlayDiscreteFloatRange *)self indexOfValueClosestToValue:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(CAMOverlayDiscreteFloatRange *)self valueAtIndex:v4];
  }

  [v5 doubleValue];
  v7 = v6;

  return v7;
}

- (id)indexesOfValuesInRange:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayDiscreteFloatRange *)self count];
  v6 = [v4 count];
  v7 = [MEMORY[0x277CBEB18] array];
  if (v5 && v6)
  {
    v8 = 0;
    v9 = 1;
    do
    {
      v10 = [v4 valueAtIndex:v8];
      [v10 doubleValue];

      v11 = [(CAMOverlayDiscreteFloatRange *)self valueAtIndex:v9 - 1];
      [v11 doubleValue];

      if (BSFloatEqualToFloat())
      {
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9 - 1];
        [v7 addObject:v12];

        ++v8;
      }

      if (v9 >= v5)
      {
        break;
      }

      ++v9;
    }

    while (v8 < v6);
  }

  return v7;
}

@end