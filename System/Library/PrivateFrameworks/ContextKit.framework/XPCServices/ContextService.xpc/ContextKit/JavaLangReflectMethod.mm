@interface JavaLangReflectMethod
- (JavaLangReflectMethod)initWithMethodSignature:(id)signature selector:(SEL)selector class:(id)class isStatic:(BOOL)static metadata:(id)metadata;
- (id)description;
- (id)getDefaultValue;
- (id)getGenericReturnType;
- (id)getName;
- (id)getReturnType;
- (id)invocationForTarget:(id)target;
- (id)invokeWithId:(id)id withNSObjectArray:(id)array;
- (int)getModifiers;
- (void)invoke:(id)invoke object:(id)object;
- (void)jniInvokeWithId:(id)id args:(id *)args result:(id *)result;
@end

@implementation JavaLangReflectMethod

- (JavaLangReflectMethod)initWithMethodSignature:(id)signature selector:(SEL)selector class:(id)class isStatic:(BOOL)static metadata:(id)metadata
{
  v9.receiver = self;
  v9.super_class = JavaLangReflectMethod;
  result = [(ExecutableMember *)&v9 initWithMethodSignature:signature selector:selector class:class metadata:metadata];
  if (result)
  {
    result->isStatic_ = static;
  }

  return result;
}

- (id)getName
{
  javaName = [(JavaMethodMetadata *)self->super.metadata_ javaName];
  if (javaName)
  {
    return javaName;
  }

  v4 = self->super.selector_ ? self->super.selector_ : 0;
  javaName = NSStringFromSelector(v4);
  v5 = [(NSString *)javaName rangeOfString:@":"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return javaName;
  }

  v6 = [(NSString *)javaName rangeOfString:@"With" options:4 range:0, v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return javaName;
  }

  return [(NSString *)javaName substringToIndex:v6];
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
  returnType = [(JavaMethodMetadata *)self->super.metadata_ returnType];
  if (returnType)
  {
    v4 = returnType;
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
    methodReturnType = [(NSMethodSignature *)self->super.methodSignature_ methodReturnType];
    if (strlen(methodReturnType) != 1)
    {
      v7 = [(JavaLangError *)[JavaLangAssertionError alloc] initWithNSString:[NSString stringWithFormat:@"unexpected return type: %s", methodReturnType]];
      v8 = v7;
      objc_exception_throw(v7);
    }

    return decodeTypeEncoding(methodReturnType);
  }
}

- (id)getGenericReturnType
{
  genericSignature = [(JavaMethodMetadata *)self->super.metadata_ genericSignature];
  if (genericSignature)
  {
    v4 = genericSignature;
    v5 = [[LibcoreReflectGenericSignatureParser alloc] initWithJavaLangClassLoader:JavaLangClassLoader_getSystemClassLoader()];
    [(LibcoreReflectGenericSignatureParser *)v5 parseForMethodWithJavaLangReflectGenericDeclaration:self withNSString:v4 withIOSClassArray:[(ExecutableMember *)self getExceptionTypes]];
    v6 = [LibcoreReflectTypes getType:v5->returnType_];

    return v6;
  }

  else
  {
    returnType = [(JavaMethodMetadata *)self->super.metadata_ returnType];
    if (returnType && (v9 = returnType, ([returnType conformsToProtocol:&OBJC_PROTOCOL___JavaLangReflectTypeVariable] & 1) != 0))
    {
      return v9;
    }

    else
    {

      return [(JavaLangReflectMethod *)self getReturnType];
    }
  }
}

- (id)invokeWithId:(id)id withNSObjectArray:(id)array
{
  if (!id && !self->isStatic_)
  {
    v14 = [JavaLangNullPointerException alloc];
    v15 = @"null object specified for non-final method";
    goto LABEL_15;
  }

  getParameterTypes = [(ExecutableMember *)self getParameterTypes];
  v8 = getParameterTypes;
  if (array)
  {
    LODWORD(v9) = *(array + 2);
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 != getParameterTypes[2])
  {
    v14 = [JavaLangIllegalArgumentException alloc];
    v15 = @"wrong number of arguments";
    goto LABEL_15;
  }

  v10 = [(JavaLangReflectMethod *)self invocationForTarget:id];
  if (v9 >= 1)
  {
    v11 = 0x200000000;
    v9 = v9;
    while (1)
    {
      v16 = 0;
      if (([v8[3] __unboxValue:*(array + 3) toRawValue:&v16] & 1) == 0)
      {
        break;
      }

      [v10 setArgument:&v16 atIndex:v11 >> 32];
      v11 += &_mh_execute_header;
      array = array + 8;
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
  [(JavaLangReflectMethod *)self invoke:v10 object:id];
  getReturnType = [(JavaLangReflectMethod *)self getReturnType];
  if (getReturnType == +[IOSClass voidClass])
  {
    return 0;
  }

  v16 = 0;
  [v10 getReturnValue:&v16];
  return [getReturnType __boxValue:&v16];
}

- (void)jniInvokeWithId:(id)id args:(id *)args result:(id *)result
{
  v9 = [(JavaLangReflectMethod *)self invocationForTarget:?];
  if ([(ExecutableMember *)self getNumParams]>= 1)
  {
    v10 = 0;
    v11 = 0x200000000;
    do
    {
      [v9 setArgument:args atIndex:v11 >> 32];
      ++v10;
      v11 += &_mh_execute_header;
      ++args;
    }

    while (v10 < [(ExecutableMember *)self getNumParams]);
  }

  [(JavaLangReflectMethod *)self invoke:v9 object:id];
  if (result)
  {

    [v9 getReturnValue:result];
  }
}

- (id)invocationForTarget:(id)target
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
  if (target && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = v6;
    targetCopy = target;
  }

  else
  {
    targetCopy = [(IOSClass *)self->super.class_ objcClass];
    v9 = v6;
  }

  [(NSInvocation *)v9 setTarget:targetCopy];
  return v6;
}

- (void)invoke:(id)invoke object:(id)object
{
  getDeclaringClass = [(ExecutableMember *)self getDeclaringClass];
  if (object && (v8 = getDeclaringClass, (-[JavaLangReflectMethod getModifiers](self, "getModifiers") & 2) != 0) && v8 != [object getClass])
  {
    v9 = object_setClass(object, [v8 objcClass]);
    [invoke invoke];
    object_setClass(object, v9);
  }

  else
  {
    [invoke invoke];
  }
}

- (id)description
{
  v3 = +[NSMutableString string];
  objc_msgSend(v3, "appendFormat:", @"%@ %@ %@.%@("), JavaLangReflectModifier_toStringWithInt_(-[JavaLangReflectMethod getModifiers](self, "getModifiers")), objc_msgSend(-[JavaLangReflectMethod getReturnType](self, "getReturnType"), "getName"), objc_msgSend(-[ExecutableMember getDeclaringClass](self, "getDeclaringClass"), "getName"), -[JavaLangReflectMethod getName](self, "getName");
  getParameterTypes = [(ExecutableMember *)self getParameterTypes];
  v5 = *(getParameterTypes + 2);
  if (v5 >= 1)
  {
    v6 = getParameterTypes;
    [v3 appendString:{objc_msgSend(getParameterTypes[3], "getName")}];
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
  getExceptionTypes = [(ExecutableMember *)self getExceptionTypes];
  v10 = *(getExceptionTypes + 2);
  if (v10 >= 1)
  {
    v11 = getExceptionTypes;
    [v3 appendFormat:@" throws %@", objc_msgSend(getExceptionTypes[3], "getName")];
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