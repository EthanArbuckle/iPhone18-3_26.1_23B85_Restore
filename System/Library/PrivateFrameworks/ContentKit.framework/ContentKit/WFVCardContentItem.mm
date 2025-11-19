@interface WFVCardContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)stringConversionBehavior;
- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5;
@end

@implementation WFVCardContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"vCards", @"vCards");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"vCard", @"vCard");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [MEMORY[0x277D79F68] typeWithUTType:*MEMORY[0x277CE1EB8]];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)stringConversionBehavior
{
  v2 = [a1 propertyForName:@"Name"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

- (id)generateObjectRepresentationsForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v22 = *MEMORY[0x277D85DE8];
  if (objc_opt_class() == a3)
  {
    v6 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [MEMORY[0x277D79F68] typeWithUTType:{*MEMORY[0x277CE1EB8], 0}];
    v8 = [(WFContentItem *)self fileRepresentationsForType:v7];

    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v17 + 1) + 8 * i) data];
          v14 = [WFContact contactsWithVCardData:v13];
          v15 = [WFObjectRepresentation objects:v14];
          [v6 addObjectsFromArray:v15];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end