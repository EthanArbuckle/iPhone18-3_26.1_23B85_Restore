@interface CPLItemChange
+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding;
- (CPLItemChange)init;
- (id)containerDescription;
- (id)containerRelationChangesComparedToRelationEnumerator:(id)enumerator error:(id *)error;
- (id)propertiesForChangeType:(unint64_t)type;
@end

@implementation CPLItemChange

+ (BOOL)cplShouldIgnorePropertyForCoding:(id)coding
{
  codingCopy = coding;
  if ([codingCopy isEqual:@"isImage"] & 1) != 0 || (objc_msgSend(codingCopy, "isEqual:", @"isVideo"))
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___CPLItemChange;
    v5 = objc_msgSendSuper2(&v7, sel_cplShouldIgnorePropertyForCoding_, codingCopy);
  }

  return v5;
}

- (id)containerRelationChangesComparedToRelationEnumerator:(id)enumerator error:(id *)error
{
  v81 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  changeType = [(CPLRecordChange *)self changeType];
  if (changeType && (changeType & 0x10) == 0)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v52 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy = self;
        _os_log_impl(&dword_1DC05A000, v52, OS_LOG_TYPE_ERROR, "Trying to calculate relation changes for %@ with no container relation change", buf, 0xCu);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLItemChange.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v50 lineNumber:51 description:{@"Trying to calculate relation changes for %@ with no container relation change", self}];
LABEL_53:

    abort();
  }

  containerRelations = [(CPLItemChange *)self containerRelations];
  v10 = [containerRelations count];
  if (v10)
  {
    v11 = v10;
    v54 = a2;
    selfCopy2 = self;
    scopedIdentifier = [(CPLRecordChange *)self scopedIdentifier];
    v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v11];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v56 = containerRelations;
    v13 = containerRelations;
    v14 = [v13 countByEnumeratingWithState:&v70 objects:v78 count:16];
    if (!v14)
    {
LABEL_12:

      v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v53 = enumeratorCopy;
      obj = enumeratorCopy;
      v22 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
      if (!v22)
      {
        goto LABEL_26;
      }

      v23 = v22;
      v24 = *v67;
      while (1)
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v67 != v24)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v66 + 1) + 8 * i);
          if (!v26)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v48 = __CPLGenericOSLogDomain();
              if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                selfCopy = 0;
                _os_log_impl(&dword_1DC05A000, v48, OS_LOG_TYPE_ERROR, "%@ provided a nil object", buf, 0xCu);
              }
            }

            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLItemChange.m"];
            [currentHandler handleFailureInMethod:v54 object:selfCopy2 file:v50 lineNumber:74 description:{@"%@ provided a nil object", 0}];
            goto LABEL_53;
          }

          relation = [*(*(&v66 + 1) + 8 * i) relation];
          containerIdentifier = [relation containerIdentifier];

          v29 = [v12 objectForKey:containerIdentifier];
          if (v29)
          {
            relation2 = [(CPLItemChange *)v26 relation];
            if (([relation2 isEqual:v29] & 1) == 0)
            {
              v31 = [(CPLItemChange *)v26 copy];
              if (!v31)
              {
                if ((_CPLSilentLogging & 1) == 0)
                {
                  v51 = __CPLGenericOSLogDomain();
                  if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    selfCopy = v26;
                    _os_log_impl(&dword_1DC05A000, v51, OS_LOG_TYPE_ERROR, "Unable to copy %@", buf, 0xCu);
                  }
                }

                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                v50 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Framework/Sources/CPLItemChange.m"];
                [currentHandler handleFailureInMethod:v54 object:selfCopy2 file:v50 lineNumber:87 description:{@"Unable to copy %@", v26}];
                goto LABEL_53;
              }

              v32 = v31;
              [v31 setChangeType:2];
              [v32 setRelation:v29];
              [v21 addObject:v32];
            }

            [v12 removeObjectForKey:containerIdentifier];
          }

          else
          {
            scopedIdentifier2 = [(CPLRecordChange *)v26 scopedIdentifier];
            relation2 = [(CPLRecordChange *)CPLContainerRelationChange newRecordWithScopedIdentifier:scopedIdentifier2];

            [relation2 setChangeType:1024];
            [v21 addObject:relation2];
          }
        }

        v23 = [obj countByEnumeratingWithState:&v66 objects:v75 count:16];
        if (!v23)
        {
LABEL_26:

          v63[0] = MEMORY[0x1E69E9820];
          v63[1] = 3221225472;
          v63[2] = __76__CPLItemChange_containerRelationChangesComparedToRelationEnumerator_error___block_invoke;
          v63[3] = &unk_1E8620450;
          v64 = scopedIdentifier;
          v34 = v21;
          v65 = v34;
          v35 = scopedIdentifier;
          [v12 enumerateKeysAndObjectsUsingBlock:v63];
          v36 = v65;
          v13 = v34;

          v37 = v64;
          v38 = v13;
          scopedIdentifier = v12;
          v12 = v35;
          enumeratorCopy = v53;
          goto LABEL_29;
        }
      }
    }

    v15 = v14;
    v16 = *v71;
LABEL_6:
    v17 = 0;
    while (1)
    {
      if (*v71 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v70 + 1) + 8 * v17);
      containerIdentifier2 = [v18 containerIdentifier];
      if (!containerIdentifier2)
      {
        break;
      }

      v20 = containerIdentifier2;
      [v12 setObject:v18 forKey:containerIdentifier2];

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v70 objects:v78 count:16];
        if (!v15)
        {
          goto LABEL_12;
        }

        goto LABEL_6;
      }
    }

    if (error)
    {
      v76 = @"CPLErrorResetReason";
      v77 = @"Invalid container relation";
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
      scopedIdentifier3 = [(CPLRecordChange *)selfCopy2 scopedIdentifier];
      *error = [CPLErrors cplErrorWithCode:20 underlyingError:0 userInfo:v37 description:@"Client sent a relation for %@ with no container identifier: %@", scopedIdentifier3, v18];

      v38 = 0;
LABEL_29:
    }

    else
    {
      v38 = 0;
    }

    containerRelations = v56;
  }

  else
  {
    v38 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    scopedIdentifier = enumeratorCopy;
    v40 = [scopedIdentifier countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v60;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v60 != v42)
          {
            objc_enumerationMutation(scopedIdentifier);
          }

          scopedIdentifier4 = [*(*(&v59 + 1) + 8 * j) scopedIdentifier];
          v45 = [(CPLRecordChange *)CPLContainerRelationChange newRecordWithScopedIdentifier:scopedIdentifier4];

          [v45 setChangeType:1024];
          [v38 addObject:v45];
        }

        v41 = [scopedIdentifier countByEnumeratingWithState:&v59 objects:v74 count:16];
      }

      while (v41);
    }
  }

  v46 = *MEMORY[0x1E69E9840];

  return v38;
}

void __76__CPLItemChange_containerRelationChangesComparedToRelationEnumerator_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [v5 proposedScopedIdentifierForItemScopedIdentifier:v4];
  v8 = [(CPLRecordChange *)CPLContainerRelationChange newRecordWithScopedIdentifier:v6];

  v7 = [*(a1 + 32) identifier];
  [v8 setItemIdentifier:v7];

  [v8 setRelation:v5];
  [*(a1 + 40) addObject:v8];
}

- (id)propertiesForChangeType:(unint64_t)type
{
  if (type == 16)
  {
    if (propertiesForChangeType__onceToken_23958 != -1)
    {
      dispatch_once(&propertiesForChangeType__onceToken_23958, &__block_literal_global_23959);
    }

    v3 = propertiesForChangeType__properties_23960;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CPLItemChange;
    v3 = [(CPLRecordChange *)&v5 propertiesForChangeType:?];
  }

  return v3;
}

uint64_t __41__CPLItemChange_propertiesForChangeType___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"containerRelations", 0}];
  v1 = propertiesForChangeType__properties_23960;
  propertiesForChangeType__properties_23960 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)containerDescription
{
  selfCopy = self;
  containerRelations = [(CPLItemChange *)self containerRelations];
  LOBYTE(selfCopy) = [(CPLRecordChange *)selfCopy changeType];
  if ([containerRelations count] | selfCopy & 0x10)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"in %lu cont.", objc_msgSend(containerRelations, "count")];
  }

  else
  {
    v4 = &stru_1F57BD298;
  }

  return v4;
}

- (CPLItemChange)init
{
  v3.receiver = self;
  v3.super_class = CPLItemChange;
  return [(CPLItemChange *)&v3 init];
}

@end