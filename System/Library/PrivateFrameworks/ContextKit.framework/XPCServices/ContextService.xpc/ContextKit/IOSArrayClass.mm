@interface IOSArrayClass
- (BOOL)isAssignableFrom:(id)from;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInstance:(id)instance;
- (IOSArrayClass)initWithComponentType:(id)type;
- (id)getInterfacesInternal;
- (id)getSimpleName;
- (id)newInstance;
- (id)objcName;
- (void)dealloc;
@end

@implementation IOSArrayClass

- (IOSArrayClass)initWithComponentType:(id)type
{
  v6.receiver = self;
  v6.super_class = IOSArrayClass;
  v4 = [(IOSArrayClass *)&v6 init];
  if (v4)
  {
    v4->componentType_ = type;
  }

  return v4;
}

- (BOOL)isInstance:(id)instance
{
  getClass = [instance getClass];
  isArray = [getClass isArray];
  if (isArray)
  {
    componentType = self->componentType_;
    getComponentType = [getClass getComponentType];

    LOBYTE(isArray) = [(IOSClass *)componentType isAssignableFrom:getComponentType];
  }

  return isArray;
}

- (BOOL)isAssignableFrom:(id)from
{
  isArray = [from isArray];
  if (isArray)
  {
    componentType = self->componentType_;
    getComponentType = [from getComponentType];

    LOBYTE(isArray) = [(IOSClass *)componentType isAssignableFrom:getComponentType];
  }

  return isArray;
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

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  componentType = self->componentType_;
  getComponentType = [equal getComponentType];

  return [(IOSClass *)componentType isEqual:getComponentType];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IOSArrayClass;
  [(IOSArrayClass *)&v3 dealloc];
}

@end