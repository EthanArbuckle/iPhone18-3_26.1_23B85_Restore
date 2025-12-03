@interface IENLParameters
- (BOOL)isEqual:(id)equal;
@end

@implementation IENLParameters

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self == equalCopy)
    {
      v11 = 1;
    }

    else
    {
      v5 = equalCopy;
      name = [(IENLParameters *)self name];
      name2 = [(IENLParameters *)v5 name];
      v8 = [name isEqualToString:name2];

      if (v8)
      {
        parameters = [(IENLParameters *)self parameters];
        parameters2 = [(IENLParameters *)v5 parameters];
        v11 = [parameters isEqualToDictionary:parameters2];
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