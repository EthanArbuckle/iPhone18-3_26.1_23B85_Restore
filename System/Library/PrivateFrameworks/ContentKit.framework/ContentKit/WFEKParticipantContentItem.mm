@interface WFEKParticipantContentItem
+ (id)coercions;
+ (id)localizedFilterDescriptionWithContext:(id)context;
+ (id)localizedPluralFilterDescriptionWithContext:(id)context;
+ (id)localizedPluralTypeDescriptionWithContext:(id)context;
+ (id)localizedTypeDescriptionWithContext:(id)context;
+ (id)ownedTypes;
+ (id)possibleRoles;
+ (id)possibleStatuses;
+ (id)possibleTypes;
+ (id)propertyBuilders;
+ (id)stringConversionBehavior;
- (BOOL)getListSubtitle:(id)subtitle;
- (BOOL)isCurrentUser;
- (WFParticipant)participant;
- (id)defaultSourceForRepresentation:(id)representation;
- (id)emailAddress;
- (id)role;
- (id)status;
- (id)type;
@end

@implementation WFEKParticipantContentItem

- (BOOL)getListSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  participant = [(WFEKParticipantContentItem *)self participant];
  emailAddress = [participant emailAddress];

  v7 = [emailAddress length];
  v8 = v7;
  if (subtitleCopy && v7)
  {
    subtitleCopy[2](subtitleCopy, emailAddress);
  }

  return v8 != 0;
}

- (id)defaultSourceForRepresentation:(id)representation
{
  representationCopy = representation;
  wfType = [representationCopy wfType];
  v6 = [wfType conformsToClass:objc_opt_class()];

  if (v6)
  {
    object = [representationCopy object];

    v8 = objc_alloc(MEMORY[0x277CD3A58]);
    v9 = [v8 initWithBundleIdentifier:*MEMORY[0x277D7A220]];
    mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
    v11 = [mEMORY[0x277CD3A88] resolvedAppMatchingDescriptor:v9];

    sourceIdentifier = [object sourceIdentifier];
    cachingIdentifier = [(WFContentItem *)self cachingIdentifier];
    v14 = [WFContentAttributionSet attributionSetWithAccountBasedAppDescriptor:v11 accountIdentifier:sourceIdentifier disclosureLevel:1 originalItemIdentifier:cachingIdentifier];
  }

  else
  {
    v16.receiver = self;
    v16.super_class = WFEKParticipantContentItem;
    v14 = [(WFContentItem *)&v16 defaultSourceForRepresentation:representationCopy];
  }

  return v14;
}

- (id)type
{
  participant = [(WFEKParticipantContentItem *)self participant];
  type = [participant type];

  if (type <= 4)
  {
    v4 = WFLocalizedContentPropertyPossibleValueMarker(off_2783452B8[type]);
  }

  return v4;
}

- (BOOL)isCurrentUser
{
  participant = [(WFEKParticipantContentItem *)self participant];
  isCurrentUser = [participant isCurrentUser];

  return isCurrentUser;
}

- (id)status
{
  participant = [(WFEKParticipantContentItem *)self participant];
  v3 = WFStatusPropertyValueForEKParticipantStatus([participant status]);

  return v3;
}

- (id)role
{
  participant = [(WFEKParticipantContentItem *)self participant];
  role = [participant role];

  if (role <= 4)
  {
    v4 = WFLocalizedContentPropertyPossibleValueMarker(off_278345250[role]);
  }

  return v4;
}

- (id)emailAddress
{
  participant = [(WFEKParticipantContentItem *)self participant];
  emailAddress = [participant emailAddress];

  if (emailAddress)
  {
    v4 = [WFEmailAddress addressWithEmailAddress:emailAddress];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (WFParticipant)participant
{
  v3 = objc_opt_class();

  return [(WFContentItem *)self objectForClass:v3];
}

+ (id)localizedPluralFilterDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Event Attendees", @"Event Attendees");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedFilterDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Event Attendee", @"Event Attendee");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedPluralTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Event attendees", @"Event attendees");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)localizedTypeDescriptionWithContext:(id)context
{
  contextCopy = context;
  v4 = WFLocalizedStringResourceWithKey(@"Event attendee", @"Event attendee");
  v5 = [contextCopy localize:v4];

  return v5;
}

+ (id)ownedTypes
{
  v2 = MEMORY[0x277CBEB70];
  v3 = [WFObjectType typeWithClass:objc_opt_class()];
  v4 = [v2 orderedSetWithObject:v3];

  return v4;
}

+ (id)possibleTypes
{
  v9[5] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyPossibleValueMarker(@"Room");
  v9[0] = v2;
  v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Group");
  v9[1] = v3;
  v4 = WFLocalizedContentPropertyPossibleValueMarker(@"Person");
  v9[2] = v4;
  v5 = WFLocalizedContentPropertyPossibleValueMarker(@"Resource");
  v9[3] = v5;
  v6 = WFLocalizedContentPropertyPossibleValueMarker(@"Unknown");
  v9[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)possibleStatuses
{
  v12[8] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyPossibleValueMarker(@"Accepted");
  v12[0] = v2;
  v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Completed");
  v12[1] = v3;
  v4 = WFLocalizedContentPropertyPossibleValueMarker(@"Declined");
  v12[2] = v4;
  v5 = WFLocalizedContentPropertyPossibleValueMarker(@"Delegated");
  v12[3] = v5;
  v6 = WFLocalizedContentPropertyPossibleValueMarker(@"In Process");
  v12[4] = v6;
  v7 = WFLocalizedContentPropertyPossibleValueMarker(@"Pending");
  v12[5] = v7;
  v8 = WFLocalizedContentPropertyPossibleValueMarker(@"Tentative");
  v12[6] = v8;
  v9 = WFLocalizedContentPropertyPossibleValueMarker(@"Unknown");
  v12[7] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:8];

  return v10;
}

+ (id)possibleRoles
{
  v9[5] = *MEMORY[0x277D85DE8];
  v2 = WFLocalizedContentPropertyPossibleValueMarker(@"Unknown");
  v9[0] = v2;
  v3 = WFLocalizedContentPropertyPossibleValueMarker(@"Required");
  v9[1] = v3;
  v4 = WFLocalizedContentPropertyPossibleValueMarker(@"Optional");
  v9[2] = v4;
  v5 = WFLocalizedContentPropertyPossibleValueMarker(@"Chair");
  v9[3] = v5;
  v6 = WFLocalizedContentPropertyPossibleValueMarker(@"Non-participant");
  v9[4] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:5];

  return v7;
}

+ (id)stringConversionBehavior
{
  v2 = [self propertyForName:@"Name"];
  v3 = [WFContentItemStringConversionBehavior accessingProperty:v2];

  return v3;
}

+ (id)propertyBuilders
{
  v25[5] = *MEMORY[0x277D85DE8];
  v24 = WFLocalizedContentPropertyNameMarker(@"Status");
  v23 = [WFContentPropertyBuilder keyPath:@"status" name:v24 class:objc_opt_class()];
  possibleStatuses = [objc_opt_class() possibleStatuses];
  v21 = [v23 possibleValues:possibleStatuses];
  v25[0] = v21;
  v20 = WFLocalizedContentPropertyNameMarker(@"Role");
  v19 = [WFContentPropertyBuilder keyPath:@"role" name:v20 class:objc_opt_class()];
  possibleRoles = [objc_opt_class() possibleRoles];
  v17 = [v19 possibleValues:possibleRoles];
  v25[1] = v17;
  v16 = WFLocalizedContentPropertyNameMarker(@"Type");
  v15 = [WFContentPropertyBuilder keyPath:@"type" name:v16 class:objc_opt_class()];
  possibleTypes = [objc_opt_class() possibleTypes];
  v2 = [v15 possibleValues:possibleTypes];
  v25[2] = v2;
  v3 = WFLocalizedContentPropertyNameMarker(@"Is Me");
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  v5 = [WFContentPropertyBuilder keyPath:@"isCurrentUser" name:v3 class:objc_opt_class()];
  v6 = WFLocalizedContentPropertyNameMarker(@"Is Not Me");
  v7 = [v5 negativeName:v6];
  v8 = WFLocalizedString(@"Participant");
  v9 = [v7 singularItemName:v8];
  v25[3] = v9;
  v10 = WFLocalizedContentPropertyNameMarker(@"Email Address");
  v11 = [WFContentPropertyBuilder keyPath:@"emailAddress" name:v10 class:objc_opt_class()];
  v25[4] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:5];

  return v13;
}

BOOL __52__WFEKParticipantContentItem_contactCoercionHandler__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 participant];
  v3 = [v2 contactPredicate];
  v4 = v3 != 0;

  return v4;
}

void __52__WFEKParticipantContentItem_contactCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a2;
  v8 = [a3 options];
  v9 = [v7 participant];

  v10 = [v8 dictionary];
  v11 = [v10 objectForKey:@"WFCoercionOptionEKParticipantExcludeMeContact"];
  if (![v11 BOOLValue])
  {

    goto LABEL_5;
  }

  v12 = [v9 isCurrentUser];

  if (!v12)
  {
LABEL_5:
    v13 = [v8 permissionRequestor];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __52__WFEKParticipantContentItem_contactCoercionHandler__block_invoke_2;
    v14[3] = &unk_278349D48;
    v16 = v6;
    v15 = v9;
    [v13 allowContactsAccessWithCompletionHandler:v14];

    goto LABEL_6;
  }

  (*(v6 + 2))(v6, 0, 0);
LABEL_6:
}

void __52__WFEKParticipantContentItem_contactCoercionHandler__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 32) contactPredicate];
    v14 = v6;
    v8 = [v5 contactsMatchingPredicate:v7 error:&v14];
    v9 = v14;

    if (![v8 count])
    {
      v10 = [*(a1 + 32) name];
      v11 = [v5 contactsWithName:v10];

      v8 = v11;
    }

    v12 = *(a1 + 40);
    if ([v8 count])
    {
      v13 = [v8 firstObject];
      (*(v12 + 16))(v12, v13, v9);
    }

    else
    {
      (*(v12 + 16))(v12, 0, v9);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    v9 = v6;
  }
}

BOOL __57__WFEKParticipantContentItem_emailAddressCoercionHandler__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 participant];
  v3 = [v2 emailAddress];
  v4 = [v3 length] != 0;

  return v4;
}

id __57__WFEKParticipantContentItem_emailAddressCoercionHandler__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 participant];
  v7 = [v5 options];

  v8 = [v7 dictionary];
  v9 = [v8 objectForKey:@"WFCoercionOptionEKParticipantExcludeMeContact"];
  if ([v9 BOOLValue])
  {
    v10 = [v6 isCurrentUser];

    if (v10)
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = [v4 emailAddress];
  v13 = [v6 name];
  v11 = [WFObjectRepresentation object:v12 named:v13];

LABEL_6:

  return v11;
}

+ (id)coercions
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  contactCoercionHandler = [self contactCoercionHandler];
  v5 = [WFCoercion coercionToClass:v3 handler:contactCoercionHandler];
  v11[0] = v5;
  v6 = objc_opt_class();
  emailAddressCoercionHandler = [self emailAddressCoercionHandler];
  v8 = [WFCoercion coercionToClass:v6 handler:emailAddressCoercionHandler];
  v11[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];

  return v9;
}

@end