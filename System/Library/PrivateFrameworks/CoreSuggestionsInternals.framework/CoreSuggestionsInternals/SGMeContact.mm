@interface SGMeContact
+ (id)keysToFetch;
- (BOOL)isSameAsOrUnifiedWithContact:(id)contact;
- (SGMeContact)initWithContact:(id)contact;
@end

@implementation SGMeContact

- (BOOL)isSameAsOrUnifiedWithContact:(id)contact
{
  contactCopy = contact;
  identifier = [(CNContact *)self->_meContact identifier];
  identifier2 = [contactCopy identifier];
  if ([identifier isEqualToString:identifier2])
  {
    v7 = 1;
  }

  else
  {
    meContact = self->_meContact;
    identifier3 = [contactCopy identifier];
    v7 = [(CNContact *)meContact isUnifiedWithContactWithIdentifier:identifier3];
  }

  return v7;
}

- (SGMeContact)initWithContact:(id)contact
{
  v96 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v90.receiver = self;
  v90.super_class = SGMeContact;
  v6 = [(SGMeContact *)&v90 init];
  if (v6)
  {
    givenName = [contactCopy givenName];
    givenName = v6->_givenName;
    v6->_givenName = givenName;

    familyName = [contactCopy familyName];
    familyName = v6->_familyName;
    v6->_familyName = familyName;

    v11 = [MEMORY[0x277CBDA78] stringFromContact:contactCopy style:0];
    v12 = v11;
    contactCopy2 = contact;
    v66 = v6;
    if (v11)
    {
      givenName2 = v11;
    }

    else
    {
      givenName2 = [contactCopy givenName];
    }

    formattedName = v6->_formattedName;
    v6->_formattedName = givenName2;

    v15 = objc_opt_new();
    v69 = objc_opt_new();
    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    emailAddresses = [contactCopy emailAddresses];
    v19 = [emailAddresses countByEnumeratingWithState:&v86 objects:v95 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v87;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v87 != v21)
          {
            objc_enumerationMutation(emailAddresses);
          }

          value = [*(*(&v86 + 1) + 8 * i) value];
          v24 = SGNormalizeEmailAddress();
          [(NSSet *)v15 addObject:v24];
        }

        v20 = [emailAddresses countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v20);
    }

    v63 = v15;

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    phoneNumbers = [contactCopy phoneNumbers];
    v26 = [phoneNumbers countByEnumeratingWithState:&v82 objects:v94 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v83;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v83 != v28)
          {
            objc_enumerationMutation(phoneNumbers);
          }

          value2 = [*(*(&v82 + 1) + 8 * j) value];
          stringValue = [value2 stringValue];
          v32 = SGNormalizePhoneNumber();
          [(NSSet *)v69 addObject:v32];
        }

        v27 = [phoneNumbers countByEnumeratingWithState:&v82 objects:v94 count:16];
      }

      while (v27);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    postalAddresses = [contactCopy postalAddresses];
    v34 = [postalAddresses countByEnumeratingWithState:&v78 objects:v93 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v79;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v79 != v36)
          {
            objc_enumerationMutation(postalAddresses);
          }

          value3 = [*(*(&v78 + 1) + 8 * k) value];
          v39 = SGNormalizeCNAddress(value3);
          [(NSSet *)v16 addObject:v39];
        }

        v35 = [postalAddresses countByEnumeratingWithState:&v78 objects:v93 count:16];
      }

      while (v35);
    }

    v64 = v16;

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v67 = contactCopy;
    obj = [contactCopy socialProfiles];
    v40 = [obj countByEnumeratingWithState:&v74 objects:v92 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v75;
      do
      {
        for (m = 0; m != v41; ++m)
        {
          if (*v75 != v42)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v74 + 1) + 8 * m);
          v45 = [SGSocialProfileDetails alloc];
          value4 = [v44 value];
          v47 = [(SGSocialProfileDetails *)v45 initWithCNSocialProfile:value4];

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          uniqueIdentifiers = [(SGSocialProfileDetails *)v47 uniqueIdentifiers];
          v49 = [uniqueIdentifiers countByEnumeratingWithState:&v70 objects:v91 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v71;
            do
            {
              for (n = 0; n != v50; ++n)
              {
                if (*v71 != v51)
                {
                  objc_enumerationMutation(uniqueIdentifiers);
                }

                [(NSSet *)v17 addObject:*(*(&v70 + 1) + 8 * n)];
              }

              v50 = [uniqueIdentifiers countByEnumeratingWithState:&v70 objects:v91 count:16];
            }

            while (v50);
          }
        }

        v41 = [obj countByEnumeratingWithState:&v74 objects:v92 count:16];
      }

      while (v41);
    }

    v6 = v66;
    emailAddresses = v66->_emailAddresses;
    v66->_emailAddresses = v63;
    v54 = v63;

    phoneNumbers = v66->_phoneNumbers;
    v66->_phoneNumbers = v69;
    v56 = v69;

    postalAddresses = v66->_postalAddresses;
    v66->_postalAddresses = v64;
    v58 = v64;

    socialProfileIdentifiers = v66->_socialProfileIdentifiers;
    v66->_socialProfileIdentifiers = v17;
    v60 = v17;

    objc_storeStrong(&v66->_meContact, contactCopy2);
    contactCopy = v67;
  }

  v61 = *MEMORY[0x277D85DE8];
  return v6;
}

+ (id)keysToFetch
{
  v9[7] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v3 = *MEMORY[0x277CBD000];
  v9[0] = v2;
  v9[1] = v3;
  v4 = *MEMORY[0x277CBCFC0];
  v9[2] = *MEMORY[0x277CBCFF8];
  v9[3] = v4;
  v5 = *MEMORY[0x277CBD0C8];
  v9[4] = *MEMORY[0x277CBD098];
  v9[5] = v5;
  v9[6] = *MEMORY[0x277CBD138];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:7];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end