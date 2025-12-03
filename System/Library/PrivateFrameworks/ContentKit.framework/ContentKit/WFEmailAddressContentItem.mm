@interface WFEmailAddressContentItem
+ (id)itemsWithTextCheckingResult:(id)result;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)outputTypes;
+ (id)ownedTypes;
+ (id)propertyBuilders;
- (BOOL)getListAltText:(id)text;
- (WFEmailAddress)emailAddress;
- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error;
- (void)generateObjectRepresentations:(id)representations options:(id)options forClass:(Class)class;
@end

@implementation WFEmailAddressContentItem

- (BOOL)getListAltText:(id)text
{
  textCopy = text;
  emailAddress = [(WFEmailAddressContentItem *)self emailAddress];
  localizedLabel = [emailAddress localizedLabel];

  v7 = [localizedLabel length];
  v8 = v7;
  if (textCopy && v7)
  {
    textCopy[2](textCopy, localizedLabel);
  }

  return v8 != 0;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Email Addresses", @"Email Addresses");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Email Address", @"Email Address");
  v5 = [contextCopy localize:v4];

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

+ (id)itemsWithTextCheckingResult:(id)result
{
  v4 = [WFEmailAddress addressesWithTextCheckingResult:result];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__WFEmailAddressContentItem_itemsWithTextCheckingResult___block_invoke;
  v7[3] = &__block_descriptor_40_e27__24__0__WFEmailAddress_8Q16l;
  v7[4] = self;
  v5 = [v4 if_map:v7];

  return v5;
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
    v12[2] = __76__WFEmailAddressContentItem_generateObjectRepresentations_options_forClass___block_invoke;
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

- (id)generateObjectRepresentationForClass:(Class)class options:(id)options error:(id *)error
{
  if (objc_opt_class() == class)
  {
    uRLHostAllowedCharacterSet = [MEMORY[0x277CCA900] URLHostAllowedCharacterSet];
    emailAddress2 = [uRLHostAllowedCharacterSet mutableCopy];

    [emailAddress2 addCharactersInString:@"@"];
    v10 = MEMORY[0x277CCACA8];
    emailAddress = [(WFEmailAddressContentItem *)self emailAddress];
    address = [emailAddress address];
    v13 = [address stringByAddingPercentEncodingWithAllowedCharacters:emailAddress2];
    address2 = [v10 stringWithFormat:@"mailto:%@", v13];

    name2 = [MEMORY[0x277CBEBC0] URLWithString:address2];
    name = [(WFContentItem *)self name];
    v7 = [WFObjectRepresentation object:name2 named:name];

LABEL_7:
    goto LABEL_8;
  }

  if (objc_opt_class() == class)
  {
    emailAddress2 = [(WFEmailAddressContentItem *)self emailAddress];
    address2 = [emailAddress2 address];
    name2 = [(WFContentItem *)self name];
    v7 = [WFObjectRepresentation object:address2 named:name2];
    goto LABEL_7;
  }

  if (objc_opt_class() != class)
  {
    v7 = 0;
    goto LABEL_9;
  }

  EKAttendeeClass = getEKAttendeeClass();
  emailAddress3 = [(WFEmailAddressContentItem *)self emailAddress];
  address3 = [emailAddress3 address];
  v21 = MEMORY[0x277CBEBC0];
  v22 = MEMORY[0x277CCACA8];
  emailAddress4 = [(WFEmailAddressContentItem *)self emailAddress];
  address4 = [emailAddress4 address];
  v25 = [v22 stringWithFormat:@"mailto:%@", address4];
  v26 = [v21 URLWithString:v25];
  emailAddress2 = [(objc_class *)EKAttendeeClass attendeeWithName:0 emailAddress:address3 phoneNumber:0 url:v26];

  address2 = [[WFParticipant alloc] initWithEKParticipant:emailAddress2];
  v7 = [WFObjectRepresentation object:address2];
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