@interface CLKCComplicationBundleDataSource
+ (NSString)bundleIdentifier;
- (CLKComplicationDescriptor)complicationDescriptor;
- (id)complicationApplicationIdentifier;
- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5;
@end

@implementation CLKCComplicationBundleDataSource

+ (NSString)bundleIdentifier
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v3 = [v2 bundleIdentifier];

  return v3;
}

- (CLKComplicationDescriptor)complicationDescriptor
{
  v2 = [(CLKCComplicationDataSource *)self complication];
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 complicationDescriptor];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (v3)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v3 = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
LABEL_7:

  return v3;
}

- (id)complicationApplicationIdentifier
{
  v2 = objc_opt_class();

  return [v2 appIdentifier];
}

- (void)getLaunchURLForTimelineEntryDate:(id)a3 timeTravelDate:(id)a4 withHandler:(id)a5
{
  v11 = a5;
  v6 = [objc_opt_class() appIdentifier];
  if (![v6 length])
  {
    v7 = [(CLKCComplicationBundleDataSource *)self complicationApplicationIdentifier];

    v6 = v7;
  }

  if ([v6 length])
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://", v6];
    v10 = [v8 URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  v11[2](v11, v10);
}

@end