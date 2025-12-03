@interface LNEntityIdentifierValueType
+ (id)objectClassesForCoding;
- (BOOL)isEqual:(id)equal;
- (LNEntityIdentifierValueType)init;
- (unint64_t)hash;
@end

@implementation LNEntityIdentifierValueType

+ (id)objectClassesForCoding
{
  v2 = MEMORY[0x1E695DEC8];
  v3 = objc_opt_class();

  return [v2 arrayWithObject:v3];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v6 = equalCopy;
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9.receiver = self;
      v9.super_class = LNEntityIdentifierValueType;
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
  v3.super_class = LNEntityIdentifierValueType;
  return [(LNValueType *)&v3 hash]^ 0x31524;
}

- (LNEntityIdentifierValueType)init
{
  v3.receiver = self;
  v3.super_class = LNEntityIdentifierValueType;
  return [(LNValueType *)&v3 initWithContentType:0];
}

@end