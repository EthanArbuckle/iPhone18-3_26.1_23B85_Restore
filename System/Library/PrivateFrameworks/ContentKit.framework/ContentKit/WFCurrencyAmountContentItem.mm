@interface WFCurrencyAmountContentItem
+ (id)coercions;
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListSubtitle:(id)subtitle;
- (INCurrencyAmount)currencyAmount;
@end

@implementation WFCurrencyAmountContentItem

id __54__WFCurrencyAmountContentItem_quantityCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 currencyAmount];
  v3 = [WFQuantityValue alloc];
  v4 = [v2 amount];
  v5 = [v2 currencyCode];
  v6 = [(WFQuantityValue *)v3 initWithMagnitude:v4 unitString:v5];

  v7 = [WFObjectRepresentation object:v6];

  return v7;
}

id __59__WFCurrencyAmountContentItem_decimalNumberCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 currencyAmount];
  v3 = [v2 amount];
  v4 = [WFObjectRepresentation object:v3];

  return v4;
}

id __52__WFCurrencyAmountContentItem_numberCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 currencyAmount];
  v4 = [v3 amount];
  [v4 doubleValue];
  v5 = [v2 numberWithDouble:?];
  v6 = [WFObjectRepresentation object:v5];

  return v6;
}

id __52__WFCurrencyAmountContentItem_stringCoercionHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 currencyAmount];
  v3 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v3 setNumberStyle:2];
  v4 = [v2 currencyCode];
  [v3 setCurrencyCode:v4];

  v5 = [v2 amount];
  v6 = [v3 stringFromNumber:v5];
  v7 = [WFObjectRepresentation object:v6];

  return v7;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Currency Amounts", @"Currency Amounts");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Currency Amount", @"Currency Amount");
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

+ (id)coercions
{
  v17[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  stringCoercionHandler = [self stringCoercionHandler];
  v5 = [WFCoercion coercionToClass:v3 handler:stringCoercionHandler];
  v17[0] = v5;
  v6 = objc_opt_class();
  numberCoercionHandler = [self numberCoercionHandler];
  v8 = [WFCoercion coercionToClass:v6 handler:numberCoercionHandler];
  v17[1] = v8;
  v9 = objc_opt_class();
  decimalNumberCoercionHandler = [self decimalNumberCoercionHandler];
  v11 = [WFCoercion coercionToClass:v9 handler:decimalNumberCoercionHandler];
  v17[2] = v11;
  v12 = objc_opt_class();
  quantityCoercionHandler = [self quantityCoercionHandler];
  v14 = [WFCoercion coercionToClass:v12 handler:quantityCoercionHandler];
  v17[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];

  return v15;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)propertyBuilders
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyNameMarker(@"Currency Code");
  v3 = [WFContentPropertyBuilder keyPath:@"currencyAmount.currencyCode" name:v2 class:objc_opt_class()];
  v8[0] = v3;
  v4 = WFLocalizedContentPropertyNameMarker(@"Currency Amount");
  v5 = [WFContentPropertyBuilder keyPath:@"currencyAmount.amount" name:v4 class:objc_opt_class()];
  v8[1] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  return v6;
}

- (BOOL)getListSubtitle:(id)subtitle
{
  if (subtitle)
  {
    subtitleCopy = subtitle;
    currencyAmount = [(WFCurrencyAmountContentItem *)self currencyAmount];
    v6 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v6 setNumberStyle:2];
    currencyCode = [currencyAmount currencyCode];
    [v6 setCurrencyCode:currencyCode];

    amount = [currencyAmount amount];
    v9 = [v6 stringFromNumber:amount];
    subtitleCopy[2](subtitleCopy, v9);
  }

  return 1;
}

- (INCurrencyAmount)currencyAmount
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

@end