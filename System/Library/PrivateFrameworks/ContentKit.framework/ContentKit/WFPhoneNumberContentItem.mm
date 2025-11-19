@interface WFPhoneNumberContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListAltText:(id)a3;
- (BOOL)getListSubtitle:(id)a3;
- (WFPhoneNumber)phoneNumber;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (id)richListTitle;
- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5;
@end

@implementation WFPhoneNumberContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Phone Numbers", @"Phone Numbers");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Phone Number", @"Phone Number");
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

+ (id)propertyBuilders
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyNameMarker(@"Label");
  v3 = [WFContentPropertyBuilder keyPath:@"phoneNumber.localizedLabel" name:v2 class:objc_opt_class()];
  v4 = [WFContentProperty possibleLabelsForClass:objc_opt_class() localized:1];
  v5 = [v3 possibleValues:v4];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5
{
  v8 = a3;
  v9 = a4;
  if (objc_opt_class() == a5)
  {
    v11 = [v9 permissionRequestor];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__WFPhoneNumberContentItem_generateObjectRepresentations_options_forClass___block_invoke;
    v12[3] = &unk_278349D48;
    v12[4] = self;
    v13 = v8;
    [v11 allowContactsAccessWithCompletionHandler:v12];
  }

  else
  {
    v10 = [objc_opt_class() badCoercionErrorForObjectClass:a5];
    (*(v8 + 2))(v8, 0, v10);
  }
}

void __75__WFPhoneNumberContentItem_generateObjectRepresentations_options_forClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) phoneNumber];
    v5 = [v4 string];

    v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/.()- "];
    v7 = [v5 componentsSeparatedByCharactersInSet:v6];
    v8 = [v7 componentsJoinedByString:&stru_282F53518];

    v9 = *(a1 + 40);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __75__WFPhoneNumberContentItem_generateObjectRepresentations_options_forClass___block_invoke_2;
    v17 = &unk_278346110;
    v18 = v6;
    v19 = v8;
    v10 = v8;
    v11 = v6;
    v12 = [v3 allContactsWithSortOrder:0 passingTest:&v14];
    v13 = [WFObjectRepresentation objects:v12, v14, v15, v16, v17];
    (*(v9 + 16))(v9, v13, 0);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __75__WFPhoneNumberContentItem_generateObjectRepresentations_options_forClass___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [a2 phoneNumbers];
  if ([v3 count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v15 = v3;
      v7 = *v17;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = [*(*(&v16 + 1) + 8 * i) value];
          v10 = [v9 string];
          v11 = [v10 componentsSeparatedByCharactersInSet:*(a1 + 32)];
          v12 = [v11 componentsJoinedByString:&stru_282F53518];

          LOBYTE(v9) = [*(a1 + 40) isEqualToString:v12];
          if (v9)
          {
            v13 = 1;
            goto LABEL_12;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }

      v13 = 0;
LABEL_12:
      v3 = v15;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  v7 = [(WFPhoneNumberContentItem *)self phoneNumber:a3];
  if (objc_opt_class() == a3)
  {
    v9 = [v7 formattedPhoneNumber];
    v10 = [(WFContentItem *)self name];
  }

  else
  {
    if (objc_opt_class() != a3)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v11 = MEMORY[0x277CBEBC0];
    v12 = MEMORY[0x277CCACA8];
    v13 = [v7 string];
    v14 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    v15 = [v13 stringByAddingPercentEncodingWithAllowedCharacters:v14];
    v16 = [v12 stringWithFormat:@"tel:%@", v15];
    v9 = [v11 URLWithString:v16];

    v17 = MEMORY[0x277CCACA8];
    v18 = WFLocalizedString(@"Call %@");
    v19 = [v7 formattedPhoneNumber];
    v10 = [v17 localizedStringWithFormat:v18, v19];
  }

  v8 = [WFObjectRepresentation object:v9 named:v10];

LABEL_7:

  return v8;
}

- (WFPhoneNumber)phoneNumber
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

- (BOOL)getListSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(WFPhoneNumberContentItem *)self phoneNumber];
  v6 = [v5 contactName];

  if (v6)
  {
    if (v4)
    {
      v7 = [(WFPhoneNumberContentItem *)self phoneNumber];
      v8 = [v7 formattedPhoneNumber];
      v4[2](v4, v8);
    }

    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFPhoneNumberContentItem;
    v9 = [(WFContentItem *)&v11 getListSubtitle:v4];
  }

  return v9;
}

- (BOOL)getListAltText:(id)a3
{
  v4 = a3;
  v5 = [(WFPhoneNumberContentItem *)self phoneNumber];
  v6 = [v5 localizedLabel];

  v7 = [v6 length];
  v8 = v7;
  if (v4 && v7)
  {
    v4[2](v4, v6);
  }

  return v8 != 0;
}

- (id)richListTitle
{
  v3 = [(WFContentItem *)self internalRepresentation];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v4 = [v3 specifiedName];
  if (v4)
  {

LABEL_4:
    v10.receiver = self;
    v10.super_class = WFPhoneNumberContentItem;
    v5 = [(WFContentItem *)&v10 richListTitle];
    goto LABEL_5;
  }

  v7 = [(WFPhoneNumberContentItem *)self phoneNumber];
  v8 = [v7 contactName];

  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = [(WFPhoneNumberContentItem *)self phoneNumber];
  v5 = [v9 contactName];

LABEL_5:

  return v5;
}

@end