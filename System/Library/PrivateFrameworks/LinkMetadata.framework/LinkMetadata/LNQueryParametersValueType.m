@interface LNQueryParametersValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)a3;
- (LNQueryParametersValueType)init;
- (unint64_t)hash;
@end

@implementation LNQueryParametersValueType

+ (id)objectClassesForCoding
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();

  return [v2 arrayWithObject:v3];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    v6 = v4;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9.receiver = self;
      v9.super_class = LNQueryParametersValueType;
      v7 = [(LNValueType *)&v9 isEqual:v6];
    }

    else
    {

      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = LNQueryParametersValueType;
  return [(LNValueType *)&v3 hash]^ 0x49FB6;
}

- (LNQueryParametersValueType)init
{
  v3.receiver = self;
  v3.super_class = LNQueryParametersValueType;
  return [(LNValueType *)&v3 initWithContentType:0];
}

@end