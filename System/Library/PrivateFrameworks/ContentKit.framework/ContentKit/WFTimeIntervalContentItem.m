@interface WFTimeIntervalContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
- (WFTimeInterval)timeInterval;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFTimeIntervalContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Time intervals", @"Time intervals");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Time interval", @"Time interval");
  v5 = [v3 localize:v4];

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

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  if (objc_opt_class() == a3)
  {
    v8 = [(WFTimeIntervalContentItem *)self timeInterval];
    v9 = [v8 absoluteTimeString];
  }

  else if (objc_opt_class() == a3)
  {
    v10 = MEMORY[0x277CCABB0];
    v8 = [(WFTimeIntervalContentItem *)self timeInterval];
    [v8 timeInterval];
    v9 = [v10 numberWithDouble:?];
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v11 = MEMORY[0x277CBEAA8];
    v8 = [(WFTimeIntervalContentItem *)self timeInterval];
    [v8 timeInterval];
    v9 = [v11 dateWithTimeIntervalSinceNow:?];
  }

  v12 = v9;
  v7 = [WFObjectRepresentation object:v9];

LABEL_9:

  return v7;
}

- (WFTimeInterval)timeInterval
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

@end