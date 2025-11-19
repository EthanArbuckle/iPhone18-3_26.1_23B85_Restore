@interface OrgXmlSaxHelpersParserFactory
+ (id)makeParserWithNSString:(id)a3;
@end

@implementation OrgXmlSaxHelpersParserFactory

+ (id)makeParserWithNSString:(id)a3
{
  v3 = OrgXmlSaxHelpersNewInstance_newInstanceWithNSString_(a3);
  v4 = OrgXmlSaxParser_class_();
  if (v3 && ([v4 isInstance:v3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v3;
}

@end