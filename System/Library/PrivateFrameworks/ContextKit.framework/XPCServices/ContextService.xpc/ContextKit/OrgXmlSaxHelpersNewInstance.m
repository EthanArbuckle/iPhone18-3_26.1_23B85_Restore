@interface OrgXmlSaxHelpersNewInstance
+ (id)newInstanceWithNSString:(id)a3;
@end

@implementation OrgXmlSaxHelpersNewInstance

+ (id)newInstanceWithNSString:(id)a3
{
  v3 = IOSClass_forName_(a3);
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 newInstance];
}

@end