@interface DNDSContactRecord
+ (id)migrateDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber;
+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_initWithContactIdentifier:(id)identifier firstName:(id)name middleName:(id)middleName lastName:(id)lastName nickName:(id)nickName organizationName:(id)organizationName phoneNumbers:(id)numbers emailAddresses:(id)self0;
- (id)_initWithRecord:(id)record;
- (id)dictionaryRepresentationWithContext:(id)context;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation DNDSContactRecord

- (id)_initWithRecord:(id)record
{
  recordCopy = record;
  contactIdentifier = [recordCopy contactIdentifier];
  firstName = [recordCopy firstName];
  middleName = [recordCopy middleName];
  lastName = [recordCopy lastName];
  nickName = [recordCopy nickName];
  organizationName = [recordCopy organizationName];
  phoneNumbers = [recordCopy phoneNumbers];
  emailAddresses = [recordCopy emailAddresses];

  v13 = [(DNDSContactRecord *)self _initWithContactIdentifier:contactIdentifier firstName:firstName middleName:middleName lastName:lastName nickName:nickName organizationName:organizationName phoneNumbers:phoneNumbers emailAddresses:emailAddresses];
  return v13;
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
  v42.super_class = DNDSContactRecord;
  v24 = [(DNDSContactRecord *)&v42 init];
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
  contactIdentifier = [(DNDSContactRecord *)self contactIdentifier];
  v4 = [contactIdentifier hash];
  firstName = [(DNDSContactRecord *)self firstName];
  v6 = [firstName hash] ^ v4;
  middleName = [(DNDSContactRecord *)self middleName];
  v8 = [middleName hash];
  lastName = [(DNDSContactRecord *)self lastName];
  v10 = v6 ^ v8 ^ [lastName hash];
  nickName = [(DNDSContactRecord *)self nickName];
  v12 = [nickName hash];
  organizationName = [(DNDSContactRecord *)self organizationName];
  v14 = v12 ^ [organizationName hash];
  phoneNumbers = [(DNDSContactRecord *)self phoneNumbers];
  v16 = v10 ^ v14 ^ [phoneNumbers hash];
  emailAddresses = [(DNDSContactRecord *)self emailAddresses];
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
  contactIdentifier = [(DNDSContactRecord *)self contactIdentifier];
  contactIdentifier2 = [(DNDSContactRecord *)v6 contactIdentifier];
  emailAddresses4 = contactIdentifier != contactIdentifier2;
  if (contactIdentifier == contactIdentifier2)
  {
    goto LABEL_10;
  }

  contactIdentifier3 = [(DNDSContactRecord *)self contactIdentifier];
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
  contactIdentifier4 = [(DNDSContactRecord *)v6 contactIdentifier];
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
  contactIdentifier5 = [(DNDSContactRecord *)self contactIdentifier];
  [(DNDSContactRecord *)v6 contactIdentifier];
  v85 = v86 = contactIdentifier5;
  if ([contactIdentifier5 isEqual:?])
  {
LABEL_10:
    firstName = [(DNDSContactRecord *)self firstName];
    firstName2 = [(DNDSContactRecord *)v6 firstName];
    v92 = firstName;
    v19 = firstName != firstName2;
    HIDWORD(v98[1]) = contactIdentifier != contactIdentifier2;
    if (firstName == firstName2)
    {
      goto LABEL_16;
    }

    firstName3 = [(DNDSContactRecord *)self firstName];
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
    firstName4 = [(DNDSContactRecord *)v6 firstName];
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
    firstName5 = [(DNDSContactRecord *)self firstName];
    firstName6 = [(DNDSContactRecord *)v6 firstName];
    v80 = firstName5;
    if ([firstName5 isEqual:?])
    {
LABEL_16:
      middleName = [(DNDSContactRecord *)self middleName];
      middleName2 = [(DNDSContactRecord *)v6 middleName];
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

      middleName3 = [(DNDSContactRecord *)self middleName];
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
      middleName4 = [(DNDSContactRecord *)v6 middleName];
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
      middleName5 = [(DNDSContactRecord *)self middleName];
      middleName6 = [(DNDSContactRecord *)v6 middleName];
      v74 = middleName5;
      if ([middleName5 isEqual:?])
      {
LABEL_23:
        lastName = [(DNDSContactRecord *)self lastName];
        lastName2 = [(DNDSContactRecord *)v6 lastName];
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
          lastName3 = [(DNDSContactRecord *)self lastName];
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
          lastName4 = [(DNDSContactRecord *)v6 lastName];
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
          middleName5 = [(DNDSContactRecord *)self lastName];
          lastName5 = [(DNDSContactRecord *)v6 lastName];
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

        middleName5 = [(DNDSContactRecord *)self nickName];
        nickName = [(DNDSContactRecord *)v6 nickName];
        HIDWORD(v98[3]) = middleName5 != nickName;
        v76 = middleName5;
        if (middleName5 == nickName)
        {
          goto LABEL_38;
        }

        nickName2 = [(DNDSContactRecord *)self nickName];
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
        nickName3 = [(DNDSContactRecord *)v6 nickName];
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
        middleName5 = [(DNDSContactRecord *)self nickName];
        nickName4 = [(DNDSContactRecord *)v6 nickName];
        v62 = middleName5;
        if ([middleName5 isEqual:?])
        {
LABEL_38:
          middleName5 = [(DNDSContactRecord *)self organizationName];
          organizationName = [(DNDSContactRecord *)v6 organizationName];
          LODWORD(v98[3]) = middleName5 != organizationName;
          v69 = organizationName;
          v70 = middleName5;
          if (middleName5 == organizationName)
          {
            goto LABEL_45;
          }

          organizationName2 = [(DNDSContactRecord *)self organizationName];
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
          organizationName3 = [(DNDSContactRecord *)v6 organizationName];
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
          middleName5 = [(DNDSContactRecord *)self organizationName];
          organizationName4 = [(DNDSContactRecord *)v6 organizationName];
          v56 = middleName5;
          if ([middleName5 isEqual:?])
          {
LABEL_45:
            middleName5 = [(DNDSContactRecord *)self phoneNumbers];
            phoneNumbers = [(DNDSContactRecord *)v6 phoneNumbers];
            HIDWORD(v98[2]) = middleName5 != phoneNumbers;
            v64 = middleName5;
            if (middleName5 == phoneNumbers)
            {
              goto LABEL_52;
            }

            phoneNumbers2 = [(DNDSContactRecord *)self phoneNumbers];
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
            phoneNumbers3 = [(DNDSContactRecord *)v6 phoneNumbers];
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
            middleName5 = [(DNDSContactRecord *)self phoneNumbers];
            phoneNumbers4 = [(DNDSContactRecord *)v6 phoneNumbers];
            v52 = middleName5;
            if ([middleName5 isEqual:?])
            {
LABEL_52:
              middleName5 = [(DNDSContactRecord *)self emailAddresses];
              emailAddresses = [(DNDSContactRecord *)v6 emailAddresses];
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
                emailAddresses2 = [(DNDSContactRecord *)self emailAddresses];
                if (emailAddresses2)
                {
                  v53 = emailAddresses2;
                  emailAddresses3 = [(DNDSContactRecord *)v6 emailAddresses];
                  if (emailAddresses3)
                  {
                    v50 = emailAddresses3;
                    middleName5 = [(DNDSContactRecord *)self emailAddresses];
                    emailAddresses4 = [(DNDSContactRecord *)v6 emailAddresses];
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

- (NSString)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  contactIdentifier = [(DNDSContactRecord *)self contactIdentifier];
  firstName = [(DNDSContactRecord *)self firstName];
  middleName = [(DNDSContactRecord *)self middleName];
  lastName = [(DNDSContactRecord *)self lastName];
  nickName = [(DNDSContactRecord *)self nickName];
  organizationName = [(DNDSContactRecord *)self organizationName];
  phoneNumbers = [(DNDSContactRecord *)self phoneNumbers];
  emailAddresses = [(DNDSContactRecord *)self emailAddresses];
  v12 = [v14 stringWithFormat:@"<%@: %p contactIdentifier: %@; firstName: '%@'; middleName: %@; lastName: %@; nickName: %@; organizationName: %@; phoneNumbers: %@; emailAddresses: %@>", v3, self, contactIdentifier, firstName, middleName, lastName, nickName, organizationName, phoneNumbers, emailAddresses];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [DNDSMutableContactRecord alloc];

  return [(DNDSContactRecord *)v4 _initWithRecord:self];
}

+ (id)migrateDictionaryRepresentation:(id)representation fromVersionNumber:(unint64_t)number toVersionNumber:(unint64_t)versionNumber
{
  v27 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v8 = [representationCopy mutableCopy];
  if (number <= 1 && versionNumber >= 2)
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = [representationCopy bs_safeArrayForKey:@"phoneNumbers"];
    v11 = [v9 setWithArray:v10];

    v12 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [MEMORY[0x277D058F0] normalizePhoneNumber:{*(*(&v22 + 1) + 8 * i), v22}];
          [v12 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    allObjects = [v12 allObjects];
    [v8 bs_setSafeObject:allObjects forKey:@"phoneNumbers"];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)newWithDictionaryRepresentation:(id)representation context:(id)context
{
  contextCopy = context;
  representationCopy = representation;
  v48 = [representationCopy bs_safeObjectForKey:@"contactIdentifier" ofType:objc_opt_class()];
  v47 = [representationCopy bs_safeObjectForKey:@"firstName" ofType:objc_opt_class()];
  v6 = [representationCopy bs_safeObjectForKey:@"middleName" ofType:objc_opt_class()];
  v7 = [representationCopy bs_safeObjectForKey:@"lastName" ofType:objc_opt_class()];
  v46 = [representationCopy bs_safeObjectForKey:@"nickName" ofType:objc_opt_class()];
  v45 = [representationCopy bs_safeObjectForKey:@"organizationName" ofType:objc_opt_class()];
  v8 = MEMORY[0x277CBEB98];
  v9 = [representationCopy bs_safeArrayForKey:@"phoneNumbers"];
  v10 = [v8 setWithArray:v9];

  v11 = MEMORY[0x277CBEB98];
  v12 = [representationCopy bs_safeArrayForKey:@"emailAddresses"];
  v13 = [v11 setWithArray:v12];

  v14 = [representationCopy bs_safeObjectForKey:@"type" ofType:objc_opt_class()];
  v15 = [representationCopy bs_safeObjectForKey:@"value" ofType:objc_opt_class()];

  v16 = v14;
  v43 = v15;
  if (!v14 || !v15)
  {
    v20 = v45;
    v19 = v46;
    v17 = v10;
    v18 = v13;
    goto LABEL_9;
  }

  v17 = v10;
  if ([v14 unsignedIntegerValue] == 1)
  {
    v18 = [MEMORY[0x277CBEB98] setWithObject:v15];
    v20 = v45;
    v19 = v46;
  }

  else
  {
    unsignedIntegerValue = [v14 unsignedIntegerValue];
    v20 = v45;
    v19 = v46;
    v18 = v13;
    if (unsignedIntegerValue != 2)
    {
      goto LABEL_9;
    }

    [MEMORY[0x277CBEB98] setWithObject:v43];
    v17 = v13 = v17;
  }

LABEL_9:
  if (v48)
  {
    v22 = [[self alloc] _initWithContactIdentifier:v48 firstName:v47 middleName:v6 lastName:v7 nickName:v19 organizationName:v20 phoneNumbers:v17 emailAddresses:v18];
  }

  else
  {
    v38 = v16;
    v23 = objc_alloc_init(MEMORY[0x277D05A28]);
    [v23 setFirstName:v47];
    [v23 setLastName:v7];
    [v23 setMiddleName:v6];
    [v23 setNickName:v19];
    [v23 setOrganizationName:v20];
    [v23 setPhoneNumbers:v17];
    [v23 setEmailAddresses:v18];
    contactProvider = [contextCopy contactProvider];
    [contactProvider contactForContact:v23];
    v25 = v39 = v17;

    v36 = [self alloc];
    contactIdentifier = [v25 contactIdentifier];
    firstName = [v25 firstName];
    middleName = [v25 middleName];
    lastName = [v25 lastName];
    [v25 nickName];
    v28 = v42 = v6;
    [v25 organizationName];
    v29 = v40 = v7;
    [v25 phoneNumbers];
    v30 = v37 = v18;
    emailAddresses = [v25 emailAddresses];
    v32 = middleName;
    v22 = [v36 _initWithContactIdentifier:contactIdentifier firstName:firstName middleName:middleName lastName:lastName nickName:v28 organizationName:v29 phoneNumbers:v30 emailAddresses:emailAddresses];

    v20 = v45;
    v18 = v37;
    v19 = v46;

    v7 = v40;
    v6 = v42;

    v17 = v39;
    v16 = v38;
  }

  return v22;
}

- (id)dictionaryRepresentationWithContext:(id)context
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  arrayHealingSource = [contextCopy arrayHealingSource];
  v7 = [arrayHealingSource countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(arrayHealingSource);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [objc_opt_class() newWithDictionaryRepresentation:v11 context:contextCopy];
        if ([(DNDSContactRecord *)self isEqual:v12])
        {
          v13 = [v11 mutableCopy];

          dictionary = v13;
          goto LABEL_11;
        }
      }

      v8 = [arrayHealingSource countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  firstName = [(DNDSContactRecord *)self firstName];
  [dictionary bs_setSafeObject:firstName forKey:@"firstName"];

  middleName = [(DNDSContactRecord *)self middleName];
  [dictionary bs_setSafeObject:middleName forKey:@"middleName"];

  lastName = [(DNDSContactRecord *)self lastName];
  [dictionary bs_setSafeObject:lastName forKey:@"lastName"];

  nickName = [(DNDSContactRecord *)self nickName];
  [dictionary bs_setSafeObject:nickName forKey:@"nickName"];

  organizationName = [(DNDSContactRecord *)self organizationName];
  [dictionary bs_setSafeObject:organizationName forKey:@"organizationName"];

  phoneNumbers = [(DNDSContactRecord *)self phoneNumbers];
  allObjects = [phoneNumbers allObjects];
  [dictionary bs_setSafeObject:allObjects forKey:@"phoneNumbers"];

  emailAddresses = [(DNDSContactRecord *)self emailAddresses];
  allObjects2 = [emailAddresses allObjects];
  [dictionary bs_setSafeObject:allObjects2 forKey:@"emailAddresses"];

  if ([contextCopy destination] == 1)
  {
    contactIdentifier = [(DNDSContactRecord *)self contactIdentifier];
    [dictionary bs_setSafeObject:contactIdentifier forKey:@"contactIdentifier"];
  }

  v24 = *MEMORY[0x277D85DE8];

  return dictionary;
}

@end