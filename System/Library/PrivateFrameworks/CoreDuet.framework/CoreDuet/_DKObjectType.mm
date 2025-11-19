@interface _DKObjectType
+ (_DKObjectType)objectTypeWithName:(id)a3;
+ (_DKObjectType)objectTypeWithTypeCode:(int64_t)a3;
+ (id)objectTypeFromClass:(Class)a3;
- (BOOL)isEqual:(id)a3;
- (_DKObjectType)initWithCoder:(id)a3;
- (_DKObjectType)initWithTypeCode:(int64_t)a3 objectClass:(Class)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _DKObjectType

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = NSStringFromClass(self->_objectClass);
  v5 = [v3 stringWithFormat:@"%@(%ld)", v4, self->_typeCode];

  return v5;
}

- (_DKObjectType)initWithTypeCode:(int64_t)a3 objectClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = _DKObjectType;
  result = [(_DKObjectType *)&v7 init];
  if (result)
  {
    result->_typeCode = a3;
    result->_objectClass = a4;
  }

  return result;
}

+ (_DKObjectType)objectTypeWithTypeCode:(int64_t)a3
{
  v3 = [[a1 alloc] initWithTypeCode:a3 objectClass:{objc_msgSend(a1, "associatedObjectClass")}];

  return v3;
}

+ (_DKObjectType)objectTypeWithName:(id)a3
{
  v4 = [a1 typeCodeFromName:a3];

  return [a1 objectTypeWithTypeCode:v4];
}

+ (id)objectTypeFromClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [a1 objectTypeWithName:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_typeCode == v4[1] && self->_objectClass == v4[2];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  typeCode = self->_typeCode;
  v5 = a3;
  [v5 encodeInteger:typeCode forKey:@"typeCode"];
  v6 = NSStringFromClass(self->_objectClass);
  [v5 encodeObject:v6 forKey:@"objectClass"];
}

- (_DKObjectType)initWithCoder:(id)a3
{
  v4 = a3;
  self->_typeCode = [v4 decodeIntegerForKey:@"typeCode"];
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectClass"];

  self->_objectClass = NSClassFromString(v5);
  return self;
}

@end