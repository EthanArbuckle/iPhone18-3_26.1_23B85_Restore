@interface OrgXmlSaxSAXException
- (OrgXmlSaxSAXException)init;
- (OrgXmlSaxSAXException)initWithJavaLangException:(id)exception;
- (OrgXmlSaxSAXException)initWithNSString:(id)string;
- (OrgXmlSaxSAXException)initWithNSString:(id)string withJavaLangException:(id)exception;
- (id)description;
- (id)getMessage;
- (void)dealloc;
@end

@implementation OrgXmlSaxSAXException

- (OrgXmlSaxSAXException)init
{
  JavaLangException_init(self, a2);
  JreStrongAssign(&self->exception_, 0);
  return self;
}

- (OrgXmlSaxSAXException)initWithNSString:(id)string
{
  JavaLangException_initWithNSString_(self, string);
  JreStrongAssign(&self->exception_, 0);
  return self;
}

- (OrgXmlSaxSAXException)initWithJavaLangException:(id)exception
{
  JavaLangException_init(self, a2);
  JreStrongAssign(&self->exception_, exception);
  return self;
}

- (OrgXmlSaxSAXException)initWithNSString:(id)string withJavaLangException:(id)exception
{
  JavaLangException_initWithNSString_(self, string);
  JreStrongAssign(&self->exception_, exception);
  return self;
}

- (id)getMessage
{
  v4.receiver = self;
  v4.super_class = OrgXmlSaxSAXException;
  result = [(JavaLangThrowable *)&v4 getMessage];
  if (!result)
  {
    result = self->exception_;
    if (result)
    {
      return [result getMessage];
    }
  }

  return result;
}

- (id)description
{
  if (self->exception_)
  {
    exception = self->exception_;

    return [(JavaLangThrowable *)exception description];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = OrgXmlSaxSAXException;
    return [(JavaLangThrowable *)&v6 description];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgXmlSaxSAXException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end