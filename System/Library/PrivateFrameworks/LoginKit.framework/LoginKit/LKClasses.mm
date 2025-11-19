@interface LKClasses
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLKClasses:(id)a3;
- (LKClasses)initWithClassArray:(id)a3;
@end

@implementation LKClasses

- (LKClasses)initWithClassArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LKClasses;
  v6 = [(LKClasses *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classes, a3);
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LKClasses *)self isEqualToLKClasses:v5];
  }

  return v6;
}

- (BOOL)isEqualToLKClasses:(id)a3
{
  v4 = a3;
  v5 = [(NSArray *)self->_classes count];
  v6 = [v4 classes];
  v7 = [v6 count];

  if (v5 == v7)
  {
    if ([(NSArray *)self->_classes count])
    {
      v8 = 0;
      do
      {
        v9 = [(NSArray *)self->_classes objectAtIndexedSubscript:v8];
        v10 = [v4 classes];
        v11 = [v10 objectAtIndexedSubscript:v8];
        v12 = [v9 isEqual:v11];

        if ((v12 & 1) == 0)
        {
          break;
        }

        ++v8;
      }

      while ([(NSArray *)self->_classes count]> v8);
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end