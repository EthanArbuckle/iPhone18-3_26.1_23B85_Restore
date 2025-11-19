@interface LNQueryRequest
- (BOOL)isEqual:(id)a3;
- (LNQueryRequest)initWithCoder:(id)a3;
- (LNQueryRequest)initWithRequestType:(int64_t)a3 identifiersToMatch:(id)a4 stringToMatch:(id)a5 propertyQuery:(id)a6 maximumResultCount:(id)a7 entityIdentifier:(id)a8 entityMangledTypeName:(id)a9 queryIdentifier:(id)a10 queryMangledTypeName:(id)a11 intentMangledTypeNames:(id)a12 sortingOptions:(id)a13;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNQueryRequest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(LNQueryRequest *)self requestType];
        if (v7 != [(LNQueryRequest *)v6 requestType])
        {
          LOBYTE(v13) = 0;
LABEL_89:

          goto LABEL_90;
        }

        v8 = [(LNQueryRequest *)self entityIdentifier];
        v9 = [(LNQueryRequest *)v6 entityIdentifier];
        v10 = v8;
        v11 = v9;
        v12 = v11;
        if (v10 == v11)
        {
        }

        else
        {
          LOBYTE(v13) = 0;
          v14 = v11;
          v15 = v10;
          if (!v10 || !v11)
          {
            goto LABEL_86;
          }

          v16 = [(LNQueryRequest *)v10 isEqualToString:v11];

          if (!v16)
          {
            LOBYTE(v13) = 0;
LABEL_87:

            goto LABEL_88;
          }
        }

        v17 = [(LNQueryRequest *)self entityMangledTypeName];
        v18 = [(LNQueryRequest *)v6 entityMangledTypeName];
        v15 = v17;
        v19 = v18;
        v14 = v19;
        if (v15 == v19)
        {
        }

        else
        {
          LOBYTE(v13) = 0;
          v20 = v19;
          v21 = v15;
          if (!v15 || !v19)
          {
            goto LABEL_85;
          }

          v22 = [(LNQueryRequest *)v15 isEqualToString:v19];

          if (!v22)
          {
            LOBYTE(v13) = 0;
LABEL_86:

            goto LABEL_87;
          }
        }

        v23 = [(LNQueryRequest *)self identifiersToMatch];
        v24 = [(LNQueryRequest *)v6 identifiersToMatch];
        v21 = v23;
        v25 = v24;
        v20 = v25;
        v81 = v21;
        if (v21 == v25)
        {
        }

        else
        {
          LOBYTE(v13) = 0;
          v26 = v25;
          if (!v21 || !v25)
          {
            goto LABEL_84;
          }

          v13 = [(LNQueryRequest *)v21 isEqual:v25];

          if (!v13)
          {
            goto LABEL_85;
          }
        }

        v80 = v20;
        v27 = [(LNQueryRequest *)self maximumResultCount];
        v28 = [(LNQueryRequest *)v6 maximumResultCount];
        v29 = v27;
        v30 = v28;
        v78 = v30;
        v79 = v29;
        if (v29 == v30)
        {
        }

        else
        {
          LOBYTE(v13) = 0;
          if (!v29)
          {
            v31 = v30;
            v20 = v80;
            goto LABEL_82;
          }

          v31 = v30;
          v20 = v80;
          if (!v30)
          {
LABEL_82:

            goto LABEL_83;
          }

          v32 = [(LNQueryRequest *)v29 isEqual:v30];

          if (!v32)
          {
            LOBYTE(v13) = 0;
            v20 = v80;
LABEL_83:
            v26 = v78;
            v21 = v79;
LABEL_84:

            v21 = v81;
LABEL_85:

            goto LABEL_86;
          }
        }

        v33 = [(LNQueryRequest *)self propertyQuery];
        v34 = [(LNQueryRequest *)v6 propertyQuery];
        v29 = v33;
        v35 = v34;
        v76 = v29;
        v77 = v35;
        if (v29 != v35)
        {
          LOBYTE(v13) = 0;
          if (v29)
          {
            v36 = v35;
            v20 = v80;
            if (v35)
            {
              v37 = [(LNQueryRequest *)v29 isEqual:v35];

              if (!v37)
              {
                LOBYTE(v13) = 0;
                v20 = v80;
                v31 = v77;
                goto LABEL_82;
              }

LABEL_39:
              v38 = [(LNQueryRequest *)self queryIdentifier];
              v39 = [(LNQueryRequest *)v6 queryIdentifier];
              v40 = v38;
              v41 = v39;
              v74 = v41;
              v75 = v40;
              if (v40 == v41)
              {
              }

              else
              {
                LOBYTE(v13) = 0;
                if (!v40)
                {
                  v42 = v41;
                  v20 = v80;
                  goto LABEL_79;
                }

                v42 = v41;
                v20 = v80;
                if (!v41)
                {
LABEL_79:

                  goto LABEL_80;
                }

                v43 = [(LNQueryRequest *)v40 isEqualToString:v41];

                if (!v43)
                {
                  LOBYTE(v13) = 0;
                  v20 = v80;
LABEL_80:
                  v36 = v74;
                  v29 = v75;
                  goto LABEL_81;
                }
              }

              v44 = [(LNQueryRequest *)self queryMangledTypeName];
              v45 = [(LNQueryRequest *)v6 queryMangledTypeName];
              v40 = v44;
              v46 = v45;
              v72 = v40;
              v73 = v46;
              if (v40 != v46)
              {
                LOBYTE(v13) = 0;
                if (v40)
                {
                  v47 = v46;
                  v20 = v80;
                  if (v46)
                  {
                    v48 = [(LNQueryRequest *)v40 isEqualToString:v46];

                    if (!v48)
                    {
                      LOBYTE(v13) = 0;
                      v20 = v80;
                      v42 = v73;
                      goto LABEL_79;
                    }

LABEL_53:
                    v49 = [(LNQueryRequest *)self stringToMatch];
                    v50 = [(LNQueryRequest *)v6 stringToMatch];
                    v51 = v49;
                    v52 = v50;
                    v70 = v52;
                    v71 = v51;
                    if (v51 == v52)
                    {
                    }

                    else
                    {
                      LOBYTE(v13) = 0;
                      if (!v51)
                      {
                        v53 = v52;
                        v20 = v80;
                        goto LABEL_76;
                      }

                      v53 = v52;
                      v20 = v80;
                      if (!v52)
                      {
LABEL_76:

                        goto LABEL_77;
                      }

                      v54 = [v51 isEqualToString:v52];

                      if (!v54)
                      {
                        LOBYTE(v13) = 0;
                        v20 = v80;
LABEL_77:
                        v47 = v70;
                        v40 = v71;
                        goto LABEL_78;
                      }
                    }

                    v55 = [(LNQueryRequest *)self sortingOptions];
                    v56 = [(LNQueryRequest *)v6 sortingOptions];
                    v51 = v55;
                    v57 = v56;
                    v68 = v51;
                    v69 = v57;
                    if (v51 != v57)
                    {
                      LOBYTE(v13) = 0;
                      if (v51)
                      {
                        v58 = v57;
                        v20 = v80;
                        if (v57)
                        {
                          v59 = [v51 isEqual:v57];

                          if (!v59)
                          {
                            LOBYTE(v13) = 0;
                            v20 = v80;
                            v53 = v69;
                            goto LABEL_76;
                          }

                          goto LABEL_67;
                        }
                      }

                      else
                      {
                        v58 = v57;
                        v20 = v80;
                      }

LABEL_75:

                      v51 = v68;
                      v53 = v69;
                      goto LABEL_76;
                    }

LABEL_67:
                    v60 = [(LNQueryRequest *)self intentMangledTypeNames];
                    v61 = [(LNQueryRequest *)v6 intentMangledTypeNames];
                    v62 = v60;
                    v63 = v61;
                    v64 = v62;
                    v65 = v62 == v63;
                    v66 = v63;
                    if (v65)
                    {
                      LOBYTE(v13) = 1;
                      v20 = v80;
                    }

                    else
                    {
                      LOBYTE(v13) = 0;
                      v20 = v80;
                      if (v64 && v63)
                      {
                        LOBYTE(v13) = [v64 isEqual:v63];
                      }
                    }

                    v58 = v66;
                    v51 = v64;
                    goto LABEL_75;
                  }
                }

                else
                {
                  v47 = v46;
                  v20 = v80;
                }

LABEL_78:

                v40 = v72;
                v42 = v73;
                goto LABEL_79;
              }

              goto LABEL_53;
            }
          }

          else
          {
            v36 = v35;
            v20 = v80;
          }

LABEL_81:

          v29 = v76;
          v31 = v77;
          goto LABEL_82;
        }

        goto LABEL_39;
      }

      LOBYTE(v13) = 0;
      v10 = v6;
      v6 = 0;
    }

    else
    {
      v10 = 0;
      LOBYTE(v13) = 0;
    }

LABEL_88:

    goto LABEL_89;
  }

  LOBYTE(v13) = 1;
LABEL_90:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(LNQueryRequest *)self requestType];
  v24 = [(LNQueryRequest *)self entityIdentifier];
  v4 = [v24 hash] + v3;
  v5 = [(LNQueryRequest *)self identifiersToMatch];
  v6 = [v5 hash];
  v7 = [(LNQueryRequest *)self maximumResultCount];
  v8 = v6 ^ [v7 hash] ^ v4;
  v9 = [(LNQueryRequest *)self propertyQuery];
  v10 = [v9 hash];
  v11 = [(LNQueryRequest *)self queryIdentifier];
  v12 = v10 ^ [v11 hash];
  v13 = [(LNQueryRequest *)self stringToMatch];
  v23 = v8 ^ v12 ^ [v13 hash];
  v14 = [(LNQueryRequest *)self intentMangledTypeNames];
  v15 = [v14 hash];
  v16 = [(LNQueryRequest *)self sortingOptions];
  v17 = v15 ^ [v16 hash];
  v18 = [(LNQueryRequest *)self entityMangledTypeName];
  v19 = v17 ^ [v18 hash];
  v20 = [(LNQueryRequest *)self queryMangledTypeName];
  v21 = v19 ^ [v20 hash];

  return v23 ^ v21;
}

- (LNQueryRequest)initWithCoder:(id)a3
{
  v3 = a3;
  v24 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];
  v23 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"entityMangledTypeName"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [v3 decodeObjectOfClasses:v6 forKey:@"intentMangledTypeNames"];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [v3 decodeObjectOfClasses:v10 forKey:@"identifiersToMatch"];

  v22 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"maximumResultCount"];
  v12 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"propertyQuery"];
  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"queryIdentifier"];
  v14 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"queryMangledTypeName"];
  v15 = [v3 decodeIntegerForKey:@"requestType"];
  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"stringToMatch"];
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v3 decodeObjectOfClasses:v19 forKey:@"sortingOptions"];

  v26 = [(LNQueryRequest *)self initWithRequestType:v15 identifiersToMatch:v11 stringToMatch:v16 propertyQuery:v12 maximumResultCount:v22 entityIdentifier:v24 entityMangledTypeName:v23 queryIdentifier:v13 queryMangledTypeName:v14 intentMangledTypeNames:v7 sortingOptions:v20];
  return v26;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNQueryRequest *)self entityIdentifier];
  [v4 encodeObject:v5 forKey:@"entityIdentifier"];

  v6 = [(LNQueryRequest *)self entityMangledTypeName];
  [v4 encodeObject:v6 forKey:@"entityMangledTypeName"];

  v7 = [(LNQueryRequest *)self intentMangledTypeNames];
  [v4 encodeObject:v7 forKey:@"intentMangledTypeNames"];

  v8 = [(LNQueryRequest *)self identifiersToMatch];
  [v4 encodeObject:v8 forKey:@"identifiersToMatch"];

  v9 = [(LNQueryRequest *)self maximumResultCount];
  [v4 encodeObject:v9 forKey:@"maximumResultCount"];

  v10 = [(LNQueryRequest *)self propertyQuery];
  [v4 encodeObject:v10 forKey:@"propertyQuery"];

  v11 = [(LNQueryRequest *)self queryIdentifier];
  [v4 encodeObject:v11 forKey:@"queryIdentifier"];

  v12 = [(LNQueryRequest *)self queryMangledTypeName];
  [v4 encodeObject:v12 forKey:@"queryMangledTypeName"];

  [v4 encodeInteger:-[LNQueryRequest requestType](self forKey:{"requestType"), @"requestType"}];
  v13 = [(LNQueryRequest *)self stringToMatch];
  [v4 encodeObject:v13 forKey:@"stringToMatch"];

  v14 = [(LNQueryRequest *)self sortingOptions];
  [v4 encodeObject:v14 forKey:@"sortingOptions"];
}

- (LNQueryRequest)initWithRequestType:(int64_t)a3 identifiersToMatch:(id)a4 stringToMatch:(id)a5 propertyQuery:(id)a6 maximumResultCount:(id)a7 entityIdentifier:(id)a8 entityMangledTypeName:(id)a9 queryIdentifier:(id)a10 queryMangledTypeName:(id)a11 intentMangledTypeNames:(id)a12 sortingOptions:(id)a13
{
  v17 = a4;
  v18 = a5;
  obj = a6;
  v49 = a6;
  v46 = a7;
  v48 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = v18;
  v24 = a12;
  v25 = a13;
  v50.receiver = self;
  v50.super_class = LNQueryRequest;
  v26 = [(LNQueryRequest *)&v50 init];
  v27 = v26;
  if (v26)
  {
    v26->_requestType = a3;
    v28 = [v17 copy];
    identifiersToMatch = v27->_identifiersToMatch;
    v27->_identifiersToMatch = v28;

    v30 = [v23 copy];
    stringToMatch = v27->_stringToMatch;
    v27->_stringToMatch = v30;

    objc_storeStrong(&v27->_propertyQuery, obj);
    objc_storeStrong(&v27->_maximumResultCount, v46);
    v32 = [v19 copy];
    entityIdentifier = v27->_entityIdentifier;
    v27->_entityIdentifier = v32;

    v34 = [v20 copy];
    entityMangledTypeName = v27->_entityMangledTypeName;
    v27->_entityMangledTypeName = v34;

    v36 = [v21 copy];
    queryIdentifier = v27->_queryIdentifier;
    v27->_queryIdentifier = v36;

    v38 = [v22 copy];
    queryMangledTypeName = v27->_queryMangledTypeName;
    v27->_queryMangledTypeName = v38;

    v40 = [v24 copy];
    intentMangledTypeNames = v27->_intentMangledTypeNames;
    v27->_intentMangledTypeNames = v40;

    objc_storeStrong(&v27->_sortingOptions, a13);
    v42 = v27;
  }

  return v27;
}

@end