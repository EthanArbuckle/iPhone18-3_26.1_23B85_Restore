@interface OrgXmlSaxSAXParseException
- (void)dealloc;
- (void)init__WithNSString:(id)string withNSString:(id)sString withInt:(int)int withInt:(int)withInt;
@end

@implementation OrgXmlSaxSAXParseException

- (void)init__WithNSString:(id)string withNSString:(id)sString withInt:(int)int withInt:(int)withInt
{
  JreStrongAssign(&self->publicId_, string);
  JreStrongAssign(&self->systemId_, sString);
  self->lineNumber_ = int;
  self->columnNumber_ = withInt;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgXmlSaxSAXParseException;
  [(OrgXmlSaxSAXException *)&v3 dealloc];
}

@end