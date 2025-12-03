@interface WFPaymentMethodContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
- (INPaymentMethod)paymentMethod;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFPaymentMethodContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Payment Methods", @"Payment Methods");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Payment Method", @"Payment Method");
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
  v4 = [v2 orderedSetWithObjects:{v3, 0}];

  return v4;
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
    paymentMethod = [(WFPaymentMethodContentItem *)self paymentMethod];
    name = [paymentMethod name];
    v6 = [WFObjectRepresentation object:name];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (INPaymentMethod)paymentMethod
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

@end