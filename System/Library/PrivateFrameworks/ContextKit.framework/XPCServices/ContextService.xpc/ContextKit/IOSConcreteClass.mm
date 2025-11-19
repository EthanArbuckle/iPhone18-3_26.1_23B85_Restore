@interface IOSConcreteClass
- (BOOL)isAnonymousClass;
- (BOOL)isAssignableFrom:(id)a3;
- (BOOL)isEnum;
- (IOSConcreteClass)initWithClass:(Class)a3;
- (id)findMethodWithTranslatedName:(id)a3 checkSupertypes:(BOOL)a4;
- (id)getConstructor:(id)a3;
- (id)getDeclaredConstructor:(id)a3;
- (id)getInterfacesInternal;
- (id)getName;
- (id)getSimpleName;
- (id)getSuperclass;
- (id)newInstance;
- (void)collectMethods:(id)a3 publicOnly:(BOOL)a4;
- (void)dealloc;
@end

@implementation IOSConcreteClass

- (IOSConcreteClass)initWithClass:(Class)a3
{
  v5.receiver = self;
  v5.super_class = IOSConcreteClass;
  result = [(IOSConcreteClass *)&v5 init];
  if (result)
  {
    result->class_ = a3;
  }

  return result;
}

- (id)newInstance
{
  v3 = self->class_;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || [(objc_class *)self->class_ isMemberOfClass:objc_opt_class()])
  {
    objc_exception_throw(objc_alloc_init(JavaLangInstantiationException));
  }

  v4 = objc_alloc_init(self->class_);

  return v4;
}

- (id)getSuperclass
{
  result = [(objc_class *)self->class_ superclass];
  if (result)
  {

    return IOSClass_fromClass(result);
  }

  return result;
}

- (id)getName
{
  v3 = [(IOSClass *)self getMetadata];
  if (v3)
  {

    return [v3 qualifiedName];
  }

  else
  {
    v4 = self->class_;

    return NSStringFromClass(v4);
  }
}

- (id)getSimpleName
{
  v3 = [(IOSClass *)self getMetadata];
  if (v3)
  {

    return [v3 typeName];
  }

  else
  {
    v5 = self->class_;

    return NSStringFromClass(v5);
  }
}

- (BOOL)isAssignableFrom:(id)a3
{
  v5 = self->class_;
  if (v5 == objc_opt_class())
  {
    return [a3 isPrimitive] ^ 1;
  }

  v6 = [a3 objcClass];
  v7 = self->class_;

  return [v6 isSubclassOfClass:v7];
}

- (BOOL)isEnum
{
  v3 = [(IOSClass *)self getMetadata];
  if (v3)
  {
    if (([v3 modifiers] & 0x4000) != 0)
    {
      v6 = [(IOSConcreteClass *)self getSuperclass];
      LOBYTE(v4) = v6 == JavaLangEnum_class_();
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    v4 = self->class_;
    if (v4)
    {
      v5 = NSStringFromClass(v4);

      LOBYTE(v4) = [(NSString *)v5 hasSuffix:@"Enum"];
    }
  }

  return v4;
}

- (BOOL)isAnonymousClass
{
  v2 = [(IOSClass *)self getMetadata];
  if (v2)
  {
    LOBYTE(v2) = [v2 modifiers] < 0;
  }

  return v2;
}

- (void)collectMethods:(id)a3 publicOnly:(BOOL)a4
{
  v4 = a4;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001BC028;
  v7[3] = &unk_10041B0C8;
  v7[4] = [(IOSClass *)self getMetadata];
  v7[5] = self;
  sub_1001BBF70(self, a3, v4, v7);
}

- (id)findMethodWithTranslatedName:(id)a3 checkSupertypes:(BOOL)a4
{
  v6 = [a3 UTF8String];
  InstanceMethod = JreFindInstanceMethod(self->class_, v6);
  v8 = InstanceMethod;
  if (InstanceMethod)
  {
    v9 = InstanceMethod;
  }

  else
  {
    ClassMethod = JreFindClassMethod(self->class_, v6);
    if (!ClassMethod)
    {
      return 0;
    }

    v9 = ClassMethod;
  }

  Description = method_getDescription(v9);
  v12 = JreSignatureOrNull(Description);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = [(IOSClass *)self getMetadata];
  Name = method_getName(v9);
  v16 = [v14 findMethodMetadata:a3];

  return [JavaLangReflectMethod methodWithMethodSignature:v13 selector:Name class:self isStatic:v8 == 0 metadata:v16];
}

- (id)getConstructor:(id)a3
{
  TranslatedMethodName = IOSClass_GetTranslatedMethodName(0, @"init", a3);
  v5 = sub_1001BC3F8(&self->super.super.isa, TranslatedMethodName);
  if (([v5 getModifiers] & 1) == 0)
  {
    objc_exception_throw(objc_alloc_init(JavaLangNoSuchMethodException));
  }

  return v5;
}

- (id)getDeclaredConstructor:(id)a3
{
  TranslatedMethodName = IOSClass_GetTranslatedMethodName(0, @"init", a3);

  return sub_1001BC3F8(&self->super.super.isa, TranslatedMethodName);
}

- (id)getInterfacesInternal
{
  explicit = atomic_load_explicit(&self->interfaces_, memory_order_acquire);
  if (!explicit)
  {
    objc_sync_enter(self);
    explicit = self->interfaces_;
    if (!explicit)
    {
      outCount = 0;
      v4 = class_copyProtocolList(self->class_, &outCount);
      explicit = IOSClass_NewInterfacesFromProtocolList(v4);
      atomic_store(explicit, &self->interfaces_);
      free(v4);
    }

    objc_sync_exit(self);
  }

  return explicit;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOSConcreteClass;
  [(IOSConcreteClass *)&v3 dealloc];
}

@end