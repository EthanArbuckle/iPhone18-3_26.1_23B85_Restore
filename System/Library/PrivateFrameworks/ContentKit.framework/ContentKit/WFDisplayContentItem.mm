@interface WFDisplayContentItem
+ (id)contentCategories;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)stringConversionBehavior;
+ (void)runQuery:(id)query withItems:(id)items permissionRequestor:(id)requestor completionHandler:(id)handler;
- (WFDisplay)display;
- (id)defaultSourceForRepresentation:(id)representation;
@end

@implementation WFDisplayContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Displays", @"Displays");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Display", @"Display");
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

+ (id)stringConversionBehavior
{
  v2 = [self propertyForName:@"Name"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (void)runQuery:(id)query withItems:(id)items permissionRequestor:(id)requestor completionHandler:(id)handler
{
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WFDisplayContentItem;
  objc_msgSendSuper2(&v6, sel_runQuery_withItems_permissionRequestor_completionHandler_, query, items, requestor, handler);
}

- (id)defaultSourceForRepresentation:(id)representation
{
  v3 = +[WFContentLocation windowsLocation];
  v4 = [WFContentAttributionSet attributionSetWithOrigin:v3 disclosureLevel:1];

  return v4;
}

- (WFDisplay)display
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

@end