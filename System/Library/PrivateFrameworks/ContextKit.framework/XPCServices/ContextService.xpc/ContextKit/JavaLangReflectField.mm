@interface JavaLangReflectField
+ (JavaLangReflectField)fieldWithIvar:(objc_ivar *)a3 withClass:(id)a4 withMetadata:(id)a5;
+ (id)propertyName:(id)a3;
+ (id)variableName:(id)a3;
- (BOOL)getBooleanWithId:(id)a3;
- (BOOL)isEnumConstant;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSynthetic;
- (JavaLangReflectField)initWithIvar:(objc_ivar *)a3 withClass:(id)a4 withMetadata:(id)a5;
- (NSString)description;
- (char)getByteWithId:(id)a3;
- (double)getDoubleWithId:(id)a3;
- (float)getFloatWithId:(id)a3;
- (id)getDeclaredAnnotations;
- (id)getGenericType;
- (id)getType;
- (id)getWithId:(id)a3;
- (id)propertyName;
- (id)toGenericString;
- (int)getIntWithId:(id)a3;
- (int)getModifiers;
- (int64_t)getLongWithId:(id)a3;
- (signed)getShortWithId:(id)a3;
- (unsigned)getCharWithId:(id)a3;
- (void)dealloc;
- (void)setWithId:(id)a3 withId:(id)a4;
@end

@implementation JavaLangReflectField

- (JavaLangReflectField)initWithIvar:(objc_ivar *)a3 withClass:(id)a4 withMetadata:(id)a5
{
  v11.receiver = self;
  v11.super_class = JavaLangReflectField;
  v8 = [(JavaLangReflectAccessibleObject *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->ivar_ = a3;
    v8->declaringClass_ = a4;
    v8->metadata_ = a5;
  }

  return v9;
}

+ (JavaLangReflectField)fieldWithIvar:(objc_ivar *)a3 withClass:(id)a4 withMetadata:(id)a5
{
  v5 = [[JavaLangReflectField alloc] initWithIvar:a3 withClass:a4 withMetadata:a5];
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
  v6 = [(JavaLangReflectField *)self getType];
  v7 = [-[JavaLangReflectField getDeclaringClass](self "getDeclaringClass")];
  v8 = [(JavaLangReflectField *)self propertyName];
  if (v5)
  {
    return [NSString stringWithFormat:@"%@ %@ %@.%@", v4, v6, v7, v8];
  }

  else
  {
    return [NSString stringWithFormat:@"%@ %@.%@", v6, v7, v8, v10];
  }
}

- (id)getWithId:(id)a3
{
  v7 = 0;
  v5 = [(JavaLangReflectField *)self getType];
  sub_10022FD08(&v7, self, a3, v5);
  return [v5 __boxValue:&v7];
}

- (BOOL)getBooleanWithId:(id)a3
{
  v4 = 0;
  sub_10022FD08(&v4, self, a3, +[IOSClass BOOLeanClass]);
  return v4;
}

- (char)getByteWithId:(id)a3
{
  v4 = 0;
  sub_10022FD08(&v4, self, a3, +[IOSClass byteClass]);
  return v4;
}

- (unsigned)getCharWithId:(id)a3
{
  v4 = 0;
  sub_10022FD08(&v4, self, a3, +[IOSClass charClass]);
  return v4;
}

- (double)getDoubleWithId:(id)a3
{
  v4 = 0.0;
  sub_10022FD08(&v4, self, a3, +[IOSClass doubleClass]);
  return v4;
}

- (float)getFloatWithId:(id)a3
{
  v4 = 0;
  sub_10022FD08(&v4, self, a3, +[IOSClass floatClass]);
  return *&v4;
}

- (int)getIntWithId:(id)a3
{
  v4 = 0;
  sub_10022FD08(&v4, self, a3, +[IOSClass intClass]);
  return v4;
}

- (int64_t)getLongWithId:(id)a3
{
  v4 = 0;
  sub_10022FD08(&v4, self, a3, +[IOSClass longClass]);
  return v4;
}

- (signed)getShortWithId:(id)a3
{
  v4 = 0;
  sub_10022FD08(&v4, self, a3, +[IOSClass shortClass]);
  return v4;
}

- (void)setWithId:(id)a3 withId:(id)a4
{
  v7 = [(JavaLangReflectField *)self getType];
  v8 = [v7 isPrimitive];
  if ((v8 & 1) == 0)
  {
    v9 = [(JavaLangReflectField *)self getWithId:a3];
  }

  v11 = 0;
  if (([v7 __unboxValue:a4 toRawValue:&v11] & 1) == 0)
  {
    objc_exception_throw([[JavaLangIllegalArgumentException alloc] initWithNSString:@"field type mismatch"]);
  }

  sub_10023016C(&v11, self, a3, v7);
  if ((v8 & 1) == 0)
  {
    v10 = a4;
  }
}

- (id)getType
{
  if (self->metadata_)
  {
    v2 = [(JavaFieldMetadata *)self->metadata_ type];

    return TypeToClass(v2);
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
  v3 = [(JavaLangReflectField *)self getType];
  metadata = self->metadata_;
  if (metadata)
  {
    v5 = [(JavaFieldMetadata *)metadata genericSignature];
    if (v5)
    {
      v6 = v5;
      v7 = [[LibcoreReflectGenericSignatureParser alloc] initWithJavaLangClassLoader:JavaLangClassLoader_getSystemClassLoader()];
      [(LibcoreReflectGenericSignatureParser *)v7 parseForFieldWithJavaLangReflectGenericDeclaration:self->declaringClass_ withNSString:v6];
      fieldType = v7->fieldType_;
      if (fieldType)
      {
        v3 = fieldType;
      }
    }
  }

  return v3;
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
    v2 = [(JavaFieldMetadata *)self->metadata_ name];
  }

  else
  {
    v2 = [NSString stringWithUTF8String:ivar_getName(self->ivar_)];
  }

  return [JavaLangReflectField propertyName:v2];
}

+ (id)propertyName:(id)a3
{
  v4 = [a3 length] - 1;
  if ([a3 characterAtIndex:v4] != 95)
  {
    return a3;
  }

  return [a3 substringToIndex:v4];
}

+ (id)variableName:(id)a3
{
  if ([a3 characterAtIndex:{objc_msgSend(a3, "length") - 1}] == 95)
  {
    return a3;
  }

  return [a3 stringByAppendingString:@"_"];
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
    v4 = [(IOSClass *)self->declaringClass_ isEnum];
    if (v4)
    {
      v5 = [(JavaLangReflectField *)self getType];
      declaringClass = self->declaringClass_;

      LOBYTE(v4) = [v5 isEqual:declaringClass];
    }
  }

  return v4;
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

  v5 = [(JavaLangReflectField *)self getGenericType];
  if ([v5 conformsToProtocol:&OBJC_PROTOCOL___JavaLangReflectTypeVariable])
  {
    v6 = [v5 getName];
  }

  else
  {
    v6 = [v5 description];
  }

  return +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@ %@.%@", v4, v6, [-[JavaLangReflectField getDeclaringClass](self "getDeclaringClass")], -[JavaLangReflectField propertyName](self, "propertyName"));
}

- (id)getDeclaredAnnotations
{
  v3 = [(IOSClass *)self->declaringClass_ objcClass];
  if (v3 && JreFindClassMethod(v3, [[NSString stringWithFormat:?])
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

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || self->declaringClass_ != *(a3 + 3))
  {
    return 0;
  }

  v6 = [(JavaLangReflectField *)self propertyName];
  v7 = [a3 propertyName];

  return [v6 isEqual:v7];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangReflectField;
  [(JavaLangReflectField *)&v3 dealloc];
}

@end