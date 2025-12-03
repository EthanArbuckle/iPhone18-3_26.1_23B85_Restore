@interface WFObjectType
+ (WFObjectType)typeWithClass:(Class)class;
+ (WFObjectType)typeWithClassName:(id)name frameworkName:(id)frameworkName location:(unint64_t)location;
+ (id)typesWithClasses:(id)classes;
- (BOOL)conformsToClass:(Class)class;
- (BOOL)conformsToType:(id)type;
- (BOOL)isEqualToClass:(Class)class;
- (BOOL)isEqualToType:(id)type;
- (Class)objectClass;
- (WFObjectType)initWithClassName:(id)name inBundle:(id)bundle;
- (WFObjectType)initWithCoder:(id)coder;
- (WFObjectType)initWithObjectClass:(Class)class;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFObjectType

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = WFObjectType;
  v3 = [(WFType *)&v7 hash];
  className = [(WFObjectType *)self className];
  v5 = [className hash];

  return v5 ^ v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  className = [(WFObjectType *)self className];
  [coderCopy encodeObject:className forKey:@"className"];

  bundle = [(WFObjectType *)self bundle];
  bundlePath = [bundle bundlePath];
  [coderCopy encodeObject:bundlePath forKey:@"bundlePath"];
}

- (WFObjectType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"className"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];

  if (v6)
  {
    selfCopy2 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
    if (selfCopy2)
    {
      self = [(WFObjectType *)self initWithClassName:v5 inBundle:selfCopy2];

      selfCopy2 = self;
    }
  }

  else
  {
    v8 = NSClassFromString(v5);
    if (v8)
    {
      self = [(WFObjectType *)self initWithObjectClass:v8];
      selfCopy2 = self;
    }

    else
    {
      selfCopy2 = 0;
    }
  }

  return selfCopy2;
}

- (Class)objectClass
{
  objectClass = self->_objectClass;
  if (!objectClass)
  {
    bundle = [(WFObjectType *)self bundle];
    v16 = 0;
    v6 = [bundle loadAndReturnError:&v16];
    v7 = v16;
    if (v6)
    {
      className = [(WFObjectType *)self className];
      v9 = NSClassFromString(className);
      v10 = self->_objectClass;
      self->_objectClass = v9;

      v11 = self->_objectClass;
      if (v11)
      {
        v3 = v11;

        goto LABEL_6;
      }
    }

    else
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unable to load bundle %@: %@", bundle, v7}];
      __break(1u);
    }

    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE658];
    className2 = [(WFObjectType *)self className];
    [v13 raise:v14 format:{@"Unable to load object class named %@ from bundle: %@", className2, bundle}];

    __break(1u);
    return result;
  }

  v3 = objectClass;
LABEL_6:

  return v3;
}

- (BOOL)conformsToClass:(Class)class
{
  objectClass = [(WFObjectType *)self objectClass];

  return [(objc_class *)objectClass isSubclassOfClass:class];
}

- (BOOL)conformsToType:(id)type
{
  typeCopy = type;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    className = [typeCopy className];
    objectClass = [(WFObjectType *)self objectClass];
    do
    {
      v7 = NSStringFromClass(objectClass);
      v8 = [v7 isEqualToString:className];

      if (v8)
      {
        break;
      }

      objectClass = [(objc_class *)objectClass superclass];
    }

    while (objectClass);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToClass:(Class)class
{
  v4 = NSStringFromClass(class);
  className = [(WFObjectType *)self className];
  v6 = [v4 isEqualToString:className];

  return v6;
}

- (BOOL)isEqualToType:(id)type
{
  typeCopy = type;
  if (typeCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      className = [(WFObjectType *)typeCopy className];
      className2 = [(WFObjectType *)self className];
      v7 = [className isEqualToString:className2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFObjectType)initWithObjectClass:(Class)class
{
  if (!class)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFObjectType.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"objectClass"}];
  }

  v13.receiver = self;
  v13.super_class = WFObjectType;
  v5 = [(WFObjectType *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_objectClass, class);
    v7 = NSStringFromClass(class);
    className = v6->_className;
    v6->_className = v7;

    v9 = v6;
  }

  return v6;
}

- (WFObjectType)initWithClassName:(id)name inBundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v9 = bundleCopy;
  if (nameCopy)
  {
    if (bundleCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFObjectType.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"className"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"WFObjectType.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"bundle"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFObjectType;
  v10 = [(WFObjectType *)&v17 init];
  if (v10)
  {
    v11 = [nameCopy copy];
    className = v10->_className;
    v10->_className = v11;

    objc_storeStrong(&v10->_bundle, bundle);
    v13 = v10;
  }

  return v10;
}

+ (WFObjectType)typeWithClassName:(id)name frameworkName:(id)frameworkName location:(unint64_t)location
{
  frameworkNameCopy = frameworkName;
  v9 = MEMORY[0x277CBEBC0];
  nameCopy = name;
  v11 = [[v9 alloc] initFileURLWithPath:@"/" isDirectory:1];
  if ((location & 0xFFFFFFFFFFFFFFFELL) == 2 && _CFMZEnabled())
  {
    v12 = [v11 URLByAppendingPathComponent:@"/System/iOSSupport/" isDirectory:1];

    v11 = v12;
  }

  v13 = [v11 URLByAppendingPathComponent:@"/System/Library/" isDirectory:1];

  if ((location & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v14 = @"PrivateFrameworks";
  }

  else
  {
    if ((location & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      goto LABEL_9;
    }

    v14 = @"Frameworks";
  }

  v15 = [v13 URLByAppendingPathComponent:v14 isDirectory:1];

  v13 = v15;
LABEL_9:
  frameworkNameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.framework", frameworkNameCopy];
  v17 = [v13 URLByAppendingPathComponent:frameworkNameCopy isDirectory:1];

  v18 = [MEMORY[0x277CCA8D8] bundleWithURL:v17];
  v19 = [[self alloc] initWithClassName:nameCopy inBundle:v18];

  return v19;
}

+ (id)typesWithClasses:(id)classes
{
  classesCopy = classes;
  if (!classesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFObjectType.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"objectClasses"}];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__WFObjectType_typesWithClasses___block_invoke;
  v9[3] = &__block_descriptor_40_e25___WFObjectType_24__0_8Q16l;
  v9[4] = self;
  v6 = [classesCopy if_map:v9];

  return v6;
}

id __33__WFObjectType_typesWithClasses___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(*(a1 + 32)) initWithObjectClass:a2];

  return v2;
}

+ (WFObjectType)typeWithClass:(Class)class
{
  v3 = [[self alloc] initWithObjectClass:class];

  return v3;
}

@end