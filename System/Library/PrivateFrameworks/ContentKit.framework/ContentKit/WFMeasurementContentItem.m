@interface WFMeasurementContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
- (NSMeasurement)measurement;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)richListTitle;
@end

@implementation WFMeasurementContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Measurements", @"Measurements");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Measurement", @"Measurement");
  v5 = [v3 localize:v4];

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
  v4 = [(WFMeasurementContentItem *)self measurement];
  v5 = [v3 stringFromMeasurement:v4];

  return v5;
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  if (objc_opt_class() == a3)
  {
    v8 = objc_alloc_init(MEMORY[0x277CCAB18]);
    [v8 setUnitOptions:1];
    v9 = [(WFMeasurementContentItem *)self measurement];
    v10 = [v9 wf_preferredValueRounding];

    if (v10)
    {
      v11 = [(WFMeasurementContentItem *)self measurement];
      v12 = [v11 wf_preferredValueRounding];
      v13 = [v12 integerValue];
      v14 = [v8 numberFormatter];
      [v14 setMaximumFractionDigits:v13];
    }

    v15 = [(WFMeasurementContentItem *)self measurement];
    v16 = [v8 stringFromMeasurement:v15];
    v7 = [WFObjectRepresentation object:v16];
  }

  else
  {
    if (objc_opt_class() == a3)
    {
      v17 = MEMORY[0x277CCABB0];
      v18 = [(WFMeasurementContentItem *)self measurement];
      [v18 doubleValue];
      v19 = [v17 numberWithDouble:?];
      v7 = [WFObjectRepresentation object:v19];

      goto LABEL_14;
    }

    if (objc_opt_class() != a3)
    {
      v7 = 0;
      goto LABEL_14;
    }

    v20 = MEMORY[0x277CCA980];
    v21 = MEMORY[0x277CCABB0];
    v22 = [(WFMeasurementContentItem *)self measurement];
    [v22 doubleValue];
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
    v26 = [(WFMeasurementContentItem *)self measurement];
    v27 = [v26 unit];
    v28 = [v27 symbol];
    v29 = [(WFQuantityValue *)v25 initWithMagnitude:v8 unitString:v28];

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