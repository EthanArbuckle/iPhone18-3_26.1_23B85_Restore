@interface CNContact(IC)
+ (id)ic_contactFromParticipant:()IC;
@end

@implementation CNContact(IC)

+ (id)ic_contactFromParticipant:()IC
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBDB38]);
  v5 = [v3 userIdentity];
  v6 = [v5 lookupInfo];
  v7 = [v6 emailAddress];

  if ([v7 length])
  {
    v8 = objc_alloc(MEMORY[0x277CBDB20]);
    v9 = [v8 initWithLabel:*MEMORY[0x277CBCFC0] value:v7];
    v39[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [v4 setEmailAddresses:v10];
  }

  v11 = [v3 userIdentity];
  v12 = [v11 lookupInfo];
  v13 = [v12 phoneNumber];

  if ([v13 length])
  {
    v14 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v13];
    v15 = objc_alloc(MEMORY[0x277CBDB20]);
    v16 = [v15 initWithLabel:*MEMORY[0x277CBD098] value:v14];
    v38 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    [v4 setPhoneNumbers:v17];
  }

  v18 = [v3 userIdentity];
  v19 = [v18 nameComponents];
  v20 = [v19 namePrefix];
  [v4 setNamePrefix:v20];

  v21 = [v3 userIdentity];
  v22 = [v21 nameComponents];
  v23 = [v22 givenName];
  [v4 setGivenName:v23];

  v24 = [v3 userIdentity];
  v25 = [v24 nameComponents];
  v26 = [v25 middleName];
  [v4 setMiddleName:v26];

  v27 = [v3 userIdentity];
  v28 = [v27 nameComponents];
  v29 = [v28 familyName];
  [v4 setFamilyName:v29];

  v30 = [v3 userIdentity];
  v31 = [v30 nameComponents];
  v32 = [v31 nameSuffix];
  [v4 setNameSuffix:v32];

  v33 = [v3 userIdentity];
  v34 = [v33 nameComponents];
  v35 = [v34 nickname];
  [v4 setNickname:v35];

  v36 = [v4 copy];

  return v36;
}

@end