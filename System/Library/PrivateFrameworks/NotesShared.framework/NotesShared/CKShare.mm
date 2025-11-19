@interface CKShare
@end

@implementation CKShare

BOOL __52__CKShare_IC__ic_nonCurrentUserAcceptedParticipants__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ([v2 isCurrentUser] & 1) == 0 && objc_msgSend(v2, "acceptanceStatus") == 2;

  return v3;
}

uint64_t __48__CKShare_IC__ic_participantWithUserRecordName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userIdentity];
  v4 = [v3 userRecordID];
  v5 = [v4 recordName];
  v6 = [v5 isEqualToString:*(a1 + 32)];

  return v6;
}

uint64_t __40__CKShare_IC__ic_participantWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 userIdentity];
  v4 = [v3 lookupInfo];

  v5 = [v4 emailAddress];
  v6 = [v5 length];

  if (v6)
  {
    v7 = MEMORY[0x277D6EEE8];
    v8 = [v4 emailAddress];
    v9 = [v7 normalizedEmailAddressHandleForValue:v8];
  }

  else
  {
    v13 = [v4 phoneNumber];
    v14 = [v13 length];

    if (!v14)
    {
      v10 = 0;
      goto LABEL_4;
    }

    v15 = [v4 phoneNumber];
    v16 = [v15 hasPrefix:@"+"];

    if ((v16 & 1) == 0)
    {
      v18 = [*(a1 + 32) normalizedValue];
      v10 = [v18 stringByReplacingOccurrencesOfString:@"+" withString:&stru_2827172C0 options:0 range:{0, 1}];

      v19 = [v4 phoneNumber];
      v11 = [v19 isEqualToString:v10];

      goto LABEL_5;
    }

    v17 = MEMORY[0x277D6EEE8];
    v8 = [v4 phoneNumber];
    v9 = [v17 normalizedPhoneNumberHandleForValue:v8 isoCountryCode:0];
  }

  v10 = v9;

LABEL_4:
  v11 = [v10 isEquivalentToHandle:*(a1 + 32)];
LABEL_5:

  return v11;
}

@end