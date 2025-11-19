@interface DBGData
+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5;
+ (id)withData:(id)a3;
- (DBGData)initWithData:(id)a3;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
@end

@implementation DBGData

+ (id)withData:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithData:v4];

  return v5;
}

- (DBGData)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DBGData;
  v6 = [(DBGData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

- (NSString)description
{
  v2 = [(DBGData *)self objectValue];
  v3 = [v2 description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGData *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)a3 format:(id)a4 error:(id *)a5
{
  v8 = a3;
  if ([a4 isEqualToString:@"public.data"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 dbgDataValue];
  }

  else
  {
    v9 = 0;
    if (!v8 && a5)
    {
      v9 = 0;
      *a5 = 0;
    }
  }

  v10 = [a1 withData:v9];

  return v10;
}

- (id)JSONCompatibleRepresentation
{
  v2 = [(DBGData *)self data];
  v3 = [v2 base64EncodedStringWithOptions:0];

  return v3;
}

@end