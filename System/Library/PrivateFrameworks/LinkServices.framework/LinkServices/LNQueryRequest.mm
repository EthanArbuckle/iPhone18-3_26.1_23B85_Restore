@interface LNQueryRequest
- (BOOL)isEqual:(id)equal;
- (LNQueryRequest)initWithCoder:(id)coder;
- (LNQueryRequest)initWithRequestType:(int64_t)type identifiersToMatch:(id)match stringToMatch:(id)toMatch propertyQuery:(id)query maximumResultCount:(id)count entityIdentifier:(id)identifier entityMangledTypeName:(id)name queryIdentifier:(id)self0 queryMangledTypeName:(id)self1 intentMangledTypeNames:(id)self2 sortingOptions:(id)self3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNQueryRequest

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        requestType = [(LNQueryRequest *)self requestType];
        if (requestType != [(LNQueryRequest *)v6 requestType])
        {
          LOBYTE(v13) = 0;
LABEL_89:

          goto LABEL_90;
        }

        entityIdentifier = [(LNQueryRequest *)self entityIdentifier];
        entityIdentifier2 = [(LNQueryRequest *)v6 entityIdentifier];
        v10 = entityIdentifier;
        v11 = entityIdentifier2;
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

        entityMangledTypeName = [(LNQueryRequest *)self entityMangledTypeName];
        entityMangledTypeName2 = [(LNQueryRequest *)v6 entityMangledTypeName];
        v15 = entityMangledTypeName;
        v19 = entityMangledTypeName2;
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

        identifiersToMatch = [(LNQueryRequest *)self identifiersToMatch];
        identifiersToMatch2 = [(LNQueryRequest *)v6 identifiersToMatch];
        v21 = identifiersToMatch;
        v25 = identifiersToMatch2;
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
        maximumResultCount = [(LNQueryRequest *)self maximumResultCount];
        maximumResultCount2 = [(LNQueryRequest *)v6 maximumResultCount];
        v29 = maximumResultCount;
        v30 = maximumResultCount2;
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

        propertyQuery = [(LNQueryRequest *)self propertyQuery];
        propertyQuery2 = [(LNQueryRequest *)v6 propertyQuery];
        v29 = propertyQuery;
        v35 = propertyQuery2;
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
              queryIdentifier = [(LNQueryRequest *)self queryIdentifier];
              queryIdentifier2 = [(LNQueryRequest *)v6 queryIdentifier];
              v40 = queryIdentifier;
              v41 = queryIdentifier2;
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

              queryMangledTypeName = [(LNQueryRequest *)self queryMangledTypeName];
              queryMangledTypeName2 = [(LNQueryRequest *)v6 queryMangledTypeName];
              v40 = queryMangledTypeName;
              v46 = queryMangledTypeName2;
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
                    stringToMatch = [(LNQueryRequest *)self stringToMatch];
                    stringToMatch2 = [(LNQueryRequest *)v6 stringToMatch];
                    v51 = stringToMatch;
                    v52 = stringToMatch2;
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

                    sortingOptions = [(LNQueryRequest *)self sortingOptions];
                    sortingOptions2 = [(LNQueryRequest *)v6 sortingOptions];
                    v51 = sortingOptions;
                    v57 = sortingOptions2;
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
                    intentMangledTypeNames = [(LNQueryRequest *)self intentMangledTypeNames];
                    intentMangledTypeNames2 = [(LNQueryRequest *)v6 intentMangledTypeNames];
                    v62 = intentMangledTypeNames;
                    v63 = intentMangledTypeNames2;
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
  requestType = [(LNQueryRequest *)self requestType];
  entityIdentifier = [(LNQueryRequest *)self entityIdentifier];
  v4 = [entityIdentifier hash] + requestType;
  identifiersToMatch = [(LNQueryRequest *)self identifiersToMatch];
  v6 = [identifiersToMatch hash];
  maximumResultCount = [(LNQueryRequest *)self maximumResultCount];
  v8 = v6 ^ [maximumResultCount hash] ^ v4;
  propertyQuery = [(LNQueryRequest *)self propertyQuery];
  v10 = [propertyQuery hash];
  queryIdentifier = [(LNQueryRequest *)self queryIdentifier];
  v12 = v10 ^ [queryIdentifier hash];
  stringToMatch = [(LNQueryRequest *)self stringToMatch];
  v23 = v8 ^ v12 ^ [stringToMatch hash];
  intentMangledTypeNames = [(LNQueryRequest *)self intentMangledTypeNames];
  v15 = [intentMangledTypeNames hash];
  sortingOptions = [(LNQueryRequest *)self sortingOptions];
  v17 = v15 ^ [sortingOptions hash];
  entityMangledTypeName = [(LNQueryRequest *)self entityMangledTypeName];
  v19 = v17 ^ [entityMangledTypeName hash];
  queryMangledTypeName = [(LNQueryRequest *)self queryMangledTypeName];
  v21 = v19 ^ [queryMangledTypeName hash];

  return v23 ^ v21;
}

- (LNQueryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityIdentifier"];
  v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"entityMangledTypeName"];
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"intentMangledTypeNames"];

  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
  v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"identifiersToMatch"];

  v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumResultCount"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"propertyQuery"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryIdentifier"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"queryMangledTypeName"];
  v15 = [coderCopy decodeIntegerForKey:@"requestType"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stringToMatch"];
  v17 = MEMORY[0x1E695DFD8];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"sortingOptions"];

  v26 = [(LNQueryRequest *)self initWithRequestType:v15 identifiersToMatch:v11 stringToMatch:v16 propertyQuery:v12 maximumResultCount:v22 entityIdentifier:v24 entityMangledTypeName:v23 queryIdentifier:v13 queryMangledTypeName:v14 intentMangledTypeNames:v7 sortingOptions:v20];
  return v26;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  entityIdentifier = [(LNQueryRequest *)self entityIdentifier];
  [coderCopy encodeObject:entityIdentifier forKey:@"entityIdentifier"];

  entityMangledTypeName = [(LNQueryRequest *)self entityMangledTypeName];
  [coderCopy encodeObject:entityMangledTypeName forKey:@"entityMangledTypeName"];

  intentMangledTypeNames = [(LNQueryRequest *)self intentMangledTypeNames];
  [coderCopy encodeObject:intentMangledTypeNames forKey:@"intentMangledTypeNames"];

  identifiersToMatch = [(LNQueryRequest *)self identifiersToMatch];
  [coderCopy encodeObject:identifiersToMatch forKey:@"identifiersToMatch"];

  maximumResultCount = [(LNQueryRequest *)self maximumResultCount];
  [coderCopy encodeObject:maximumResultCount forKey:@"maximumResultCount"];

  propertyQuery = [(LNQueryRequest *)self propertyQuery];
  [coderCopy encodeObject:propertyQuery forKey:@"propertyQuery"];

  queryIdentifier = [(LNQueryRequest *)self queryIdentifier];
  [coderCopy encodeObject:queryIdentifier forKey:@"queryIdentifier"];

  queryMangledTypeName = [(LNQueryRequest *)self queryMangledTypeName];
  [coderCopy encodeObject:queryMangledTypeName forKey:@"queryMangledTypeName"];

  [coderCopy encodeInteger:-[LNQueryRequest requestType](self forKey:{"requestType"), @"requestType"}];
  stringToMatch = [(LNQueryRequest *)self stringToMatch];
  [coderCopy encodeObject:stringToMatch forKey:@"stringToMatch"];

  sortingOptions = [(LNQueryRequest *)self sortingOptions];
  [coderCopy encodeObject:sortingOptions forKey:@"sortingOptions"];
}

- (LNQueryRequest)initWithRequestType:(int64_t)type identifiersToMatch:(id)match stringToMatch:(id)toMatch propertyQuery:(id)query maximumResultCount:(id)count entityIdentifier:(id)identifier entityMangledTypeName:(id)name queryIdentifier:(id)self0 queryMangledTypeName:(id)self1 intentMangledTypeNames:(id)self2 sortingOptions:(id)self3
{
  matchCopy = match;
  toMatchCopy = toMatch;
  obj = query;
  queryCopy = query;
  countCopy = count;
  countCopy2 = count;
  identifierCopy = identifier;
  nameCopy = name;
  queryIdentifierCopy = queryIdentifier;
  typeNameCopy = typeName;
  v23 = toMatchCopy;
  namesCopy = names;
  optionsCopy = options;
  v50.receiver = self;
  v50.super_class = LNQueryRequest;
  v26 = [(LNQueryRequest *)&v50 init];
  v27 = v26;
  if (v26)
  {
    v26->_requestType = type;
    v28 = [matchCopy copy];
    identifiersToMatch = v27->_identifiersToMatch;
    v27->_identifiersToMatch = v28;

    v30 = [v23 copy];
    stringToMatch = v27->_stringToMatch;
    v27->_stringToMatch = v30;

    objc_storeStrong(&v27->_propertyQuery, obj);
    objc_storeStrong(&v27->_maximumResultCount, countCopy);
    v32 = [identifierCopy copy];
    entityIdentifier = v27->_entityIdentifier;
    v27->_entityIdentifier = v32;

    v34 = [nameCopy copy];
    entityMangledTypeName = v27->_entityMangledTypeName;
    v27->_entityMangledTypeName = v34;

    v36 = [queryIdentifierCopy copy];
    queryIdentifier = v27->_queryIdentifier;
    v27->_queryIdentifier = v36;

    v38 = [typeNameCopy copy];
    queryMangledTypeName = v27->_queryMangledTypeName;
    v27->_queryMangledTypeName = v38;

    v40 = [namesCopy copy];
    intentMangledTypeNames = v27->_intentMangledTypeNames;
    v27->_intentMangledTypeNames = v40;

    objc_storeStrong(&v27->_sortingOptions, options);
    v42 = v27;
  }

  return v27;
}

@end