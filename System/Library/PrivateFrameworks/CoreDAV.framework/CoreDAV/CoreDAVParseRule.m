@interface CoreDAVParseRule
+ (id)ruleWithMinimumNumber:(int64_t)a3 maximumNumber:(int64_t)a4 nameSpace:(id)a5 elementName:(id)a6 objectClass:(Class)a7 setterMethod:(SEL)a8;
- (CoreDAVParseRule)initWithMinimumNumber:(int64_t)a3 maximumNumber:(int64_t)a4 nameSpace:(id)a5 elementName:(id)a6 objectClass:(Class)a7 setterMethod:(SEL)a8;
- (SEL)setterMethod;
@end

@implementation CoreDAVParseRule

+ (id)ruleWithMinimumNumber:(int64_t)a3 maximumNumber:(int64_t)a4 nameSpace:(id)a5 elementName:(id)a6 objectClass:(Class)a7 setterMethod:(SEL)a8
{
  v14 = a6;
  v15 = a5;
  v16 = [[a1 alloc] initWithMinimumNumber:a3 maximumNumber:a4 nameSpace:v15 elementName:v14 objectClass:a7 setterMethod:a8];

  return v16;
}

- (CoreDAVParseRule)initWithMinimumNumber:(int64_t)a3 maximumNumber:(int64_t)a4 nameSpace:(id)a5 elementName:(id)a6 objectClass:(Class)a7 setterMethod:(SEL)a8
{
  v15 = a5;
  v16 = a6;
  v21.receiver = self;
  v21.super_class = CoreDAVParseRule;
  v17 = [(CoreDAVParseRule *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_minimumNumber = a3;
    v17->_maximumNumber = a4;
    objc_storeStrong(&v17->_nameSpace, a5);
    objc_storeStrong(&v18->_elementName, a6);
    v18->_objectClass = a7;
    if (a8)
    {
      v19 = a8;
    }

    else
    {
      v19 = 0;
    }

    v18->_setterMethod = v19;
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