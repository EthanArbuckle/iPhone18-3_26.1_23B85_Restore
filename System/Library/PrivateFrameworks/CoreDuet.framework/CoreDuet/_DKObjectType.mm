@interface _DKObjectType
+ (_DKObjectType)objectTypeWithName:(id)name;
+ (_DKObjectType)objectTypeWithTypeCode:(int64_t)code;
+ (id)objectTypeFromClass:(Class)class;
- (BOOL)isEqual:(id)equal;
- (_DKObjectType)initWithCoder:(id)coder;
- (_DKObjectType)initWithTypeCode:(int64_t)code objectClass:(Class)class;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DKObjectType

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromClass(self->_objectClass);
  v5 = [v3 stringWithFormat:@"%@(%ld)", v4, self->_typeCode];

  return v5;
}

- (_DKObjectType)initWithTypeCode:(int64_t)code objectClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = _DKObjectType;
  result = [(_DKObjectType *)&v7 init];
  if (result)
  {
    result->_typeCode = code;
    result->_objectClass = class;
  }

  return result;
}

+ (_DKObjectType)objectTypeWithTypeCode:(int64_t)code
{
  v3 = [[self alloc] initWithTypeCode:code objectClass:{objc_msgSend(self, "associatedObjectClass")}];

  return v3;
}

+ (_DKObjectType)objectTypeWithName:(id)name
{
  v4 = [self typeCodeFromName:name];

  return [self objectTypeWithTypeCode:v4];
}

+ (id)objectTypeFromClass:(Class)class
{
  v4 = NSStringFromClass(class);
  v5 = [self objectTypeWithName:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_typeCode == equalCopy[1] && self->_objectClass == equalCopy[2];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  typeCode = self->_typeCode;
  coderCopy = coder;
  [coderCopy encodeInteger:typeCode forKey:@"typeCode"];
  v6 = NSStringFromClass(self->_objectClass);
  [coderCopy encodeObject:v6 forKey:@"objectClass"];
}

- (_DKObjectType)initWithCoder:(id)coder
{
  coderCopy = coder;
  self->_typeCode = [coderCopy decodeIntegerForKey:@"typeCode"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectClass"];

  self->_objectClass = NSClassFromString(v5);
  return self;
}

@end