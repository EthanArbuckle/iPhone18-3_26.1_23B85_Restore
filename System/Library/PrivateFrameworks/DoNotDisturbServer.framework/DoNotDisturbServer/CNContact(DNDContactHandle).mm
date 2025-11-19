@interface CNContact(DNDContactHandle)
+ (id)dnds_predicateForContactsMatchingEventSender:()DNDContactHandle;
@end

@implementation CNContact(DNDContactHandle)

+ (id)dnds_predicateForContactsMatchingEventSender:()DNDContactHandle
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 contactIdentifier];

  if (v5)
  {
    v6 = [v4 contactIdentifier];
    v12[0] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [a1 predicateForContactsWithIdentifiers:v7];
LABEL_6:
    v9 = v8;

    goto LABEL_7;
  }

  v6 = [v4 value];
  if (([v6 destinationIdIsPhoneNumber] & 1) != 0 || objc_msgSend(v4, "type") == 2)
  {
    v7 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v6];
    v8 = [a1 predicateForContactsMatchingPhoneNumber:v7 prefixHint:0];
    goto LABEL_6;
  }

  if (v6)
  {
    v9 = [a1 predicateForContactsMatchingEmailAddress:v6];
  }

  else
  {
    v9 = 0;
  }

LABEL_7:

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end