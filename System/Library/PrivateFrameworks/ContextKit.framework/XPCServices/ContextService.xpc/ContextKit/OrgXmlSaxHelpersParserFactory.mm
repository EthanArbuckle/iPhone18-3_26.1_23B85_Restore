@interface OrgXmlSaxHelpersParserFactory
+ (id)makeParserWithNSString:(id)string;
@end

@implementation OrgXmlSaxHelpersParserFactory

+ (id)makeParserWithNSString:(id)string
{
  v3 = OrgXmlSaxHelpersNewInstance_newInstanceWithNSString_(string);
  v4 = OrgXmlSaxParser_class_();
  if (v3 && ([v4 isInstance:v3] & 1) == 0)
  {
    JreThrowClassCastException();
  }

  return v3;
}

@end