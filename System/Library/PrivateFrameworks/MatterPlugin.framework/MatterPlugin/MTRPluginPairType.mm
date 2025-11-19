@interface MTRPluginPairType
- (BOOL)isEqual:(id)a3;
- (MTRPluginPairType)initWithFirst:(id)a3 second:(id)a4;
- (unint64_t)hash;
@end

@implementation MTRPluginPairType

- (MTRPluginPairType)initWithFirst:(id)a3 second:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = MTRPluginPairType;
  v8 = [(MTRPluginPairType *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(MTRPluginPairType *)v8 setFirst:v6];
    [(MTRPluginPairType *)v9 setSecond:v7];
    v10 = v9;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if ([(MTRPluginPairType *)v6 isMemberOfClass:objc_opt_class()])
    {
      v7 = [(MTRPluginPairType *)self first];
      v8 = [(MTRPluginPairType *)v6 first];
      if (MTRPluginEqualObjects(v7, v8))
      {
        v9 = [(MTRPluginPairType *)self second];
        v10 = [(MTRPluginPairType *)v6 second];
        v11 = MTRPluginEqualObjects(v9, v10);
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
  v3 = [(MTRPluginPairType *)self first];
  v4 = [v3 hash];
  v5 = [(MTRPluginPairType *)self second];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end