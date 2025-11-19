@interface DNDSContactRecord
+ (id)migrateDictionaryRepresentation:(id)a3 fromVersionNumber:(unint64_t)a4 toVersionNumber:(unint64_t)a5;
+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)_initWithContactIdentifier:(id)a3 firstName:(id)a4 middleName:(id)a5 lastName:(id)a6 nickName:(id)a7 organizationName:(id)a8 phoneNumbers:(id)a9 emailAddresses:(id)a10;
- (id)_initWithRecord:(id)a3;
- (id)dictionaryRepresentationWithContext:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation DNDSContactRecord

- (id)_initWithRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 contactIdentifier];
  v6 = [v4 firstName];
  v7 = [v4 middleName];
  v8 = [v4 lastName];
  v9 = [v4 nickName];
  v10 = [v4 organizationName];
  v11 = [v4 phoneNumbers];
  v12 = [v4 emailAddresses];

  v13 = [(DNDSContactRecord *)self _initWithContactIdentifier:v5 firstName:v6 middleName:v7 lastName:v8 nickName:v9 organizationName:v10 phoneNumbers:v11 emailAddresses:v12];
  return v13;
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
  v42.super_class = DNDSContactRecord;
  v24 = [(DNDSContactRecord *)&v42 init];
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
  v3 = [(DNDSContactRecord *)self contactIdentifier];
  v4 = [v3 hash];
  v5 = [(DNDSContactRecord *)self firstName];
  v6 = [v5 hash] ^ v4;
  v7 = [(DNDSContactRecord *)self middleName];
  v8 = [v7 hash];
  v9 = [(DNDSContactRecord *)self lastName];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(DNDSContactRecord *)self nickName];
  v12 = [v11 hash];
  v13 = [(DNDSContactRecord *)self organizationName];
  v14 = v12 ^ [v13 hash];
  v15 = [(DNDSContactRecord *)self phoneNumbers];
  v16 = v10 ^ v14 ^ [v15 hash];
  v17 = [(DNDSContactRecord *)self emailAddresses];
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
  v7 = [(DNDSContactRecord *)self contactIdentifier];
  v8 = [(DNDSContactRecord *)v6 contactIdentifier];
  v9 = v7 != v8;
  if (v7 == v8)
  {
    goto LABEL_10;
  }

  v10 = [(DNDSContactRecord *)self contactIdentifier];
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
  v11 = [(DNDSContactRecord *)v6 contactIdentifier];
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
  v12 = [(DNDSContactRecord *)self contactIdentifier];
  [(DNDSContactRecord *)v6 contactIdentifier];
  v85 = v86 = v12;
  if ([v12 isEqual:?])
  {
LABEL_10:
    v18 = [(DNDSContactRecord *)self firstName];
    v91 = [(DNDSContactRecord *)v6 firstName];
    v92 = v18;
    v19 = v18 != v91;
    HIDWORD(v98[1]) = v7 != v8;
    if (v18 == v91)
    {
      goto LABEL_16;
    }

    v20 = [(DNDSContactRecord *)self firstName];
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
    v21 = [(DNDSContactRecord *)v6 firstName];
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
    v22 = [(DNDSContactRecord *)self firstName];
    v79 = [(DNDSContactRecord *)v6 firstName];
    v80 = v22;
    if ([v22 isEqual:?])
    {
LABEL_16:
      v23 = [(DNDSContactRecord *)self middleName];
      v24 = [(DNDSContactRecord *)v6 middleName];
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

      v28 = [(DNDSContactRecord *)self middleName];
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
      v29 = [(DNDSContactRecord *)v6 middleName];
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
      v3 = [(DNDSContactRecord *)self middleName];
      v73 = [(DNDSContactRecord *)v6 middleName];
      v74 = v3;
      if ([v3 isEqual:?])
      {
LABEL_23:
        v30 = [(DNDSContactRecord *)self lastName];
        v31 = [(DNDSContactRecord *)v6 lastName];
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
          v33 = [(DNDSContactRecord *)self lastName];
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
          v34 = [(DNDSContactRecord *)v6 lastName];
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
          v3 = [(DNDSContactRecord *)self lastName];
          v67 = [(DNDSContactRecord *)v6 lastName];
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

        v3 = [(DNDSContactRecord *)self nickName];
        v75 = [(DNDSContactRecord *)v6 nickName];
        HIDWORD(v98[3]) = v3 != v75;
        v76 = v3;
        if (v3 == v75)
        {
          goto LABEL_38;
        }

        v35 = [(DNDSContactRecord *)self nickName];
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
        v36 = [(DNDSContactRecord *)v6 nickName];
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
        v3 = [(DNDSContactRecord *)self nickName];
        v61 = [(DNDSContactRecord *)v6 nickName];
        v62 = v3;
        if ([v3 isEqual:?])
        {
LABEL_38:
          v3 = [(DNDSContactRecord *)self organizationName];
          v37 = [(DNDSContactRecord *)v6 organizationName];
          LODWORD(v98[3]) = v3 != v37;
          v69 = v37;
          v70 = v3;
          if (v3 == v37)
          {
            goto LABEL_45;
          }

          v38 = [(DNDSContactRecord *)self organizationName];
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
          v39 = [(DNDSContactRecord *)v6 organizationName];
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
          v3 = [(DNDSContactRecord *)self organizationName];
          v55 = [(DNDSContactRecord *)v6 organizationName];
          v56 = v3;
          if ([v3 isEqual:?])
          {
LABEL_45:
            v3 = [(DNDSContactRecord *)self phoneNumbers];
            v63 = [(DNDSContactRecord *)v6 phoneNumbers];
            HIDWORD(v98[2]) = v3 != v63;
            v64 = v3;
            if (v3 == v63)
            {
              goto LABEL_52;
            }

            v40 = [(DNDSContactRecord *)self phoneNumbers];
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
            v41 = [(DNDSContactRecord *)v6 phoneNumbers];
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
            v3 = [(DNDSContactRecord *)self phoneNumbers];
            v51 = [(DNDSContactRecord *)v6 phoneNumbers];
            v52 = v3;
            if ([v3 isEqual:?])
            {
LABEL_52:
              v3 = [(DNDSContactRecord *)self emailAddresses];
              v57 = [(DNDSContactRecord *)v6 emailAddresses];
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
                v42 = [(DNDSContactRecord *)self emailAddresses];
                if (v42)
                {
                  v53 = v42;
                  v43 = [(DNDSContactRecord *)v6 emailAddresses];
                  if (v43)
                  {
                    v50 = v43;
                    v3 = [(DNDSContactRecord *)self emailAddresses];
                    v9 = [(DNDSContactRecord *)v6 emailAddresses];
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

- (NSString)description
{
  v14 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = [(DNDSContactRecord *)self contactIdentifier];
  v5 = [(DNDSContactRecord *)self firstName];
  v6 = [(DNDSContactRecord *)self middleName];
  v7 = [(DNDSContactRecord *)self lastName];
  v8 = [(DNDSContactRecord *)self nickName];
  v9 = [(DNDSContactRecord *)self organizationName];
  v10 = [(DNDSContactRecord *)self phoneNumbers];
  v11 = [(DNDSContactRecord *)self emailAddresses];
  v12 = [v14 stringWithFormat:@"<%@: %p contactIdentifier: %@; firstName: '%@'; middleName: %@; lastName: %@; nickName: %@; organizationName: %@; phoneNumbers: %@; emailAddresses: %@>", v3, self, v4, v5, v6, v7, v8, v9, v10, v11];;

  return v12;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [DNDSMutableContactRecord alloc];

  return [(DNDSContactRecord *)v4 _initWithRecord:self];
}

+ (id)migrateDictionaryRepresentation:(id)a3 fromVersionNumber:(unint64_t)a4 toVersionNumber:(unint64_t)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 mutableCopy];
  if (a4 <= 1 && a5 >= 2)
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = [v7 bs_safeArrayForKey:@"phoneNumbers"];
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

    v19 = [v12 allObjects];
    [v8 bs_setSafeObject:v19 forKey:@"phoneNumbers"];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)newWithDictionaryRepresentation:(id)a3 context:(id)a4
{
  v44 = a4;
  v5 = a3;
  v48 = [v5 bs_safeObjectForKey:@"contactIdentifier" ofType:objc_opt_class()];
  v47 = [v5 bs_safeObjectForKey:@"firstName" ofType:objc_opt_class()];
  v6 = [v5 bs_safeObjectForKey:@"middleName" ofType:objc_opt_class()];
  v7 = [v5 bs_safeObjectForKey:@"lastName" ofType:objc_opt_class()];
  v46 = [v5 bs_safeObjectForKey:@"nickName" ofType:objc_opt_class()];
  v45 = [v5 bs_safeObjectForKey:@"organizationName" ofType:objc_opt_class()];
  v8 = MEMORY[0x277CBEB98];
  v9 = [v5 bs_safeArrayForKey:@"phoneNumbers"];
  v10 = [v8 setWithArray:v9];

  v11 = MEMORY[0x277CBEB98];
  v12 = [v5 bs_safeArrayForKey:@"emailAddresses"];
  v13 = [v11 setWithArray:v12];

  v14 = [v5 bs_safeObjectForKey:@"type" ofType:objc_opt_class()];
  v15 = [v5 bs_safeObjectForKey:@"value" ofType:objc_opt_class()];

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
    v21 = [v14 unsignedIntegerValue];
    v20 = v45;
    v19 = v46;
    v18 = v13;
    if (v21 != 2)
    {
      goto LABEL_9;
    }

    [MEMORY[0x277CBEB98] setWithObject:v43];
    v17 = v13 = v17;
  }

LABEL_9:
  if (v48)
  {
    v22 = [[a1 alloc] _initWithContactIdentifier:v48 firstName:v47 middleName:v6 lastName:v7 nickName:v19 organizationName:v20 phoneNumbers:v17 emailAddresses:v18];
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
    v24 = [v44 contactProvider];
    [v24 contactForContact:v23];
    v25 = v39 = v17;

    v36 = [a1 alloc];
    v35 = [v25 contactIdentifier];
    v34 = [v25 firstName];
    v26 = [v25 middleName];
    v27 = [v25 lastName];
    [v25 nickName];
    v28 = v42 = v6;
    [v25 organizationName];
    v29 = v40 = v7;
    [v25 phoneNumbers];
    v30 = v37 = v18;
    v31 = [v25 emailAddresses];
    v32 = v26;
    v22 = [v36 _initWithContactIdentifier:v35 firstName:v34 middleName:v26 lastName:v27 nickName:v28 organizationName:v29 phoneNumbers:v30 emailAddresses:v31];

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

- (id)dictionaryRepresentationWithContext:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v4 arrayHealingSource];
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = [objc_opt_class() newWithDictionaryRepresentation:v11 context:v4];
        if ([(DNDSContactRecord *)self isEqual:v12])
        {
          v13 = [v11 mutableCopy];

          v5 = v13;
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = [(DNDSContactRecord *)self firstName];
  [v5 bs_setSafeObject:v14 forKey:@"firstName"];

  v15 = [(DNDSContactRecord *)self middleName];
  [v5 bs_setSafeObject:v15 forKey:@"middleName"];

  v16 = [(DNDSContactRecord *)self lastName];
  [v5 bs_setSafeObject:v16 forKey:@"lastName"];

  v17 = [(DNDSContactRecord *)self nickName];
  [v5 bs_setSafeObject:v17 forKey:@"nickName"];

  v18 = [(DNDSContactRecord *)self organizationName];
  [v5 bs_setSafeObject:v18 forKey:@"organizationName"];

  v19 = [(DNDSContactRecord *)self phoneNumbers];
  v20 = [v19 allObjects];
  [v5 bs_setSafeObject:v20 forKey:@"phoneNumbers"];

  v21 = [(DNDSContactRecord *)self emailAddresses];
  v22 = [v21 allObjects];
  [v5 bs_setSafeObject:v22 forKey:@"emailAddresses"];

  if ([v4 destination] == 1)
  {
    v23 = [(DNDSContactRecord *)self contactIdentifier];
    [v5 bs_setSafeObject:v23 forKey:@"contactIdentifier"];
  }

  v24 = *MEMORY[0x277D85DE8];

  return v5;
}

@end