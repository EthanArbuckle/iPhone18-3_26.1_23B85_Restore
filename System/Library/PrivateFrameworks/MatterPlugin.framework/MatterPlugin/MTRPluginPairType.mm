@interface MTRPluginPairType
- (BOOL)isEqual:(id)equal;
- (MTRPluginPairType)initWithFirst:(id)first second:(id)second;
- (unint64_t)hash;
@end

@implementation MTRPluginPairType

- (MTRPluginPairType)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v12.receiver = self;
  v12.super_class = MTRPluginPairType;
  v8 = [(MTRPluginPairType *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(MTRPluginPairType *)v8 setFirst:firstCopy];
    [(MTRPluginPairType *)v9 setSecond:secondCopy];
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if ([(MTRPluginPairType *)v6 isMemberOfClass:objc_opt_class()])
    {
      first = [(MTRPluginPairType *)self first];
      first2 = [(MTRPluginPairType *)v6 first];
      if (MTRPluginEqualObjects(first, first2))
      {
        second = [(MTRPluginPairType *)self second];
        second2 = [(MTRPluginPairType *)v6 second];
        v11 = MTRPluginEqualObjects(second, second2);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  first = [(MTRPluginPairType *)self first];
  v4 = [first hash];
  second = [(MTRPluginPairType *)self second];
  v6 = [second hash];

  return v6 ^ v4;
}

@end