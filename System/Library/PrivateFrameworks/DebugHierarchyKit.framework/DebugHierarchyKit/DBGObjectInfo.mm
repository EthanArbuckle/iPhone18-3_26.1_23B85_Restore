@interface DBGObjectInfo
+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error;
+ (id)withInfo:(id)info;
- (DBGObjectInfo)initWithInfo:(id)info;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)displayString;
- (id)objectClassName;
- (id)objectPointer;
@end

@implementation DBGObjectInfo

+ (id)withInfo:(id)info
{
  infoCopy = info;
  v5 = [[self alloc] initWithInfo:infoCopy];

  return v5;
}

- (DBGObjectInfo)initWithInfo:(id)info
{
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = DBGObjectInfo;
  v6 = [(DBGObjectInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_objectInfo, info);
  }

  return v7;
}

- (NSString)displayString
{
  objectInfo = [(DBGObjectInfo *)self objectInfo];

  if (objectInfo)
  {
    objectClassName = [(DBGObjectInfo *)self objectClassName];
    objectPointer = [(DBGObjectInfo *)self objectPointer];
    v6 = objectPointer;
    v7 = 0;
    if (objectClassName && objectPointer)
    {
      v7 = [NSString stringWithFormat:@"<%@: %@>", objectClassName, objectPointer];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)objectClassName
{
  objectInfo = [(DBGObjectInfo *)self objectInfo];
  v3 = [objectInfo objectForKeyedSubscript:@"className"];

  return v3;
}

- (id)objectPointer
{
  objectInfo = [(DBGObjectInfo *)self objectInfo];
  v3 = [objectInfo objectForKeyedSubscript:@"memoryAddress"];

  return v3;
}

- (NSString)description
{
  objectValue = [(DBGObjectInfo *)self objectValue];
  v3 = [objectValue description];

  return v3;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DBGObjectInfo *)self description];
  v6 = [NSString stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

+ (id)valueWithEncodedValue:(id)value format:(id)format error:(id *)error
{
  valueCopy = value;
  if ([format isEqualToString:@"objectInfo"] && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [self withInfo:valueCopy];
  }

  else
  {
    v9 = 0;
    if (!valueCopy && error)
    {
      v9 = 0;
      *error = 0;
    }
  }

  return v9;
}

@end