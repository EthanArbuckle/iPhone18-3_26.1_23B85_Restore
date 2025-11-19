@interface IOSProtocolClass
- (BOOL)isInstance:(id)a3;
- (Class)objcClass;
- (IOSProtocolClass)initWithProtocol:(id)a3;
- (id)findMethodWithTranslatedName:(id)a3 checkSupertypes:(BOOL)a4;
- (id)getInterfacesInternal;
- (id)getName;
- (id)getSimpleName;
- (int)getModifiers;
- (void)dealloc;
@end

@implementation IOSProtocolClass

- (IOSProtocolClass)initWithProtocol:(id)a3
{
  v6.receiver = self;
  v6.super_class = IOSProtocolClass;
  v4 = [(IOSProtocolClass *)&v6 init];
  if (v4)
  {
    v4->protocol_ = a3;
  }

  return v4;
}

- (BOOL)isInstance:(id)a3
{
  v4 = [a3 getClass];

  return sub_10028CEF4(v4, self);
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
    protocol = self->protocol_;

    return NSStringFromProtocol(protocol);
  }
}

- (id)getSimpleName
{
  v3 = [(IOSClass *)self getMetadata];
  if (v3)
  {
    v4 = [v3 typeName];

    return v4;
  }

  else
  {
    protocol = self->protocol_;

    return NSStringFromProtocol(protocol);
  }
}

- (Class)objcClass
{
  Name = protocol_getName(self->protocol_);

  return objc_lookUpClass(Name);
}

- (int)getModifiers
{
  v2 = [(IOSClass *)self getMetadata];
  if (!v2)
  {
    return 1545;
  }

  v3 = [v2 modifiers];
  return (JavaLangReflectModifier_interfaceModifiers() | 0x200) & v3;
}

- (id)findMethodWithTranslatedName:(id)a3 checkSupertypes:(BOOL)a4
{
  v4 = a4;
  outCount = 0;
  v7 = protocol_copyMethodDescriptionList(self->protocol_, 1, 1, &outCount);
  v8 = v7;
  if (!outCount)
  {
    goto LABEL_9;
  }

  v9 = 0;
  p_name = &v7->name;
  while (1)
  {
    v11 = *p_name;
    if ([a3 isEqualToString:NSStringFromSelector(*p_name)])
    {
      break;
    }

    ++v9;
    p_name += 2;
    if (v9 >= outCount)
    {
      goto LABEL_9;
    }
  }

  v12 = JreSignatureOrNull(p_name);
  if (v12)
  {
    v13 = +[JavaLangReflectMethod methodWithMethodSignature:selector:class:isStatic:metadata:](JavaLangReflectMethod, "methodWithMethodSignature:selector:class:isStatic:metadata:", v12, v11, self, 0, [-[IOSClass getMetadata](self "getMetadata")]);
    free(v8);
    if (v13)
    {
      return v13;
    }
  }

  else
  {
LABEL_9:
    free(v8);
  }

  Name = protocol_getName(self->protocol_);
  Class = objc_getClass(Name);
  if (Class && (ClassMethod = JreFindClassMethod(Class, [a3 UTF8String])) != 0)
  {
    v17 = ClassMethod;
    Description = method_getDescription(ClassMethod);
    v13 = JreSignatureOrNull(Description);
    if (v13)
    {
      v13 = +[JavaLangReflectMethod methodWithMethodSignature:selector:class:isStatic:metadata:](JavaLangReflectMethod, "methodWithMethodSignature:selector:class:isStatic:metadata:", v13, method_getName(v17), self, 1, [-[IOSClass getMetadata](self "getMetadata")]);
    }
  }

  else
  {
    v13 = 0;
  }

  if (!v13 && v4)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v19 = [(IOSProtocolClass *)self getInterfacesInternal];
    v20 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v28;
      while (2)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v28 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v27 + 1) + 8 * i);
          if (v24 != self)
          {
            v25 = [(IOSProtocolClass *)v24 findMethodWithTranslatedName:a3 checkSupertypes:1];
            if (v25)
            {
              return v25;
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v27 objects:v32 count:16];
        v13 = 0;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 0;
    }
  }

  return v13;
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
      v4 = protocol_copyProtocolList(self->protocol_, &outCount);
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
  v3.super_class = IOSProtocolClass;
  [(IOSProtocolClass *)&v3 dealloc];
}

@end