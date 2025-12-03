@interface WFMeasurementContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
- (NSMeasurement)measurement;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (id)richListTitle;
@end

@implementation WFMeasurementContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Measurements", @"Measurements");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Measurement", @"Measurement");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)contentCategories
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"Scripting";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
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

- (id)richListTitle
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB18]);
  [v3 setUnitStyle:3];
  measurement = [(WFMeasurementContentItem *)self measurement];
  v5 = [v3 stringFromMeasurement:measurement];

  return v5;
}

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB18]);
    [v8 setUnitOptions:1];
    measurement = [(WFMeasurementContentItem *)self measurement];
    wf_preferredValueRounding = [measurement wf_preferredValueRounding];

    if (wf_preferredValueRounding)
    {
      measurement2 = [(WFMeasurementContentItem *)self measurement];
      wf_preferredValueRounding2 = [measurement2 wf_preferredValueRounding];
      integerValue = [wf_preferredValueRounding2 integerValue];
      numberFormatter = [v8 numberFormatter];
      [numberFormatter setMaximumFractionDigits:integerValue];
    }

    measurement3 = [(WFMeasurementContentItem *)self measurement];
    v16 = [v8 stringFromMeasurement:measurement3];
    v7 = [WFObjectRepresentation object:v16];
  }

  else
  {
    if (objc_opt_class() == class)
    {
      v17 = MEMORY[0x277CCABB0];
      measurement4 = [(WFMeasurementContentItem *)self measurement];
      [measurement4 doubleValue];
      v19 = [v17 numberWithDouble:?];
      v7 = [WFObjectRepresentation object:v19];

      goto LABEL_14;
    }

    if (objc_opt_class() != class)
    {
      v7 = 0;
      goto LABEL_14;
    }

    v20 = MEMORY[0x277CCA980];
    v21 = MEMORY[0x277CCABB0];
    measurement5 = [(WFMeasurementContentItem *)self measurement];
    [measurement5 doubleValue];
    v23 = [v21 numberWithDouble:?];
    v24 = v23;
    if (v23)
    {
      [v23 decimalValue];
    }

    else
    {
      v31[0] = 0;
      v31[1] = 0;
      v32 = 0;
    }

    v8 = [v20 decimalNumberWithDecimal:v31];

    v25 = [WFQuantityValue alloc];
    measurement6 = [(WFMeasurementContentItem *)self measurement];
    unit = [measurement6 unit];
    symbol = [unit symbol];
    v29 = [(WFQuantityValue *)v25 initWithMagnitude:v8 unitString:symbol];

    v7 = [WFObjectRepresentation object:v29];
  }

LABEL_14:

  return v7;
}

- (NSMeasurement)measurement
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

@end