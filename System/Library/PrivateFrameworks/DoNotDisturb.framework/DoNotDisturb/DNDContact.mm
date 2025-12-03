@interface DNDContact
+ (id)normalizePhoneNumber:(id)number;
- (BOOL)isEqual:(id)equal;
- (BOOL)matchesContact:(id)contact;
- (BOOL)matchesContactHandle:(id)handle;
- (DNDContact)initWithCoder:(id)coder;
- (id)_descriptionForRedacted:(BOOL)redacted;
- (id)_initWithContactIdentifier:(id)identifier firstName:(id)name middleName:(id)middleName lastName:(id)lastName nickName:(id)nickName organizationName:(id)organizationName phoneNumbers:(id)numbers emailAddresses:(id)self0;
- (id)_redactedDescriptionsForStrings:(id)strings;
- (id)diffDescription;
- (id)normalizedPhoneNumbers;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DNDContact

+ (id)normalizePhoneNumber:(id)number
{
  v21 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v5 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543619;
    selfCopy = self;
    v19 = 2113;
    v20 = numberCopy;
    _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ normalizing phonenumber %{private}@", &v17, 0x16u);
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];

  v8 = *MEMORY[0x277CBECE8];
  v9 = CFPhoneNumberCreate();
  if (!v9 || (v10 = v9, String = CFPhoneNumberCreateString(), CFRelease(v10), (v12 = String) == 0))
  {
    v13 = DNDLogModeConfiguration;
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDContact *)self normalizePhoneNumber:numberCopy, v13];
    }

    v12 = 0;
    String = numberCopy;
  }

  v14 = String;

  v15 = *MEMORY[0x277D85DE8];
  return String;
}

- (id)_initWithContactIdentifier:(id)identifier firstName:(id)name middleName:(id)middleName lastName:(id)lastName nickName:(id)nickName organizationName:(id)organizationName phoneNumbers:(id)numbers emailAddresses:(id)self0
{
  identifierCopy = identifier;
  nameCopy = name;
  middleNameCopy = middleName;
  lastNameCopy = lastName;
  nickNameCopy = nickName;
  organizationNameCopy = organizationName;
  numbersCopy = numbers;
  addressesCopy = addresses;
  v42.receiver = self;
  v42.super_class = DNDContact;
  v24 = [(DNDContact *)&v42 init];
  if (v24)
  {
    v25 = [identifierCopy copy];
    contactIdentifier = v24->_contactIdentifier;
    v24->_contactIdentifier = v25;

    v27 = [nameCopy copy];
    firstName = v24->_firstName;
    v24->_firstName = v27;

    v29 = [middleNameCopy copy];
    middleName = v24->_middleName;
    v24->_middleName = v29;

    v31 = [lastNameCopy copy];
    lastName = v24->_lastName;
    v24->_lastName = v31;

    v33 = [nickNameCopy copy];
    nickName = v24->_nickName;
    v24->_nickName = v33;

    v35 = [organizationNameCopy copy];
    organizationName = v24->_organizationName;
    v24->_organizationName = v35;

    v37 = [numbersCopy copy];
    phoneNumbers = v24->_phoneNumbers;
    v24->_phoneNumbers = v37;

    v39 = [addressesCopy copy];
    emailAddresses = v24->_emailAddresses;
    v24->_emailAddresses = v39;
  }

  return v24;
}

- (unint64_t)hash
{
  contactIdentifier = [(DNDContact *)self contactIdentifier];
  v4 = [contactIdentifier hash];
  firstName = [(DNDContact *)self firstName];
  v6 = [firstName hash] ^ v4;
  middleName = [(DNDContact *)self middleName];
  v8 = [middleName hash];
  lastName = [(DNDContact *)self lastName];
  v10 = v6 ^ v8 ^ [lastName hash];
  nickName = [(DNDContact *)self nickName];
  v12 = [nickName hash];
  organizationName = [(DNDContact *)self organizationName];
  v14 = v12 ^ [organizationName hash];
  phoneNumbers = [(DNDContact *)self phoneNumbers];
  v16 = v10 ^ v14 ^ [phoneNumbers hash];
  emailAddresses = [(DNDContact *)self emailAddresses];
  v18 = [emailAddresses hash];

  return v16 ^ v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
    goto LABEL_126;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_126;
  }

  v6 = equalCopy;
  contactIdentifier = [(DNDContact *)self contactIdentifier];
  contactIdentifier2 = [(DNDContact *)v6 contactIdentifier];
  emailAddresses4 = contactIdentifier != contactIdentifier2;
  if (contactIdentifier == contactIdentifier2)
  {
    goto LABEL_10;
  }

  contactIdentifier3 = [(DNDContact *)self contactIdentifier];
  if (!contactIdentifier3)
  {
    v93 = 0;
    memset(v94, 0, sizeof(v94));
    memset(v98, 0, 36);
    v97 = 0;
    v13 = 0;
    v96 = 0;
    memset(v95, 0, sizeof(v95));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_63;
  }

  v93 = contactIdentifier3;
  contactIdentifier4 = [(DNDContact *)v6 contactIdentifier];
  if (!contactIdentifier4)
  {
    v90 = 0;
    memset(v98, 0, 12);
    memset(&v98[2], 0, 20);
    v97 = 0;
    v13 = 0;
    v96 = 0;
    memset(v94, 0, sizeof(v94));
    memset(v95, 0, sizeof(v95));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    HIDWORD(v98[1]) = 1;
    goto LABEL_63;
  }

  v90 = contactIdentifier4;
  contactIdentifier5 = [(DNDContact *)self contactIdentifier];
  [(DNDContact *)v6 contactIdentifier];
  v85 = v86 = contactIdentifier5;
  if ([contactIdentifier5 isEqual:?])
  {
LABEL_10:
    firstName = [(DNDContact *)self firstName];
    firstName2 = [(DNDContact *)v6 firstName];
    v92 = firstName;
    v19 = firstName != firstName2;
    HIDWORD(v98[1]) = contactIdentifier != contactIdentifier2;
    if (firstName == firstName2)
    {
      goto LABEL_16;
    }

    firstName3 = [(DNDContact *)self firstName];
    if (!firstName3)
    {
      v89 = 0;
      v97 = 0;
      v13 = 0;
      v96 = 0;
      *(&v98[2] + 4) = 0;
      *(&v98[3] + 4) = 0;
      memset(v94, 0, sizeof(v94));
      memset(v95, 0, sizeof(v95));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LODWORD(v98[1]) = 0;
      v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
      LODWORD(v98[2]) = 1;
      goto LABEL_63;
    }

    v89 = firstName3;
    firstName4 = [(DNDContact *)v6 firstName];
    if (!firstName4)
    {
      v84 = 0;
      v13 = 0;
      v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
      v96 = 0;
      *(&v98[2] + 4) = 0;
      *(&v98[3] + 4) = 0;
      memset(v94, 0, sizeof(v94));
      memset(v95, 0, sizeof(v95));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      LODWORD(v98[1]) = 0;
      LODWORD(v98[2]) = 1;
      v97 = 1;
      goto LABEL_63;
    }

    v84 = firstName4;
    firstName5 = [(DNDContact *)self firstName];
    firstName6 = [(DNDContact *)v6 firstName];
    v80 = firstName5;
    if ([firstName5 isEqual:?])
    {
LABEL_16:
      middleName = [(DNDContact *)self middleName];
      middleName2 = [(DNDContact *)v6 middleName];
      v25 = middleName;
      v26 = middleName == middleName2;
      v27 = middleName != middleName2;
      v87 = middleName2;
      v88 = v25;
      LODWORD(v98[2]) = v19;
      if (v26)
      {
        goto LABEL_23;
      }

      middleName3 = [(DNDContact *)self middleName];
      if (!middleName3)
      {
        v83 = 0;
        v96 = 0;
        *(&v98[2] + 4) = 0;
        *(&v98[3] + 4) = 0;
        memset(v94, 0, sizeof(v94));
        memset(v95, 0, sizeof(v95));
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
        v97 = v19 | 0x100000000;
        v13 = v19;
        v14 = 0;
        LODWORD(v98[1]) = 1;
        goto LABEL_63;
      }

      v83 = middleName3;
      middleName4 = [(DNDContact *)v6 middleName];
      if (!middleName4)
      {
        v78 = 0;
        *v95 = 0;
        v96 = 0;
        *(&v98[2] + 4) = 0;
        *(&v98[3] + 4) = 0;
        memset(v94, 0, sizeof(v94));
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
        v97 = v19 | 0x100000000;
        v13 = v19;
        v14 = 0;
        LODWORD(v98[1]) = 1;
        *&v95[8] = 1;
        goto LABEL_63;
      }

      v78 = middleName4;
      middleName5 = [(DNDContact *)self middleName];
      middleName6 = [(DNDContact *)v6 middleName];
      v74 = middleName5;
      if ([middleName5 isEqual:?])
      {
LABEL_23:
        lastName = [(DNDContact *)self lastName];
        lastName2 = [(DNDContact *)v6 lastName];
        v32 = lastName;
        v81 = lastName2;
        v26 = lastName == lastName2;
        middleName5 = lastName != lastName2;
        LODWORD(v98[1]) = v27;
        v82 = v32;
        if (v26)
        {
          LODWORD(v98[4]) = middleName5;
        }

        else
        {
          lastName3 = [(DNDContact *)self lastName];
          if (!lastName3)
          {
            v77 = 0;
            v98[3] = 0;
            memset(v94, 0, sizeof(v94));
            HIDWORD(v98[2]) = 0;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            goto LABEL_63;
          }

          v77 = lastName3;
          lastName4 = [(DNDContact *)v6 lastName];
          if (!lastName4)
          {
            v72 = 0;
            *&v94[24] = 0;
            *&v94[32] = 0;
            v98[3] = 0;
            memset(v94, 0, 20);
            HIDWORD(v98[2]) = 0;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            *&v94[20] = 1;
            goto LABEL_63;
          }

          LODWORD(v98[4]) = middleName5;
          v72 = lastName4;
          middleName5 = [(DNDContact *)self lastName];
          lastName5 = [(DNDContact *)v6 lastName];
          v68 = middleName5;
          if (![middleName5 isEqual:?])
          {
            *&v94[24] = 0;
            *&v94[32] = 0;
            v98[3] = 0;
            *v94 = 0uLL;
            HIDWORD(v98[2]) = 0;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            *&v94[16] = 0x100000001;
            goto LABEL_63;
          }
        }

        middleName5 = [(DNDContact *)self nickName];
        nickName = [(DNDContact *)v6 nickName];
        HIDWORD(v98[3]) = middleName5 != nickName;
        v76 = middleName5;
        if (middleName5 == nickName)
        {
          goto LABEL_38;
        }

        nickName2 = [(DNDContact *)self nickName];
        if (!nickName2)
        {
          v71 = 0;
          *v94 = 0;
          *&v94[8] = 0;
          *&v94[28] = 0;
          *(&v98[2] + 4) = 0;
          *v95 = 0;
          *&v95[4] = v27;
          *&v95[8] = v27;
          v96 = 0x100000000;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
          v97 = v19 | 0x100000000;
          v13 = v19;
          v14 = 0;
          *&v94[20] = v98[4];
          *&v94[24] = 0;
          *&v94[16] = v98[4];
          *&v94[36] = 1;
          HIDWORD(v98[3]) = 1;
          goto LABEL_63;
        }

        v71 = nickName2;
        nickName3 = [(DNDContact *)v6 nickName];
        if (!nickName3)
        {
          v66 = 0;
          *&v94[4] = 0;
          *&v94[28] = 0;
          *(&v98[2] + 4) = 0;
          *v95 = 0;
          *&v95[4] = v27;
          *&v95[8] = v27;
          v96 = 0x100000000;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
          v97 = v19 | 0x100000000;
          v13 = v19;
          v14 = 0;
          *&v94[20] = v98[4];
          *&v94[24] = 0;
          *&v94[12] = 0;
          *&v94[16] = v98[4];
          *&v94[36] = 1;
          HIDWORD(v98[3]) = 1;
          *v94 = 1;
          goto LABEL_63;
        }

        v66 = nickName3;
        middleName5 = [(DNDContact *)self nickName];
        nickName4 = [(DNDContact *)v6 nickName];
        v62 = middleName5;
        if ([middleName5 isEqual:?])
        {
LABEL_38:
          middleName5 = [(DNDContact *)self organizationName];
          organizationName = [(DNDContact *)v6 organizationName];
          LODWORD(v98[3]) = middleName5 != organizationName;
          v69 = organizationName;
          v70 = middleName5;
          if (middleName5 == organizationName)
          {
            goto LABEL_45;
          }

          organizationName2 = [(DNDContact *)self organizationName];
          if (!organizationName2)
          {
            v65 = 0;
            *&v94[32] = 0x100000000;
            *(&v98[2] + 4) = 0x100000000;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            *&v94[20] = v98[4];
            *&v94[24] = 0x100000000;
            *&v94[16] = v98[4];
            *v94 = HIDWORD(v98[3]);
            *&v94[8] = HIDWORD(v98[3]);
            goto LABEL_63;
          }

          v65 = organizationName2;
          organizationName3 = [(DNDContact *)v6 organizationName];
          if (!organizationName3)
          {
            v60 = 0;
            *&v94[32] = 0x100000000;
            *(&v98[2] + 4) = 0x100000000;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            *&v94[20] = v98[4];
            *&v94[24] = 0x100000000;
            *&v94[16] = v98[4];
            *v94 = HIDWORD(v98[3]);
            *&v94[4] = 1;
            *&v94[8] = HIDWORD(v98[3]);
            goto LABEL_63;
          }

          v60 = organizationName3;
          middleName5 = [(DNDContact *)self organizationName];
          organizationName4 = [(DNDContact *)v6 organizationName];
          v56 = middleName5;
          if ([middleName5 isEqual:?])
          {
LABEL_45:
            middleName5 = [(DNDContact *)self phoneNumbers];
            phoneNumbers = [(DNDContact *)v6 phoneNumbers];
            HIDWORD(v98[2]) = middleName5 != phoneNumbers;
            v64 = middleName5;
            if (middleName5 == phoneNumbers)
            {
              goto LABEL_52;
            }

            phoneNumbers2 = [(DNDContact *)self phoneNumbers];
            if (!phoneNumbers2)
            {
              v59 = 0;
              *v95 = 0;
              *&v95[4] = v27;
              *&v95[8] = v27;
              v96 = 0x100000000;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
              v97 = v19 | 0x100000000;
              v13 = v19;
              v14 = 0;
              *&v94[20] = LODWORD(v98[4]);
              *v94 = HIDWORD(v98[3]);
              *&v94[28] = 1;
              *&v94[4] = v98[3];
              *&v94[12] = v98[3];
              *&v94[16] = v98[4];
              *&v94[32] = 0x100000001;
              HIDWORD(v98[2]) = 1;
              goto LABEL_63;
            }

            v59 = phoneNumbers2;
            phoneNumbers3 = [(DNDContact *)v6 phoneNumbers];
            if (!phoneNumbers3)
            {
              v54 = 0;
              *v95 = 0;
              *&v95[4] = v27;
              *&v95[8] = v27;
              v96 = 0x100000000;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
              v97 = v19 | 0x100000000;
              v13 = v19;
              v14 = 0;
              *&v94[16] = v98[4];
              *&v94[20] = v98[4];
              *v94 = HIDWORD(v98[3]);
              *&v94[4] = v98[3];
              *&v94[12] = v98[3];
              *&v94[32] = 0x100000001;
              HIDWORD(v98[2]) = 1;
              *&v94[24] = 0x100000001;
              goto LABEL_63;
            }

            v54 = phoneNumbers3;
            middleName5 = [(DNDContact *)self phoneNumbers];
            phoneNumbers4 = [(DNDContact *)v6 phoneNumbers];
            v52 = middleName5;
            if ([middleName5 isEqual:?])
            {
LABEL_52:
              middleName5 = [(DNDContact *)self emailAddresses];
              emailAddresses = [(DNDContact *)v6 emailAddresses];
              v58 = middleName5;
              if (middleName5 == emailAddresses)
              {
                v15 = 0;
                v16 = 0;
                v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
                v97 = v19 | 0x100000000;
                v13 = v19;
                v14 = 0;
                *&v95[4] = v27;
                *&v95[8] = v27;
                *&v94[16] = v98[4];
                *&v94[20] = v98[4];
                *v95 = HIDWORD(v98[2]);
                *v94 = HIDWORD(v98[3]);
                *&v94[24] = HIDWORD(v98[2]);
                *&v94[28] = 1;
                *&v94[4] = v98[3];
                *&v94[12] = v98[3];
                *&v94[32] = 0x100000001;
                v96 = 0x100000001;
                v17 = 1;
              }

              else
              {
                emailAddresses2 = [(DNDContact *)self emailAddresses];
                if (emailAddresses2)
                {
                  v53 = emailAddresses2;
                  emailAddresses3 = [(DNDContact *)v6 emailAddresses];
                  if (emailAddresses3)
                  {
                    v50 = emailAddresses3;
                    middleName5 = [(DNDContact *)self emailAddresses];
                    emailAddresses4 = [(DNDContact *)v6 emailAddresses];
                    v17 = [middleName5 isEqual:emailAddresses4];
                    v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
                    v97 = v19 | 0x100000000;
                    v13 = v19;
                    *&v95[4] = v27;
                    *&v95[8] = v27;
                    *&v94[16] = v98[4];
                    *&v94[20] = v98[4];
                    *v94 = HIDWORD(v98[3]);
                    *&v94[28] = 1;
                    *&v94[4] = v98[3];
                    *&v94[12] = v98[3];
                    *&v94[32] = 0x100000001;
                    *&v94[24] = HIDWORD(v98[2]);
                    *v95 = HIDWORD(v98[2]);
                    v16 = 1;
                  }

                  else
                  {
                    v50 = 0;
                    v16 = 0;
                    v17 = 0;
                    v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
                    v97 = v19 | 0x100000000;
                    v13 = v19;
                    *&v95[4] = v27;
                    *&v95[8] = v27;
                    *&v94[16] = v98[4];
                    *&v94[20] = v98[4];
                    *v94 = HIDWORD(v98[3]);
                    *&v94[28] = 1;
                    *&v94[4] = v98[3];
                    *&v94[12] = v98[3];
                    *&v94[32] = 0x100000001;
                    *&v94[24] = HIDWORD(v98[2]);
                    *v95 = HIDWORD(v98[2]);
                  }

                  v96 = 0x100000001;
                  v14 = 1;
                  v15 = 1;
                }

                else
                {
                  v53 = 0;
                  v15 = 0;
                  v16 = 0;
                  v17 = 0;
                  v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
                  v97 = v19 | 0x100000000;
                  v13 = v19;
                  *&v95[4] = v27;
                  *&v95[8] = v27;
                  *&v94[16] = v98[4];
                  *&v94[20] = v98[4];
                  *v94 = HIDWORD(v98[3]);
                  *&v94[28] = 1;
                  *&v94[4] = v98[3];
                  *&v94[12] = v98[3];
                  *&v94[32] = 0x100000001;
                  *&v94[24] = HIDWORD(v98[2]);
                  *v95 = HIDWORD(v98[2]);
                  v96 = 0x100000001;
                  v14 = 1;
                }
              }

              goto LABEL_63;
            }

            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            *&v94[16] = v98[4];
            *&v94[20] = v98[4];
            *v94 = __PAIR64__(v98[3], HIDWORD(v98[3]));
            *&v94[8] = HIDWORD(v98[3]);
            *&v94[12] = v98[3];
            *&v94[32] = 0x100000001;
            HIDWORD(v98[2]) = 1;
            *&v94[24] = 0x100000001;
            *v95 = 1;
            *&v95[4] = v27;
          }

          else
          {
            *&v94[32] = 0x100000000;
            *(&v98[2] + 4) = 0x100000000;
            *v95 = 0;
            *&v95[4] = v27;
            *&v95[8] = v27;
            v96 = 0x100000000;
            v15 = 0;
            v16 = 0;
            v17 = 0;
            v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            *&v94[20] = LODWORD(v98[4]);
            *v94 = HIDWORD(v98[3]) | 0x100000000;
            *&v94[28] = 1;
            *&v94[8] = *v94;
            *&v94[16] = v98[4];
          }
        }

        else
        {
          *&v94[28] = 0;
          *(&v98[2] + 4) = 0;
          *v95 = 0;
          *&v95[4] = v27;
          *&v95[8] = v27;
          v96 = 0x100000000;
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
          v97 = v19 | 0x100000000;
          v13 = v19;
          v14 = 0;
          *&v94[20] = v98[4];
          *&v94[24] = 0;
          *&v94[16] = v98[4];
          *&v94[36] = 1;
          HIDWORD(v98[3]) = 1;
          *v94 = 1;
          *&v94[8] = 1;
        }
      }

      else
      {
        v96 = 0;
        *(&v98[2] + 4) = 0;
        *(&v98[3] + 4) = 0;
        memset(v94, 0, sizeof(v94));
        v15 = 0;
        v16 = 0;
        v17 = 0;
        v98[0] = (contactIdentifier != contactIdentifier2) | 0x100000000;
        v97 = v19 | 0x100000000;
        v13 = v19;
        v14 = 0;
        LODWORD(v98[1]) = 1;
        *&v95[8] = 1;
        *v95 = 0x100000000;
      }
    }

    else
    {
      LODWORD(v98[0]) = contactIdentifier != contactIdentifier2;
      v96 = 0;
      *(&v98[2] + 4) = 0;
      *(&v98[3] + 4) = 0;
      memset(v94, 0, sizeof(v94));
      memset(v95, 0, sizeof(v95));
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(v98 + 4) = 1;
      LODWORD(v98[2]) = 1;
      v97 = 1;
      v13 = 1;
    }
  }

  else
  {
    *(v98 + 4) = 0;
    memset(&v98[2], 0, 20);
    v97 = 0;
    v13 = 0;
    v96 = 0;
    memset(v94, 0, sizeof(v94));
    memset(v95, 0, sizeof(v95));
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    HIDWORD(v98[1]) = 1;
    LODWORD(v98[0]) = 1;
  }

LABEL_63:
  if (v16)
  {
    v44 = contactIdentifier2;
    v45 = contactIdentifier;
    v46 = v14;
    v47 = v13;
    v48 = v15;

    v15 = v48;
    v13 = v47;
    v14 = v46;
    contactIdentifier = v45;
    contactIdentifier2 = v44;
  }

  if (v15)
  {
  }

  if (v14)
  {
  }

  if (v96)
  {
  }

  if (*v95)
  {
  }

  if (*&v94[24])
  {
  }

  if (HIDWORD(v98[2]))
  {
  }

  if (*&v94[32])
  {
  }

  if (*&v94[12])
  {
  }

  if (*&v94[4])
  {
  }

  if (LODWORD(v98[3]))
  {
  }

  if (*&v94[28])
  {
  }

  if (*&v94[8])
  {
  }

  if (*v94)
  {
  }

  if (HIDWORD(v98[3]))
  {
  }

  if (*&v94[36])
  {
  }

  if (*&v94[16])
  {
  }

  if (*&v94[20])
  {
  }

  if (LODWORD(v98[4]))
  {
  }

  if (HIDWORD(v96))
  {
  }

  if (*&v95[4])
  {
  }

  if (*&v95[8])
  {
  }

  if (LODWORD(v98[1]))
  {
  }

  if (HIDWORD(v97))
  {
  }

  if (v13)
  {
  }

  if (v97)
  {
  }

  if (LODWORD(v98[2]))
  {
  }

  if (HIDWORD(v98[0]))
  {
  }

  if (LODWORD(v98[0]))
  {
  }

  if (HIDWORD(v98[1]))
  {
  }

  if (contactIdentifier != contactIdentifier2)
  {
  }

LABEL_126:
  return v17;
}

- (id)normalizedPhoneNumbers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_phoneNumbers;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [DNDContact normalizePhoneNumber:*(*(&v12 + 1) + 8 * i), v12];
        [v3 addObject:v9];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)matchesContact:(id)contact
{
  contactCopy = contact;
  contactIdentifier = [(DNDContact *)self contactIdentifier];
  if (contactIdentifier)
  {
    contactIdentifier2 = [(DNDContact *)self contactIdentifier];
    contactIdentifier3 = [contactCopy contactIdentifier];
    if (contactIdentifier2 == contactIdentifier3)
    {
      v12 = 1;
    }

    else
    {
      contactIdentifier4 = [(DNDContact *)self contactIdentifier];
      if (contactIdentifier4)
      {
        contactIdentifier5 = [contactCopy contactIdentifier];
        if (contactIdentifier5)
        {
          contactIdentifier6 = [(DNDContact *)self contactIdentifier];
          contactIdentifier7 = [contactCopy contactIdentifier];
          v12 = [contactIdentifier6 isEqual:contactIdentifier7];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  firstName = [(DNDContact *)self firstName];
  firstName2 = [contactCopy firstName];
  if (firstName != firstName2)
  {
    firstName3 = [(DNDContact *)self firstName];
    if (!firstName3)
    {
      v28 = 0;
      goto LABEL_98;
    }

    v16 = firstName3;
    firstName4 = [contactCopy firstName];
    if (!firstName4)
    {
      v28 = 0;
LABEL_97:

      goto LABEL_98;
    }

    firstName5 = [(DNDContact *)self firstName];
    firstName6 = [contactCopy firstName];
    if (![firstName5 isEqual:firstName6])
    {
      v28 = 0;
LABEL_96:

      goto LABEL_97;
    }

    v94 = v16;
    v95 = firstName6;
    v96 = firstName5;
    v97 = firstName4;
  }

  middleName = [(DNDContact *)self middleName];
  middleName2 = [contactCopy middleName];
  if (middleName == middleName2)
  {
    v93 = v12;
    goto LABEL_25;
  }

  middleName3 = [(DNDContact *)self middleName];
  if (!middleName3)
  {
LABEL_38:

    v28 = 0;
    firstName5 = v96;
    firstName4 = v97;
    v16 = v94;
    firstName6 = v95;
    if (firstName == firstName2)
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  v23 = middleName3;
  middleName4 = [contactCopy middleName];
  if (!middleName4)
  {

    goto LABEL_38;
  }

  v25 = middleName4;
  v93 = v12;
  middleName5 = [(DNDContact *)self middleName];
  middleName6 = [contactCopy middleName];
  if (([middleName5 isEqual:middleName6] & 1) == 0)
  {

    goto LABEL_94;
  }

  v90 = middleName6;
  v91 = middleName5;
  v87 = v25;
  v88 = v23;
LABEL_25:
  lastName = [(DNDContact *)self lastName];
  lastName2 = [contactCopy lastName];
  if (lastName == lastName2)
  {
    goto LABEL_32;
  }

  lastName3 = [(DNDContact *)self lastName];
  if (!lastName3)
  {
LABEL_49:

    if (middleName != middleName2)
    {
LABEL_93:
    }

LABEL_94:

    v28 = 0;
    goto LABEL_95;
  }

  v89 = lastName3;
  lastName4 = [contactCopy lastName];
  if (!lastName4)
  {
LABEL_48:

    goto LABEL_49;
  }

  v86 = lastName4;
  lastName5 = [(DNDContact *)self lastName];
  lastName6 = [contactCopy lastName];
  if (([lastName5 isEqual:lastName6] & 1) == 0)
  {

    goto LABEL_48;
  }

  v80 = lastName6;
  v83 = lastName5;
LABEL_32:
  nickName = [(DNDContact *)self nickName];
  nickName2 = [contactCopy nickName];
  if (nickName != nickName2)
  {
    nickName3 = [(DNDContact *)self nickName];
    if (nickName3)
    {
      v81 = nickName3;
      nickName4 = [contactCopy nickName];
      if (nickName4)
      {
        v77 = lastName;
        v79 = nickName4;
        v38 = nickName;
        nickName5 = [(DNDContact *)self nickName];
        nickName6 = [contactCopy nickName];
        if ([nickName5 isEqual:nickName6])
        {
          v82 = lastName2;
          v73 = nickName5;
          lastName2 = nickName6;
          nickName = v38;
          lastName = v77;
          goto LABEL_42;
        }

        lastName = v77;
LABEL_60:
        if (lastName != lastName2)
        {
        }

        if (middleName == middleName2)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }
    }

    goto LABEL_60;
  }

  v82 = lastName2;
LABEL_42:
  organizationName = [(DNDContact *)self organizationName];
  organizationName2 = [contactCopy organizationName];
  v85 = organizationName;
  if (organizationName != organizationName2)
  {
    organizationName3 = [(DNDContact *)self organizationName];
    if (organizationName3)
    {
      v74 = organizationName3;
      organizationName4 = [contactCopy organizationName];
      if (organizationName4)
      {
        v76 = lastName2;
        v72 = organizationName4;
        organizationName5 = [(DNDContact *)self organizationName];
        organizationName6 = [contactCopy organizationName];
        if ([organizationName5 isEqual:organizationName6])
        {
          v69 = organizationName6;
          v70 = organizationName5;
          goto LABEL_52;
        }

        if (nickName != nickName2)
        {
        }

        v52 = v82;
        v59 = lastName == v82;
LABEL_78:
        if (!v59)
        {
        }

        if (middleName == middleName2)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      v51 = lastName;
      v58 = lastName2;

      v52 = v82;
      if (nickName != nickName2)
      {
      }
    }

    else
    {
      v51 = lastName;

      if (nickName != nickName2)
      {
      }

      v52 = v82;
    }

    v59 = v51 == v52;
    goto LABEL_78;
  }

  v76 = lastName2;
LABEL_52:
  normalizedPhoneNumbers = [(DNDContact *)self normalizedPhoneNumbers];
  normalizedPhoneNumbers2 = [contactCopy normalizedPhoneNumbers];
  v75 = normalizedPhoneNumbers;
  if (normalizedPhoneNumbers != normalizedPhoneNumbers2)
  {
    normalizedPhoneNumbers3 = [(DNDContact *)self normalizedPhoneNumbers];
    if (normalizedPhoneNumbers3)
    {
      v71 = normalizedPhoneNumbers3;
      normalizedPhoneNumbers4 = [contactCopy normalizedPhoneNumbers];
      if (normalizedPhoneNumbers4)
      {
        v68 = normalizedPhoneNumbers4;
        normalizedPhoneNumbers5 = [(DNDContact *)self normalizedPhoneNumbers];
        normalizedPhoneNumbers6 = [contactCopy normalizedPhoneNumbers];
        if ([normalizedPhoneNumbers5 isEqual:normalizedPhoneNumbers6])
        {
          v66 = normalizedPhoneNumbers6;
          v67 = normalizedPhoneNumbers5;
          goto LABEL_67;
        }

        normalizedPhoneNumbers4 = v68;
      }

      v60 = nickName;
    }

    else
    {
      v60 = nickName;
    }

    if (v85 != organizationName2)
    {
    }

    if (v60 != nickName2)
    {
    }

    if (lastName != v82)
    {
    }

    if (middleName != middleName2)
    {
      goto LABEL_93;
    }

    goto LABEL_94;
  }

LABEL_67:
  emailAddresses = [(DNDContact *)self emailAddresses];
  emailAddresses2 = [contactCopy emailAddresses];
  v55 = emailAddresses2;
  if (emailAddresses == emailAddresses2)
  {

    v28 = 1;
  }

  else
  {
    emailAddresses3 = [(DNDContact *)self emailAddresses];
    if (emailAddresses3)
    {
      v65 = emailAddresses3;
      emailAddresses4 = [contactCopy emailAddresses];
      if (emailAddresses4)
      {
        v64 = emailAddresses4;
        emailAddresses5 = [(DNDContact *)self emailAddresses];
        emailAddresses6 = [contactCopy emailAddresses];
        v28 = [emailAddresses5 isEqual:emailAddresses6];

        emailAddresses4 = v64;
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {

      v28 = 0;
    }
  }

  if (v75 != normalizedPhoneNumbers2)
  {
  }

  if (v85 != organizationName2)
  {
  }

  if (nickName != nickName2)
  {
  }

  if (lastName != v82)
  {
  }

  if (middleName != middleName2)
  {
  }

LABEL_95:
  firstName5 = v96;
  firstName4 = v97;
  v16 = v94;
  firstName6 = v95;
  v12 = v93;
  if (firstName != firstName2)
  {
    goto LABEL_96;
  }

LABEL_98:

  return (v12 | v28) & 1;
}

- (BOOL)matchesContactHandle:(id)handle
{
  handleCopy = handle;
  contactIdentifier = [(DNDContact *)self contactIdentifier];
  if (contactIdentifier)
  {
    contactIdentifier2 = [(DNDContact *)self contactIdentifier];
    contactIdentifier3 = [handleCopy contactIdentifier];
    if (contactIdentifier2 == contactIdentifier3)
    {
      v12 = 1;
    }

    else
    {
      contactIdentifier4 = [(DNDContact *)self contactIdentifier];
      if (contactIdentifier4)
      {
        contactIdentifier5 = [handleCopy contactIdentifier];
        if (contactIdentifier5)
        {
          contactIdentifier6 = [(DNDContact *)self contactIdentifier];
          contactIdentifier7 = [handleCopy contactIdentifier];
          v12 = [contactIdentifier6 isEqual:contactIdentifier7];
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  normalizedValue = [handleCopy normalizedValue];
  v14 = normalizedValue;
  if (normalizedValue)
  {
    LOBYTE(normalizedValue) = [(NSSet *)self->_phoneNumbers containsObject:normalizedValue]|| [(NSSet *)self->_emailAddresses containsObject:v14];
  }

  v15 = v12 | normalizedValue;

  return v15 & 1;
}

- (id)_descriptionForRedacted:(BOOL)redacted
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  contactIdentifier = self->_contactIdentifier;
  firstName = self->_firstName;
  if (redacted)
  {
    dnd_privacyObfuscatedString = [(NSString *)firstName dnd_privacyObfuscatedString];
    dnd_privacyObfuscatedString2 = [(NSString *)self->_middleName dnd_privacyObfuscatedString];
    dnd_privacyObfuscatedString3 = [(NSString *)self->_lastName dnd_privacyObfuscatedString];
    dnd_privacyObfuscatedString4 = [(NSString *)self->_nickName dnd_privacyObfuscatedString];
    dnd_privacyObfuscatedString5 = [(NSString *)self->_nickName dnd_privacyObfuscatedString];
    v13 = [(DNDContact *)self _redactedDescriptionsForStrings:self->_phoneNumbers];
    v14 = [(DNDContact *)self _redactedDescriptionsForStrings:self->_emailAddresses];
    v15 = [v5 stringWithFormat:@"<%@: %p contactIdentifier: %@; firstName: %@; middleName: %@; lastName: %@; nickName: %@; organizationName: %@; phoneNumbers: %@; emailAddresses: %@;>", v6, self, contactIdentifier, dnd_privacyObfuscatedString, dnd_privacyObfuscatedString2, dnd_privacyObfuscatedString3, dnd_privacyObfuscatedString4, dnd_privacyObfuscatedString5, v13, v14];;
  }

  else
  {
    v16 = *&self->_middleName;
    v15 = [v5 stringWithFormat:@"<%@: %p contactIdentifier: %@; firstName: %@; middleName: %@; lastName: %@; nickName: %@; organizationName: %@; phoneNumbers: %@; emailAddresses: %@;>", v6, self, contactIdentifier, firstName, self->_middleName, self->_lastName, self->_nickName, self->_organizationName, self->_phoneNumbers, self->_emailAddresses];;
  }

  return v15;
}

- (id)_redactedDescriptionsForStrings:(id)strings
{
  v18 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = stringsCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        dnd_privacyObfuscatedString = [*(*(&v13 + 1) + 8 * i) dnd_privacyObfuscatedString];
        [v4 addObject:dnd_privacyObfuscatedString];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)diffDescription
{
  string = [MEMORY[0x277CCAB68] string];
  if ([(NSString *)self->_contactIdentifier length])
  {
    [string appendFormat:@"contactIdentifier:%@;", self->_contactIdentifier];
  }

  if ([(NSString *)self->_firstName length])
  {
    [string appendFormat:@"firstName:%@;", self->_firstName];
  }

  if ([(NSString *)self->_middleName length])
  {
    [string appendFormat:@"middleName:%@;", self->_middleName];
  }

  if ([(NSString *)self->_lastName length])
  {
    [string appendFormat:@"lastName:%@;", self->_lastName];
  }

  if ([(NSString *)self->_nickName length])
  {
    [string appendFormat:@"nickName:%@;", self->_nickName];
  }

  if ([(NSString *)self->_organizationName length])
  {
    [string appendFormat:@"organizationName:%@;", self->_organizationName];
  }

  if ([(NSSet *)self->_phoneNumbers count])
  {
    [string appendFormat:@"phoneNumbers:%@;", self->_phoneNumbers];
  }

  if ([(NSSet *)self->_emailAddresses count])
  {
    [string appendFormat:@"emailAddresses:%@;", self->_emailAddresses];
  }

  return string;
}

- (DNDContact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"middleName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nickName"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"phoneNumbers"];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"emailAddresses"];

  v17 = [(DNDContact *)self _initWithContactIdentifier:v19 firstName:v4 middleName:v5 lastName:v6 nickName:v7 organizationName:v8 phoneNumbers:v12 emailAddresses:v16];
  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  contactIdentifier = self->_contactIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [coderCopy encodeObject:self->_firstName forKey:@"firstName"];
  [coderCopy encodeObject:self->_middleName forKey:@"middleName"];
  [coderCopy encodeObject:self->_lastName forKey:@"lastName"];
  [coderCopy encodeObject:self->_nickName forKey:@"nickName"];
  [coderCopy encodeObject:self->_organizationName forKey:@"organizationName"];
  [coderCopy encodeObject:self->_phoneNumbers forKey:@"phoneNumbers"];
  [coderCopy encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
}

+ (void)normalizePhoneNumber:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543619;
  v5 = a1;
  v6 = 2113;
  v7 = a2;
  _os_log_error_impl(&dword_22002F000, log, OS_LOG_TYPE_ERROR, "%{public}@ couldnt normalize phonenumber %{private}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end