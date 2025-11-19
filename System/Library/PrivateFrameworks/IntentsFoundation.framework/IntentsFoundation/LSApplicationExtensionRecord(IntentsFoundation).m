@interface LSApplicationExtensionRecord(IntentsFoundation)
- (id)if_extensionAttributesDictionary;
@end

@implementation LSApplicationExtensionRecord(IntentsFoundation)

- (id)if_extensionAttributesDictionary
{
  v1 = [a1 infoDictionary];
  v2 = [v1 objectForKey:@"NSExtension" ofClass:objc_opt_class()];
  v3 = [v2 objectForKeyedSubscript:@"NSExtensionAttributes"];

  return v3;
}

@end