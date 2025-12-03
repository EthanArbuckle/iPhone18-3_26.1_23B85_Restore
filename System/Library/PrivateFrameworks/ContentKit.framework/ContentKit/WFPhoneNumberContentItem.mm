@interface WFPhoneNumberContentItem
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListAltText:(id)text;
- (BOOL)getListSubtitle:(id)subtitle;
- (WFPhoneNumber)phoneNumber;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (id)richListTitle;
- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class;
@end

@implementation WFPhoneNumberContentItem

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Phone Numbers", @"Phone Numbers");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Phone Number", @"Phone Number");
  v5 = [contextCopy localize:v4];

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

- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class
{
  representationsCopy = representations;
  optionsCopy = options;
  if (objc_opt_class() == class)
  {
    permissionRequestor = [optionsCopy permissionRequestor];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __75__WFPhoneNumberContentItem_generateObjectRepresentations_options_forClass___block_invoke;
    v12[3] = &unk_278349D48;
    v12[4] = self;
    v13 = representationsCopy;
    [permissionRequestor allowContactsAccessWithCompletionHandler:v12];
  }

  else
  {
    v10 = [objc_opt_class() badCoercionErrorForObjectClass:class];
    (*(representationsCopy + 2))(representationsCopy, 0, v10);
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

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  v7 = [(WFPhoneNumberContentItem *)self phoneNumber:class];
  if (objc_opt_class() == class)
  {
    formattedPhoneNumber = [v7 formattedPhoneNumber];
    name = [(WFContentItem *)self name];
  }

  else
  {
    if (objc_opt_class() != class)
    {
      v8 = 0;
      goto LABEL_7;
    }

    v11 = MEMORY[0x277CBEBC0];
    v12 = MEMORY[0x277CCACA8];
    string = [v7 string];
    uRLHostAllowedCharacterSet = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    v15 = [string stringByAddingPercentEncodingWithAllowedCharacters:uRLHostAllowedCharacterSet];
    v16 = [v12 stringWithFormat:@"tel:%@", v15];
    formattedPhoneNumber = [v11 URLWithString:v16];

    v17 = MEMORY[0x277CCACA8];
    v18 = WFLocalizedString(@"Call %@");
    formattedPhoneNumber2 = [v7 formattedPhoneNumber];
    name = [v17 localizedStringWithFormat:v18, formattedPhoneNumber2];
  }

  v8 = [WFObjectRepresentation object:formattedPhoneNumber named:name];

LABEL_7:

  return v8;
}

- (WFPhoneNumber)phoneNumber
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

- (BOOL)getListSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  phoneNumber = [(WFPhoneNumberContentItem *)self phoneNumber];
  contactName = [phoneNumber contactName];

  if (contactName)
  {
    if (subtitleCopy)
    {
      phoneNumber2 = [(WFPhoneNumberContentItem *)self phoneNumber];
      formattedPhoneNumber = [phoneNumber2 formattedPhoneNumber];
      subtitleCopy[2](subtitleCopy, formattedPhoneNumber);
    }

    v9 = 1;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = WFPhoneNumberContentItem;
    v9 = [(WFContentItem *)&v11 getListSubtitle:subtitleCopy];
  }

  return v9;
}

- (BOOL)getListAltText:(id)text
{
  textCopy = text;
  phoneNumber = [(WFPhoneNumberContentItem *)self phoneNumber];
  localizedLabel = [phoneNumber localizedLabel];

  v7 = [localizedLabel length];
  v8 = v7;
  if (textCopy && v7)
  {
    textCopy[2](textCopy, localizedLabel);
  }

  return v8 != 0;
}

- (id)richListTitle
{
  internalRepresentation = [(WFContentItem *)self internalRepresentation];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  specifiedName = [internalRepresentation specifiedName];
  if (specifiedName)
  {

LABEL_4:
    v10.receiver = self;
    v10.super_class = WFPhoneNumberContentItem;
    richListTitle = [(WFContentItem *)&v10 richListTitle];
    goto LABEL_5;
  }

  phoneNumber = [(WFPhoneNumberContentItem *)self phoneNumber];
  contactName = [phoneNumber contactName];

  if (!contactName)
  {
    goto LABEL_4;
  }

  phoneNumber2 = [(WFPhoneNumberContentItem *)self phoneNumber];
  richListTitle = [phoneNumber2 contactName];

LABEL_5:

  return richListTitle;
}

@end