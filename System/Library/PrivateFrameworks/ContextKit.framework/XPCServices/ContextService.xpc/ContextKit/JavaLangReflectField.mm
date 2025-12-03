@interface JavaLangReflectField
+ (JavaLangReflectField)fieldWithIvar:(objc_ivar *)ivar withClass:(id)class withMetadata:(id)metadata;
+ (id)propertyName:(id)name;
+ (id)variableName:(id)name;
- (BOOL)getBooleanWithId:(id)id;
- (BOOL)isEnumConstant;
- (BOOL)isEqual:(id)equal;
- (BOOL)isSynthetic;
- (JavaLangReflectField)initWithIvar:(objc_ivar *)ivar withClass:(id)class withMetadata:(id)metadata;
- (NSString)description;
- (char)getByteWithId:(id)id;
- (double)getDoubleWithId:(id)id;
- (float)getFloatWithId:(id)id;
- (id)getDeclaredAnnotations;
- (id)getGenericType;
- (id)getType;
- (id)getWithId:(id)id;
- (id)propertyName;
- (id)toGenericString;
- (int)getIntWithId:(id)id;
- (int)getModifiers;
- (int64_t)getLongWithId:(id)id;
- (signed)getShortWithId:(id)id;
- (unsigned)getCharWithId:(id)id;
- (void)dealloc;
- (void)setWithId:(id)id withId:(id)withId;
@end

@implementation JavaLangReflectField

- (JavaLangReflectField)initWithIvar:(objc_ivar *)ivar withClass:(id)class withMetadata:(id)metadata
{
  v11.receiver = self;
  v11.super_class = JavaLangReflectField;
  v8 = [(JavaLangReflectAccessibleObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->ivar_ = ivar;
    v8->declaringClass_ = class;
    v8->metadata_ = metadata;
  }

  return v9;
}

+ (JavaLangReflectField)fieldWithIvar:(objc_ivar *)ivar withClass:(id)class withMetadata:(id)metadata
{
  v5 = [[JavaLangReflectField alloc] initWithIvar:ivar withClass:class withMetadata:metadata];
  v6 = v5;
  return v5;
}

- (NSString)description
{
  metadata = self->metadata_;
  if (metadata)
  {
    v4 = JavaLangReflectModifier_toStringWithInt_([(JavaFieldMetadata *)metadata modifiers]);
  }

  else
  {
    v4 = &stru_100484358;
  }

  v5 = [(__CFString *)v4 length];
  getType = [(JavaLangReflectField *)self getType];
  v7 = [-[JavaLangReflectField getDeclaringClass](self "getDeclaringClass")];
  propertyName = [(JavaLangReflectField *)self propertyName];
  if (v5)
  {
    return [NSString stringWithFormat:@"%@ %@ %@.%@", v4, getType, v7, propertyName];
  }

  else
  {
    return [NSString stringWithFormat:@"%@ %@.%@", getType, v7, propertyName, v10];
  }
}

- (id)getWithId:(id)id
{
  v7 = 0;
  getType = [(JavaLangReflectField *)self getType];
  sub_10022FD08(&v7, self, id, getType);
  return [getType __boxValue:&v7];
}

- (BOOL)getBooleanWithId:(id)id
{
  v4 = 0;
  sub_10022FD08(&v4, self, id, +[IOSClass BOOLeanClass]);
  return v4;
}

- (char)getByteWithId:(id)id
{
  v4 = 0;
  sub_10022FD08(&v4, self, id, +[IOSClass byteClass]);
  return v4;
}

- (unsigned)getCharWithId:(id)id
{
  v4 = 0;
  sub_10022FD08(&v4, self, id, +[IOSClass charClass]);
  return v4;
}

- (double)getDoubleWithId:(id)id
{
  v4 = 0.0;
  sub_10022FD08(&v4, self, id, +[IOSClass doubleClass]);
  return v4;
}

- (float)getFloatWithId:(id)id
{
  v4 = 0;
  sub_10022FD08(&v4, self, id, +[IOSClass floatClass]);
  return *&v4;
}

- (int)getIntWithId:(id)id
{
  v4 = 0;
  sub_10022FD08(&v4, self, id, +[IOSClass intClass]);
  return v4;
}

- (int64_t)getLongWithId:(id)id
{
  v4 = 0;
  sub_10022FD08(&v4, self, id, +[IOSClass longClass]);
  return v4;
}

- (signed)getShortWithId:(id)id
{
  v4 = 0;
  sub_10022FD08(&v4, self, id, +[IOSClass shortClass]);
  return v4;
}

- (void)setWithId:(id)id withId:(id)withId
{
  getType = [(JavaLangReflectField *)self getType];
  isPrimitive = [getType isPrimitive];
  if ((isPrimitive & 1) == 0)
  {
    v9 = [(JavaLangReflectField *)self getWithId:id];
  }

  v11 = 0;
  if (([getType __unboxValue:withId toRawValue:&v11] & 1) == 0)
  {
    objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:@"field type mismatch"]);
  }

  sub_10023016C(&v11, self, id, getType);
  if ((isPrimitive & 1) == 0)
  {
    withIdCopy = withId;
  }
}

- (id)getType
{
  if (self->metadata_)
  {
    type = [(JavaFieldMetadata *)self->metadata_ type];

    return TypeToClass(type);
  }

  else if (self->ivar_)
  {
    TypeEncoding = ivar_getTypeEncoding(self->ivar_);

    return decodeTypeEncoding(TypeEncoding);
  }

  else
  {
    v5 = [(IOSClass *)self->declaringClass_ getMethod:[(JavaLangReflectField *)self getName] parameterTypes:0];
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    return [v5 getReturnType];
  }
}

- (id)getGenericType
{
  getType = [(JavaLangReflectField *)self getType];
  metadata = self->metadata_;
  if (metadata)
  {
    genericSignature = [(JavaFieldMetadata *)metadata genericSignature];
    if (genericSignature)
    {
      v6 = genericSignature;
      v7 = [[LibcoreReflectGenericSignatureParser alloc] initWithJavaLangClassLoader:JavaLangClassLoader_getSystemClassLoader()];
      [(LibcoreReflectGenericSignatureParser *)v7 parseForFieldWithJavaLangReflectGenericDeclaration:self->declaringClass_ withNSString:v6];
      fieldType = v7->fieldType_;
      if (fieldType)
      {
        getType = fieldType;
      }
    }
  }

  return getType;
}

- (int)getModifiers
{
  metadata = self->metadata_;
  if (metadata)
  {
    return [(JavaFieldMetadata *)metadata modifiers];
  }

  else
  {
    return 1;
  }
}

- (id)propertyName
{
  if (self->metadata_)
  {
    name = [(JavaFieldMetadata *)self->metadata_ name];
  }

  else
  {
    name = [NSString stringWithUTF8String:ivar_getName(self->ivar_)];
  }

  return [JavaLangReflectField propertyName:name];
}

+ (id)propertyName:(id)name
{
  v4 = [name length] - 1;
  if ([name characterAtIndex:v4] != 95)
  {
    return name;
  }

  return [name substringToIndex:v4];
}

+ (id)variableName:(id)name
{
  if ([name characterAtIndex:{objc_msgSend(name, "length") - 1}] == 95)
  {
    return name;
  }

  return [name stringByAppendingString:@"_"];
}

- (BOOL)isSynthetic
{
  metadata = self->metadata_;
  if (metadata)
  {
    LODWORD(metadata) = ([(JavaFieldMetadata *)metadata modifiers]>> 12) & 1;
  }

  return metadata;
}

- (BOOL)isEnumConstant
{
  metadata = self->metadata_;
  if (metadata)
  {
    return ([(JavaFieldMetadata *)metadata modifiers]>> 14) & 1;
  }

  else
  {
    isEnum = [(IOSClass *)self->declaringClass_ isEnum];
    if (isEnum)
    {
      getType = [(JavaLangReflectField *)self getType];
      declaringClass = self->declaringClass_;

      LOBYTE(isEnum) = [getType isEqual:declaringClass];
    }
  }

  return isEnum;
}

- (id)toGenericString
{
  metadata = self->metadata_;
  if (metadata)
  {
    v4 = JavaLangReflectModifier_toStringWithInt_([(JavaFieldMetadata *)metadata modifiers]);
  }

  else
  {
    v4 = &stru_100484358;
  }

  if ([(__CFString *)v4 length])
  {
    v4 = [(__CFString *)v4 stringByAppendingString:@" "];
  }

  getGenericType = [(JavaLangReflectField *)self getGenericType];
  if ([getGenericType conformsToProtocol:&OBJC_PROTOCOL___JavaLangReflectTypeVariable])
  {
    getName = [getGenericType getName];
  }

  else
  {
    getName = [getGenericType description];
  }

  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@ %@.%@", v4, getName, [-[JavaLangReflectField getDeclaringClass](self "getDeclaringClass")], -[JavaLangReflectField propertyName](self, "propertyName"));
}

- (id)getDeclaredAnnotations
{
  objcClass = [(IOSClass *)self->declaringClass_ objcClass];
  if (objcClass && JreFindClassMethod(objcClass, [[NSString stringWithFormat:?])
  {

    method_invoke();
  }

  else
  {
    v5 = JavaLangAnnotationAnnotation_class_();

    return [IOSObjectArray arrayWithLength:0 type:v5];
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->declaringClass_ != *(equal + 3))
  {
    return 0;
  }

  propertyName = [(JavaLangReflectField *)self propertyName];
  propertyName2 = [equal propertyName];

  return [propertyName isEqual:propertyName2];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangReflectField;
  [(JavaLangReflectField *)&v3 dealloc];
}

@end