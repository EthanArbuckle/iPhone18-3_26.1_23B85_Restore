@interface IOSArrayClass
- (BOOL)isAssignableFrom:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInstance:(id)a3;
- (IOSArrayClass)initWithComponentType:(id)a3;
- (id)getInterfacesInternal;
- (id)getSimpleName;
- (id)newInstance;
- (id)objcName;
- (void)dealloc;
@end

@implementation IOSArrayClass

- (IOSArrayClass)initWithComponentType:(id)a3
{
  v6.receiver = self;
  v6.super_class = IOSArrayClass;
  v4 = [(IOSArrayClass *)&v6 init];
  if (v4)
  {
    v4->componentType_ = a3;
  }

  return v4;
}

- (BOOL)isInstance:(id)a3
{
  v4 = [a3 getClass];
  v5 = [v4 isArray];
  if (v5)
  {
    componentType = self->componentType_;
    v7 = [v4 getComponentType];

    LOBYTE(v5) = [(IOSClass *)componentType isAssignableFrom:v7];
  }

  return v5;
}

- (BOOL)isAssignableFrom:(id)a3
{
  v5 = [a3 isArray];
  if (v5)
  {
    componentType = self->componentType_;
    v7 = [a3 getComponentType];

    LOBYTE(v5) = [(IOSClass *)componentType isAssignableFrom:v7];
  }

  return v5;
}

- (id)getSimpleName
{
  v2 = [-[IOSArrayClass getComponentType](self "getComponentType")];

  return [v2 stringByAppendingString:@"[]"];
}

- (id)objcName
{
  v2 = [-[IOSArrayClass getComponentType](self "getComponentType")];

  return [v2 stringByAppendingString:@"Array"];
}

- (id)getInterfacesInternal
{
  if (qword_100554A28 != -1)
  {
    sub_10015D1A4();
  }

  return qword_100554A30;
}

- (id)newInstance
{
  if (!self->componentType_)
  {
    objc_exception_throw(objc_alloc_init(JavaLangInstantiationException));
  }

  return [IOSObjectArray arrayWithLength:0 type:?];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  componentType = self->componentType_;
  v6 = [a3 getComponentType];

  return [(IOSClass *)componentType isEqual:v6];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOSArrayClass;
  [(IOSArrayClass *)&v3 dealloc];
}

@end