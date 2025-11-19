@interface JavaIoObjectStreamField
- (BOOL)isPrimitive;
- (BOOL)writeFieldWithJavaIoDataOutputStream:(id)a3;
- (NSString)description;
- (id)getType;
- (id)getTypeInternal;
- (id)getTypeString;
- (int)compareToWithId:(id)a3;
- (uint64_t)defaultResolve;
- (unsigned)getTypeCode;
- (void)dealloc;
- (void)resolveWithJavaLangClassLoader:(id)a3;
@end

@implementation JavaIoObjectStreamField

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    objc_opt_class();
    [(JavaIoObjectStreamField *)self isPrimitive];
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    JreThrowClassCastException();
  }

  v5 = [(JavaIoObjectStreamField *)self isPrimitive];
  if (v5 == [a3 isPrimitive])
  {
    v7 = [(JavaIoObjectStreamField *)self getName];
    if (!v7)
    {
      JreThrowNullPointerException();
    }

    v8 = v7;
    v9 = [a3 getName];

    return [v8 compareToWithId:v9];
  }

  else if (v5)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (id)getTypeInternal
{
  type = self->type_;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = self->type_;
  if (isKindOfClass)
  {
    objc_opt_class();
    if (!v5)
    {
      JreThrowNullPointerException();
    }

    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_8:
      JreThrowClassCastException();
    }

    v5 = [v5 get];
  }

  objc_opt_class();
  if (v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  return v5;
}

- (id)getType
{
  v3 = [(JavaIoObjectStreamField *)self getTypeInternal];
  v4 = v3;
  if (!self->isDeserialized_)
  {
    return v4;
  }

  if (!v3)
  {
    JreThrowNullPointerException();
  }

  if ([v3 isPrimitive])
  {
    return v4;
  }

  return NSObject_class_();
}

- (unsigned)getTypeCode
{
  v2 = [(JavaIoObjectStreamField *)self getTypeInternal];

  return sub_100285074(v2);
}

- (id)getTypeString
{
  if ([(JavaIoObjectStreamField *)self isPrimitive])
  {
    return 0;
  }

  p_typeString = &self->typeString_;
  result = self->typeString_;
  if (!result)
  {
    v5 = [(JavaIoObjectStreamField *)self getTypeInternal];
    if (!v5 || (v6 = v5, (v7 = [v5 getName]) == 0))
    {
      JreThrowNullPointerException();
    }

    v8 = [v7 replace:46 withChar:47];
    if (([v6 isArray] & 1) == 0)
    {
      v8 = JreStrcat("C$C", v9, v10, v11, v12, v13, v14, v15, 76);
    }

    JreStrongAssign(p_typeString, [(__CFString *)v8 intern]);
    return *p_typeString;
  }

  return result;
}

- (BOOL)isPrimitive
{
  v2 = [(JavaIoObjectStreamField *)self getTypeInternal];
  if (v2)
  {

    LOBYTE(v2) = [v2 isPrimitive];
  }

  return v2;
}

- (BOOL)writeFieldWithJavaIoDataOutputStream:(id)a3
{
  v5 = [(JavaIoObjectStreamField *)self getTypeInternal];
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  [a3 writeByteWithInt:sub_100285074(v5)];
  [a3 writeUTFWithNSString:self->name_];
  if (!v6)
  {
    return 0;
  }

  return [v6 isPrimitive];
}

- (NSString)description
{
  v3 = [-[JavaIoObjectStreamField getClass](self "getClass")];
  [(JavaIoObjectStreamField *)self getName];
  [(JavaIoObjectStreamField *)self getTypeInternal];
  return JreStrcat("$C$C@C", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (void)resolveWithJavaLangClassLoader:(id)a3
{
  p_typeString = &self->typeString_;
  typeString = self->typeString_;
  if (!typeString)
  {
    if ([(JavaIoObjectStreamField *)self isPrimitive])
    {
      v7 = NSString_valueOfChar_([(JavaIoObjectStreamField *)self getTypeCode]);
      JreStrongAssign(p_typeString, v7);
    }

    typeString = *p_typeString;
    if (!*p_typeString)
    {
      goto LABEL_15;
    }
  }

  if ([(NSString *)typeString length]== 1 && ([JavaIoObjectStreamField defaultResolve]_0(self) & 1) != 0)
  {
    return;
  }

  v8 = [(NSString *)*p_typeString replace:47 withChar:46];
  if (!v8)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v9 = v8;
  if ([v8 charAtWithInt:0] == 76)
  {
    v9 = [v9 substring:1 endIndex:{objc_msgSend(v9, "length") - 1}];
  }

  v10 = IOSClass_forName_initialize_classLoader_(v9, 0, a3);
  v11 = v10;
  if (!v10)
  {
    JreThrowNullPointerException();
  }

  if ([(JavaLangRefWeakReference *)v10 getClassLoader])
  {
    v11 = new_JavaLangRefWeakReference_initWithId_(v11);
  }

  JreStrongAssign(&self->type_, v11);
}

- (uint64_t)defaultResolve
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    JreThrowNullPointerException();
  }

  v3 = [v2 charAtWithInt:0];
  if (v3 > 72)
  {
    if (v3 > 82)
    {
      if (v3 == 83)
      {
        v4 = +[IOSClass shortClass];
        goto LABEL_21;
      }

      if (v3 == 90)
      {
        v4 = +[IOSClass BOOLeanClass];
        goto LABEL_21;
      }
    }

    else
    {
      if (v3 == 73)
      {
        v4 = +[IOSClass intClass];
        goto LABEL_21;
      }

      if (v3 == 74)
      {
        v4 = +[IOSClass longClass];
        goto LABEL_21;
      }
    }

LABEL_23:
    v5 = NSObject_class_();
    v6 = 0;
    goto LABEL_22;
  }

  if (v3 > 67)
  {
    if (v3 == 68)
    {
      v4 = +[IOSClass doubleClass];
      goto LABEL_21;
    }

    if (v3 == 70)
    {
      v4 = +[IOSClass floatClass];
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v3 == 66)
  {
    v4 = +[IOSClass byteClass];
    goto LABEL_21;
  }

  if (v3 != 67)
  {
    goto LABEL_23;
  }

  v4 = +[IOSClass charClass];
LABEL_21:
  v5 = v4;
  v6 = 1;
LABEL_22:
  JreStrongAssign((a1 + 24), v5);
  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaIoObjectStreamField;
  [(JavaIoObjectStreamField *)&v3 dealloc];
}

@end