@interface CLKCComplicationBundleDataSource
+ (NSString)bundleIdentifier;
- (CLKComplicationDescriptor)complicationDescriptor;
- (id)complicationApplicationIdentifier;
- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler;
@end

@implementation CLKCComplicationBundleDataSource

+ (NSString)bundleIdentifier
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:self];
  bundleIdentifier = [v2 bundleIdentifier];

  return bundleIdentifier;
}

- (CLKComplicationDescriptor)complicationDescriptor
{
  complication = [(CLKCComplicationDataSource *)self complication];
  if (objc_opt_respondsToSelector())
  {
    complicationDescriptor = [complication complicationDescriptor];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (complicationDescriptor)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  complicationDescriptor = [MEMORY[0x277CBB718] legacyComplicationDescriptor];
LABEL_7:

  return complicationDescriptor;
}

- (id)complicationApplicationIdentifier
{
  v2 = objc_opt_class();

  return [v2 appIdentifier];
}

- (void)getLaunchURLForTimelineEntryDate:(id)date timeTravelDate:(id)travelDate withHandler:(id)handler
{
  handlerCopy = handler;
  appIdentifier = [objc_opt_class() appIdentifier];
  if (![appIdentifier length])
  {
    complicationApplicationIdentifier = [(CLKCComplicationBundleDataSource *)self complicationApplicationIdentifier];

    appIdentifier = complicationApplicationIdentifier;
  }

  if ([appIdentifier length])
  {
    v8 = MEMORY[0x277CBEBC0];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@://", appIdentifier];
    v10 = [v8 URLWithString:v9];
  }

  else
  {
    v10 = 0;
  }

  handlerCopy[2](handlerCopy, v10);
}

@end