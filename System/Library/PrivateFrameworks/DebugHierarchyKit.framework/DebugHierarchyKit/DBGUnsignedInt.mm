@interface DBGUnsignedInt
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
- (DBGUnsignedInt)initWithUnsignedInt:(unsigned int)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
- (id)objectValue;
@end

@implementation DBGUnsignedInt

- (DBGUnsignedInt)initWithUnsignedInt:(unsigned int)a3
{
  v5.receiver = self;
  v5.super_class = DBGUnsignedInt;
  result = [(DBGUnsignedInt *)&v5 init];
  if (result)
  {
    result->_unsignedIntValue = a3;
  }

  return result;
}

- (id)objectValue
{
  v2 = [(DBGUnsignedInt *)self unsignedIntValue];

  return [NSNumber numberWithUnsignedInt:v2];
}

- (NSString)description
{
  v2 = [(DBGUnsignedInt *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGUnsignedInt *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v8 = a3;
  if ([a4 isEqualToString:@"ui"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 unsignedIntValue];
LABEL_6:
      v10 = v9;
      goto LABEL_10;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 dbgUnsignedIntValue];
      goto LABEL_6;
    }
  }

  v10 = 0;
  if (!v8 && a5)
  {
    v10 = 0;
    *a5 = 0;
  }

LABEL_10:
  v11 = [a1 withValue:v10];

  return v11;
}

- (id)JSONCompatibleRepresentation
{
  v2 = [NSNumber numberWithUnsignedInt:[(DBGUnsignedInt *)self unsignedIntValue]];
  v3 = [v2 dbgStringForType:@"ui" error:0];

  return v3;
}

@end