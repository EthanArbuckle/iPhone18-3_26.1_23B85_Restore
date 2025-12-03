@interface CNContactStore(DSContactHelpers)
+ (id)contactMatchingEmailAddress:()DSContactHelpers;
+ (id)contactMatchingIdentity:()DSContactHelpers;
+ (id)contactMatchingPhoneNumber:()DSContactHelpers;
+ (id)ds_meContactIdentifier;
+ (void)ds_meContactIdentifier;
@end

@implementation CNContactStore(DSContactHelpers)

+ (id)ds_meContactIdentifier
{
  v11[1] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v11[0] = *MEMORY[0x277CBD018];
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  v10 = 0;
  v2 = [v0 _ios_meContactWithKeysToFetch:v1 error:&v10];
  v3 = v10;

  if (v3)
  {
    v4 = os_log_create("com.apple.DigitalSeparation", "CNContactStore");
    v5 = DSLog_6;
    DSLog_6 = v4;

    v6 = DSLog_6;
    if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_ERROR))
    {
      +[(CNContactStore(DSContactHelpers) *)v3];
    }

    identifier = 0;
  }

  else
  {
    identifier = [v2 identifier];
  }

  v8 = *MEMORY[0x277D85DE8];

  return identifier;
}

+ (id)contactMatchingIdentity:()DSContactHelpers
{
  v138[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = os_log_create("com.apple.DigitalSeparation", "CNContactStore");
  v5 = DSLog_6;
  DSLog_6 = v4;

  array = [MEMORY[0x277CBEB18] array];
  unifiedContactIdentifier = [v3 unifiedContactIdentifier];
  v8 = [unifiedContactIdentifier length];

  if (v8)
  {
    v9 = MEMORY[0x277CBDA58];
    unifiedContactIdentifier2 = [v3 unifiedContactIdentifier];
    v138[0] = unifiedContactIdentifier2;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v138 count:1];
    v12 = [v9 predicateForContactsWithIdentifiers:v11];
    [array addObject:v12];
  }

  emailAddress = [v3 emailAddress];
  v14 = [emailAddress length];

  if (v14)
  {
    v15 = MEMORY[0x277CBDA58];
    emailAddress2 = [v3 emailAddress];
    v17 = [v15 predicateForContactsMatchingEmailAddress:emailAddress2];
    [array addObject:v17];
  }

  phoneNumber = [v3 phoneNumber];
  v19 = [phoneNumber length];

  if (v19)
  {
    v20 = MEMORY[0x277CBDB70];
    phoneNumber2 = [v3 phoneNumber];
    v22 = [v20 phoneNumberWithStringValue:phoneNumber2];

    if (v22)
    {
      v23 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:v22];
      [array addObject:v23];
    }
  }

  nameComponents = [v3 nameComponents];

  if (nameComponents)
  {
    v25 = MEMORY[0x277CCAC08];
    nameComponents2 = [v3 nameComponents];
    v27 = [v25 localizedStringFromPersonNameComponents:nameComponents2 style:3 options:0];

    if ([v27 length])
    {
      v28 = [MEMORY[0x277CBDA58] predicateForContactsMatchingName:v27];
      [array addObject:v28];
    }
  }

  v29 = *MEMORY[0x277CBD000];
  v137[0] = *MEMORY[0x277CBD068];
  v137[1] = v29;
  v30 = *MEMORY[0x277CBCFF8];
  v137[2] = *MEMORY[0x277CBD058];
  v137[3] = v30;
  v31 = *MEMORY[0x277CBD0B0];
  v137[4] = *MEMORY[0x277CBD0E0];
  v137[5] = v31;
  v32 = *MEMORY[0x277CBD0B8];
  v137[6] = *MEMORY[0x277CBD0A8];
  v137[7] = v32;
  v33 = *MEMORY[0x277CBD078];
  v137[8] = *MEMORY[0x277CBD070];
  v137[9] = v33;
  v34 = *MEMORY[0x277CBD028];
  v137[10] = *MEMORY[0x277CBD160];
  v137[11] = v34;
  v35 = *MEMORY[0x277CBD020];
  v137[12] = *MEMORY[0x277CBD158];
  v137[13] = v35;
  v36 = *MEMORY[0x277CBCFC0];
  v137[14] = *MEMORY[0x277CBD090];
  v137[15] = v36;
  v37 = *MEMORY[0x277CBCF88];
  v137[16] = *MEMORY[0x277CBD098];
  v137[17] = v37;
  v93 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:18];
  v92 = objc_alloc_init(MEMORY[0x277CBDAB8]);
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v38 = array;
  v94 = [v38 countByEnumeratingWithState:&v123 objects:v136 count:16];
  if (!v94)
  {

    v102 = 0;
LABEL_73:
    v87 = DSLog_6;
    if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248C40000, v87, OS_LOG_TYPE_INFO, "Optimal contact is nil, selecting the fallback contact", buf, 2u);
    }

    v102 = v102;
    v104 = v102;
    goto LABEL_76;
  }

  v102 = 0;
  v104 = 0;
  v91 = *v124;
  *&v39 = 138478339;
  v90 = v39;
  v103 = v38;
  v107 = v3;
  do
  {
    v40 = 0;
    do
    {
      if (*v124 != v91)
      {
        v41 = v40;
        objc_enumerationMutation(v38);
        v40 = v41;
      }

      v42 = v38;
      v96 = v40;
      v43 = *(*(&v123 + 1) + 8 * v40);
      v122 = 0;
      v44 = [v92 unifiedContactsMatchingPredicate:v43 keysToFetch:v93 error:{&v122, v90}];
      v95 = v122;
      v45 = DSLog_6;
      if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
      {
        v46 = v45;
        v47 = [v44 count];
        *buf = v90;
        v130 = v43;
        v131 = 2113;
        v132 = v44;
        v133 = 2050;
        v134[0] = v47;
        _os_log_impl(&dword_248C40000, v46, OS_LOG_TYPE_INFO, "Searching contacts with predicate %{private}@ and got %{private}@ (%{public}lu)", buf, 0x20u);
      }

      v120 = 0u;
      v121 = 0u;
      v118 = 0u;
      v119 = 0u;
      obj = v44;
      v101 = [obj countByEnumeratingWithState:&v118 objects:v135 count:16];
      if (v101)
      {
        v100 = *v119;
        v38 = v42;
        do
        {
          for (i = 0; i != v101; ++i)
          {
            if (*v119 != v100)
            {
              objc_enumerationMutation(obj);
            }

            v49 = *(*(&v118 + 1) + 8 * i);
            v105 = [MEMORY[0x277CBDA78] stringFromContact:v49 style:0];
            v50 = DSLog_6;
            if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
            {
              v51 = v50;
              v52 = [v105 length];
              [v49 imageData];
              v54 = v53 = i;
              isSuggested = [v49 isSuggested];
              *buf = 138478595;
              v130 = v105;
              v131 = 2050;
              v132 = v52;
              v133 = 1024;
              LODWORD(v134[0]) = v54 != 0;
              WORD2(v134[0]) = 1026;
              *(v134 + 6) = isSuggested;
              _os_log_impl(&dword_248C40000, v51, OS_LOG_TYPE_INFO, "Found potential contact match with name: %{private}@ (%{public}lu) and contains-thumbnail: %{BOOL}d, suggested: %{public}d", buf, 0x22u);

              i = v53;
              v38 = v103;
            }

            phoneNumber3 = [v3 phoneNumber];
            v57 = [phoneNumber3 length];

            if (v57)
            {
              v116 = 0u;
              v117 = 0u;
              v114 = 0u;
              v115 = 0u;
              phoneNumbers = [v49 phoneNumbers];
              v109 = [phoneNumbers countByEnumeratingWithState:&v114 objects:v128 count:16];
              if (v109)
              {
                v98 = v49;
                v99 = i;
                v108 = *v115;
                while (2)
                {
                  for (j = 0; j != v109; ++j)
                  {
                    if (*v115 != v108)
                    {
                      objc_enumerationMutation(phoneNumbers);
                    }

                    v59 = *(*(&v114 + 1) + 8 * j);
                    value = [v59 value];
                    stringValue = [value stringValue];
                    if ([stringValue length])
                    {
                      value2 = [v59 value];
                      stringValue2 = [value2 stringValue];
                      ds_formattedPotentialPhoneNumber = [stringValue2 ds_formattedPotentialPhoneNumber];
                      phoneNumber4 = [v107 phoneNumber];
                      ds_formattedPotentialPhoneNumber2 = [phoneNumber4 ds_formattedPotentialPhoneNumber];
                      v67 = [ds_formattedPotentialPhoneNumber isEqualToString:ds_formattedPotentialPhoneNumber2];

                      if (v67)
                      {
                        v68 = DSLog_6;
                        v69 = os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO);
                        v49 = v98;
                        if (v69)
                        {
                          v70 = v68;
                          value3 = [v59 value];
                          *buf = 138478083;
                          v130 = v98;
                          v131 = 2113;
                          v132 = value3;
                          _os_log_impl(&dword_248C40000, v70, OS_LOG_TYPE_INFO, "Found matching contact %{private}@ based on phone number %{private}@", buf, 0x16u);
                        }

                        v72 = v98;

                        v104 = v72;
                        v3 = v107;
                        v38 = v103;
                        i = v99;
                        goto LABEL_43;
                      }
                    }

                    else
                    {
                    }
                  }

                  v109 = [phoneNumbers countByEnumeratingWithState:&v114 objects:v128 count:16];
                  if (v109)
                  {
                    continue;
                  }

                  break;
                }

                v3 = v107;
                v38 = v103;
                v49 = v98;
                i = v99;
              }

LABEL_43:
            }

            emailAddress3 = [v3 emailAddress];
            v74 = [emailAddress3 length];

            if (v74)
            {
              v112 = 0u;
              v113 = 0u;
              v110 = 0u;
              v111 = 0u;
              v75 = v49;
              emailAddresses = [v49 emailAddresses];
              v77 = [emailAddresses countByEnumeratingWithState:&v110 objects:v127 count:16];
              if (v77)
              {
                v78 = v77;
                v79 = *v111;
                while (2)
                {
                  for (k = 0; k != v78; ++k)
                  {
                    if (*v111 != v79)
                    {
                      objc_enumerationMutation(emailAddresses);
                    }

                    value4 = [*(*(&v110 + 1) + 8 * k) value];
                    emailAddress4 = [v3 emailAddress];
                    v83 = [value4 isEqualToString:emailAddress4];

                    if (v83)
                    {
                      v84 = DSLog_6;
                      if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
                      {
                        *buf = 138478083;
                        v130 = v75;
                        v131 = 2113;
                        v132 = value4;
                        _os_log_impl(&dword_248C40000, v84, OS_LOG_TYPE_INFO, "Found matching contact %{private}@ based on email %{private}@", buf, 0x16u);
                      }

                      v85 = v75;

                      v104 = v85;
                      goto LABEL_57;
                    }
                  }

                  v78 = [emailAddresses countByEnumeratingWithState:&v110 objects:v127 count:16];
                  if (v78)
                  {
                    continue;
                  }

                  break;
                }

LABEL_57:
                v38 = v103;
              }

              v49 = v75;
            }

            if ([v105 length] && !v102)
            {
              v86 = DSLog_6;
              if (os_log_type_enabled(DSLog_6, OS_LOG_TYPE_INFO))
              {
                *buf = 138477827;
                v130 = v105;
                _os_log_impl(&dword_248C40000, v86, OS_LOG_TYPE_INFO, "Found potential contact match by name: %{private}@", buf, 0xCu);
              }

              v102 = v49;
            }
          }

          v101 = [obj countByEnumeratingWithState:&v118 objects:v135 count:16];
        }

        while (v101);
      }

      else
      {
        v38 = v42;
      }

      v40 = v96 + 1;
    }

    while (v96 + 1 != v94);
    v94 = [v38 countByEnumeratingWithState:&v123 objects:v136 count:16];
  }

  while (v94);

  if (!v104)
  {
    goto LABEL_73;
  }

LABEL_76:

  v88 = *MEMORY[0x277D85DE8];

  return v104;
}

+ (id)contactMatchingEmailAddress:()DSContactHelpers
{
  v4 = a3;
  v5 = [[DSContactIdentity alloc] initWithEmail:v4 withPhone:0];

  v6 = [self contactMatchingIdentity:v5];

  return v6;
}

+ (id)contactMatchingPhoneNumber:()DSContactHelpers
{
  v4 = a3;
  v5 = [[DSContactIdentity alloc] initWithEmail:0 withPhone:v4];

  v6 = [self contactMatchingIdentity:v5];

  return v6;
}

+ (void)ds_meContactIdentifier
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_248C40000, a2, OS_LOG_TYPE_ERROR, "Error fetching me contact: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end