@interface IOSClass
+ (void)initialize;
- (BOOL)isAnnotation;
- (BOOL)isLocalClass;
- (BOOL)isMemberClass;
- (BOOL)isSynthetic;
- (id)asSubclass:(id)subclass;
- (id)getAnnotationWithIOSClass:(id)class;
- (id)getAnnotations;
- (id)getCanonicalName;
- (id)getClasses;
- (id)getConstructors;
- (id)getDeclaredAnnotations;
- (id)getDeclaredClasses;
- (id)getDeclaredConstructors;
- (id)getDeclaredField:(id)field;
- (id)getDeclaredFields;
- (id)getDeclaredMethod:(id)method parameterTypes:(id)types;
- (id)getDeclaredMethods;
- (id)getDeclaringClass;
- (id)getEnclosingClass;
- (id)getEnclosingConstructor;
- (id)getEnclosingMethod;
- (id)getEnumConstants;
- (id)getField:(id)field;
- (id)getFields;
- (id)getGenericInterfaces;
- (id)getGenericSuperclass;
- (id)getInterfaces;
- (id)getMetadata;
- (id)getMethod:(id)method parameterTypes:(id)types;
- (id)getMethods;
- (id)getPackage;
- (id)getResource:(id)resource;
- (id)getResourceAsStream:(id)stream;
- (id)getTypeParameters;
- (int)getModifiers;
@end

@implementation IOSClass

- (id)getGenericSuperclass
{
  getSuperclass = [(IOSClass *)self getSuperclass];
  if (!getSuperclass)
  {
    return getSuperclass;
  }

  v4 = [-[IOSClass getMetadata](self "getMetadata")];
  if (!v4)
  {
    return getSuperclass;
  }

  v5 = v4;
  v6 = [[LibcoreReflectGenericSignatureParser alloc] initWithJavaLangClassLoader:JavaLangClassLoader_getSystemClassLoader()];
  [(LibcoreReflectGenericSignatureParser *)v6 parseForClassWithJavaLangReflectGenericDeclaration:self withNSString:v5];
  v7 = [LibcoreReflectTypes getType:v6->superclassType_];

  return v7;
}

- (id)getDeclaringClass
{
  if ([(IOSClass *)self isPrimitive]|| [(IOSClass *)self isArray]|| [(IOSClass *)self isAnonymousClass]|| [(IOSClass *)self isLocalClass])
  {
    return 0;
  }

  getEnclosingClass = [(IOSClass *)self getEnclosingClass];
  if ([getEnclosingClass isAnonymousClass])
  {
    do
    {
      getEnclosingClass = [getEnclosingClass getEnclosingClass];
    }

    while (([getEnclosingClass isAnonymousClass] & 1) != 0);
  }

  return getEnclosingClass;
}

- (id)getCanonicalName
{
  getName = [(IOSClass *)self getName];

  return [getName stringByReplacingOccurrencesOfString:@"$" withString:@"."];
}

- (int)getModifiers
{
  getMetadata = [(IOSClass *)self getMetadata];
  if (!getMetadata)
  {
    return 1;
  }

  modifiers = [getMetadata modifiers];
  return JavaLangReflectModifier_classModifiers() & modifiers;
}

- (id)getDeclaredMethods
{
  v3 = +[NSMutableDictionary dictionary];
  [(IOSClass *)self collectMethods:v3 publicOnly:0];
  allValues = [v3 allValues];
  v5 = JavaLangReflectMethod_class_();

  return [IOSObjectArray arrayWithNSArray:allValues type:v5];
}

- (id)getDeclaredConstructors
{
  v2 = JavaLangReflectConstructor_class_();

  return [IOSObjectArray arrayWithLength:0 type:v2];
}

- (id)getMethods
{
  v3 = +[NSMutableDictionary dictionary];
  sub_1002186D4(self, v3);
  allValues = [v3 allValues];
  v5 = JavaLangReflectMethod_class_();

  return [IOSObjectArray arrayWithNSArray:allValues type:v5];
}

- (id)getConstructors
{
  v2 = JavaLangReflectConstructor_class_();

  return [IOSObjectArray arrayWithLength:0 type:v2];
}

- (id)getMethod:(id)method parameterTypes:(id)types
{
  selfCopy = self;
  TranslatedMethodName = IOSClass_GetTranslatedMethodName(self, method, types);
  while (1)
  {
    v7 = [(IOSClass *)selfCopy findMethodWithTranslatedName:TranslatedMethodName checkSupertypes:1];
    if (v7)
    {
      break;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    getInterfacesInternal = [(IOSClass *)selfCopy getInterfacesInternal];
    v9 = [getInterfacesInternal countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v9)
    {
      goto LABEL_11;
    }

    v10 = v9;
    v11 = *v17;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(getInterfacesInternal);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) findMethodWithTranslatedName:TranslatedMethodName checkSupertypes:1];
        if (v13)
        {
          return v13;
        }

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [getInterfacesInternal countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

LABEL_11:
    selfCopy = [(IOSClass *)selfCopy getSuperclass];
    if (!selfCopy)
    {
      goto LABEL_12;
    }
  }

  v14 = v7;
  if (([v7 getModifiers] & 1) == 0)
  {
LABEL_12:
    objc_exception_throw([[JavaLangNoSuchMethodException alloc] initWithNSString:method]);
  }

  return v14;
}

- (id)getDeclaredMethod:(id)method parameterTypes:(id)types
{
  result = [(IOSClass *)self findMethodWithTranslatedName:IOSClass_GetTranslatedMethodName(self checkSupertypes:method, types), 0];
  if (!result)
  {
    objc_exception_throw([[JavaLangNoSuchMethodException alloc] initWithNSString:method]);
  }

  return result;
}

- (id)asSubclass:(id)subclass
{
  if (![subclass isAssignableFrom:self])
  {
    objc_exception_throw([[JavaLangClassCastException alloc] initWithNSString:[(IOSClass *)self description]]);
  }

  return self;
}

- (id)getEnclosingClass
{
  getMetadata = [(IOSClass *)self getMetadata];
  if (!getMetadata)
  {
    return 0;
  }

  v3 = getMetadata;
  if (![getMetadata enclosingName])
  {
    return 0;
  }

  v4 = +[NSMutableString string];
  if ([v3 packageName])
  {
    [v4 appendString:{objc_msgSend(v3, "packageName")}];
    [v4 appendString:@"."];
  }

  [v4 appendString:{objc_msgSend(v3, "enclosingName")}];

  return sub_1002192F8(v4);
}

- (BOOL)isAnnotation
{
  getMetadata = [(IOSClass *)self getMetadata];
  if (getMetadata)
  {
    LODWORD(getMetadata) = ([getMetadata modifiers] >> 13) & 1;
  }

  return getMetadata;
}

- (BOOL)isMemberClass
{
  getMetadata = [(IOSClass *)self getMetadata];
  if (getMetadata)
  {
    getMetadata = [getMetadata enclosingName];
    if (getMetadata)
    {
      LOBYTE(getMetadata) = ![(IOSClass *)self isAnonymousClass];
    }
  }

  return getMetadata;
}

- (BOOL)isLocalClass
{
  getEnclosingMethod = [(IOSClass *)self getEnclosingMethod];
  if (getEnclosingMethod)
  {
    LOBYTE(getEnclosingMethod) = ![(IOSClass *)self isAnonymousClass];
  }

  return getEnclosingMethod;
}

- (BOOL)isSynthetic
{
  getMetadata = [(IOSClass *)self getMetadata];
  if (getMetadata)
  {
    LODWORD(getMetadata) = ([getMetadata modifiers] >> 12) & 1;
  }

  return getMetadata;
}

- (id)getInterfaces
{
  getInterfacesInternal = [(IOSClass *)self getInterfacesInternal];

  return [IOSObjectArray arrayWithArray:getInterfacesInternal];
}

- (id)getGenericInterfaces
{
  if ([(IOSClass *)self isPrimitive])
  {
    v3 = JavaLangReflectType_class_();

    return [IOSObjectArray arrayWithLength:0 type:v3];
  }

  else
  {
    v5 = [-[IOSClass getMetadata](self "getMetadata")];
    if (v5)
    {
      v6 = v5;
      v7 = [[LibcoreReflectGenericSignatureParser alloc] initWithJavaLangClassLoader:JavaLangClassLoader_getSystemClassLoader()];
      [(LibcoreReflectGenericSignatureParser *)v7 parseForClassWithJavaLangReflectGenericDeclaration:self withNSString:v6];
      v8 = [LibcoreReflectTypes getTypeArray:v7->interfaceTypes_ clone:0];

      return v8;
    }

    else
    {
      getInterfacesInternal = [(IOSClass *)self getInterfacesInternal];
      v10 = getInterfacesInternal[2];
      v11 = JavaLangReflectType_class_();

      return [IOSObjectArray arrayWithObjects:getInterfacesInternal + 6 count:v10 type:v11];
    }
  }
}

- (id)getTypeParameters
{
  v3 = [-[IOSClass getMetadata](self "getMetadata")];
  if (v3)
  {
    v4 = v3;
    v5 = [[LibcoreReflectGenericSignatureParser alloc] initWithJavaLangClassLoader:JavaLangClassLoader_getSystemClassLoader()];
    [(LibcoreReflectGenericSignatureParser *)v5 parseForClassWithJavaLangReflectGenericDeclaration:self withNSString:v4];
    v6 = v5->formalTypeParameters_;

    return v6;
  }

  else
  {
    v8 = JavaLangReflectTypeVariable_class_();

    return [IOSObjectArray arrayWithLength:0 type:v8];
  }
}

- (id)getAnnotationWithIOSClass:(id)class
{
  if (!class)
  {
    JreThrowNullPointerException();
  }

  getAnnotations = [(IOSClass *)self getAnnotations];
  v5 = getAnnotations[2];
  if (v5 < 1)
  {
    return 0;
  }

  for (i = getAnnotations; ; i += 2)
  {
    v7 = *(i + 3);
    if ([class isInstance:v7])
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return v7;
}

- (id)getAnnotations
{
  v3 = objc_alloc_init(NSMutableArray);
  getDeclaredAnnotations = [(IOSClass *)self getDeclaredAnnotations];
  if (getDeclaredAnnotations[2] >= 1)
  {
    v5 = getDeclaredAnnotations;
    v6 = 0;
    v7 = getDeclaredAnnotations;
    do
    {
      [v3 addObject:*(v7 + 3)];
      ++v6;
      v7 += 2;
    }

    while (v6 < v5[2]);
  }

  getSuperclass = [(IOSClass *)self getSuperclass];
  v9 = JavaLangAnnotationInherited_class_();
  if (getSuperclass)
  {
    v10 = v9;
    do
    {
      v21 = getSuperclass;
      getDeclaredAnnotations2 = [getSuperclass getDeclaredAnnotations];
      if (getDeclaredAnnotations2[2] >= 1)
      {
        v12 = getDeclaredAnnotations2;
        v13 = 0;
        do
        {
          v14 = *&v12[2 * v13 + 6];
          v15 = [objc_msgSend(v14 "getClass")];
          if (v15[2] >= 1)
          {
            v16 = v15;
            v17 = 0;
            v18 = v15;
            do
            {
              if (v10 == [*(v18 + 3) annotationType])
              {
                [v3 addObject:v14];
              }

              ++v17;
              v18 += 2;
            }

            while (v17 < v16[2]);
          }

          ++v13;
        }

        while (v13 < v12[2]);
      }

      getSuperclass = [v21 getSuperclass];
    }

    while (getSuperclass);
  }

  v19 = [IOSObjectArray arrayWithNSArray:v3 type:JavaLangAnnotationAnnotation_class_()];

  return v19;
}

- (id)getDeclaredAnnotations
{
  objcClass = [(IOSClass *)self objcClass];
  if (objcClass && JreFindClassMethod(objcClass, "__annotations"))
  {

    method_invoke();
  }

  else
  {
    v4 = JavaLangAnnotationAnnotation_class_();

    return [IOSObjectArray arrayWithLength:0 type:v4];
  }

  return result;
}

- (id)getMetadata
{
  objcClass = [(IOSClass *)self objcClass];
  if (!objcClass || !JreFindClassMethod(objcClass, "__metadata"))
  {
    return 0;
  }

  method_invoke();
  v4 = [[JavaClassMetadata alloc] initWithMetadata:v3];

  return v4;
}

- (id)getPackage
{
  getMetadata = [(IOSClass *)self getMetadata];
  if (!getMetadata)
  {
    return 0;
  }

  v3 = getMetadata;
  if (![getMetadata packageName])
  {
    return 0;
  }

  v4 = -[JavaLangPackage initWithNSString:withNSString:withNSString:withNSString:withNSString:withNSString:withNSString:withJavaNetURL:]([JavaLangPackage alloc], "initWithNSString:withNSString:withNSString:withNSString:withNSString:withNSString:withNSString:withJavaNetURL:", [v3 packageName], 0, 0, 0, 0, 0, 0, 0);

  return v4;
}

- (id)getDeclaredField:(id)field
{
  if (!field)
  {
    JreThrowNullPointerException();
  }

  result = findDeclaredField(self, field, 0);
  if (!result)
  {
    objc_exception_throw([[JavaLangNoSuchFieldException alloc] initWithNSString:field]);
  }

  return result;
}

- (id)getField:(id)field
{
  if (!field)
  {
    JreThrowNullPointerException();
  }

  result = findField(self, field, 1);
  if (!result)
  {
    objc_exception_throw([[JavaLangNoSuchFieldException alloc] initWithNSString:field]);
  }

  return result;
}

- (id)getDeclaredFields
{
  v3 = +[NSMutableDictionary dictionary];
  sub_10021A540(self, v3, 0);
  allValues = [v3 allValues];

  return copyFieldsToObjectArray(allValues);
}

- (id)getFields
{
  v3 = +[NSMutableDictionary dictionary];
  sub_10021A730(self, v3);
  allValues = [v3 allValues];

  return copyFieldsToObjectArray(allValues);
}

- (id)getEnclosingMethod
{
  v2 = [-[IOSClass getMetadata](self "getMetadata")];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  selector = [v2 selector];
  if ([selector isEqualToString:@"init"] & 1) != 0 || (objc_msgSend(selector, "hasPrefix:", @"initWith"))
  {
    return 0;
  }

  v6 = sub_100218D3C([v3 typeName]);
  if (!v6)
  {
    objc_exception_throw(objc_alloc_init(JavaLangAssertionError));
  }

  v7 = v6;
  selector2 = [v3 selector];

  return [(objc_class *)v7 findMethodWithTranslatedName:selector2 checkSupertypes:0];
}

- (id)getEnclosingConstructor
{
  v2 = [-[IOSClass getMetadata](self "getMetadata")];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  selector = [v2 selector];
  if (([selector isEqualToString:@"init"] & 1) == 0 && !objc_msgSend(selector, "hasPrefix:", @"initWith"))
  {
    return 0;
  }

  v5 = sub_100218D3C([v3 typeName]);
  if (!v5)
  {
    objc_exception_throw(objc_alloc_init(JavaLangAssertionError));
  }

  v6 = v5;
  selector2 = [v3 selector];

  return [(objc_class *)v6 findConstructorWithTranslatedName:selector2];
}

- (id)getClasses
{
  v3 = objc_alloc_init(NSMutableArray);
  sub_10021AA64(self, v3, 1, 1);
  getSuperclass = [(IOSClass *)self getSuperclass];
  if (getSuperclass)
  {
    getSuperclass2 = getSuperclass;
    do
    {
      sub_10021AA64(getSuperclass2, v3, 1, 0);
      getSuperclass2 = [getSuperclass2 getSuperclass];
    }

    while (getSuperclass2);
  }

  v6 = [IOSObjectArray arrayWithNSArray:v3 type:IOSClass_class_()];

  return v6;
}

- (id)getDeclaredClasses
{
  v3 = objc_alloc_init(NSMutableArray);
  sub_10021AA64(self, v3, 0, 1);
  v4 = [IOSObjectArray arrayWithNSArray:v3 type:IOSClass_class_()];

  return v4;
}

- (id)getEnumConstants
{
  if (![(IOSClass *)self isEnum])
  {
    return 0;
  }

  return JavaLangEnum_getSharedConstantsWithIOSClass_(self);
}

- (id)getResource:(id)resource
{
  getClassLoader = [(IOSClass *)self getClassLoader];
  v6 = resolveResourceName(self, resource);

  return [getClassLoader getResourceWithNSString:v6];
}

- (id)getResourceAsStream:(id)stream
{
  getClassLoader = [(IOSClass *)self getClassLoader];
  v6 = resolveResourceName(self, stream);

  return [getClassLoader getResourceAsStreamWithNSString:v6];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    qword_100555168 = [[NSDictionary alloc] initWithObjectsAndKeys:{@"NSObject", @"java.lang.Object", @"IOSClass", @"java.lang.Class", @"NSNumber", @"java.lang.Number", @"NSString", @"java.lang.String", @"NSCopying", @"java.lang.Cloneable", 0}];
    qword_100555118 = [[IOSPrimitiveClass alloc] initWithName:@"byte" type:@"B"];
    qword_100555120 = [[IOSPrimitiveClass alloc] initWithName:@"char" type:@"C"];
    qword_100555128 = [[IOSPrimitiveClass alloc] initWithName:@"double" type:@"D"];
    qword_100555130 = [[IOSPrimitiveClass alloc] initWithName:@"float" type:@"F"];
    qword_100555138 = [[IOSPrimitiveClass alloc] initWithName:@"int" type:@"I"];
    qword_100555140 = [[IOSPrimitiveClass alloc] initWithName:@"long" type:@"J"];
    qword_100555148 = [[IOSPrimitiveClass alloc] initWithName:@"short" type:@"S"];
    qword_100555150 = [[IOSPrimitiveClass alloc] initWithName:@"BOOLean" type:@"Z"];
    qword_100555158 = [[IOSPrimitiveClass alloc] initWithName:@"void" type:@"V"];
    v2 = objc_opt_class();
    qword_100555170 = IOSClass_fromClass(v2);
    qword_100555160 = [IOSObjectArray newArrayWithLength:0 type:IOSClass_class_()];
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    objc_opt_class();
    if (![objc_opt_class() instanceMethodSignatureForSelector:"compareToWithId:"] || !objc_msgSend(objc_opt_class(), "instanceMethodSignatureForSelector:", "trim") || (+[NSNumber conformsToProtocol:](NSNumber, "conformsToProtocol:", &OBJC_PROTOCOL___JavaIoSerializable) & 1) == 0)
    {
      [NSException raise:@"J2ObjCLinkError" format:@"Your project is not configured to load categories from the JRE emulation library. Try adding the -force_load linker flag."];
    }

    atomic_store(1u, &IOSClass__initialized);
  }
}

@end