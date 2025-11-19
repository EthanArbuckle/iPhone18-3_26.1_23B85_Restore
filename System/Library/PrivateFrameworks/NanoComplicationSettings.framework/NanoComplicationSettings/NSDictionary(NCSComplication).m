@interface NSDictionary(NCSComplication)
+ (id)dictionaryWithComplication:()NCSComplication;
@end

@implementation NSDictionary(NCSComplication)

+ (id)dictionaryWithComplication:()NCSComplication
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 sockPuppetIdentifier];

  if (v5)
  {
    v6 = [v3 sockPuppetIdentifier];
    [v4 setObject:v6 forKeyedSubscript:@"sockPuppetIdentifier"];
  }

  v7 = [v3 appBundleIdentifier];

  if (v7)
  {
    v8 = [v3 appBundleIdentifier];
    [v4 setObject:v8 forKeyedSubscript:@"appBundleID"];
  }

  v9 = [v3 complicationBundleIdentifier];

  if (v9)
  {
    v10 = [v3 complicationBundleIdentifier];
    [v4 setObject:v10 forKeyedSubscript:@"complicationBundleID"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v3, "isActive")}];
  [v4 setObject:v11 forKeyedSubscript:@"active"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v3, "installState")}];
  [v4 setObject:v12 forKeyedSubscript:@"installState"];

  return v4;
}

@end