@interface WFObjectType
+ (WFObjectType)typeWithClass:(Class)a3;
+ (WFObjectType)typeWithClassName:(id)a3 frameworkName:(id)a4 location:(unint64_t)a5;
+ (id)typesWithClasses:(id)a3;
- (BOOL)conformsToClass:(Class)a3;
- (BOOL)conformsToType:(id)a3;
- (BOOL)isEqualToClass:(Class)a3;
- (BOOL)isEqualToType:(id)a3;
- (Class)objectClass;
- (WFObjectType)initWithClassName:(id)a3 inBundle:(id)a4;
- (WFObjectType)initWithCoder:(id)a3;
- (WFObjectType)initWithObjectClass:(Class)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFObjectType

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = WFObjectType;
  v3 = [(WFType *)&v7 hash];
  v4 = [(WFObjectType *)self className];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFObjectType *)self className];
  [v4 encodeObject:v5 forKey:@"className"];

  v7 = [(WFObjectType *)self bundle];
  v6 = [v7 bundlePath];
  [v4 encodeObject:v6 forKey:@"bundlePath"];
}

- (WFObjectType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"className"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePath"];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA8D8] bundleWithPath:v6];
    if (v7)
    {
      self = [(WFObjectType *)self initWithClassName:v5 inBundle:v7];

      v7 = self;
    }
  }

  else
  {
    v8 = NSClassFromString(v5);
    if (v8)
    {
      self = [(WFObjectType *)self initWithObjectClass:v8];
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (Class)objectClass
{
  objectClass = self->_objectClass;
  if (!objectClass)
  {
    v5 = [(WFObjectType *)self bundle];
    v16 = 0;
    v6 = [v5 loadAndReturnError:&v16];
    v7 = v16;
    if (v6)
    {
      v8 = [(WFObjectType *)self className];
      v9 = NSClassFromString(v8);
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
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"Unable to load bundle %@: %@", v5, v7}];
      __break(1u);
    }

    v13 = MEMORY[0x277CBEAD8];
    v14 = *MEMORY[0x277CBE658];
    v15 = [(WFObjectType *)self className];
    [v13 raise:v14 format:{@"Unable to load object class named %@ from bundle: %@", v15, v5}];

    __break(1u);
    return result;
  }

  v3 = objectClass;
LABEL_6:

  return v3;
}

- (BOOL)conformsToClass:(Class)a3
{
  v4 = [(WFObjectType *)self objectClass];

  return [(objc_class *)v4 isSubclassOfClass:a3];
}

- (BOOL)conformsToType:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 className];
    v6 = [(WFObjectType *)self objectClass];
    do
    {
      v7 = NSStringFromClass(v6);
      v8 = [v7 isEqualToString:v5];

      if (v8)
      {
        break;
      }

      v6 = [(objc_class *)v6 superclass];
    }

    while (v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqualToClass:(Class)a3
{
  v4 = NSStringFromClass(a3);
  v5 = [(WFObjectType *)self className];
  v6 = [v4 isEqualToString:v5];

  return v6;
}

- (BOOL)isEqualToType:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFObjectType *)v4 className];
      v6 = [(WFObjectType *)self className];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (WFObjectType)initWithObjectClass:(Class)a3
{
  if (!a3)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFObjectType.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"objectClass"}];
  }

  v13.receiver = self;
  v13.super_class = WFObjectType;
  v5 = [(WFObjectType *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_objectClass, a3);
    v7 = NSStringFromClass(a3);
    className = v6->_className;
    v6->_className = v7;

    v9 = v6;
  }

  return v6;
}

- (WFObjectType)initWithClassName:(id)a3 inBundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"WFObjectType.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"className"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x277CCA890] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"WFObjectType.m" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"bundle"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = WFObjectType;
  v10 = [(WFObjectType *)&v17 init];
  if (v10)
  {
    v11 = [v7 copy];
    className = v10->_className;
    v10->_className = v11;

    objc_storeStrong(&v10->_bundle, a4);
    v13 = v10;
  }

  return v10;
}

+ (WFObjectType)typeWithClassName:(id)a3 frameworkName:(id)a4 location:(unint64_t)a5
{
  v8 = a4;
  v9 = MEMORY[0x277CBEBC0];
  v10 = a3;
  v11 = [[v9 alloc] initFileURLWithPath:@"/" isDirectory:1];
  if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 2 && _CFMZEnabled())
  {
    v12 = [v11 URLByAppendingPathComponent:@"/System/iOSSupport/" isDirectory:1];

    v11 = v12;
  }

  v13 = [v11 URLByAppendingPathComponent:@"/System/Library/" isDirectory:1];

  if ((a5 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v14 = @"PrivateFrameworks";
  }

  else
  {
    if ((a5 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      goto LABEL_9;
    }

    v14 = @"Frameworks";
  }

  v15 = [v13 URLByAppendingPathComponent:v14 isDirectory:1];

  v13 = v15;
LABEL_9:
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.framework", v8];
  v17 = [v13 URLByAppendingPathComponent:v16 isDirectory:1];

  v18 = [MEMORY[0x277CCA8D8] bundleWithURL:v17];
  v19 = [[a1 alloc] initWithClassName:v10 inBundle:v18];

  return v19;
}

+ (id)typesWithClasses:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"WFObjectType.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"objectClasses"}];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__WFObjectType_typesWithClasses___block_invoke;
  v9[3] = &__block_descriptor_40_e25___WFObjectType_24__0_8Q16l;
  v9[4] = a1;
  v6 = [v5 if_map:v9];

  return v6;
}

id __33__WFObjectType_typesWithClasses___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [objc_alloc(*(a1 + 32)) initWithObjectClass:a2];

  return v2;
}

+ (WFObjectType)typeWithClass:(Class)a3
{
  v3 = [[a1 alloc] initWithObjectClass:a3];

  return v3;
}

@end