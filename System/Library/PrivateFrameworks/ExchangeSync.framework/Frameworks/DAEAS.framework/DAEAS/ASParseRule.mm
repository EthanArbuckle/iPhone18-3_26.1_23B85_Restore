@interface ASParseRule
- (ASParseRule)initWithMinimumNumber:(int)number maximumNumber:(int)maximumNumber codePage:(int)page token:(int)token objectClass:(Class)class setterMethod:(SEL)method dataclass:(int64_t)dataclass callbackDict:(id)self0 streamCallbackDict:(id)self1 subclassRuleSet:(id)self2;
- (SEL)setterMethod;
@end

@implementation ASParseRule

- (ASParseRule)initWithMinimumNumber:(int)number maximumNumber:(int)maximumNumber codePage:(int)page token:(int)token objectClass:(Class)class setterMethod:(SEL)method dataclass:(int64_t)dataclass callbackDict:(id)self0 streamCallbackDict:(id)self1 subclassRuleSet:(id)self2
{
  dictCopy = dict;
  callbackDictCopy = callbackDict;
  setCopy = set;
  v26.receiver = self;
  v26.super_class = ASParseRule;
  v19 = [(ASParseRule *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_minimumNumber = number;
    v19->_maximumNumber = maximumNumber;
    v19->_codePage = page;
    v19->_token = token;
    v19->_objectClass = class;
    if (method)
    {
      methodCopy = method;
    }

    else
    {
      methodCopy = 0;
    }

    v19->_setterMethod = methodCopy;
    v19->_dataclass = dataclass;
    objc_storeStrong(&v19->_callbackDict, dict);
    objc_storeStrong(&v20->_streamCallbackDict, callbackDict);
    objc_storeStrong(&v20->_subclassRuleSet, set);
  }

  return v20;
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