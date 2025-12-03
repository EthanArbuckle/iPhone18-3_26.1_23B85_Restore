@interface TCXmlUtilities
+ (id)bundlePathForXmlResource:(id)resource;
+ (void)checkStreamNamespaceAndName:(_xmlTextReader *)name name:(const char *)a4 ns:(id)ns;
@end

@implementation TCXmlUtilities

+ (id)bundlePathForXmlResource:(id)resource
{
  v4 = TCBundle();
  result = [v4 pathForResource:resource ofType:@"xml.gz"];
  if (!result)
  {

    return [v4 pathForResource:resource ofType:@"xml"];
  }

  return result;
}

+ (void)checkStreamNamespaceAndName:(_xmlTextReader *)name name:(const char *)a4 ns:(id)ns
{
  [self checkStreamNamespace:name ns:ns];

  [self checkStreamName:name name:a4];
}

@end