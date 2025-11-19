@interface WFNumberContentItem
+ (id)coercions;
+ (id)contentCategories;
+ (id)itemWithNumber:(id)a3 maximumFractionDigitsForDisplay:(id)a4;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)ownedTypes;
- (BOOL)getListSubtitle:(id)a3;
- (NSNumber)number;
- (WFNumberContentItem)initWithCoder:(id)a3;
- (id)roundedName;
- (void)copyStateToItem:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFNumberContentItem

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = WFNumberContentItem;
  v4 = a3;
  [(WFContentItem *)&v7 encodeWithCoder:v4];
  v5 = [@"WFNumberContentItem" stringByAppendingString:{@"maximumFractionDigitsForDisplay", v7.receiver, v7.super_class}];
  v6 = [(WFNumberContentItem *)self maximumFractionDigitsForDisplay];
  [v4 encodeObject:v6 forKey:v5];
}

- (WFNumberContentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = WFNumberContentItem;
  v5 = [(WFContentItem *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [@"WFNumberContentItem" stringByAppendingString:@"maximumFractionDigitsForDisplay"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:v6];
    maximumFractionDigitsForDisplay = v5->_maximumFractionDigitsForDisplay;
    v5->_maximumFractionDigitsForDisplay = v7;

    v9 = v5;
  }

  return v5;
}

- (void)copyStateToItem:(id)a3
{
  v7 = a3;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = [(WFNumberContentItem *)self maximumFractionDigitsForDisplay];
  [v5 setMaximumFractionDigitsForDisplay:v6];
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(WFContentItem *)self name];
  v6 = [(WFNumberContentItem *)self roundedName];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WFNumberContentItem;
    v9 = [(WFContentItem *)&v12 getListSubtitle:0];
    v8 = v9;
    if (v4 && v9)
    {
      v10 = [(WFNumberContentItem *)self roundedName];
      v4[2](v4, v10);

      v8 = 1;
    }
  }

  return v8;
}

- (id)roundedName
{
  v3 = [(WFNumberContentItem *)self number];
  v4 = [(WFNumberContentItem *)self maximumFractionDigitsForDisplay];
  v5 = [v3 wfNameWithMaximumFractionDigits:v4];

  return v5;
}

- (NSNumber)number
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Numbers", @"Numbers");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Number", @"Number");
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

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)itemWithNumber:(id)a3 maximumFractionDigitsForDisplay:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:a1 file:@"WFNumberContentItem.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"number"}];
  }

  v9 = [v7 wfNameWithMaximumFractionDigits:v8];
  v10 = [a1 itemWithObject:v7 named:v9];
  [v10 setMaximumFractionDigitsForDisplay:v8];

  return v10;
}

+ (id)coercions
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = [WFCoercionHandler block:&__block_literal_global_23246];
  v4 = [WFCoercion coercionToClass:v2 handler:v3];
  v10[0] = v4;
  v5 = objc_opt_class();
  v6 = [WFCoercionHandler block:&__block_literal_global_56_23248];
  v7 = [WFCoercion coercionToClass:v5 handler:v6];
  v10[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

  return v8;
}

id __32__WFNumberContentItem_coercions__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 roundedName];
  v4 = [v2 name];

  v5 = [WFObjectRepresentation object:v3 named:v4];

  return v5;
}

id __32__WFNumberContentItem_coercions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA980];
  v3 = a2;
  v4 = [v3 number];
  v5 = v4;
  if (v4)
  {
    [v4 decimalValue];
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
  }

  v6 = [v2 decimalNumberWithDecimal:v10];
  v7 = [v3 name];

  v8 = [WFObjectRepresentation object:v6 named:v7];

  return v8;
}

@end