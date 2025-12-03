@interface LKClasses
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLKClasses:(id)classes;
- (LKClasses)initWithClassArray:(id)array;
@end

@implementation LKClasses

- (LKClasses)initWithClassArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = LKClasses;
  v6 = [(LKClasses *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classes, array);
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(LKClasses *)self isEqualToLKClasses:v5];
  }

  return v6;
}

- (BOOL)isEqualToLKClasses:(id)classes
{
  classesCopy = classes;
  v5 = [(NSArray *)self->_classes count];
  classes = [classesCopy classes];
  v7 = [classes count];

  if (v5 == v7)
  {
    if ([(NSArray *)self->_classes count])
    {
      v8 = 0;
      do
      {
        v9 = [(NSArray *)self->_classes objectAtIndexedSubscript:v8];
        classes2 = [classesCopy classes];
        v11 = [classes2 objectAtIndexedSubscript:v8];
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