@interface CNContact(IC)
+ (id)ic_contactFromParticipant:()IC;
@end

@implementation CNContact(IC)

+ (id)ic_contactFromParticipant:()IC
{
  v39[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBDB38]);
  userIdentity = [v3 userIdentity];
  lookupInfo = [userIdentity lookupInfo];
  emailAddress = [lookupInfo emailAddress];

  if ([emailAddress length])
  {
    v8 = objc_alloc(MEMORY[0x277CBDB20]);
    v9 = [v8 initWithLabel:*MEMORY[0x277CBCFC0] value:emailAddress];
    v39[0] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:1];
    [v4 setEmailAddresses:v10];
  }

  userIdentity2 = [v3 userIdentity];
  lookupInfo2 = [userIdentity2 lookupInfo];
  phoneNumber = [lookupInfo2 phoneNumber];

  if ([phoneNumber length])
  {
    v14 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:phoneNumber];
    v15 = objc_alloc(MEMORY[0x277CBDB20]);
    v16 = [v15 initWithLabel:*MEMORY[0x277CBD098] value:v14];
    v38 = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v38 count:1];
    [v4 setPhoneNumbers:v17];
  }

  userIdentity3 = [v3 userIdentity];
  nameComponents = [userIdentity3 nameComponents];
  namePrefix = [nameComponents namePrefix];
  [v4 setNamePrefix:namePrefix];

  userIdentity4 = [v3 userIdentity];
  nameComponents2 = [userIdentity4 nameComponents];
  givenName = [nameComponents2 givenName];
  [v4 setGivenName:givenName];

  userIdentity5 = [v3 userIdentity];
  nameComponents3 = [userIdentity5 nameComponents];
  middleName = [nameComponents3 middleName];
  [v4 setMiddleName:middleName];

  userIdentity6 = [v3 userIdentity];
  nameComponents4 = [userIdentity6 nameComponents];
  familyName = [nameComponents4 familyName];
  [v4 setFamilyName:familyName];

  userIdentity7 = [v3 userIdentity];
  nameComponents5 = [userIdentity7 nameComponents];
  nameSuffix = [nameComponents5 nameSuffix];
  [v4 setNameSuffix:nameSuffix];

  userIdentity8 = [v3 userIdentity];
  nameComponents6 = [userIdentity8 nameComponents];
  nickname = [nameComponents6 nickname];
  [v4 setNickname:nickname];

  v36 = [v4 copy];

  return v36;
}

@end