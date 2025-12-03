@interface WFWalletTransactionContentItem
+ (id)coercions;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (WFWalletTransaction)transaction;
- (id)defaultSourceForRepresentation:(id)representation;
@end

@implementation WFWalletTransactionContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Transactions", @"Transactions");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Transaction", @"Transaction");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObjects:{v3, 0}];

  return v4;
}

+ (id)coercions
{
  v13[3] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = [WFCoercionHandler keyPath:@"transaction.transactionDescription"];
  v4 = [WFCoercion coercionToClass:v2 handler:v3];
  v5 = objc_opt_class();
  v6 = [WFCoercionHandler keyPath:@"transaction.currencyAmount", v4];
  v7 = [WFCoercion coercionToClass:v5 handler:v6];
  v13[1] = v7;
  v8 = objc_opt_class();
  v9 = [WFCoercionHandler keyPath:@"transaction.paymentMethod"];
  v10 = [WFCoercion coercionToClass:v8 handler:v9];
  v13[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:3];

  return v11;
}

+ (id)propertyBuilders
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyNameMarker(@"Card or Pass");
  v3 = [WFContentPropertyBuilder keyPath:@"transaction.paymentMethod" name:v2 class:objc_opt_class()];
  v4 = WFLocalizedContentPropertyNameMarker(@"Merchant");
  v5 = [WFContentPropertyBuilder keyPath:@"transaction.merchant.displayName" name:v4 class:objc_opt_class(), v3];
  v10[1] = v5;
  v6 = WFLocalizedContentPropertyNameMarker(@"Amount");
  v7 = [WFContentPropertyBuilder keyPath:@"transaction.currencyAmount" name:v6 class:objc_opt_class()];
  v10[2] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:3];

  return v8;
}

- (id)defaultSourceForRepresentation:(id)representation
{
  v4 = objc_alloc(MEMORY[0x277CD3A58]);
  v5 = [v4 initWithBundleIdentifier:*MEMORY[0x277D7A320]];
  cachingIdentifier = [(WFContentItem *)self cachingIdentifier];
  v7 = [WFContentAttributionSet attributionSetWithAppDescriptor:v5 disclosureLevel:1 originalItemIdentifier:cachingIdentifier];

  return v7;
}

- (WFWalletTransaction)transaction
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

@end