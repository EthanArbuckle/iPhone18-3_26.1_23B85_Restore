@interface IOSProtocolClass
- (BOOL)isInstance:(id)instance;
- (Class)objcClass;
- (IOSProtocolClass)initWithProtocol:(id)protocol;
- (id)findMethodWithTranslatedName:(id)name checkSupertypes:(BOOL)supertypes;
- (id)getInterfacesInternal;
- (id)getName;
- (id)getSimpleName;
- (int)getModifiers;
- (void)dealloc;
@end

@implementation IOSProtocolClass

- (IOSProtocolClass)initWithProtocol:(id)protocol
{
  v6.receiver = self;
  v6.super_class = IOSProtocolClass;
  v4 = [(IOSProtocolClass *)&v6 init];
  if (v4)
  {
    v4->protocol_ = protocol;
  }

  return v4;
}

- (BOOL)isInstance:(id)instance
{
  getClass = [instance getClass];

  return sub_10028CEF4(getClass, self);
}

- (id)getName
{
  getMetadata = [(IOSClass *)self getMetadata];
  if (getMetadata)
  {

    return [getMetadata qualifiedName];
  }

  else
  {
    protocol = self->protocol_;

    return NSStringFromProtocol(protocol);
  }
}

- (id)getSimpleName
{
  getMetadata = [(IOSClass *)self getMetadata];
  if (getMetadata)
  {
    typeName = [getMetadata typeName];

    return typeName;
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
  getMetadata = [(IOSClass *)self getMetadata];
  if (!getMetadata)
  {
    return 1545;
  }

  modifiers = [getMetadata modifiers];
  return (JavaLangReflectModifier_interfaceModifiers() | 0x200) & modifiers;
}

- (id)findMethodWithTranslatedName:(id)name checkSupertypes:(BOOL)supertypes
{
  supertypesCopy = supertypes;
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
    if ([name isEqualToString:NSStringFromSelector(*p_name)])
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
  if (Class && (ClassMethod = JreFindClassMethod(Class, [name UTF8String])) != 0)
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

  if (!v13 && supertypesCopy)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    getInterfacesInternal = [(IOSProtocolClass *)self getInterfacesInternal];
    v20 = [getInterfacesInternal countByEnumeratingWithState:&v27 objects:v32 count:16];
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
            objc_enumerationMutation(getInterfacesInternal);
          }

          v24 = *(*(&v27 + 1) + 8 * i);
          if (v24 != self)
          {
            v25 = [(IOSProtocolClass *)v24 findMethodWithTranslatedName:name checkSupertypes:1];
            if (v25)
            {
              return v25;
            }
          }
        }

        v21 = [getInterfacesInternal countByEnumeratingWithState:&v27 objects:v32 count:16];
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