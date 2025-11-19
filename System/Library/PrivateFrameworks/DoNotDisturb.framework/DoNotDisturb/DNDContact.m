@interface DNDContact
+ (id)normalizePhoneNumber:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)matchesContact:(id)a3;
- (BOOL)matchesContactHandle:(id)a3;
- (DNDContact)initWithCoder:(id)a3;
- (id)_descriptionForRedacted:(BOOL)a3;
- (id)_initWithContactIdentifier:(id)a3 firstName:(id)a4 middleName:(id)a5 lastName:(id)a6 nickName:(id)a7 organizationName:(id)a8 phoneNumbers:(id)a9 emailAddresses:(id)a10;
- (id)_redactedDescriptionsForStrings:(id)a3;
- (id)diffDescription;
- (id)normalizedPhoneNumbers;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DNDContact

+ (id)normalizePhoneNumber:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DNDLogModeConfiguration;
  if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138543619;
    v18 = a1;
    v19 = 2113;
    v20 = v4;
    _os_log_impl(&dword_22002F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ normalizing phonenumber %{private}@", &v17, 0x16u);
  }

  v6 = [MEMORY[0x277CBEAF8] currentLocale];
  v7 = [v6 objectForKey:*MEMORY[0x277CBE690]];

  v8 = *MEMORY[0x277CBECE8];
  v9 = CFPhoneNumberCreate();
  if (!v9 || (v10 = v9, String = CFPhoneNumberCreateString(), CFRelease(v10), (v12 = String) == 0))
  {
    v13 = DNDLogModeConfiguration;
    if (os_log_type_enabled(DNDLogModeConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(DNDContact *)a1 normalizePhoneNumber:v4, v13];
    }

    v12 = 0;
    String = v4;
  }

  v14 = String;

  v15 = *MEMORY[0x277D85DE8];
  return String;
}

- (id)_initWithContactIdentifier:(id)a3 firstName:(id)a4 middleName:(id)a5 lastName:(id)a6 nickName:(id)a7 organizationName:(id)a8 phoneNumbers:(id)a9 emailAddresses:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v42.receiver = self;
  v42.super_class = DNDContact;
  v24 = [(DNDContact *)&v42 init];
  if (v24)
  {
    v25 = [v16 copy];
    contactIdentifier = v24->_contactIdentifier;
    v24->_contactIdentifier = v25;

    v27 = [v17 copy];
    firstName = v24->_firstName;
    v24->_firstName = v27;

    v29 = [v18 copy];
    middleName = v24->_middleName;
    v24->_middleName = v29;

    v31 = [v19 copy];
    lastName = v24->_lastName;
    v24->_lastName = v31;

    v33 = [v20 copy];
    nickName = v24->_nickName;
    v24->_nickName = v33;

    v35 = [v21 copy];
    organizationName = v24->_organizationName;
    v24->_organizationName = v35;

    v37 = [v22 copy];
    phoneNumbers = v24->_phoneNumbers;
    v24->_phoneNumbers = v37;

    v39 = [v23 copy];
    emailAddresses = v24->_emailAddresses;
    v24->_emailAddresses = v39;
  }

  return v24;
}

- (unint64_t)hash
{
  v3 = [(DNDContact *)self contactIdentifier];
  v4 = [v3 hash];
  v5 = [(DNDContact *)self firstName];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDContact *)self middleName];
  v8 = [v7 hash];
  v9 = [(DNDContact *)self lastName];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDContact *)self nickName];
  v12 = [v11 hash];
  v13 = [(DNDContact *)self organizationName];
  v14 = v12 ^ [v13 hash];
  v15 = [(DNDContact *)self phoneNumbers];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(DNDContact *)self emailAddresses];
  v18 = [v17 hash];

  return v16 ^ v18;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
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

  v6 = v5;
  v7 = [(DNDContact *)self contactIdentifier];
  v8 = [(DNDContact *)v6 contactIdentifier];
  v9 = v7 != v8;
  if (v7 == v8)
  {
    goto LABEL_10;
  }

  v10 = [(DNDContact *)self contactIdentifier];
  if (!v10)
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

  v93 = v10;
  v11 = [(DNDContact *)v6 contactIdentifier];
  if (!v11)
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

  v90 = v11;
  v12 = [(DNDContact *)self contactIdentifier];
  [(DNDContact *)v6 contactIdentifier];
  v85 = v86 = v12;
  if ([v12 isEqual:?])
  {
LABEL_10:
    v18 = [(DNDContact *)self firstName];
    v91 = [(DNDContact *)v6 firstName];
    v92 = v18;
    v19 = v18 != v91;
    HIDWORD(v98[1]) = v7 != v8;
    if (v18 == v91)
    {
      goto LABEL_16;
    }

    v20 = [(DNDContact *)self firstName];
    if (!v20)
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
      v98[0] = (v7 != v8) | 0x100000000;
      LODWORD(v98[2]) = 1;
      goto LABEL_63;
    }

    v89 = v20;
    v21 = [(DNDContact *)v6 firstName];
    if (!v21)
    {
      v84 = 0;
      v13 = 0;
      v98[0] = (v7 != v8) | 0x100000000;
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

    v84 = v21;
    v22 = [(DNDContact *)self firstName];
    v79 = [(DNDContact *)v6 firstName];
    v80 = v22;
    if ([v22 isEqual:?])
    {
LABEL_16:
      v23 = [(DNDContact *)self middleName];
      v24 = [(DNDContact *)v6 middleName];
      v25 = v23;
      v26 = v23 == v24;
      v27 = v23 != v24;
      v87 = v24;
      v88 = v25;
      LODWORD(v98[2]) = v19;
      if (v26)
      {
        goto LABEL_23;
      }

      v28 = [(DNDContact *)self middleName];
      if (!v28)
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
        v98[0] = (v7 != v8) | 0x100000000;
        v97 = v19 | 0x100000000;
        v13 = v19;
        v14 = 0;
        LODWORD(v98[1]) = 1;
        goto LABEL_63;
      }

      v83 = v28;
      v29 = [(DNDContact *)v6 middleName];
      if (!v29)
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
        v98[0] = (v7 != v8) | 0x100000000;
        v97 = v19 | 0x100000000;
        v13 = v19;
        v14 = 0;
        LODWORD(v98[1]) = 1;
        *&v95[8] = 1;
        goto LABEL_63;
      }

      v78 = v29;
      v3 = [(DNDContact *)self middleName];
      v73 = [(DNDContact *)v6 middleName];
      v74 = v3;
      if ([v3 isEqual:?])
      {
LABEL_23:
        v30 = [(DNDContact *)self lastName];
        v31 = [(DNDContact *)v6 lastName];
        v32 = v30;
        v81 = v31;
        v26 = v30 == v31;
        v3 = v30 != v31;
        LODWORD(v98[1]) = v27;
        v82 = v32;
        if (v26)
        {
          LODWORD(v98[4]) = v3;
        }

        else
        {
          v33 = [(DNDContact *)self lastName];
          if (!v33)
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
            v98[0] = (v7 != v8) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            goto LABEL_63;
          }

          v77 = v33;
          v34 = [(DNDContact *)v6 lastName];
          if (!v34)
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
            v98[0] = (v7 != v8) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            *&v94[20] = 1;
            goto LABEL_63;
          }

          LODWORD(v98[4]) = v3;
          v72 = v34;
          v3 = [(DNDContact *)self lastName];
          v67 = [(DNDContact *)v6 lastName];
          v68 = v3;
          if (![v3 isEqual:?])
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
            v98[0] = (v7 != v8) | 0x100000000;
            v97 = v19 | 0x100000000;
            v13 = v19;
            v14 = 0;
            LODWORD(v98[4]) = 1;
            *&v94[16] = 0x100000001;
            goto LABEL_63;
          }
        }

        v3 = [(DNDContact *)self nickName];
        v75 = [(DNDContact *)v6 nickName];
        HIDWORD(v98[3]) = v3 != v75;
        v76 = v3;
        if (v3 == v75)
        {
          goto LABEL_38;
        }

        v35 = [(DNDContact *)self nickName];
        if (!v35)
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
          v98[0] = (v7 != v8) | 0x100000000;
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

        v71 = v35;
        v36 = [(DNDContact *)v6 nickName];
        if (!v36)
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
          v98[0] = (v7 != v8) | 0x100000000;
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

        v66 = v36;
        v3 = [(DNDContact *)self nickName];
        v61 = [(DNDContact *)v6 nickName];
        v62 = v3;
        if ([v3 isEqual:?])
        {
LABEL_38:
          v3 = [(DNDContact *)self organizationName];
          v37 = [(DNDContact *)v6 organizationName];
          LODWORD(v98[3]) = v3 != v37;
          v69 = v37;
          v70 = v3;
          if (v3 == v37)
          {
            goto LABEL_45;
          }

          v38 = [(DNDContact *)self organizationName];
          if (!v38)
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
            v98[0] = (v7 != v8) | 0x100000000;
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

          v65 = v38;
          v39 = [(DNDContact *)v6 organizationName];
          if (!v39)
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
            v98[0] = (v7 != v8) | 0x100000000;
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

          v60 = v39;
          v3 = [(DNDContact *)self organizationName];
          v55 = [(DNDContact *)v6 organizationName];
          v56 = v3;
          if ([v3 isEqual:?])
          {
LABEL_45:
            v3 = [(DNDContact *)self phoneNumbers];
            v63 = [(DNDContact *)v6 phoneNumbers];
            HIDWORD(v98[2]) = v3 != v63;
            v64 = v3;
            if (v3 == v63)
            {
              goto LABEL_52;
            }

            v40 = [(DNDContact *)self phoneNumbers];
            if (!v40)
            {
              v59 = 0;
              *v95 = 0;
              *&v95[4] = v27;
              *&v95[8] = v27;
              v96 = 0x100000000;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v98[0] = (v7 != v8) | 0x100000000;
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

            v59 = v40;
            v41 = [(DNDContact *)v6 phoneNumbers];
            if (!v41)
            {
              v54 = 0;
              *v95 = 0;
              *&v95[4] = v27;
              *&v95[8] = v27;
              v96 = 0x100000000;
              v15 = 0;
              v16 = 0;
              v17 = 0;
              v98[0] = (v7 != v8) | 0x100000000;
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

            v54 = v41;
            v3 = [(DNDContact *)self phoneNumbers];
            v51 = [(DNDContact *)v6 phoneNumbers];
            v52 = v3;
            if ([v3 isEqual:?])
            {
LABEL_52:
              v3 = [(DNDContact *)self emailAddresses];
              v57 = [(DNDContact *)v6 emailAddresses];
              v58 = v3;
              if (v3 == v57)
              {
                v15 = 0;
                v16 = 0;
                v98[0] = (v7 != v8) | 0x100000000;
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
                v42 = [(DNDContact *)self emailAddresses];
                if (v42)
                {
                  v53 = v42;
                  v43 = [(DNDContact *)v6 emailAddresses];
                  if (v43)
                  {
                    v50 = v43;
                    v3 = [(DNDContact *)self emailAddresses];
                    v9 = [(DNDContact *)v6 emailAddresses];
                    v17 = [v3 isEqual:v9];
                    v98[0] = (v7 != v8) | 0x100000000;
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
                    v98[0] = (v7 != v8) | 0x100000000;
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
                  v98[0] = (v7 != v8) | 0x100000000;
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
            v98[0] = (v7 != v8) | 0x100000000;
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
            v98[0] = (v7 != v8) | 0x100000000;
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
          v98[0] = (v7 != v8) | 0x100000000;
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
        v98[0] = (v7 != v8) | 0x100000000;
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
      LODWORD(v98[0]) = v7 != v8;
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
    v44 = v8;
    v45 = v7;
    v46 = v14;
    v47 = v13;
    v48 = v15;

    v15 = v48;
    v13 = v47;
    v14 = v46;
    v7 = v45;
    v8 = v44;
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

  if (v7 != v8)
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

- (BOOL)matchesContact:(id)a3
{
  v4 = a3;
  v5 = [(DNDContact *)self contactIdentifier];
  if (v5)
  {
    v6 = [(DNDContact *)self contactIdentifier];
    v7 = [v4 contactIdentifier];
    if (v6 == v7)
    {
      v12 = 1;
    }

    else
    {
      v8 = [(DNDContact *)self contactIdentifier];
      if (v8)
      {
        v9 = [v4 contactIdentifier];
        if (v9)
        {
          v10 = [(DNDContact *)self contactIdentifier];
          v11 = [v4 contactIdentifier];
          v12 = [v10 isEqual:v11];
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

  v13 = [(DNDContact *)self firstName];
  v14 = [v4 firstName];
  if (v13 != v14)
  {
    v15 = [(DNDContact *)self firstName];
    if (!v15)
    {
      v28 = 0;
      goto LABEL_98;
    }

    v16 = v15;
    v17 = [v4 firstName];
    if (!v17)
    {
      v28 = 0;
LABEL_97:

      goto LABEL_98;
    }

    v18 = [(DNDContact *)self firstName];
    v19 = [v4 firstName];
    if (![v18 isEqual:v19])
    {
      v28 = 0;
LABEL_96:

      goto LABEL_97;
    }

    v94 = v16;
    v95 = v19;
    v96 = v18;
    v97 = v17;
  }

  v20 = [(DNDContact *)self middleName];
  v21 = [v4 middleName];
  if (v20 == v21)
  {
    v93 = v12;
    goto LABEL_25;
  }

  v22 = [(DNDContact *)self middleName];
  if (!v22)
  {
LABEL_38:

    v28 = 0;
    v18 = v96;
    v17 = v97;
    v16 = v94;
    v19 = v95;
    if (v13 == v14)
    {
      goto LABEL_98;
    }

    goto LABEL_96;
  }

  v23 = v22;
  v24 = [v4 middleName];
  if (!v24)
  {

    goto LABEL_38;
  }

  v25 = v24;
  v93 = v12;
  v26 = [(DNDContact *)self middleName];
  v27 = [v4 middleName];
  if (([v26 isEqual:v27] & 1) == 0)
  {

    goto LABEL_94;
  }

  v90 = v27;
  v91 = v26;
  v87 = v25;
  v88 = v23;
LABEL_25:
  v29 = [(DNDContact *)self lastName];
  v30 = [v4 lastName];
  if (v29 == v30)
  {
    goto LABEL_32;
  }

  v31 = [(DNDContact *)self lastName];
  if (!v31)
  {
LABEL_49:

    if (v20 != v21)
    {
LABEL_93:
    }

LABEL_94:

    v28 = 0;
    goto LABEL_95;
  }

  v89 = v31;
  v32 = [v4 lastName];
  if (!v32)
  {
LABEL_48:

    goto LABEL_49;
  }

  v86 = v32;
  v33 = [(DNDContact *)self lastName];
  v34 = [v4 lastName];
  if (([v33 isEqual:v34] & 1) == 0)
  {

    goto LABEL_48;
  }

  v80 = v34;
  v83 = v33;
LABEL_32:
  v35 = [(DNDContact *)self nickName];
  v92 = [v4 nickName];
  if (v35 != v92)
  {
    v36 = [(DNDContact *)self nickName];
    if (v36)
    {
      v81 = v36;
      v37 = [v4 nickName];
      if (v37)
      {
        v77 = v29;
        v79 = v37;
        v38 = v35;
        v39 = [(DNDContact *)self nickName];
        v40 = [v4 nickName];
        if ([v39 isEqual:v40])
        {
          v82 = v30;
          v73 = v39;
          v30 = v40;
          v35 = v38;
          v29 = v77;
          goto LABEL_42;
        }

        v29 = v77;
LABEL_60:
        if (v29 != v30)
        {
        }

        if (v20 == v21)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }
    }

    goto LABEL_60;
  }

  v82 = v30;
LABEL_42:
  v41 = [(DNDContact *)self organizationName];
  v84 = [v4 organizationName];
  v85 = v41;
  if (v41 != v84)
  {
    v42 = [(DNDContact *)self organizationName];
    if (v42)
    {
      v74 = v42;
      v43 = [v4 organizationName];
      if (v43)
      {
        v76 = v30;
        v72 = v43;
        v44 = [(DNDContact *)self organizationName];
        v45 = [v4 organizationName];
        if ([v44 isEqual:v45])
        {
          v69 = v45;
          v70 = v44;
          goto LABEL_52;
        }

        if (v35 != v92)
        {
        }

        v52 = v82;
        v59 = v29 == v82;
LABEL_78:
        if (!v59)
        {
        }

        if (v20 == v21)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      v51 = v29;
      v58 = v30;

      v52 = v82;
      if (v35 != v92)
      {
      }
    }

    else
    {
      v51 = v29;

      if (v35 != v92)
      {
      }

      v52 = v82;
    }

    v59 = v51 == v52;
    goto LABEL_78;
  }

  v76 = v30;
LABEL_52:
  v46 = [(DNDContact *)self normalizedPhoneNumbers];
  v78 = [v4 normalizedPhoneNumbers];
  v75 = v46;
  if (v46 != v78)
  {
    v47 = [(DNDContact *)self normalizedPhoneNumbers];
    if (v47)
    {
      v71 = v47;
      v48 = [v4 normalizedPhoneNumbers];
      if (v48)
      {
        v68 = v48;
        v49 = [(DNDContact *)self normalizedPhoneNumbers];
        v50 = [v4 normalizedPhoneNumbers];
        if ([v49 isEqual:v50])
        {
          v66 = v50;
          v67 = v49;
          goto LABEL_67;
        }

        v48 = v68;
      }

      v60 = v35;
    }

    else
    {
      v60 = v35;
    }

    if (v85 != v84)
    {
    }

    if (v60 != v92)
    {
    }

    if (v29 != v82)
    {
    }

    if (v20 != v21)
    {
      goto LABEL_93;
    }

    goto LABEL_94;
  }

LABEL_67:
  v53 = [(DNDContact *)self emailAddresses];
  v54 = [v4 emailAddresses];
  v55 = v54;
  if (v53 == v54)
  {

    v28 = 1;
  }

  else
  {
    v56 = [(DNDContact *)self emailAddresses];
    if (v56)
    {
      v65 = v56;
      v57 = [v4 emailAddresses];
      if (v57)
      {
        v64 = v57;
        v63 = [(DNDContact *)self emailAddresses];
        v62 = [v4 emailAddresses];
        v28 = [v63 isEqual:v62];

        v57 = v64;
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

  if (v75 != v78)
  {
  }

  if (v85 != v84)
  {
  }

  if (v35 != v92)
  {
  }

  if (v29 != v82)
  {
  }

  if (v20 != v21)
  {
  }

LABEL_95:
  v18 = v96;
  v17 = v97;
  v16 = v94;
  v19 = v95;
  v12 = v93;
  if (v13 != v14)
  {
    goto LABEL_96;
  }

LABEL_98:

  return (v12 | v28) & 1;
}

- (BOOL)matchesContactHandle:(id)a3
{
  v4 = a3;
  v5 = [(DNDContact *)self contactIdentifier];
  if (v5)
  {
    v6 = [(DNDContact *)self contactIdentifier];
    v7 = [v4 contactIdentifier];
    if (v6 == v7)
    {
      v12 = 1;
    }

    else
    {
      v8 = [(DNDContact *)self contactIdentifier];
      if (v8)
      {
        v9 = [v4 contactIdentifier];
        if (v9)
        {
          v10 = [(DNDContact *)self contactIdentifier];
          v11 = [v4 contactIdentifier];
          v12 = [v10 isEqual:v11];
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

  v13 = [v4 normalizedValue];
  v14 = v13;
  if (v13)
  {
    LOBYTE(v13) = [(NSSet *)self->_phoneNumbers containsObject:v13]|| [(NSSet *)self->_emailAddresses containsObject:v14];
  }

  v15 = v12 | v13;

  return v15 & 1;
}

- (id)_descriptionForRedacted:(BOOL)a3
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  contactIdentifier = self->_contactIdentifier;
  firstName = self->_firstName;
  if (a3)
  {
    v9 = [(NSString *)firstName dnd_privacyObfuscatedString];
    v10 = [(NSString *)self->_middleName dnd_privacyObfuscatedString];
    v18 = [(NSString *)self->_lastName dnd_privacyObfuscatedString];
    v11 = [(NSString *)self->_nickName dnd_privacyObfuscatedString];
    v12 = [(NSString *)self->_nickName dnd_privacyObfuscatedString];
    v13 = [(DNDContact *)self _redactedDescriptionsForStrings:self->_phoneNumbers];
    v14 = [(DNDContact *)self _redactedDescriptionsForStrings:self->_emailAddresses];
    v15 = [v5 stringWithFormat:@"<%@: %p contactIdentifier: %@; firstName: %@; middleName: %@; lastName: %@; nickName: %@; organizationName: %@; phoneNumbers: %@; emailAddresses: %@;>", v6, self, contactIdentifier, v9, v10, v18, v11, v12, v13, v14];;
  }

  else
  {
    v16 = *&self->_middleName;
    v15 = [v5 stringWithFormat:@"<%@: %p contactIdentifier: %@; firstName: %@; middleName: %@; lastName: %@; nickName: %@; organizationName: %@; phoneNumbers: %@; emailAddresses: %@;>", v6, self, contactIdentifier, firstName, self->_middleName, self->_lastName, self->_nickName, self->_organizationName, self->_phoneNumbers, self->_emailAddresses];;
  }

  return v15;
}

- (id)_redactedDescriptionsForStrings:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) dnd_privacyObfuscatedString];
        [v4 addObject:v10];
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
  v3 = [MEMORY[0x277CCAB68] string];
  if ([(NSString *)self->_contactIdentifier length])
  {
    [v3 appendFormat:@"contactIdentifier:%@;", self->_contactIdentifier];
  }

  if ([(NSString *)self->_firstName length])
  {
    [v3 appendFormat:@"firstName:%@;", self->_firstName];
  }

  if ([(NSString *)self->_middleName length])
  {
    [v3 appendFormat:@"middleName:%@;", self->_middleName];
  }

  if ([(NSString *)self->_lastName length])
  {
    [v3 appendFormat:@"lastName:%@;", self->_lastName];
  }

  if ([(NSString *)self->_nickName length])
  {
    [v3 appendFormat:@"nickName:%@;", self->_nickName];
  }

  if ([(NSString *)self->_organizationName length])
  {
    [v3 appendFormat:@"organizationName:%@;", self->_organizationName];
  }

  if ([(NSSet *)self->_phoneNumbers count])
  {
    [v3 appendFormat:@"phoneNumbers:%@;", self->_phoneNumbers];
  }

  if ([(NSSet *)self->_emailAddresses count])
  {
    [v3 appendFormat:@"emailAddresses:%@;", self->_emailAddresses];
  }

  return v3;
}

- (DNDContact)initWithCoder:(id)a3
{
  v3 = a3;
  v19 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"contactIdentifier"];
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"firstName"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"middleName"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"lastName"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"nickName"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"organizationName"];
  v9 = MEMORY[0x277CBEB98];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v3 decodeObjectOfClasses:v11 forKey:@"phoneNumbers"];

  v13 = MEMORY[0x277CBEB98];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v16 = [v3 decodeObjectOfClasses:v15 forKey:@"emailAddresses"];

  v17 = [(DNDContact *)self _initWithContactIdentifier:v19 firstName:v4 middleName:v5 lastName:v6 nickName:v7 organizationName:v8 phoneNumbers:v12 emailAddresses:v16];
  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  contactIdentifier = self->_contactIdentifier;
  v5 = a3;
  [v5 encodeObject:contactIdentifier forKey:@"contactIdentifier"];
  [v5 encodeObject:self->_firstName forKey:@"firstName"];
  [v5 encodeObject:self->_middleName forKey:@"middleName"];
  [v5 encodeObject:self->_lastName forKey:@"lastName"];
  [v5 encodeObject:self->_nickName forKey:@"nickName"];
  [v5 encodeObject:self->_organizationName forKey:@"organizationName"];
  [v5 encodeObject:self->_phoneNumbers forKey:@"phoneNumbers"];
  [v5 encodeObject:self->_emailAddresses forKey:@"emailAddresses"];
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