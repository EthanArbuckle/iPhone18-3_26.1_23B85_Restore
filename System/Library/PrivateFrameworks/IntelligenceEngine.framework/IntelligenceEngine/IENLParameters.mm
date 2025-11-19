@interface IENLParameters
- (BOOL)isEqual:(id)a3;
@end

@implementation IENLParameters

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == v4)
    {
      v11 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [(IENLParameters *)self name];
      v7 = [(IENLParameters *)v5 name];
      v8 = [v6 isEqualToString:v7];

      if (v8)
      {
        v9 = [(IENLParameters *)self parameters];
        v10 = [(IENLParameters *)v5 parameters];
        v11 = [v9 isEqualToDictionary:v10];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end