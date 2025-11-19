@interface SGMeContact
+ (id)keysToFetch;
- (BOOL)isSameAsOrUnifiedWithContact:(id)a3;
- (SGMeContact)initWithContact:(id)a3;
@end

@implementation SGMeContact

- (BOOL)isSameAsOrUnifiedWithContact:(id)a3
{
  v4 = a3;
  v5 = [(CNContact *)self->_meContact identifier];
  v6 = [v4 identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = 1;
  }

  else
  {
    meContact = self->_meContact;
    v9 = [v4 identifier];
    v7 = [(CNContact *)meContact isUnifiedWithContactWithIdentifier:v9];
  }

  return v7;
}

- (SGMeContact)initWithContact:(id)a3
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v90.receiver = self;
  v90.super_class = SGMeContact;
  v6 = [(SGMeContact *)&v90 init];
  if (v6)
  {
    v7 = [v5 givenName];
    givenName = v6->_givenName;
    v6->_givenName = v7;

    v9 = [v5 familyName];
    familyName = v6->_familyName;
    v6->_familyName = v9;

    v11 = [MEMORY[0x277CBDA78] stringFromContact:v5 style:0];
    v12 = v11;
    v65 = a3;
    v66 = v6;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v5 givenName];
    }

    formattedName = v6->_formattedName;
    v6->_formattedName = v13;

    v15 = objc_opt_new();
    v69 = objc_opt_new();
    v16 = objc_opt_new();
    v17 = objc_opt_new();
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v18 = [v5 emailAddresses];
    v19 = [v18 countByEnumeratingWithState:&v86 objects:v95 count:16];
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
            objc_enumerationMutation(v18);
          }

          v23 = [*(*(&v86 + 1) + 8 * i) value];
          v24 = SGNormalizeEmailAddress();
          [(NSSet *)v15 addObject:v24];
        }

        v20 = [v18 countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v20);
    }

    v63 = v15;

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v25 = [v5 phoneNumbers];
    v26 = [v25 countByEnumeratingWithState:&v82 objects:v94 count:16];
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
            objc_enumerationMutation(v25);
          }

          v30 = [*(*(&v82 + 1) + 8 * j) value];
          v31 = [v30 stringValue];
          v32 = SGNormalizePhoneNumber();
          [(NSSet *)v69 addObject:v32];
        }

        v27 = [v25 countByEnumeratingWithState:&v82 objects:v94 count:16];
      }

      while (v27);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v33 = [v5 postalAddresses];
    v34 = [v33 countByEnumeratingWithState:&v78 objects:v93 count:16];
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
            objc_enumerationMutation(v33);
          }

          v38 = [*(*(&v78 + 1) + 8 * k) value];
          v39 = SGNormalizeCNAddress(v38);
          [(NSSet *)v16 addObject:v39];
        }

        v35 = [v33 countByEnumeratingWithState:&v78 objects:v93 count:16];
      }

      while (v35);
    }

    v64 = v16;

    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v67 = v5;
    obj = [v5 socialProfiles];
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
          v46 = [v44 value];
          v47 = [(SGSocialProfileDetails *)v45 initWithCNSocialProfile:v46];

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v48 = [(SGSocialProfileDetails *)v47 uniqueIdentifiers];
          v49 = [v48 countByEnumeratingWithState:&v70 objects:v91 count:16];
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
                  objc_enumerationMutation(v48);
                }

                [(NSSet *)v17 addObject:*(*(&v70 + 1) + 8 * n)];
              }

              v50 = [v48 countByEnumeratingWithState:&v70 objects:v91 count:16];
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

    objc_storeStrong(&v66->_meContact, v65);
    v5 = v67;
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