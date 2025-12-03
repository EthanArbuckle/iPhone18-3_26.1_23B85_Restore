@interface LSApplicationExtensionRecord(IntentsFoundation)
- (id)if_extensionAttributesDictionary;
@end

@implementation LSApplicationExtensionRecord(IntentsFoundation)

- (id)if_extensionAttributesDictionary
{
  infoDictionary = [self infoDictionary];
  v2 = [infoDictionary objectForKey:@"NSExtension" ofClass:objc_opt_class()];
  v3 = [v2 objectForKeyedSubscript:@"NSExtensionAttributes"];

  return v3;
}

@end