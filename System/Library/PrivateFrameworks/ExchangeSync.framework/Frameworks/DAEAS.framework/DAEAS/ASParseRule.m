@interface ASParseRule
- (ASParseRule)initWithMinimumNumber:(int)a3 maximumNumber:(int)a4 codePage:(int)a5 token:(int)a6 objectClass:(Class)a7 setterMethod:(SEL)a8 dataclass:(int64_t)a9 callbackDict:(id)a10 streamCallbackDict:(id)a11 subclassRuleSet:(id)a12;
- (SEL)setterMethod;
@end

@implementation ASParseRule

- (ASParseRule)initWithMinimumNumber:(int)a3 maximumNumber:(int)a4 codePage:(int)a5 token:(int)a6 objectClass:(Class)a7 setterMethod:(SEL)a8 dataclass:(int64_t)a9 callbackDict:(id)a10 streamCallbackDict:(id)a11 subclassRuleSet:(id)a12
{
  v25 = a10;
  v24 = a11;
  v18 = a12;
  v26.receiver = self;
  v26.super_class = ASParseRule;
  v19 = [(ASParseRule *)&v26 init];
  v20 = v19;
  if (v19)
  {
    v19->_minimumNumber = a3;
    v19->_maximumNumber = a4;
    v19->_codePage = a5;
    v19->_token = a6;
    v19->_objectClass = a7;
    if (a8)
    {
      v21 = a8;
    }

    else
    {
      v21 = 0;
    }

    v19->_setterMethod = v21;
    v19->_dataclass = a9;
    objc_storeStrong(&v19->_callbackDict, a10);
    objc_storeStrong(&v20->_streamCallbackDict, a11);
    objc_storeStrong(&v20->_subclassRuleSet, a12);
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