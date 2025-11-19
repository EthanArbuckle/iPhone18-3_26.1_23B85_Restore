@interface WFEmailAddressContentItem
+ (id)itemsWithTextCheckingResult:(id)a3;
+ (id)localizedPluralTypeDescriptionWithContext:(id)a3;
+ (id)localizedTypeDescriptionWithContext:(id)a3;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListAltText:(id)a3;
- (WFEmailAddress)emailAddress;
- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5;
- (void)generateObjectRepresentations:(id)a3 options:(id)a4 forClass:(Class)a5;
@end

@implementation WFEmailAddressContentItem

- (BOOL)getListAltText:(id)a3
{
  v4 = a3;
  v5 = [(WFEmailAddressContentItem *)self emailAddress];
  v6 = [v5 localizedLabel];

  v7 = [v6 length];
  v8 = v7;
  if (v4 && v7)
  {
    v4[2](v4, v6);
  }

  return v8 != 0;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Email Addresses", @"Email Addresses");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)a3
{
  v3 = a3;
  v4 = WFLocalizedStringResourceWithKey(@"Email Address", @"Email Address");
  v5 = [v3 localize:v4];

  return v5;
}

+ (id)outputTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [WFObjectType typeWithClass:objc_opt_class()];
  v5 = [WFObjectType typeWithClass:objc_opt_class()];
  v6 = [WFObjectType typeWithClass:objc_opt_class()];
  v7 = [v2 orderedSetWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
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
  v3 = [WFContentPropertyBuilder keyPath:@"emailAddress.localizedLabel" name:v2 class:objc_opt_class()];
  v4 = [WFContentProperty possibleLabelsForClass:objc_opt_class() localized:1];
  v5 = [v3 possibleValues:v4];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  return v6;
}

+ (id)itemsWithTextCheckingResult:(id)a3
{
  v4 = [WFEmailAddress addressesWithTextCheckingResult:a3];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__WFEmailAddressContentItem_itemsWithTextCheckingResult___block_invoke;
  v7[3] = &__block_descriptor_40_e27__24__0__WFEmailAddress_8Q16l;
  v7[4] = a1;
  v5 = [v4 if_map:v7];

  return v5;
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
    v12[2] = __76__WFEmailAddressContentItem_generateObjectRepresentations_options_forClass___block_invoke;
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

void __76__WFEmailAddressContentItem_generateObjectRepresentations_options_forClass___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) emailAddress];
    v8 = [v7 address];
    v9 = [v8 lowercaseString];

    v10 = [(objc_class *)getCNContactClass_18888() predicateForContactsMatchingEmailAddress:v9];
    v15 = v6;
    v11 = [v5 contactsMatchingPredicate:v10 error:&v15];
    v12 = v15;

    v13 = *(a1 + 40);
    v14 = [WFObjectRepresentation objects:v11];
    (*(v13 + 16))(v13, v14, v12);

    v6 = v12;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (id)generateObjectRepresentationForClass:(Class)a3 options:(id)a4 error:(id *)a5
{
  if (objc_opt_class() == a3)
  {
    v8 = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    v9 = [v8 mutableCopy];

    [v9 addCharactersInString:@"@"];
    v10 = MEMORY[0x277CCACA8];
    v11 = [(WFEmailAddressContentItem *)self emailAddress];
    v12 = [v11 address];
    v13 = [v12 stringByAddingPercentEncodingWithAllowedCharacters:v9];
    v14 = [v10 stringWithFormat:@"mailto:%@", v13];

    v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
    v16 = [(WFContentItem *)self name];
    v7 = [WFObjectRepresentation object:v15 named:v16];

LABEL_7:
    goto LABEL_8;
  }

  if (objc_opt_class() == a3)
  {
    v9 = [(WFEmailAddressContentItem *)self emailAddress];
    v14 = [v9 address];
    v15 = [(WFContentItem *)self name];
    v7 = [WFObjectRepresentation object:v14 named:v15];
    goto LABEL_7;
  }

  if (objc_opt_class() != a3)
  {
    v7 = 0;
    goto LABEL_9;
  }

  EKAttendeeClass = getEKAttendeeClass();
  v19 = [(WFEmailAddressContentItem *)self emailAddress];
  v20 = [v19 address];
  v21 = MEMORY[0x277CBEBC0];
  v22 = MEMORY[0x277CCACA8];
  v23 = [(WFEmailAddressContentItem *)self emailAddress];
  v24 = [v23 address];
  v25 = [v22 stringWithFormat:@"mailto:%@", v24];
  v26 = [v21 URLWithString:v25];
  v9 = [(objc_class *)EKAttendeeClass attendeeWithName:0 emailAddress:v20 phoneNumber:0 url:v26];

  v14 = [[WFParticipant alloc] initWithEKParticipant:v9];
  v7 = [WFObjectRepresentation object:v14];
LABEL_8:

LABEL_9:

  return v7;
}

- (WFEmailAddress)emailAddress
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

@end