@interface OrgXmlSaxSAXParseException
- (void)dealloc;
- (void)init__WithNSString:(id)a3 withNSString:(id)a4 withInt:(int)a5 withInt:(int)a6;
@end

@implementation OrgXmlSaxSAXParseException

- (void)init__WithNSString:(id)a3 withNSString:(id)a4 withInt:(int)a5 withInt:(int)a6
{
  JreStrongAssign(&self->publicId_, a3);
  JreStrongAssign(&self->systemId_, a4);
  self->lineNumber_ = a5;
  self->columnNumber_ = a6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgXmlSaxSAXParseException;
  [(OrgXmlSaxSAXException *)&v3 dealloc];
}

@end