@interface CoreDAVParseRule
+ (id)ruleWithMinimumNumber:(int64_t)number maximumNumber:(int64_t)maximumNumber nameSpace:(id)space elementName:(id)name objectClass:(Class)class setterMethod:(SEL)method;
- (CoreDAVParseRule)initWithMinimumNumber:(int64_t)number maximumNumber:(int64_t)maximumNumber nameSpace:(id)space elementName:(id)name objectClass:(Class)class setterMethod:(SEL)method;
- (SEL)setterMethod;
@end

@implementation CoreDAVParseRule

+ (id)ruleWithMinimumNumber:(int64_t)number maximumNumber:(int64_t)maximumNumber nameSpace:(id)space elementName:(id)name objectClass:(Class)class setterMethod:(SEL)method
{
  nameCopy = name;
  spaceCopy = space;
  v16 = [[self alloc] initWithMinimumNumber:number maximumNumber:maximumNumber nameSpace:spaceCopy elementName:nameCopy objectClass:class setterMethod:method];

  return v16;
}

- (CoreDAVParseRule)initWithMinimumNumber:(int64_t)number maximumNumber:(int64_t)maximumNumber nameSpace:(id)space elementName:(id)name objectClass:(Class)class setterMethod:(SEL)method
{
  spaceCopy = space;
  nameCopy = name;
  v21.receiver = self;
  v21.super_class = CoreDAVParseRule;
  v17 = [(CoreDAVParseRule *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_minimumNumber = number;
    v17->_maximumNumber = maximumNumber;
    objc_storeStrong(&v17->_nameSpace, space);
    objc_storeStrong(&v18->_elementName, name);
    v18->_objectClass = class;
    if (method)
    {
      methodCopy = method;
    }

    else
    {
      methodCopy = 0;
    }

    v18->_setterMethod = methodCopy;
  }

  return v18;
}

- (SEL)setterMethod
{
  if (self->_setterMethod)
  {
    return self->_setterMethod;
  }

  else
  {
    return 0;
  }
}

@end