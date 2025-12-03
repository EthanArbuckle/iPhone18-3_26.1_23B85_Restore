@interface WFPersonNameComponentsContentItem
+ (id)coercions;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
- (LNCodableValue)personNameComponentsValue;
- (NSPersonNameComponents)personNameComponents;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
@end

@implementation WFPersonNameComponentsContentItem

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    personNameComponentsValue = [(WFPersonNameComponentsContentItem *)self personNameComponentsValue];
    personNameComponents = [personNameComponentsValue personNameComponents];

    if (personNameComponents)
    {
      v11 = objc_alloc_init(MEMORY[0x277CCAC08]);
      v13 = [v11 stringFromPersonNameComponents:personNameComponents];
      goto LABEL_8;
    }
  }

  else if ([MEMORY[0x277D237B0] wf_personNameComponentsObjectClass] == class)
  {
    personNameComponents2 = [(WFPersonNameComponentsContentItem *)self personNameComponents];

    if (personNameComponents2)
    {
      v8 = objc_alloc(MEMORY[0x277D23950]);
      personNameComponents3 = [(WFPersonNameComponentsContentItem *)self personNameComponents];
      personNameComponents = [v8 initWithPersonNameComponents:personNameComponents3];

      if (personNameComponents)
      {
        v11 = objc_alloc_init(MEMORY[0x277CCAC08]);
        personNameComponents4 = [(WFPersonNameComponentsContentItem *)self personNameComponents];
        v13 = [v11 stringFromPersonNameComponents:personNameComponents4];

LABEL_8:
        v15 = MEMORY[0x277CCACA8];
        v16 = WFLocalizedString(@"%@");
        v17 = [v15 localizedStringWithFormat:v16, v13, v13];
        v18 = [WFObjectRepresentation object:personNameComponents named:v17];

        goto LABEL_10;
      }
    }
  }

  v18 = 0;
LABEL_10:

  return v18;
}

- (LNCodableValue)personNameComponentsValue
{
  wf_personNameComponentsObjectClass = [MEMORY[0x277D237B0] wf_personNameComponentsObjectClass];

  return [(WFContentItem *)self objectForClass:wf_personNameComponentsObjectClass];
}

- (NSPersonNameComponents)personNameComponents
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Person Name Components (multiple)", @"Person Name Components");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Person Name Components (singular)", @"Person Name Components");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = +[WFObjectType typeWithClass:](WFObjectType, "typeWithClass:", [MEMORY[0x277D237B0] wf_personNameComponentsObjectClass]);
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = +[WFObjectType typeWithClass:](WFObjectType, "typeWithClass:", [MEMORY[0x277D237B0] wf_personNameComponentsObjectClass]);
  v5 = [v2 orderedSetWithObjects:{v3, v4, 0}];

  return v5;
}

id __58__WFPersonNameComponentsContentItem_stringCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [v6 personNameComponents];
    v8 = [MEMORY[0x277CCAC08] localizedStringFromPersonNameComponents:v7 style:3 options:0];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)coercions
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  stringCoercionHandler = [self stringCoercionHandler];
  v5 = [WFCoercion coercionToClass:v3 handler:stringCoercionHandler];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

@end