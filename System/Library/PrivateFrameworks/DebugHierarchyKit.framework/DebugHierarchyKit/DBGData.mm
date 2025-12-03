@interface DBGData
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withData:(id)data;
- (DBGData)initWithData:(id)data;
- (NSString)debugDescription;
- (NSString)description;
- (id)JSONCompatibleRepresentation;
@end

@implementation DBGData

+ (id)withData:(id)data
{
  dataCopy = data;
  v5 = [[self alloc] initWithData:dataCopy];

  return v5;
}

- (DBGData)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = DBGData;
  v6 = [(DBGData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, data);
  }

  return v7;
}

- (NSString)description
{
  objectValue = [(DBGData *)self objectValue];
  v3 = [objectValue description];

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

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"public.data"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    dbgDataValue = [valueCopy dbgDataValue];
  }

  else
  {
    dbgDataValue = 0;
    if (!valueCopy && error)
    {
      dbgDataValue = 0;
      *error = 0;
    }
  }

  v10 = [self withData:dbgDataValue];

  return v10;
}

- (id)JSONCompatibleRepresentation
{
  data = [(DBGData *)self data];
  v3 = [data base64EncodedStringWithOptions:0];

  return v3;
}

@end