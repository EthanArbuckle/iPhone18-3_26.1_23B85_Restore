@interface WFTimeIntervalContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
- (WFTimeInterval)timeInterval;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFTimeIntervalContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Time intervals", @"Time intervals");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Time interval", @"Time interval");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [v2 orderedSetWithObjects:{v3, v4, v5, 0}];

  return v6;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    timeInterval = [(WFTimeIntervalContentItem *)self timeInterval];
    absoluteTimeString = [timeInterval absoluteTimeString];
  }

  else if (objc_opt_class() == class)
  {
    v10 = MEMORY[0x277CCABB0];
    timeInterval = [(WFTimeIntervalContentItem *)self timeInterval];
    [timeInterval timeInterval];
    absoluteTimeString = [v10 numberWithDouble:?];
  }

  else
  {
    if (objc_opt_class() != class)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v11 = MEMORY[0x277CBEAA8];
    timeInterval = [(WFTimeIntervalContentItem *)self timeInterval];
    [timeInterval timeInterval];
    absoluteTimeString = [v11 dateWithTimeIntervalSinceNow:?];
  }

  v12 = absoluteTimeString;
  v7 = [WFObjectRepresentation object:absoluteTimeString];

LABEL_9:

  return v7;
}

- (WFTimeInterval)timeInterval
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

@end