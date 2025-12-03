@interface CPLSocialGroupChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding;
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality;
+ (id)_createTestSocialGroupWithPersons:(id)persons;
+ (id)equalityBlockForDirection:(unint64_t)direction;
- (CPLSocialGroupPersonList)persons;
- (id)keyAssetScopedIdentifier;
- (id)propertiesDescription;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error;
- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error;
- (void)setKeyAssetScopedIdentifier:(id)identifier;
- (void)setPersonData:(id)data;
- (void)setPersons:(id)persons;
@end

@implementation CPLSocialGroupChange

- (void)setKeyAssetScopedIdentifier:(id)identifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
  scopeIdentifier2 = [scopedIdentifier scopeIdentifier];

  if (scopeIdentifier && scopeIdentifier2)
  {
    v8 = [scopeIdentifier isEqual:scopeIdentifier2];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (scopeIdentifier | scopeIdentifier2)
    {
LABEL_4:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = NSStringFromSelector(a2);
          scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
          scopeIdentifier3 = [scopedIdentifier2 scopeIdentifier];
          scopeIdentifier4 = [identifierCopy scopeIdentifier];
          *buf = 138412802;
          v24 = v10;
          v25 = 2112;
          v26 = scopeIdentifier3;
          v27 = 2112;
          v28 = scopeIdentifier4;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid call to %@ with mismatched scope: %@ vs. %@", buf, 0x20u);
        }
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLSocialGroupChange.m"];
      v16 = NSStringFromSelector(a2);
      scopedIdentifier3 = [(CPLRecordChange *)self scopedIdentifier];
      scopeIdentifier5 = [scopedIdentifier3 scopeIdentifier];
      scopeIdentifier6 = [identifierCopy scopeIdentifier];
      [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:93 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, scopeIdentifier5, scopeIdentifier6}];

      abort();
    }
  }

  identifier = [identifierCopy identifier];
  [(CPLSocialGroupChange *)self setKeyAssetIdentifier:identifier];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)keyAssetScopedIdentifier
{
  keyAssetIdentifier = self->_keyAssetIdentifier;
  if (keyAssetIdentifier)
  {
    v4 = keyAssetIdentifier;
    v5 = [CPLScopedIdentifier alloc];
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v7 = [(CPLScopedIdentifier *)v5 initRelativeToScopedIdentifier:scopedIdentifier identifier:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPersonData:(id)data
{
  dataCopy = data;
  v4 = [dataCopy length];
  if (v4)
  {
    v4 = [dataCopy copy];
  }

  personsData = self->_personsData;
  self->_personsData = v4;
}

- (CPLSocialGroupPersonList)persons
{
  if (self->_personsData)
  {
    v2 = [[CPLSocialGroupPersonList alloc] initWithData:self->_personsData];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setPersons:(id)persons
{
  personsCopy = persons;
  v9 = personsCopy;
  if (personsCopy)
  {
    data = [personsCopy data];
    p_personsData = &self->_personsData;
    v7 = *p_personsData;
    *p_personsData = data;

    if ([*p_personsData length])
    {
      goto LABEL_6;
    }
  }

  else
  {
    p_personsData = &self->_personsData;
  }

  v8 = *p_personsData;
  *p_personsData = 0;

LABEL_6:
}

- (id)propertiesDescription
{
  v2 = MEMORY[0x1E696AEC0];
  persons = [(CPLSocialGroupChange *)self persons];
  v4 = [v2 stringWithFormat:@"%lu persons", objc_msgSend(persons, "personsCount")];

  return v4;
}

+ (id)equalityBlockForDirection:(unint64_t)direction
{
  if (direction == 1)
  {
    return &__block_literal_global_1561;
  }

  else
  {
    return 0;
  }
}

uint64_t __50__CPLSocialGroupChange_equalityBlockForDirection___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, char *a5)
{
  if (sel_personsData != a5)
  {
    return 0;
  }

  v7 = a3;
  v8 = [a2 personsData];
  v9 = [v7 personsData];

  v10 = v8;
  v11 = (v10 | v9) == 0;
  if (v10 && v9)
  {
    v12 = [[CPLSocialGroupPersonList alloc] initWithData:v10];
    v13 = [[CPLSocialGroupPersonList alloc] initWithData:v9];
    v14 = v12;
    v15 = v13;
    v16 = v15;
    v11 = v14 && v15 && ([v14 isEqual:v15] & 1) != 0 || (v14 | v16) == 0;
  }

  if (v11)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

+ (id)_createTestSocialGroupWithPersons:(id)persons
{
  v31 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  firstObject = [personsCopy firstObject];
  scopedIdentifier = [firstObject scopedIdentifier];
  scopeIdentifier = [scopedIdentifier scopeIdentifier];
  v7 = scopeIdentifier;
  if (scopeIdentifier)
  {
    v8 = scopeIdentifier;
  }

  else
  {
    v8 = CPLPrimaryScopeIdentifierForCurrentUniverse();
  }

  v9 = v8;

  v25 = v9;
  v10 = [(CPLRecordChange *)CPLSocialGroupChange newRecordInScopeWithIdentifier:v9];
  [v10 setCustomTitle:@"Test title"];
  [v10 setVerifiedType:1];
  [v10 setPosition:5];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];
  [v10 setKeyAssetIdentifier:uUIDString];

  v13 = objc_alloc_init(CPLSocialGroupPersonList);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = personsCopy;
  v15 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v27;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v27 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v26 + 1) + 8 * i);
        v20 = objc_alloc_init(CPLSocialGroupPerson);
        scopedIdentifier2 = [v19 scopedIdentifier];
        identifier = [scopedIdentifier2 identifier];
        [(CPLSocialGroupPerson *)v20 setPersonIdentifier:identifier];

        [(CPLSocialGroupPersonList *)v13 addPerson:v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v16);
  }

  [v10 setPersons:v13];
  v23 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)equality
{
  equalityCopy = equality;
  if ([equalityCopy isEqual:@"persons"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLSocialGroupChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, equalityCopy);
  }

  return v5;
}

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding
{
  codingCopy = coding;
  if ([codingCopy isEqual:@"persons"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLSocialGroupChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, codingCopy);
  }

  return v5;
}

- (id)translateToClientChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v40 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = CPLSocialGroupChange;
  mappingCopy = mapping;
  v5 = [CPLRecordChange translateToClientChangeUsingIDMapping:sel_translateToClientChangeUsingIDMapping_error_ error:?];
  v6 = v5;
  if (v5)
  {
    v32 = v5;
    [v5 persons];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v31 = v37 = 0u;
    persons = [v31 persons];
    v8 = [persons countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v35;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v35 != v10)
          {
            objc_enumerationMutation(persons);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          personIdentifier = [v12 personIdentifier];
          if (personIdentifier)
          {
            v14 = personIdentifier;
            v15 = [CPLScopedIdentifier alloc];
            scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
            v17 = [(CPLScopedIdentifier *)v15 initRelativeToScopedIdentifier:scopedIdentifier identifier:v14];

            if (v17)
            {
              v18 = [mappingCopy localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v17];
              v19 = v18;
              if (v18)
              {
                identifier = [v18 identifier];
                [v12 setPersonIdentifier:identifier];
              }
            }
          }
        }

        v9 = [persons countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    v6 = v32;
    [v32 setPersons:v31];
    keyAssetIdentifier = [(CPLSocialGroupChange *)self keyAssetIdentifier];
    if (keyAssetIdentifier)
    {
      v22 = keyAssetIdentifier;
      v23 = [CPLScopedIdentifier alloc];
      scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
      v25 = [(CPLScopedIdentifier *)v23 initRelativeToScopedIdentifier:scopedIdentifier2 identifier:v22];

      if (v25)
      {
        v26 = [mappingCopy localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v25];
        v27 = v26;
        if (v26)
        {
          identifier2 = [v26 identifier];
          [v32 setKeyAssetIdentifier:identifier2];
        }
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)translateToCloudChangeUsingIDMapping:(id)mapping error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = CPLSocialGroupChange;
  mappingCopy = mapping;
  v5 = [CPLRecordChange translateToCloudChangeUsingIDMapping:sel_translateToCloudChangeUsingIDMapping_error_ error:?];
  v6 = v5;
  if (v5)
  {
    v32 = v5;
    [v5 persons];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v31 = v38 = 0u;
    persons = [v31 persons];
    v8 = [persons countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v36;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(persons);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          personIdentifier = [v12 personIdentifier];
          if (personIdentifier)
          {
            v14 = personIdentifier;
            v15 = [CPLScopedIdentifier alloc];
            scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
            v17 = [(CPLScopedIdentifier *)v15 initRelativeToScopedIdentifier:scopedIdentifier identifier:v14];

            if (v17)
            {
              v34 = 0;
              v18 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:v17 isFinal:&v34];
              v19 = v18;
              if (v18)
              {
                identifier = [v18 identifier];
                [v12 setPersonIdentifier:identifier];
              }
            }
          }
        }

        v9 = [persons countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v9);
    }

    v6 = v32;
    [v32 setPersons:v31];
    keyAssetIdentifier = [(CPLSocialGroupChange *)self keyAssetIdentifier];
    if (keyAssetIdentifier)
    {
      v22 = keyAssetIdentifier;
      v23 = [CPLScopedIdentifier alloc];
      scopedIdentifier2 = [(CPLRecordChange *)self scopedIdentifier];
      v25 = [(CPLScopedIdentifier *)v23 initRelativeToScopedIdentifier:scopedIdentifier2 identifier:v22];

      if (v25)
      {
        v34 = 0;
        v26 = [mappingCopy cloudScopedIdentifierForLocalScopedIdentifier:v25 isFinal:&v34];
        v27 = v26;
        if (v26)
        {
          identifier2 = [v26 identifier];
          [v32 setKeyAssetIdentifier:identifier2];
        }
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)scopedIdentifiersForMapping
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF70]);
  v23.receiver = self;
  v23.super_class = CPLSocialGroupChange;
  scopedIdentifiersForMapping = [(CPLRecordChange *)&v23 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:scopedIdentifiersForMapping];

  [(CPLSocialGroupChange *)self persons];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = v22 = 0u;
  persons = [v18 persons];
  v7 = [persons countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(persons);
        }

        personIdentifier = [*(*(&v19 + 1) + 8 * i) personIdentifier];
        if (personIdentifier)
        {
          v12 = personIdentifier;
          v13 = [CPLScopedIdentifier alloc];
          scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
          v15 = [(CPLScopedIdentifier *)v13 initRelativeToScopedIdentifier:scopedIdentifier identifier:v12];

          if (v15)
          {
            [v5 addObject:v15];
          }
        }
      }

      v8 = [persons countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

@end