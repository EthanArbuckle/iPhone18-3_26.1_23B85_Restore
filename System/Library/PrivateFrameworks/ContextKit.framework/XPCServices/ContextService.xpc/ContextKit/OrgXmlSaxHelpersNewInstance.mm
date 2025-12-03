@interface OrgXmlSaxHelpersNewInstance
+ (id)newInstanceWithNSString:(id)string;
@end

@implementation OrgXmlSaxHelpersNewInstance

+ (id)newInstanceWithNSString:(id)string
{
  v3 = IOSClass_forName_(string);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 newInstance];
}

@end