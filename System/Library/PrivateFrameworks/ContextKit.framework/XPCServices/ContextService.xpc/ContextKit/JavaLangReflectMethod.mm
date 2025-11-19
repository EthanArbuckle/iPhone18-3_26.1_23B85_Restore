@interface JavaLangReflectMethod
- (JavaLangReflectMethod)initWithMethodSignature:(id)a3 selector:(SEL)a4 class:(id)a5 isStatic:(BOOL)a6 metadata:(id)a7;
- (id)description;
- (id)getDefaultValue;
- (id)getGenericReturnType;
- (id)getName;
- (id)getReturnType;
- (id)invocationForTarget:(id)a3;
- (id)invokeWithId:(id)a3 withNSObjectArray:(id)a4;
- (int)getModifiers;
- (void)invoke:(id)a3 object:(id)a4;
- (void)jniInvokeWithId:(id)a3 args:(id *)a4 result:(id *)a5;
@end

@implementation JavaLangReflectMethod

- (JavaLangReflectMethod)initWithMethodSignature:(id)a3 selector:(SEL)a4 class:(id)a5 isStatic:(BOOL)a6 metadata:(id)a7
{
  v9.receiver = self;
  v9.super_class = JavaLangReflectMethod;
  result = [(ExecutableMember *)&v9 initWithMethodSignature:a3 selector:a4 class:a5 metadata:a7];
  if (result)
  {
    result->isStatic_ = a6;
  }

  return result;
}

- (id)getName
{
  v3 = [(JavaMethodMetadata *)self->super.metadata_ javaName];
  if (v3)
  {
    return v3;
  }

  v4 = self->super.selector_ ? self->super.selector_ : 0;
  v3 = NSStringFromSelector(v4);
  v5 = [(NSString *)v3 rangeOfString:@":"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  v6 = [(NSString *)v3 rangeOfString:@"With" options:4 range:0, v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  return [(NSString *)v3 substringToIndex:v6];
}

- (int)getModifiers
{
  v4.receiver = self;
  v4.super_class = JavaLangReflectMethod;
  result = [(ExecutableMember *)&v4 getModifiers];
  if (self->isStatic_)
  {
    return result | 8;
  }

  return result;
}

- (id)getReturnType
{
  v3 = [(JavaMethodMetadata *)self->super.metadata_ returnType];
  if (v3)
  {
    v4 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v4;
    }

    else
    {

      return NSObject_class_();
    }
  }

  else
  {
    v6 = [(NSMethodSignature *)self->super.methodSignature_ methodReturnType];
    if (strlen(v6) != 1)
    {
      v7 = [(JavaLangError *)[JavaLangAssertionError alloc] initWithNSString:[NSString stringWithFormat:@"unexpected return type: %s", v6]];
      v8 = v7;
      objc_exception_throw(v7);
    }

    return decodeTypeEncoding(v6);
  }
}

- (id)getGenericReturnType
{
  v3 = [(JavaMethodMetadata *)self->super.metadata_ genericSignature];
  if (v3)
  {
    v4 = v3;
    v5 = [[LibcoreReflectGenericSignatureParser alloc] initWithJavaLangClassLoader:JavaLangClassLoader_getSystemClassLoader()];
    [(LibcoreReflectGenericSignatureParser *)v5 parseForMethodWithJavaLangReflectGenericDeclaration:self withNSString:v4 withIOSClassArray:[(ExecutableMember *)self getExceptionTypes]];
    v6 = [LibcoreReflectTypes getType:v5->returnType_];

    return v6;
  }

  else
  {
    v8 = [(JavaMethodMetadata *)self->super.metadata_ returnType];
    if (v8 && (v9 = v8, ([v8 conformsToProtocol:&OBJC_PROTOCOL___JavaLangReflectTypeVariable] & 1) != 0))
    {
      return v9;
    }

    else
    {

      return [(JavaLangReflectMethod *)self getReturnType];
    }
  }
}

- (id)invokeWithId:(id)a3 withNSObjectArray:(id)a4
{
  if (!a3 && !self->isStatic_)
  {
    v14 = [JavaLangNullPointerException alloc];
    v15 = @"null object specified for non-final method";
    goto LABEL_15;
  }

  v7 = [(ExecutableMember *)self getParameterTypes];
  v8 = v7;
  if (a4)
  {
    LODWORD(v9) = *(a4 + 2);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 != v7[2])
  {
    v14 = [JavaLangIllegalArgumentException alloc];
    v15 = @"wrong number of arguments";
    goto LABEL_15;
  }

  v10 = [(JavaLangReflectMethod *)self invocationForTarget:a3];
  if (v9 >= 1)
  {
    v11 = 0x200000000;
    v9 = v9;
    while (1)
    {
      v16 = 0;
      if (([v8[3] __unboxValue:*(a4 + 3) toRawValue:&v16] & 1) == 0)
      {
        break;
      }

      [v10 setArgument:&v16 atIndex:v11 >> 32];
      v11 += &_mh_execute_header;
      a4 = a4 + 8;
      ++v8;
      if (!--v9)
      {
        goto LABEL_11;
      }
    }

    v14 = [JavaLangIllegalArgumentException alloc];
    v15 = @"argument type mismatch";
LABEL_15:
    objc_exception_throw([(JavaLangNullPointerException *)v14 initWithNSString:v15]);
  }

LABEL_11:
  [(JavaLangReflectMethod *)self invoke:v10 object:a3];
  v12 = [(JavaLangReflectMethod *)self getReturnType];
  if (v12 == +[IOSClass voidClass])
  {
    return 0;
  }

  v16 = 0;
  [v10 getReturnValue:&v16];
  return [v12 __boxValue:&v16];
}

- (void)jniInvokeWithId:(id)a3 args:(id *)a4 result:(id *)a5
{
  v9 = [(JavaLangReflectMethod *)self invocationForTarget:?];
  if ([(ExecutableMember *)self getNumParams]>= 1)
  {
    v10 = 0;
    v11 = 0x200000000;
    do
    {
      [v9 setArgument:a4 atIndex:v11 >> 32];
      ++v10;
      v11 += &_mh_execute_header;
      ++a4;
    }

    while (v10 < [(ExecutableMember *)self getNumParams]);
  }

  [(JavaLangReflectMethod *)self invoke:v9 object:a3];
  if (a5)
  {

    [v9 getReturnValue:a5];
  }
}

- (id)invocationForTarget:(id)a3
{
  v5 = [NSInvocation invocationWithMethodSignature:self->super.methodSignature_];
  v6 = v5;
  if (self->super.selector_)
  {
    selector = self->super.selector_;
  }

  else
  {
    selector = 0;
  }

  [(NSInvocation *)v5 setSelector:selector];
  if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = v6;
    v8 = a3;
  }

  else
  {
    v8 = [(IOSClass *)self->super.class_ objcClass];
    v9 = v6;
  }

  [(NSInvocation *)v9 setTarget:v8];
  return v6;
}

- (void)invoke:(id)a3 object:(id)a4
{
  v7 = [(ExecutableMember *)self getDeclaringClass];
  if (a4 && (v8 = v7, (-[JavaLangReflectMethod getModifiers](self, "getModifiers") & 2) != 0) && v8 != [a4 getClass])
  {
    v9 = object_setClass(a4, [v8 objcClass]);
    [a3 invoke];
    object_setClass(a4, v9);
  }

  else
  {
    [a3 invoke];
  }
}

- (id)description
{
  v3 = +[NSMutableString string];
  objc_msgSend(v3, "appendFormat:", @"%@ %@ %@.%@("), JavaLangReflectModifier_toStringWithInt_(-[JavaLangReflectMethod getModifiers](self, "getModifiers")), objc_msgSend(-[JavaLangReflectMethod getReturnType](self, "getReturnType"), "getName"), objc_msgSend(-[ExecutableMember getDeclaringClass](self, "getDeclaringClass"), "getName"), -[JavaLangReflectMethod getName](self, "getName");
  v4 = [(ExecutableMember *)self getParameterTypes];
  v5 = *(v4 + 2);
  if (v5 >= 1)
  {
    v6 = v4;
    [v3 appendString:{objc_msgSend(v4[3], "getName")}];
    if (v5 != 1)
    {
      v7 = v6 + 1;
      v8 = v5 - 1;
      do
      {
        [v3 appendFormat:@", %@", objc_msgSend(v7[3], "getName")];
        ++v7;
        --v8;
      }

      while (v8);
    }
  }

  [v3 appendString:@""]);
  v9 = [(ExecutableMember *)self getExceptionTypes];
  v10 = *(v9 + 2);
  if (v10 >= 1)
  {
    v11 = v9;
    [v3 appendFormat:@" throws %@", objc_msgSend(v9[3], "getName")];
    if (v10 != 1)
    {
      v12 = v11 + 1;
      v13 = v10 - 1;
      do
      {
        [v3 appendFormat:@", %@", objc_msgSend(v12[3], "getName")];
        ++v12;
        --v13;
      }

      while (v13);
    }
  }

  return [v3 description];
}

- (id)getDefaultValue
{
  if (-[IOSClass isAnnotation](self->super.class_, "isAnnotation") && (v3 = -[IOSClass getDeclaredMethod:parameterTypes:](self->super.class_, "getDeclaredMethod:parameterTypes:", [-[JavaLangReflectMethod getName](self "getName")], +[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, IOSClass_class_()))) != 0)
  {
    return [v3 invokeWithId:self->super.class_ withNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", 0, NSObject_class_())}];
  }

  else
  {
    return 0;
  }
}

@end