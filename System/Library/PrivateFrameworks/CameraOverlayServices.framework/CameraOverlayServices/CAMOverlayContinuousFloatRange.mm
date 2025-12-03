@interface CAMOverlayContinuousFloatRange
- (BOOL)containsValue:(id)value;
- (BOOL)isEqualToRange:(id)range;
- (BOOL)isValueExpectedType:(id)type;
- (CAMOverlayContinuousFloatRange)initWithCoder:(id)coder;
- (CAMOverlayContinuousFloatRange)initWithMinimum:(double)minimum maximum:(double)maximum;
- (NSString)description;
- (double)valueClosestToValue:(double)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CAMOverlayContinuousFloatRange

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p min: %.3f; max: %.3f>", v5, self, *&self->_minimum, *&self->_maximum];;

  return v6;
}

- (CAMOverlayContinuousFloatRange)initWithMinimum:(double)minimum maximum:(double)maximum
{
  v10.receiver = self;
  v10.super_class = CAMOverlayContinuousFloatRange;
  v6 = [(CAMOverlayContinuousFloatRange *)&v10 init];
  v7 = v6;
  if (v6)
  {
    v6->_minimum = fmin(minimum, maximum);
    v6->_maximum = fmax(minimum, maximum);
    v8 = v6;
  }

  return v7;
}

- (CAMOverlayContinuousFloatRange)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CAMOverlayContinuousFloatRange;
  v5 = [(CAMOverlayContinuousFloatRange *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"%@.%@", v8, @"minimum"];
    [coderCopy decodeDoubleForKey:v9];
    v5->_minimum = v10;

    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"%@.%@", v13, @"maximum"];
    [coderCopy decodeDoubleForKey:v14];
    v5->_maximum = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(CAMOverlayContinuousFloatRange *)self minimum];
  v6 = v5;
  v7 = MEMORY[0x277CCACA8];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [v7 stringWithFormat:@"%@.%@", v9, @"minimum"];
  [coderCopy encodeDouble:v10 forKey:v6];

  [(CAMOverlayContinuousFloatRange *)self maximum];
  v12 = v11;
  v13 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  v16 = NSStringFromClass(v14);
  v15 = [v13 stringWithFormat:@"%@.%@", v16, @"maximum"];
  [coderCopy encodeDouble:v15 forKey:v12];
}

- (BOOL)isEqualToRange:(id)range
{
  rangeCopy = range;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (rangeCopy == self)
    {
      v12 = 1;
    }

    else
    {
      v5 = rangeCopy;
      [(CAMOverlayContinuousFloatRange *)v5 minimum];
      v7 = v6;
      [(CAMOverlayContinuousFloatRange *)self minimum];
      if (v7 == v8)
      {
        [(CAMOverlayContinuousFloatRange *)v5 maximum];
        v10 = v9;
        [(CAMOverlayContinuousFloatRange *)self maximum];
        v12 = v10 == v11;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)containsValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([valueCopy doubleValue], v6 = v5, -[CAMOverlayContinuousFloatRange minimum](self, "minimum"), v6 >= v7))
  {
    [(CAMOverlayContinuousFloatRange *)self maximum];
    v8 = v6 <= v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isValueExpectedType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (double)valueClosestToValue:(double)value
{
  [(CAMOverlayContinuousFloatRange *)self minimum];
  v6 = v5;
  [(CAMOverlayContinuousFloatRange *)self maximum];
  return fmax(v6, fmin(v7, value));
}

@end