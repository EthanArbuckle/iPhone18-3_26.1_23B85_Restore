@interface SGSqlEntityStoreCNContactMatcherHelper
- (BOOL)isMe;
- (NSArray)addressTags;
- (NSArray)emailTags;
- (NSArray)phoneTags;
- (NSArray)socialProfileTags;
- (NSArray)strongNamePatterns;
- (NSArray)weakNamePatterns;
- (NSString)interactionContactIdentifier;
- (NSString)prefilterNameMatchTerms;
- (SGSqlEntityStoreCNContactMatcherHelper)initWithCNContact:(id)contact;
@end

@implementation SGSqlEntityStoreCNContactMatcherHelper

- (BOOL)isMe
{
  v3 = +[SGContactStoreFactory contactStore];
  v4 = [SGCuratedContactMatcher fetchMeContactFromContactStore:v3];
  LOBYTE(self) = [v4 isSameAsOrUnifiedWithContact:self->_contact];

  return self;
}

- (NSString)interactionContactIdentifier
{
  v2 = MEMORY[0x277D01FA0];
  identifier = [(CNContact *)self->_contact identifier];
  v4 = [v2 interactionContactIdentifier:identifier];
  name = [v4 name];

  return name;
}

- (NSArray)addressTags
{
  postalAddresses = [(CNContact *)self->_contact postalAddresses];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __53__SGSqlEntityStoreCNContactMatcherHelper_addressTags__block_invoke_2;
  v5[3] = &unk_27894FB38;
  v6 = &__block_literal_global_50_24395;
  v3 = [postalAddresses _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __53__SGSqlEntityStoreCNContactMatcherHelper_addressTags__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 value];
  v4 = (*(v2 + 16))(v2, v3);
  v5 = SGNormalizeCNAddress(v4);

  v6 = [MEMORY[0x277D01FA0] contactDetail:v5];
  v7 = [v6 name];

  return v7;
}

id __53__SGSqlEntityStoreCNContactMatcherHelper_addressTags__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 street];
  if (v4 && (v5 = v4, [v2 street], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v5, v7))
  {
    v8 = [v2 street];
    [v3 setStreet:v8];
  }

  else
  {
    [v3 setStreet:@"#NOSTREET#"];
  }

  v9 = [v2 city];
  if (v9 && (v10 = v9, [v2 city], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "length"), v11, v10, v12))
  {
    v13 = [v2 city];
    [v3 setCity:v13];
  }

  else
  {
    [v3 setCity:@"#NOCITY#"];
  }

  return v3;
}

- (NSArray)socialProfileTags
{
  socialProfiles = [(CNContact *)self->_contact socialProfiles];
  v3 = [socialProfiles _pas_mappedArrayWithTransform:&__block_literal_global_46_24406];

  return v3;
}

id __59__SGSqlEntityStoreCNContactMatcherHelper_socialProfileTags__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SGSocialProfileDetails alloc];
  v4 = [v2 value];

  v5 = [(SGSocialProfileDetails *)v3 initWithCNSocialProfile:v4];
  v6 = MEMORY[0x277D01FA0];
  v7 = [(SGSocialProfileDetails *)v5 preferredUniqueIdentifier];
  SGNormalizeSocialProfile(v7);
  objc_claimAutoreleasedReturnValue();
  v8 = [v6 contactDetail:v7];
  v9 = [v8 name];

  return v9;
}

- (NSArray)phoneTags
{
  phoneNumbers = [(CNContact *)self->_contact phoneNumbers];
  v3 = [phoneNumbers _pas_mappedArrayWithTransform:&__block_literal_global_44];

  return v3;
}

id __51__SGSqlEntityStoreCNContactMatcherHelper_phoneTags__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];
  v4 = SGDataDetectorsScanForPhoneLessCarefully(v3);
  v5 = SGNormalizePhoneNumber();

  if (v5)
  {
    v6 = [MEMORY[0x277D01FA0] contactDetail:v5];
    v7 = [v6 name];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)emailTags
{
  emailAddresses = [(CNContact *)self->_contact emailAddresses];
  v3 = [emailAddresses _pas_mappedArrayWithTransform:&__block_literal_global_41_24409];

  return v3;
}

id __51__SGSqlEntityStoreCNContactMatcherHelper_emailTags__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D01FA0];
  v3 = [a2 value];
  v4 = SGNormalizeEmailAddress();
  v5 = [v2 contactDetail:v4];
  v6 = [v5 name];

  return v6;
}

- (NSArray)strongNamePatterns
{
  v40 = *MEMORY[0x277D85DE8];
  v32 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v3 = self->_nicks;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        if ([v8 length])
        {
          v10 = objc_alloc(MEMORY[0x277CCACA8]);
          familyName = [(CNContact *)self->_contact familyName];
          givenName = [v10 initWithFormat:@"%@ %@", v8, familyName];
          [v32 addObject:givenName];
        }

        else
        {
          familyName = sgLogHandle();
          if (!os_log_type_enabled(familyName, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_11;
          }

          givenName = [(CNContact *)self->_contact givenName];
          *buf = 138412290;
          v38 = givenName;
          _os_log_impl(&dword_231E60000, familyName, OS_LOG_TYPE_DEFAULT, "empty string found in nickname data for: %@", buf, 0xCu);
        }

LABEL_11:
        objc_autoreleasePoolPop(v9);
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v5);
  }

  familyName2 = [(CNContact *)self->_contact familyName];
  if ([familyName2 length])
  {
    givenName2 = [(CNContact *)self->_contact givenName];
    v15 = [givenName2 length];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      givenName3 = [(CNContact *)self->_contact givenName];
      familyName3 = [(CNContact *)self->_contact familyName];
      v20 = [v17 initWithFormat:@"%@ %@", givenName3, familyName3];
      [v32 addObject:v20];

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
  }

  givenName4 = [(CNContact *)self->_contact givenName];
  if ([givenName4 length])
  {
    middleName = [(CNContact *)self->_contact middleName];
    v23 = [middleName length];

    if (v23)
    {
      v24 = objc_autoreleasePoolPush();
      v25 = objc_alloc(MEMORY[0x277CCACA8]);
      givenName5 = [(CNContact *)self->_contact givenName];
      middleName2 = [(CNContact *)self->_contact middleName];
      v28 = [v25 initWithFormat:@"%@ %@", givenName5, middleName2];
      [v32 addObject:v28];

      objc_autoreleasePoolPop(v24);
    }
  }

  else
  {
  }

  allObjects = [v32 allObjects];

  v30 = *MEMORY[0x277D85DE8];

  return allObjects;
}

- (NSArray)weakNamePatterns
{
  v53 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v45 = objc_opt_new();
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v3 = self->_nicks;
  v4 = [(NSSet *)v3 countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v47;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v47 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v46 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        if ([v8 length])
        {
          v10 = objc_alloc(MEMORY[0x277CCACA8]);
          familyName = [(CNContact *)self->_contact familyName];
          givenName = [v10 initWithFormat:@"%@%%%@%%", v8, familyName];
          [v45 addObject:givenName];
        }

        else
        {
          familyName = sgLogHandle();
          if (!os_log_type_enabled(familyName, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_11;
          }

          givenName = [(CNContact *)self->_contact givenName];
          *buf = 138412290;
          v51 = givenName;
          _os_log_impl(&dword_231E60000, familyName, OS_LOG_TYPE_DEFAULT, "empty string found in nickname data for: %@", buf, 0xCu);
        }

LABEL_11:
        objc_autoreleasePoolPop(v9);
      }

      v5 = [(NSSet *)v3 countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v5);
  }

  familyName2 = [(CNContact *)self->_contact familyName];
  if ([familyName2 length])
  {
    givenName2 = [(CNContact *)self->_contact givenName];
    v15 = [givenName2 length];

    if (v15)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      givenName3 = [(CNContact *)self->_contact givenName];
      familyName3 = [(CNContact *)self->_contact familyName];
      v20 = [v17 initWithFormat:@"%@%%%@", givenName3, familyName3];
      [v45 addObject:v20];

      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      familyName4 = [(CNContact *)self->_contact familyName];
      givenName4 = [(CNContact *)self->_contact givenName];
      v24 = [v21 initWithFormat:@"%@%%%@", familyName4, givenName4];
      [v45 addObject:v24];

      givenName5 = [(CNContact *)self->_contact givenName];
      v26 = [givenName5 substringToIndex:1];

      v27 = objc_alloc(MEMORY[0x277CCACA8]);
      familyName5 = [(CNContact *)self->_contact familyName];
      v29 = [v27 initWithFormat:@"%@ %@", v26, familyName5];
      [v45 addObject:v29];

      v30 = objc_alloc(MEMORY[0x277CCACA8]);
      familyName6 = [(CNContact *)self->_contact familyName];
      v32 = [v30 initWithFormat:@"%@. %@", v26, familyName6];
      [v45 addObject:v32];

      objc_autoreleasePoolPop(v16);
    }
  }

  else
  {
  }

  givenName6 = [(CNContact *)self->_contact givenName];
  if ([givenName6 length])
  {
    middleName = [(CNContact *)self->_contact middleName];
    v35 = [middleName length];

    if (v35)
    {
      v36 = objc_autoreleasePoolPush();
      v37 = objc_alloc(MEMORY[0x277CCACA8]);
      givenName7 = [(CNContact *)self->_contact givenName];
      middleName2 = [(CNContact *)self->_contact middleName];
      v40 = [v37 initWithFormat:@"%@%%%@", givenName7, middleName2];
      [v45 addObject:v40];

      objc_autoreleasePoolPop(v36);
    }
  }

  else
  {
  }

  v41 = [v45 copy];

  objc_autoreleasePoolPop(context);
  v42 = *MEMORY[0x277D85DE8];

  return v41;
}

- (NSString)prefilterNameMatchTerms
{
  v44 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  familyName = [(CNContact *)self->_contact familyName];
  v5 = [familyName length];

  if (v5)
  {
    familyName2 = [(CNContact *)self->_contact familyName];
    v7 = [SGTokenizer ftsTokenize:familyName2];

    [v3 addObjectsFromArray:v7];
    familyName3 = [(CNContact *)self->_contact familyName];
    v9 = [familyName3 length];

    if (v9 == 1)
    {
      v10 = sgMap();
      [v3 addObjectsFromArray:v10];
    }
  }

  givenName = [(CNContact *)self->_contact givenName];
  v12 = [givenName length];

  if (v12)
  {
    givenName2 = [(CNContact *)self->_contact givenName];
    v14 = [SGTokenizer ftsTokenize:givenName2];

    [v3 addObjectsFromArray:v14];
    givenName3 = [(CNContact *)self->_contact givenName];
    v16 = [givenName3 length];

    if (v16 == 1)
    {
      v17 = sgMap();
      [v3 addObjectsFromArray:v17];
    }
  }

  middleName = [(CNContact *)self->_contact middleName];
  v19 = [middleName length];

  if (v19)
  {
    middleName2 = [(CNContact *)self->_contact middleName];
    v21 = [SGTokenizer ftsTokenize:middleName2];
    [v3 addObjectsFromArray:v21];
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v22 = self->_nicks;
  v23 = [(NSSet *)v22 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v37 + 1) + 8 * i);
        v28 = objc_autoreleasePoolPush();
        if ([v27 length])
        {
          v29 = [SGTokenizer ftsTokenize:v27];
          [v3 addObjectsFromArray:v29];
        }

        else
        {
          v29 = sgLogHandle();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            givenName4 = [(CNContact *)self->_contact givenName];
            *buf = 138412290;
            v42 = givenName4;
            _os_log_impl(&dword_231E60000, v29, OS_LOG_TYPE_DEFAULT, "empty string found in nickname data for: %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v28);
      }

      v24 = [(NSSet *)v22 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v24);
  }

  allObjects = [v3 allObjects];
  v32 = [allObjects _pas_mappedArrayWithTransform:&__block_literal_global_12_24431];

  v33 = [v32 _pas_componentsJoinedByString:@" OR "];

  objc_autoreleasePoolPop(context);
  v34 = *MEMORY[0x277D85DE8];

  return v33;
}

id __65__SGSqlEntityStoreCNContactMatcherHelper_prefilterNameMatchTerms__block_invoke_10(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if ([v2 lengthOfBytesUsingEncoding:4])
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [v2 stringByReplacingOccurrencesOfString:@" withString:@"];
    v5 = [v3 initWithFormat:@"%@", v4];
  }

  else
  {
    v6 = [v2 dataUsingEncoding:2483028224];
    v7 = sgLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [v6 bytes];
      [v6 length];
      v8 = _PASBytesToHex();
      *buf = 138477827;
      v12 = v8;
      _os_log_impl(&dword_231E60000, v7, OS_LOG_TYPE_DEFAULT, "dropping query token that cannot be encoded as utf-8 (utf-16 LE repr: %{private}@)", buf, 0xCu);
    }

    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

id __65__SGSqlEntityStoreCNContactMatcherHelper_prefilterNameMatchTerms__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 stringByAppendingString:@"*"];
  objc_autoreleasePoolPop(v3);

  return v4;
}

- (SGSqlEntityStoreCNContactMatcherHelper)initWithCNContact:(id)contact
{
  contactCopy = contact;
  v14.receiver = self;
  v14.super_class = SGSqlEntityStoreCNContactMatcherHelper;
  v6 = [(SGSqlEntityStoreCNContactMatcherHelper *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
    givenName = [contactCopy givenName];
    v9 = [givenName length];

    if (v9)
    {
      givenName2 = [contactCopy givenName];
      v11 = [SGNicknames nicknamesForName:givenName2];
      nicks = v7->_nicks;
      v7->_nicks = v11;
    }
  }

  return v7;
}

@end