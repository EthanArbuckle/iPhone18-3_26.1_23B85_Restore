@interface FARecommendedFamilyMember
- (BOOL)isEqual:(id)a3;
- (FARecommendedFamilyMember)initWithCoder:(id)a3;
- (FARecommendedFamilyMember)initWithDisplayName:(id)a3 handle:(id)a4 iMessageHandle:(id)a5 contact:(id)a6;
- (FARecommendedFamilyMember)initWithMegadomeRecommendation:(id)a3;
- (FARecommendedFamilyMember)initWithPeopleSuggesterRecommendation:(id)a3;
- (id)_safeClasses;
- (id)contactFromRecommendationWithIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FARecommendedFamilyMember

- (FARecommendedFamilyMember)initWithDisplayName:(id)a3 handle:(id)a4 iMessageHandle:(id)a5 contact:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = FARecommendedFamilyMember;
  v15 = [(FARecommendedFamilyMember *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_displayName, a3);
    objc_storeStrong(&v16->_handle, a4);
    objc_storeStrong(&v16->_contact, a6);
    objc_storeStrong(&v16->_iMessageHandle, a5);
  }

  return v16;
}

- (FARecommendedFamilyMember)initWithMegadomeRecommendation:(id)a3
{
  v4 = a3;
  v5 = [v4 names];
  v6 = [v5 firstObject];
  v7 = [v4 emails];
  v8 = [v7 firstObject];
  v9 = v8;
  if (!v8)
  {
    v15 = [v4 phoneNumbers];
    v9 = [v15 firstObject];
  }

  v10 = [v4 contactIdentifiers];
  v11 = [v10 firstObject];
  v12 = [(FARecommendedFamilyMember *)self contactFromRecommendationWithIdentifier:v11];
  v13 = [(FARecommendedFamilyMember *)self initWithDisplayName:v6 handle:v9 iMessageHandle:0 contact:v12];

  if (!v8)
  {
  }

  return v13;
}

- (FARecommendedFamilyMember)initWithPeopleSuggesterRecommendation:(id)a3
{
  v4 = a3;
  v5 = [v4 displayName];
  v6 = [v4 handle];
  v7 = [v4 contact];

  v8 = [v7 identifier];
  v9 = [(FARecommendedFamilyMember *)self contactFromRecommendationWithIdentifier:v8];
  v10 = [(FARecommendedFamilyMember *)self initWithDisplayName:v5 handle:v6 iMessageHandle:0 contact:v9];

  return v10;
}

- (id)contactFromRecommendationWithIdentifier:(id)a3
{
  v25[19] = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
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
    v24 = v3;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v19 = [v17 predicateForContactsWithIdentifiers:v18];

    v20 = [v16 unifiedContactsMatchingPredicate:v19 keysToFetch:v15 error:0];
    v21 = [v20 firstObject];
  }

  else
  {
    v15 = _FALogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [FARecommendedFamilyMember contactFromRecommendationWithIdentifier:v15];
    }

    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  displayName = self->_displayName;
  v5 = a3;
  [v5 encodeObject:displayName forKey:@"_displayName"];
  [v5 encodeObject:self->_handle forKey:@"_handle"];
  [v5 encodeObject:self->_contact forKey:@"_contact"];
  [v5 encodeObject:self->_contact forKey:@"_iMessageHandle"];
}

- (id)_safeClasses
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  return [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
}

- (FARecommendedFamilyMember)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = FARecommendedFamilyMember;
  v5 = [(FARecommendedFamilyMember *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(FARecommendedFamilyMember *)v5 _safeClasses];
    v8 = [v4 decodeObjectOfClasses:v7 forKey:@"_displayName"];
    displayName = v6->_displayName;
    v6->_displayName = v8;

    v10 = [(FARecommendedFamilyMember *)v6 _safeClasses];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_handle"];
    handle = v6->_handle;
    v6->_handle = v11;

    v13 = [(FARecommendedFamilyMember *)v6 _safeClasses];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"_contact"];
    contact = v6->_contact;
    v6->_contact = v14;

    v16 = [(FARecommendedFamilyMember *)v6 _safeClasses];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"_iMessageHandle"];
    iMessageHandle = v6->_iMessageHandle;
    v6->_iMessageHandle = v17;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      displayName = self->_displayName;
      v6 = [(FARecommendedFamilyMember *)v4 displayName];
      if (displayName != v6)
      {
        v7 = self->_displayName;
        v8 = [(FARecommendedFamilyMember *)v4 displayName];
        if (![(NSString *)v7 isEqualToString:v8])
        {
          v9 = 0;
          goto LABEL_25;
        }

        v26 = v8;
      }

      handle = self->_handle;
      v11 = [(FARecommendedFamilyMember *)v4 handle];
      if (handle != v11)
      {
        v12 = self->_handle;
        v13 = [(FARecommendedFamilyMember *)v4 handle];
        if (![(NSString *)v12 isEqualToString:v13])
        {
          v9 = 0;
LABEL_23:

LABEL_24:
          v8 = v26;
          if (displayName == v6)
          {
LABEL_26:

            goto LABEL_27;
          }

LABEL_25:

          goto LABEL_26;
        }

        v25 = v13;
      }

      contact = self->_contact;
      v15 = [(FARecommendedFamilyMember *)v4 contact];
      if (contact != v15)
      {
        v16 = self->_contact;
        v17 = [(FARecommendedFamilyMember *)v4 contact];
        if (![(CNContact *)v16 isEqualIgnoringIdentifiers:v17])
        {
          v9 = 0;
          goto LABEL_21;
        }

        v24 = v17;
      }

      iMessageHandle = self->_iMessageHandle;
      v19 = [(FARecommendedFamilyMember *)v4 iMessageHandle];
      v20 = v19;
      if (iMessageHandle == v19)
      {

        v9 = 1;
      }

      else
      {
        v21 = self->_iMessageHandle;
        v22 = [(FARecommendedFamilyMember *)v4 iMessageHandle];
        v9 = [(NSString *)v21 isEqualToString:v22];
      }

      v17 = v24;
      if (contact == v15)
      {
LABEL_22:

        v13 = v25;
        if (handle == v11)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FARecommendedFamilyMember allocWithZone:?]];
  objc_storeStrong(&v4->_contact, self->_contact);
  objc_storeStrong(&v4->_displayName, self->_displayName);
  objc_storeStrong(&v4->_handle, self->_handle);
  objc_storeStrong(&v4->_iMessageHandle, self->_iMessageHandle);
  return v4;
}

@end