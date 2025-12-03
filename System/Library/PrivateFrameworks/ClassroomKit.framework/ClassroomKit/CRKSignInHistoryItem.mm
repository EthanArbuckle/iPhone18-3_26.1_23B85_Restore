@interface CRKSignInHistoryItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHistoryItem:(id)item;
- (CRKSignInHistoryItem)initWithCoder:(id)coder;
- (CRKSignInHistoryItem)initWithDictionary:(id)dictionary;
- (CRKSignInHistoryItem)initWithIdentifier:(id)identifier appleID:(id)d date:(id)date deviceName:(id)name deviceSerialNumber:(id)number userGivenName:(id)givenName userFamilyName:(id)familyName userFullName:(id)self0 userMonogram:(id)self1;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSignInHistoryItem

- (CRKSignInHistoryItem)initWithIdentifier:(id)identifier appleID:(id)d date:(id)date deviceName:(id)name deviceSerialNumber:(id)number userGivenName:(id)givenName userFamilyName:(id)familyName userFullName:(id)self0 userMonogram:(id)self1
{
  identifierCopy = identifier;
  dCopy = d;
  dateCopy = date;
  nameCopy = name;
  numberCopy = number;
  givenNameCopy = givenName;
  familyNameCopy = familyName;
  fullNameCopy = fullName;
  monogramCopy = monogram;
  v30.receiver = self;
  v30.super_class = CRKSignInHistoryItem;
  v19 = [(CRKSignInHistoryItem *)&v30 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_identifier, identifier);
    objc_storeStrong(&v20->_appleID, d);
    objc_storeStrong(&v20->_date, date);
    objc_storeStrong(&v20->_deviceName, name);
    objc_storeStrong(&v20->_deviceSerialNumber, number);
    objc_storeStrong(&v20->_userGivenName, givenName);
    objc_storeStrong(&v20->_userFamilyName, familyName);
    objc_storeStrong(&v20->_userFullName, fullName);
    objc_storeStrong(&v20->_userMonogram, monogram);
  }

  return v20;
}

- (CRKSignInHistoryItem)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v43.receiver = self;
  v43.super_class = CRKSignInHistoryItem;
  v5 = [(CRKSignInHistoryItem *)&v43 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"appleID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    appleID = v5->_appleID;
    v5->_appleID = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:@"date"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    date = v5->_date;
    v5->_date = v16;

    v18 = [dictionaryCopy objectForKeyedSubscript:@"deviceName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    deviceName = v5->_deviceName;
    v5->_deviceName = v20;

    v22 = [dictionaryCopy objectForKeyedSubscript:@"deviceSerialNumber"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23;

    deviceSerialNumber = v5->_deviceSerialNumber;
    v5->_deviceSerialNumber = v24;

    v26 = [dictionaryCopy objectForKeyedSubscript:@"userGivenName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = v27;

    userGivenName = v5->_userGivenName;
    v5->_userGivenName = v28;

    v30 = [dictionaryCopy objectForKeyedSubscript:@"userFamilyName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    userFamilyName = v5->_userFamilyName;
    v5->_userFamilyName = v32;

    v34 = [dictionaryCopy objectForKeyedSubscript:@"userFullName"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;

    userFullName = v5->_userFullName;
    v5->_userFullName = v36;

    v38 = [dictionaryCopy objectForKeyedSubscript:@"userMonogram"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;

    userMonogram = v5->_userMonogram;
    v5->_userMonogram = v40;
  }

  return v5;
}

- (id)dictionaryValue
{
  v3 = objc_opt_new();
  identifier = [(CRKSignInHistoryItem *)self identifier];
  [v3 setObject:identifier forKeyedSubscript:@"identifier"];

  appleID = [(CRKSignInHistoryItem *)self appleID];
  [v3 setObject:appleID forKeyedSubscript:@"appleID"];

  date = [(CRKSignInHistoryItem *)self date];
  [v3 setObject:date forKeyedSubscript:@"date"];

  deviceName = [(CRKSignInHistoryItem *)self deviceName];
  [v3 setObject:deviceName forKeyedSubscript:@"deviceName"];

  deviceSerialNumber = [(CRKSignInHistoryItem *)self deviceSerialNumber];
  [v3 setObject:deviceSerialNumber forKeyedSubscript:@"deviceSerialNumber"];

  userGivenName = [(CRKSignInHistoryItem *)self userGivenName];
  [v3 setObject:userGivenName forKeyedSubscript:@"userGivenName"];

  userFamilyName = [(CRKSignInHistoryItem *)self userFamilyName];
  [v3 setObject:userFamilyName forKeyedSubscript:@"userFamilyName"];

  userFullName = [(CRKSignInHistoryItem *)self userFullName];
  [v3 setObject:userFullName forKeyedSubscript:@"userFullName"];

  userMonogram = [(CRKSignInHistoryItem *)self userMonogram];
  [v3 setObject:userMonogram forKeyedSubscript:@"userMonogram"];

  v13 = [v3 copy];

  return v13;
}

- (CRKSignInHistoryItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v34.receiver = self;
  v34.super_class = CRKSignInHistoryItem;
  v5 = [(CRKSignInHistoryItem *)&v34 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"appleID"];
    appleID = v5->_appleID;
    v5->_appleID = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"date"];
    date = v5->_date;
    v5->_date = v13;

    v15 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"deviceName"];
    deviceName = v5->_deviceName;
    v5->_deviceName = v16;

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"deviceSerialNumber"];
    deviceSerialNumber = v5->_deviceSerialNumber;
    v5->_deviceSerialNumber = v19;

    v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"userGivenName"];
    userGivenName = v5->_userGivenName;
    v5->_userGivenName = v22;

    v24 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:@"userFamilyName"];
    userFamilyName = v5->_userFamilyName;
    v5->_userFamilyName = v25;

    v27 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"userFullName"];
    userFullName = v5->_userFullName;
    v5->_userFullName = v28;

    v30 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"userMonogram"];
    userMonogram = v5->_userMonogram;
    v5->_userMonogram = v31;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CRKSignInHistoryItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  appleID = [(CRKSignInHistoryItem *)self appleID];
  [coderCopy encodeObject:appleID forKey:@"appleID"];

  date = [(CRKSignInHistoryItem *)self date];
  [coderCopy encodeObject:date forKey:@"date"];

  deviceName = [(CRKSignInHistoryItem *)self deviceName];
  [coderCopy encodeObject:deviceName forKey:@"deviceName"];

  deviceSerialNumber = [(CRKSignInHistoryItem *)self deviceSerialNumber];
  [coderCopy encodeObject:deviceSerialNumber forKey:@"deviceSerialNumber"];

  userGivenName = [(CRKSignInHistoryItem *)self userGivenName];
  [coderCopy encodeObject:userGivenName forKey:@"userGivenName"];

  userFamilyName = [(CRKSignInHistoryItem *)self userFamilyName];
  [coderCopy encodeObject:userFamilyName forKey:@"userFamilyName"];

  userFullName = [(CRKSignInHistoryItem *)self userFullName];
  [coderCopy encodeObject:userFullName forKey:@"userFullName"];

  userMonogram = [(CRKSignInHistoryItem *)self userMonogram];
  [coderCopy encodeObject:userMonogram forKey:@"userMonogram"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  dictionaryValue = [(CRKSignInHistoryItem *)self dictionaryValue];
  v6 = [v4 initWithDictionary:dictionaryValue];

  return v6;
}

- (id)description
{
  v15 = MEMORY[0x277CCACA8];
  v14 = objc_opt_class();
  identifier = [(CRKSignInHistoryItem *)self identifier];
  appleID = [(CRKSignInHistoryItem *)self appleID];
  date = [(CRKSignInHistoryItem *)self date];
  deviceName = [(CRKSignInHistoryItem *)self deviceName];
  deviceSerialNumber = [(CRKSignInHistoryItem *)self deviceSerialNumber];
  userGivenName = [(CRKSignInHistoryItem *)self userGivenName];
  userFamilyName = [(CRKSignInHistoryItem *)self userFamilyName];
  userFullName = [(CRKSignInHistoryItem *)self userFullName];
  userMonogram = [(CRKSignInHistoryItem *)self userMonogram];
  v12 = [v15 stringWithFormat:@"<%@: %p { identifier = %@, appleID = %@, date = %@, deviceName = %@, deviceSerialNumber = %@, userGivenName = %@, userFamilyName = %@, userFullName = %@, userMonogram = %@ }>", v14, self, identifier, appleID, date, deviceName, deviceSerialNumber, userGivenName, userFamilyName, userFullName, userMonogram];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else if ([(CRKSignInHistoryItem *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CRKSignInHistoryItem *)self isEqualToHistoryItem:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToHistoryItem:(id)item
{
  itemCopy = item;
  if (itemCopy == self)
  {
    v11 = 1;
    goto LABEL_91;
  }

  identifier = [(CRKSignInHistoryItem *)self identifier];
  if (identifier || ([(CRKSignInHistoryItem *)itemCopy identifier], (v64 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    identifier2 = [(CRKSignInHistoryItem *)self identifier];
    identifier3 = [(CRKSignInHistoryItem *)itemCopy identifier];
    if (([identifier2 isEqual:identifier3] & 1) == 0)
    {

      v11 = 0;
      goto LABEL_88;
    }

    v10 = 1;
  }

  else
  {
    v64 = 0;
    v10 = 0;
  }

  appleID = [(CRKSignInHistoryItem *)self appleID];
  if (!appleID)
  {
    appleID2 = [(CRKSignInHistoryItem *)itemCopy appleID];
    if (!appleID2)
    {
      v65 = itemCopy;
      v62 = 0;
      v63 = v10;
      appleID2 = 0;
      goto LABEL_19;
    }
  }

  appleID3 = [(CRKSignInHistoryItem *)self appleID];
  appleID4 = [(CRKSignInHistoryItem *)itemCopy appleID];
  if ([appleID3 isEqual:appleID4])
  {
    v65 = itemCopy;
    v62 = 1;
    v63 = v10;
LABEL_19:
    date = [(CRKSignInHistoryItem *)self date];
    if (date || ([(CRKSignInHistoryItem *)v65 date], (v54 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      date2 = [(CRKSignInHistoryItem *)self date];
      date3 = [(CRKSignInHistoryItem *)v65 date];
      v61 = date2;
      if (![date2 isEqual:?])
      {
        v11 = 0;
        itemCopy = v65;
        goto LABEL_79;
      }

      v57 = 1;
    }

    else
    {
      v54 = 0;
      v57 = 0;
    }

    [(CRKSignInHistoryItem *)self deviceName];
    v58 = itemCopy = v65;
    if (v58 || ([(CRKSignInHistoryItem *)v65 deviceName], (v49 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      deviceName = [(CRKSignInHistoryItem *)self deviceName];
      deviceName2 = [(CRKSignInHistoryItem *)v65 deviceName];
      v56 = deviceName;
      if (![deviceName isEqual:deviceName2])
      {
        v11 = 0;
        goto LABEL_75;
      }

      v52 = 1;
    }

    else
    {
      v49 = 0;
      v52 = 0;
    }

    deviceSerialNumber = [(CRKSignInHistoryItem *)self deviceSerialNumber];
    if (deviceSerialNumber || ([(CRKSignInHistoryItem *)v65 deviceSerialNumber], (v44 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      deviceSerialNumber2 = [(CRKSignInHistoryItem *)self deviceSerialNumber];
      deviceSerialNumber3 = [(CRKSignInHistoryItem *)v65 deviceSerialNumber];
      v51 = deviceSerialNumber2;
      if (![deviceSerialNumber2 isEqual:deviceSerialNumber3])
      {
        v11 = 0;
        goto LABEL_71;
      }

      v47 = 1;
    }

    else
    {
      v44 = 0;
      v47 = 0;
    }

    userGivenName = [(CRKSignInHistoryItem *)self userGivenName];
    if (userGivenName || ([(CRKSignInHistoryItem *)v65 userGivenName], (v39 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      userGivenName2 = [(CRKSignInHistoryItem *)self userGivenName];
      userGivenName3 = [(CRKSignInHistoryItem *)v65 userGivenName];
      v46 = userGivenName2;
      if (![userGivenName2 isEqual:userGivenName3])
      {
        v11 = 0;
        goto LABEL_67;
      }

      v42 = 1;
    }

    else
    {
      v39 = 0;
      v42 = 0;
    }

    userFamilyName = [(CRKSignInHistoryItem *)self userFamilyName];
    if (userFamilyName || ([(CRKSignInHistoryItem *)v65 userFamilyName], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      userFamilyName2 = [(CRKSignInHistoryItem *)self userFamilyName];
      userFamilyName3 = [(CRKSignInHistoryItem *)v65 userFamilyName];
      v41 = userFamilyName2;
      if (![userFamilyName2 isEqual:userFamilyName3])
      {
        v11 = 0;
        goto LABEL_63;
      }

      v37 = 1;
    }

    else
    {
      v34 = 0;
      v37 = 0;
    }

    userFullName = [(CRKSignInHistoryItem *)self userFullName];
    if (userFullName || ([(CRKSignInHistoryItem *)v65 userFullName], (v30 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      userFullName2 = [(CRKSignInHistoryItem *)self userFullName];
      userFullName3 = [(CRKSignInHistoryItem *)v65 userFullName];
      v36 = userFullName2;
      if (![userFullName2 isEqual:userFullName3])
      {
        v11 = 0;
        goto LABEL_59;
      }

      v33 = 1;
    }

    else
    {
      v30 = 0;
      v33 = 0;
    }

    userMonogram = [(CRKSignInHistoryItem *)self userMonogram];
    if (userMonogram || ([(CRKSignInHistoryItem *)v65 userMonogram], (v29 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      userMonogram2 = [(CRKSignInHistoryItem *)self userMonogram];
      [(CRKSignInHistoryItem *)v65 userMonogram];
      v21 = v32 = userMonogram;
      v11 = [userMonogram2 isEqual:?];

      if (v32)
      {

        if (!v33)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }

      v28 = v29;
    }

    else
    {
      v28 = 0;
      v11 = 1;
    }

    if ((v33 & 1) == 0)
    {
LABEL_60:
      v22 = userFullName;
      if (!userFullName)
      {

        v22 = 0;
      }

      if (!v37)
      {
LABEL_64:
        v23 = userFamilyName;
        if (!userFamilyName)
        {

          v23 = 0;
        }

        if (!v42)
        {
LABEL_68:
          v24 = userGivenName;
          if (!userGivenName)
          {

            v24 = 0;
          }

          if (!v47)
          {
LABEL_72:
            v25 = deviceSerialNumber;
            if (!deviceSerialNumber)
            {

              v25 = 0;
            }

            if (!v52)
            {
LABEL_76:
              v26 = v58;
              if (!v58)
              {

                v26 = 0;
              }

              if (!v57)
              {
LABEL_80:
                if (!date)
                {
                }

                if (v62)
                {
                }

                if (!appleID)
                {
                }

                if (!v63)
                {
                  goto LABEL_88;
                }

                goto LABEL_87;
              }

LABEL_79:

              goto LABEL_80;
            }

LABEL_75:

            goto LABEL_76;
          }

LABEL_71:

          goto LABEL_72;
        }

LABEL_67:

        goto LABEL_68;
      }

LABEL_63:

      goto LABEL_64;
    }

LABEL_59:

    goto LABEL_60;
  }

  if (appleID)
  {
  }

  else
  {
  }

  v11 = 0;
  if (v10)
  {
LABEL_87:
  }

LABEL_88:
  if (!identifier)
  {
  }

LABEL_91:
  return v11;
}

@end