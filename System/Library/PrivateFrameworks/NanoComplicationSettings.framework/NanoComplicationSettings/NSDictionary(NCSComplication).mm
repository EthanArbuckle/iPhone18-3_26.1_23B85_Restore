@interface NSDictionary(NCSComplication)
+ (id)dictionaryWithComplication:()NCSComplication;
@end

@implementation NSDictionary(NCSComplication)

+ (id)dictionaryWithComplication:()NCSComplication
{
  v3 = a3;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sockPuppetIdentifier = [v3 sockPuppetIdentifier];

  if (sockPuppetIdentifier)
  {
    sockPuppetIdentifier2 = [v3 sockPuppetIdentifier];
    [dictionary setObject:sockPuppetIdentifier2 forKeyedSubscript:@"sockPuppetIdentifier"];
  }

  appBundleIdentifier = [v3 appBundleIdentifier];

  if (appBundleIdentifier)
  {
    appBundleIdentifier2 = [v3 appBundleIdentifier];
    [dictionary setObject:appBundleIdentifier2 forKeyedSubscript:@"appBundleID"];
  }

  complicationBundleIdentifier = [v3 complicationBundleIdentifier];

  if (complicationBundleIdentifier)
  {
    complicationBundleIdentifier2 = [v3 complicationBundleIdentifier];
    [dictionary setObject:complicationBundleIdentifier2 forKeyedSubscript:@"complicationBundleID"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isActive")}];
  [dictionary setObject:v11 forKeyedSubscript:@"active"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "installState")}];
  [dictionary setObject:v12 forKeyedSubscript:@"installState"];

  return dictionary;
}

@end