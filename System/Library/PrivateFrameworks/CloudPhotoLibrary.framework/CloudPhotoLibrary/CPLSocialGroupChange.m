@interface CPLSocialGroupChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3;
+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3;
+ (id)_createTestSocialGroupWithPersons:(id)a3;
+ (id)equalityBlockForDirection:(unint64_t)a3;
- (CPLSocialGroupPersonList)persons;
- (id)keyAssetScopedIdentifier;
- (id)propertiesDescription;
- (id)scopedIdentifiersForMapping;
- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4;
- (void)setKeyAssetScopedIdentifier:(id)a3;
- (void)setPersonData:(id)a3;
- (void)setPersons:(id)a3;
@end

@implementation CPLSocialGroupChange

- (void)setKeyAssetScopedIdentifier:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v5 = [v22 scopeIdentifier];
  v6 = [(CPLRecordChange *)self scopedIdentifier];
  v7 = [v6 scopeIdentifier];

  if (v5 && v7)
  {
    v8 = [v5 isEqual:v7];

    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (v5 | v7)
    {
LABEL_4:
      if ((_CPLSilentLogging & 1) == 0)
      {
        v9 = __CPLGenericOSLogDomain();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = NSStringFromSelector(a2);
          v11 = [(CPLRecordChange *)self scopedIdentifier];
          v12 = [v11 scopeIdentifier];
          v13 = [v22 scopeIdentifier];
          *buf = 138412802;
          v24 = v10;
          v25 = 2112;
          v26 = v12;
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&dword_1DC05A000, v9, OS_LOG_TYPE_ERROR, "Invalid call to %@ with mismatched scope: %@ vs. %@", buf, 0x20u);
        }
      }

      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLSocialGroupChange.m"];
      v16 = NSStringFromSelector(a2);
      v17 = [(CPLRecordChange *)self scopedIdentifier];
      v18 = [v17 scopeIdentifier];
      v19 = [v22 scopeIdentifier];
      [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:93 description:{@"Invalid call to %@ with mismatched scope: %@ vs. %@", v16, v18, v19}];

      abort();
    }
  }

  v20 = [v22 identifier];
  [(CPLSocialGroupChange *)self setKeyAssetIdentifier:v20];

  v21 = *MEMORY[0x1E69E9840];
}

- (id)keyAssetScopedIdentifier
{
  keyAssetIdentifier = self->_keyAssetIdentifier;
  if (keyAssetIdentifier)
  {
    v4 = keyAssetIdentifier;
    v5 = [CPLScopedIdentifier alloc];
    v6 = [(CPLRecordChange *)self scopedIdentifier];
    v7 = [(CPLScopedIdentifier *)v5 initRelativeToScopedIdentifier:v6 identifier:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setPersonData:(id)a3
{
  v6 = a3;
  v4 = [v6 length];
  if (v4)
  {
    v4 = [v6 copy];
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

- (void)setPersons:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (v4)
  {
    v5 = [v4 data];
    p_personsData = &self->_personsData;
    v7 = *p_personsData;
    *p_personsData = v5;

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
  v3 = [(CPLSocialGroupChange *)self persons];
  v4 = [v2 stringWithFormat:@"%lu persons", objc_msgSend(v3, "personsCount")];

  return v4;
}

+ (id)equalityBlockForDirection:(unint64_t)a3
{
  if (a3 == 1)
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

+ (id)_createTestSocialGroupWithPersons:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 firstObject];
  v5 = [v4 scopedIdentifier];
  v6 = [v5 scopeIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
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
  v11 = [MEMORY[0x1E696AFB0] UUID];
  v12 = [v11 UUIDString];
  [v10 setKeyAssetIdentifier:v12];

  v13 = objc_alloc_init(CPLSocialGroupPersonList);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = v3;
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
        v21 = [v19 scopedIdentifier];
        v22 = [v21 identifier];
        [(CPLSocialGroupPerson *)v20 setPersonIdentifier:v22];

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

+ (BOOL)cplShouldIgnorePropertyForEquality:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"persons"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLSocialGroupChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForEquality_, v4);
  }

  return v5;
}

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)a3
{
  v4 = a3;
  if ([v4 isEqual:@"persons"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___CPLSocialGroupChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, v4);
  }

  return v5;
}

- (id)translateToClientChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v38.receiver = self;
  v38.super_class = CPLSocialGroupChange;
  v33 = a3;
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
    v7 = [v31 persons];
    v8 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v34 + 1) + 8 * i);
          v13 = [v12 personIdentifier];
          if (v13)
          {
            v14 = v13;
            v15 = [CPLScopedIdentifier alloc];
            v16 = [(CPLRecordChange *)self scopedIdentifier];
            v17 = [(CPLScopedIdentifier *)v15 initRelativeToScopedIdentifier:v16 identifier:v14];

            if (v17)
            {
              v18 = [v33 localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v17];
              v19 = v18;
              if (v18)
              {
                v20 = [v18 identifier];
                [v12 setPersonIdentifier:v20];
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v9);
    }

    v6 = v32;
    [v32 setPersons:v31];
    v21 = [(CPLSocialGroupChange *)self keyAssetIdentifier];
    if (v21)
    {
      v22 = v21;
      v23 = [CPLScopedIdentifier alloc];
      v24 = [(CPLRecordChange *)self scopedIdentifier];
      v25 = [(CPLScopedIdentifier *)v23 initRelativeToScopedIdentifier:v24 identifier:v22];

      if (v25)
      {
        v26 = [v33 localScopedIdentifierForCloudScopedIdentifierIncludeRemappedRecords:v25];
        v27 = v26;
        if (v26)
        {
          v28 = [v26 identifier];
          [v32 setKeyAssetIdentifier:v28];
        }
      }
    }
  }

  v29 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)translateToCloudChangeUsingIDMapping:(id)a3 error:(id *)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v39.receiver = self;
  v39.super_class = CPLSocialGroupChange;
  v33 = a3;
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
    v7 = [v31 persons];
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          v13 = [v12 personIdentifier];
          if (v13)
          {
            v14 = v13;
            v15 = [CPLScopedIdentifier alloc];
            v16 = [(CPLRecordChange *)self scopedIdentifier];
            v17 = [(CPLScopedIdentifier *)v15 initRelativeToScopedIdentifier:v16 identifier:v14];

            if (v17)
            {
              v34 = 0;
              v18 = [v33 cloudScopedIdentifierForLocalScopedIdentifier:v17 isFinal:&v34];
              v19 = v18;
              if (v18)
              {
                v20 = [v18 identifier];
                [v12 setPersonIdentifier:v20];
              }
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v9);
    }

    v6 = v32;
    [v32 setPersons:v31];
    v21 = [(CPLSocialGroupChange *)self keyAssetIdentifier];
    if (v21)
    {
      v22 = v21;
      v23 = [CPLScopedIdentifier alloc];
      v24 = [(CPLRecordChange *)self scopedIdentifier];
      v25 = [(CPLScopedIdentifier *)v23 initRelativeToScopedIdentifier:v24 identifier:v22];

      if (v25)
      {
        v34 = 0;
        v26 = [v33 cloudScopedIdentifierForLocalScopedIdentifier:v25 isFinal:&v34];
        v27 = v26;
        if (v26)
        {
          v28 = [v26 identifier];
          [v32 setKeyAssetIdentifier:v28];
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
  v4 = [(CPLRecordChange *)&v23 scopedIdentifiersForMapping];
  v5 = [v3 initWithArray:v4];

  [(CPLSocialGroupChange *)self persons];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = v22 = 0u;
  v6 = [v18 persons];
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v19 + 1) + 8 * i) personIdentifier];
        if (v11)
        {
          v12 = v11;
          v13 = [CPLScopedIdentifier alloc];
          v14 = [(CPLRecordChange *)self scopedIdentifier];
          v15 = [(CPLScopedIdentifier *)v13 initRelativeToScopedIdentifier:v14 identifier:v12];

          if (v15)
          {
            [v5 addObject:v15];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v8);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v5;
}

@end