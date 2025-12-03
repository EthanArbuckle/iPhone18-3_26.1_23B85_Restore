@interface FARecommendedFamilyMember
- (BOOL)isEqual:(id)equal;
- (FARecommendedFamilyMember)initWithCoder:(id)coder;
- (FARecommendedFamilyMember)initWithDisplayName:(id)name handle:(id)handle iMessageHandle:(id)messageHandle contact:(id)contact;
- (FARecommendedFamilyMember)initWithMegadomeRecommendation:(id)recommendation;
- (FARecommendedFamilyMember)initWithPeopleSuggesterRecommendation:(id)recommendation;
- (id)_safeClasses;
- (id)contactFromRecommendationWithIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FARecommendedFamilyMember

- (FARecommendedFamilyMember)initWithDisplayName:(id)name handle:(id)handle iMessageHandle:(id)messageHandle contact:(id)contact
{
  nameCopy = name;
  handleCopy = handle;
  messageHandleCopy = messageHandle;
  contactCopy = contact;
  v18.receiver = self;
  v18.super_class = FARecommendedFamilyMember;
  v15 = [(FARecommendedFamilyMember *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_displayName, name);
    objc_storeStrong(&v16->_handle, handle);
    objc_storeStrong(&v16->_contact, contact);
    objc_storeStrong(&v16->_iMessageHandle, messageHandle);
  }

  return v16;
}

- (FARecommendedFamilyMember)initWithMegadomeRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  names = [recommendationCopy names];
  firstObject = [names firstObject];
  emails = [recommendationCopy emails];
  firstObject2 = [emails firstObject];
  firstObject3 = firstObject2;
  if (!firstObject2)
  {
    phoneNumbers = [recommendationCopy phoneNumbers];
    firstObject3 = [phoneNumbers firstObject];
  }

  contactIdentifiers = [recommendationCopy contactIdentifiers];
  firstObject4 = [contactIdentifiers firstObject];
  v12 = [(FARecommendedFamilyMember *)self contactFromRecommendationWithIdentifier:firstObject4];
  v13 = [(FARecommendedFamilyMember *)self initWithDisplayName:firstObject handle:firstObject3 iMessageHandle:0 contact:v12];

  if (!firstObject2)
  {
  }

  return v13;
}

- (FARecommendedFamilyMember)initWithPeopleSuggesterRecommendation:(id)recommendation
{
  recommendationCopy = recommendation;
  displayName = [recommendationCopy displayName];
  handle = [recommendationCopy handle];
  contact = [recommendationCopy contact];

  identifier = [contact identifier];
  v9 = [(FARecommendedFamilyMember *)self contactFromRecommendationWithIdentifier:identifier];
  v10 = [(FARecommendedFamilyMember *)self initWithDisplayName:displayName handle:handle iMessageHandle:0 contact:v9];

  return v10;
}

- (id)contactFromRecommendationWithIdentifier:(id)identifier
{
  v25[19] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = *MEMORY[0x1E695C240];
    v25[0] = *MEMORY[0x1E695C300];
    v25[1] = v4;
    v5 = *MEMORY[0x1E695C230];
    v25[2] = *MEMORY[0x1E695C2F0];
    v25[3] = v5;
    v6 = *MEMORY[0x1E695C308];
    v25[4] = *MEMORY[0x1E695C390];
    v25[5] = v6;
    v7 = *MEMORY[0x1E695C328];
    v25[6] = *MEMORY[0x1E695C310];
    v25[7] = v7;
    v8 = *MEMORY[0x1E695C2C8];
    v25[8] = *MEMORY[0x1E695C1F8];
    v25[9] = v8;
    v9 = *MEMORY[0x1E695C350];
    v25[10] = *MEMORY[0x1E695C348];
    v25[11] = v9;
    v10 = *MEMORY[0x1E695C358];
    v25[12] = *MEMORY[0x1E695C340];
    v25[13] = v10;
    v11 = *MEMORY[0x1E695C330];
    v25[14] = *MEMORY[0x1E695C410];
    v25[15] = v11;
    v12 = *MEMORY[0x1E695C400];
    v25[16] = *MEMORY[0x1E695C208];
    v25[17] = v12;
    v25[18] = *MEMORY[0x1E695C3A8];
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:19];
    v14 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    v15 = [v13 arrayByAddingObject:v14];

    v16 = objc_alloc_init(MEMORY[0x1E695CE18]);
    v17 = MEMORY[0x1E695CD58];
    v24 = identifierCopy;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v19 = [v17 predicateForContactsWithIdentifiers:v18];

    v20 = [v16 unifiedContactsMatchingPredicate:v19 keysToFetch:v15 error:0];
    firstObject = [v20 firstObject];
  }

  else
  {
    v15 = _FALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FARecommendedFamilyMember contactFromRecommendationWithIdentifier:v15];
    }

    firstObject = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return firstObject;
}

- (void)encodeWithCoder:(id)coder
{
  displayName = self->_displayName;
  coderCopy = coder;
  [coderCopy encodeObject:displayName forKey:@"_displayName"];
  [coderCopy encodeObject:self->_handle forKey:@"_handle"];
  [coderCopy encodeObject:self->_contact forKey:@"_contact"];
  [coderCopy encodeObject:self->_contact forKey:@"_iMessageHandle"];
}

- (id)_safeClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (FARecommendedFamilyMember)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = FARecommendedFamilyMember;
  v5 = [(FARecommendedFamilyMember *)&v20 init];
  v6 = v5;
  if (v5)
  {
    _safeClasses = [(FARecommendedFamilyMember *)v5 _safeClasses];
    v8 = [coderCopy decodeObjectOfClasses:_safeClasses forKey:@"_displayName"];
    displayName = v6->_displayName;
    v6->_displayName = v8;

    _safeClasses2 = [(FARecommendedFamilyMember *)v6 _safeClasses];
    v11 = [coderCopy decodeObjectOfClasses:_safeClasses2 forKey:@"_handle"];
    handle = v6->_handle;
    v6->_handle = v11;

    _safeClasses3 = [(FARecommendedFamilyMember *)v6 _safeClasses];
    v14 = [coderCopy decodeObjectOfClasses:_safeClasses3 forKey:@"_contact"];
    contact = v6->_contact;
    v6->_contact = v14;

    _safeClasses4 = [(FARecommendedFamilyMember *)v6 _safeClasses];
    v17 = [coderCopy decodeObjectOfClasses:_safeClasses4 forKey:@"_iMessageHandle"];
    iMessageHandle = v6->_iMessageHandle;
    v6->_iMessageHandle = v17;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      displayName = self->_displayName;
      displayName = [(FARecommendedFamilyMember *)equalCopy displayName];
      if (displayName != displayName)
      {
        v7 = self->_displayName;
        displayName2 = [(FARecommendedFamilyMember *)equalCopy displayName];
        if (![(NSString *)v7 isEqualToString:displayName2])
        {
          v9 = 0;
          goto LABEL_25;
        }

        v26 = displayName2;
      }

      handle = self->_handle;
      handle = [(FARecommendedFamilyMember *)equalCopy handle];
      if (handle != handle)
      {
        v12 = self->_handle;
        handle2 = [(FARecommendedFamilyMember *)equalCopy handle];
        if (![(NSString *)v12 isEqualToString:handle2])
        {
          v9 = 0;
LABEL_23:

LABEL_24:
          displayName2 = v26;
          if (displayName == displayName)
          {
LABEL_26:

            goto LABEL_27;
          }

LABEL_25:

          goto LABEL_26;
        }

        v25 = handle2;
      }

      contact = self->_contact;
      contact = [(FARecommendedFamilyMember *)equalCopy contact];
      if (contact != contact)
      {
        v16 = self->_contact;
        contact2 = [(FARecommendedFamilyMember *)equalCopy contact];
        if (![(CNContact *)v16 isEqualIgnoringIdentifiers:contact2])
        {
          v9 = 0;
          goto LABEL_21;
        }

        v24 = contact2;
      }

      iMessageHandle = self->_iMessageHandle;
      iMessageHandle = [(FARecommendedFamilyMember *)equalCopy iMessageHandle];
      v20 = iMessageHandle;
      if (iMessageHandle == iMessageHandle)
      {

        v9 = 1;
      }

      else
      {
        v21 = self->_iMessageHandle;
        iMessageHandle2 = [(FARecommendedFamilyMember *)equalCopy iMessageHandle];
        v9 = [(NSString *)v21 isEqualToString:iMessageHandle2];
      }

      contact2 = v24;
      if (contact == contact)
      {
LABEL_22:

        handle2 = v25;
        if (handle == handle)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_21:

      goto LABEL_22;
    }

    v9 = 0;
  }

LABEL_27:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FARecommendedFamilyMember allocWithZone:?]];
  objc_storeStrong(&v4->_contact, self->_contact);
  objc_storeStrong(&v4->_displayName, self->_displayName);
  objc_storeStrong(&v4->_handle, self->_handle);
  objc_storeStrong(&v4->_iMessageHandle, self->_iMessageHandle);
  return v4;
}

@end