@interface CAMOverlayIndexedRange
- (BOOL)containsValue:(id)a3;
- (BOOL)isEqualToRange:(id)a3;
- (BOOL)isValueExpectedType:(id)a3;
- (CAMOverlayIndexedRange)initWithCoder:(id)a3;
- (CAMOverlayIndexedRange)initWithCount:(unint64_t)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CAMOverlayIndexedRange

- (CAMOverlayIndexedRange)initWithCount:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CAMOverlayIndexedRange;
  v4 = [(CAMOverlayIndexedRange *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_count = a3;
    v6 = v4;
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p %lu values>", v5, self, self->_count];;

  return v6;
}

- (CAMOverlayIndexedRange)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CAMOverlayIndexedRange;
  v5 = [(CAMOverlayIndexedRange *)&v11 init];
  if (v5)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 stringWithFormat:@"%@.%@", v8, @"count"];
    v5->_count = [v4 decodeIntegerForKey:v9];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CAMOverlayIndexedRange *)self count];
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v9 = NSStringFromClass(v7);
  v8 = [v6 stringWithFormat:@"%@.%@", v9, @"count"];
  [v4 encodeInteger:v5 forKey:v8];
}

- (BOOL)isEqualToRange:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v6 = 1;
    }

    else
    {
      v5 = [(CAMOverlayIndexedRange *)v4 count];
      v6 = v5 == [(CAMOverlayIndexedRange *)self count];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)containsValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CAMOverlayIndexedRange *)self count];
    v6 = [v4 unsignedIntegerValue] <= v5 - 1 && v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isValueExpectedType:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end