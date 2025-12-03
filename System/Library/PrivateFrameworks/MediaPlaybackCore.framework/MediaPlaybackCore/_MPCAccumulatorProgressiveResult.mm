@interface _MPCAccumulatorProgressiveResult
+ (id)progressiveItemWithRequestedIdentifiers:(void *)identifiers modelObject:(void *)object parentResult:(int)result piaTag:;
- ($2F6F4602BBD9A38257A07259C79964DD)tokenForDatabase:(id)database;
- (BOOL)isValid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)nextLoadableStoreID;
- (id)progressiveIdentifiers;
- (id)resolvedIdentifiers;
- (uint64_t)didStartLoadingStoreID:(uint64_t)d;
- (uint64_t)isAnonymousGroup;
- (uint64_t)isResolved;
- (void)setIdentifiers:(id)identifiers forDatabase:(id)database;
- (void)setToken:(id)token forDatabase:(id)database;
@end

@implementation _MPCAccumulatorProgressiveResult

- ($2F6F4602BBD9A38257A07259C79964DD)tokenForDatabase:(id)database
{
  v4 = MEMORY[0x1E6970950];
  databaseCopy = database;
  sharedServerObjectDatabase = [v4 sharedServerObjectDatabase];

  v7 = 32;
  if (sharedServerObjectDatabase == databaseCopy)
  {
    v7 = 16;
  }

  v8 = 40;
  if (sharedServerObjectDatabase == databaseCopy)
  {
    v8 = 24;
  }

  v9 = *(&self->super.isa + v8);
  v10 = *(&self->super.isa + v7);
  result.var1 = v9;
  result.var2 = HIDWORD(v9);
  result.var0 = v10;
  return result;
}

- (void)setToken:(id)token forDatabase:(id)database
{
  v4 = *&token.var1;
  var0 = token.var0;
  v7 = MEMORY[0x1E6970950];
  databaseCopy = database;
  sharedServerObjectDatabase = [v7 sharedServerObjectDatabase];

  v10 = 32;
  if (sharedServerObjectDatabase == databaseCopy)
  {
    v10 = 16;
  }

  v11 = 40;
  if (sharedServerObjectDatabase == databaseCopy)
  {
    v11 = 24;
  }

  *(&self->super.isa + v10) = var0;
  v12 = 112;
  if (sharedServerObjectDatabase != databaseCopy)
  {
    v12 = 113;
  }

  *(&self->super.isa + v11) = v4;
  *(&self->super.isa + v12) = var0 != 0;
}

- (void)setIdentifiers:(id)identifiers forDatabase:(id)database
{
  v54 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  databaseCopy = database;
  if (!identifiersCopy)
  {
    goto LABEL_34;
  }

  parentResult = self->_parentResult;
  v10 = identifiersCopy;
  modelKind = [v10 modelKind];
  identityKind = [modelKind identityKind];
  if (parentResult)
  {
    identityKind2 = [MEMORY[0x1E6970778] identityKind];
    if (identityKind != identityKind2)
    {
      v14 = [identityKind isEqual:identityKind2];

      if (v14)
      {
        goto LABEL_33;
      }

      modelKind = [v10 modelKind];
      identityKind = [modelKind identityKind];
      identityKind2 = [MEMORY[0x1E6970728] identityKind];
      if (identityKind != identityKind2)
      {
        v15 = [identityKind isEqual:identityKind2];

        if (v15)
        {
          goto LABEL_33;
        }

        modelKind = [v10 modelKind];
        identityKind = [modelKind identityKind];
        identityKind2 = [MEMORY[0x1E69707B0] identityKind];
        if (identityKind != identityKind2)
        {
          v16 = [identityKind isEqual:identityKind2];

          if (v16)
          {
            goto LABEL_33;
          }

          modelKind = [v10 modelKind];
          identityKind = [modelKind identityKind];
          identityKind2 = [MEMORY[0x1E69706F0] identityKind];
          if (identityKind != identityKind2)
          {
            v17 = [identityKind isEqual:identityKind2];

            if (v17)
            {
              goto LABEL_34;
            }

            v18 = v10;
            modelKind = [v18 modelKind];
            identityKind = [modelKind identityKind];
            identityKind2 = [MEMORY[0x1E6970638] identityKind];
            if (identityKind != identityKind2)
            {
              v19 = [identityKind isEqual:identityKind2];

              if (v19)
              {
                goto LABEL_33;
              }

              modelKind = [v18 modelKind];
              identityKind = [modelKind identityKind];
              identityKind2 = [MEMORY[0x1E6970730] identityKind];
              if (identityKind != identityKind2)
              {
                v20 = [identityKind isEqual:identityKind2];

                if (v20)
                {
                  goto LABEL_33;
                }

                modelKind = [v18 modelKind];
                identityKind = [modelKind identityKind];
                identityKind2 = [MEMORY[0x1E6970758] identityKind];
                if (identityKind != identityKind2)
                {
                  v21 = [identityKind isEqual:identityKind2];

                  if ((v21 & 1) == 0)
                  {
                    modelKind = [v18 modelKind];
                    identityKind = [modelKind identityKind];
                    identityKind2 = [MEMORY[0x1E6970690] identityKind];
                    if (identityKind != identityKind2)
                    {
                      v22 = [identityKind isEqual:identityKind2];

                      if ((v22 & 1) == 0)
                      {
                        personalizedStore = _MPCLogCategoryPlayback();
                        if (os_log_type_enabled(personalizedStore, OS_LOG_TYPE_ERROR))
                        {
                          piaTag = self->_piaTag;
                          v50 = 67109378;
                          v51 = piaTag;
                          v52 = 2114;
                          v53 = v18;
                          v25 = "[SPIR:%{sonic:fourCC}u] setIdentifiers:forDatabase: | ignoring identifiers [unsupported modelKind] identifiers=%{public}@";
LABEL_31:
                          _os_log_impl(&dword_1C5C61000, personalizedStore, OS_LOG_TYPE_ERROR, v25, &v50, 0x12u);
                          goto LABEL_48;
                        }

                        goto LABEL_48;
                      }

                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

LABEL_33:

                  goto LABEL_34;
                }
              }
            }
          }
        }
      }
    }

LABEL_32:

    goto LABEL_33;
  }

  identityKind2 = [MEMORY[0x1E6970638] identityKind];
  if (identityKind == identityKind2)
  {
    goto LABEL_32;
  }

  v26 = [identityKind isEqual:identityKind2];

  if (v26)
  {
    goto LABEL_33;
  }

  modelKind = [v10 modelKind];
  identityKind = [modelKind identityKind];
  identityKind2 = [MEMORY[0x1E6970730] identityKind];
  if (identityKind == identityKind2)
  {
    goto LABEL_32;
  }

  v27 = [identityKind isEqual:identityKind2];

  if (v27)
  {
    goto LABEL_33;
  }

  modelKind = [v10 modelKind];
  identityKind = [modelKind identityKind];
  identityKind2 = [MEMORY[0x1E6970758] identityKind];
  if (identityKind == identityKind2)
  {
    goto LABEL_32;
  }

  v28 = [identityKind isEqual:identityKind2];

  if (v28)
  {
    goto LABEL_33;
  }

  modelKind = [v10 modelKind];
  identityKind = [modelKind identityKind];
  identityKind2 = [MEMORY[0x1E6970690] identityKind];
  if (identityKind == identityKind2)
  {
    goto LABEL_32;
  }

  v29 = [identityKind isEqual:identityKind2];

  if ((v29 & 1) == 0)
  {
    personalizedStore = _MPCLogCategoryPlayback();
    if (os_log_type_enabled(personalizedStore, OS_LOG_TYPE_ERROR))
    {
      v30 = self->_piaTag;
      v50 = 67109378;
      v51 = v30;
      v52 = 2114;
      v53 = v10;
      v25 = "[SPIR:%{sonic:fourCC}u] setIdentifiers:forDatabase: | ignoring identifiers [unsupported section modelKind] identifiers=%{public}@";
      goto LABEL_31;
    }

LABEL_48:

    goto LABEL_49;
  }

LABEL_34:
  mEMORY[0x1E6970950] = [MEMORY[0x1E6970950] sharedServerObjectDatabase];

  if (mEMORY[0x1E6970950] == databaseCopy)
  {
    p_sodIdentifiers = &self->_sodIdentifiers;
  }

  else
  {
    p_sodIdentifiers = &self->_lodIdentifiers;
    if (!identifiersCopy && self->_lodIdentifiers)
    {
      v33 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = self->_piaTag;
        msv_compactDescription = [(NSMutableArray *)self->_prioritizedStoreIDs msv_compactDescription];
        v50 = 67109378;
        v51 = v34;
        v52 = 2114;
        v53 = msv_compactDescription;
        _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] setIdentifiers:forDatabase: | failing remaining prioritizedStoreIDs [LOD identifiers lost] prioritizedStoreIDs=%{public}@", &v50, 0x12u);
      }

      failedStoreIDs = self->_failedStoreIDs;
      if (!failedStoreIDs)
      {
        array = [MEMORY[0x1E695DF70] array];
        v38 = self->_failedStoreIDs;
        self->_failedStoreIDs = array;

        failedStoreIDs = self->_failedStoreIDs;
      }

      [(NSMutableArray *)failedStoreIDs addObjectsFromArray:self->_prioritizedStoreIDs];
      [(NSMutableArray *)self->_prioritizedStoreIDs removeAllObjects];
    }
  }

  objc_storeStrong(p_sodIdentifiers, identifiers);
  requestedIdentifiers = self->_requestedIdentifiers;
  emptyIdentifierSet = [MEMORY[0x1E6970550] emptyIdentifierSet];

  if (requestedIdentifiers == emptyIdentifierSet)
  {
    v41 = [identifiersCopy copyWithSource:@"XL-Accumulator-Related" block:&__block_literal_global_59];
    v42 = self->_requestedIdentifiers;
    self->_requestedIdentifiers = v41;

    v43 = self->_requestedIdentifiers;
    personalizedStore = [(MPIdentifierSet *)v43 personalizedStore];
    personID = [personalizedStore personID];
    v45 = personID;
    if (personID)
    {
      v46 = personID;
    }

    else
    {
      v46 = *MEMORY[0x1E69E4388];
    }

    v47 = [(MPIdentifierSet *)v43 prioritizedStoreStringIdentifiersForPersonID:v46];
    v48 = [v47 mutableCopy];
    prioritizedStoreIDs = self->_prioritizedStoreIDs;
    self->_prioritizedStoreIDs = v48;

    goto LABEL_48;
  }

LABEL_49:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_MPCAccumulatorProgressiveResult);
  v4->_piaTag = self->_piaTag;
  objc_storeStrong(&v4->_requestedModelObject, self->_requestedModelObject);
  v4->_sodToken = self->_sodToken;
  v4->_lodToken = self->_lodToken;
  objc_storeStrong(&v4->_requestedIdentifiers, self->_requestedIdentifiers);
  objc_storeStrong(&v4->_parentResult, self->_parentResult);
  v5 = [(NSMutableArray *)self->_prioritizedStoreIDs mutableCopy];
  prioritizedStoreIDs = v4->_prioritizedStoreIDs;
  v4->_prioritizedStoreIDs = v5;

  v7 = [(NSMutableArray *)self->_loadingStoreIDs mutableCopy];
  loadingStoreIDs = v4->_loadingStoreIDs;
  v4->_loadingStoreIDs = v7;

  v9 = [(NSMutableArray *)self->_loadedStoreIDs mutableCopy];
  loadedStoreIDs = v4->_loadedStoreIDs;
  v4->_loadedStoreIDs = v9;

  v11 = [(NSMutableArray *)self->_failedStoreIDs mutableCopy];
  failedStoreIDs = v4->_failedStoreIDs;
  v4->_failedStoreIDs = v11;

  objc_storeStrong(&v4->_sodIdentifiers, self->_sodIdentifiers);
  objc_storeStrong(&v4->_lodIdentifiers, self->_lodIdentifiers);
  v4->_hasSodToken = self->_hasSodToken;
  v4->_hasLodToken = self->_hasLodToken;
  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v4 = v3;
  if (self->_hasSodToken)
  {
    [v3 addObject:@"SOD"];
  }

  if (self->_hasLodToken)
  {
    [v4 addObject:@"LOD"];
  }

  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  sodIdentifiers = self->_sodIdentifiers;
  if (sodIdentifiers && ([(MPIdentifierSet *)sodIdentifiers isPlaceholder]& 1) == 0)
  {
    [v5 addObject:@"SOD"];
  }

  if (self->_lodIdentifiers)
  {
    [v5 addObject:@"LOD"];
  }

  if ([v5 count])
  {
    if (self->_requestedModelObject)
    {
      [v5 insertObject:@"RMO" atIndex:0];
    }
  }

  else
  {
    [v5 addObject:@"nil"];
  }

  resolvedIdentifiers = [(_MPCAccumulatorProgressiveResult *)&self->super.isa resolvedIdentifiers];
  requestedIdentifiers = resolvedIdentifiers;
  if (!resolvedIdentifiers)
  {
    requestedIdentifiers = self->_requestedIdentifiers;
  }

  v9 = requestedIdentifiers;
  v10 = @"?";
  if (v9 == resolvedIdentifiers)
  {
    v10 = &stru_1F454A698;
  }

  v38 = v10;
  modelKind = [(MPIdentifierSet *)v9 modelKind];
  v12 = NSStringFromClass([modelKind modelClass]);

  emptyIdentifierSet = [MEMORY[0x1E6970550] emptyIdentifierSet];

  v40 = v9;
  if (v9 == emptyIdentifierSet)
  {

    v12 = @"EMPTY";
  }

  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:4];
  if ([(NSMutableArray *)self->_failedStoreIDs count])
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = [(NSMutableArray *)self->_failedStoreIDs componentsJoinedByString:@", "];
    v17 = [v15 stringWithFormat:@"failed=[%@]", v16];
    [v14 addObject:v17];
  }

  if ([(NSMutableArray *)self->_loadedStoreIDs count])
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [(NSMutableArray *)self->_loadedStoreIDs componentsJoinedByString:@", "];
    v20 = [v18 stringWithFormat:@"loaded=[%@]", v19];
    [v14 addObject:v20];
  }

  if ([(NSMutableArray *)self->_loadingStoreIDs count])
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = [(NSMutableArray *)self->_loadingStoreIDs componentsJoinedByString:@", "];
    v23 = [v21 stringWithFormat:@"loading=[%@]", v22];
    [v14 addObject:v23];
  }

  v39 = v12;
  if ([(NSMutableArray *)self->_prioritizedStoreIDs count])
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = [(NSMutableArray *)self->_prioritizedStoreIDs componentsJoinedByString:@", "];
    v26 = [v24 stringWithFormat:@"priority=[%@]", v25];
    [v14 addObject:v26];
  }

  v27 = MEMORY[0x1E696AEC0];
  sources = [(MPIdentifierSet *)self->_requestedIdentifiers sources];
  lastObject = [sources lastObject];
  v30 = [v14 componentsJoinedByString:@" "];
  v37 = v4;
  [v4 componentsJoinedByString:{@", "}];
  v32 = v31 = v14;
  [v5 componentsJoinedByString:@"+"];
  v33 = v36 = v5;
  v34 = [v27 stringWithFormat:@"<_MPCProgressiveResult %p (%@%@) sources.last='%@' %@ tokens=[%@] resolvedIDs=%@>", self, v39, v38, lastObject, v30, v32, v33];

  return v34;
}

- (id)resolvedIdentifiers
{
  if (self)
  {
    selfCopy = self;
    modelKind = [self[6] modelKind];
    identityKind = [modelKind identityKind];
    identityKind2 = [MEMORY[0x1E6970690] identityKind];
    v6 = identityKind2;
    if (identityKind == identityKind2)
    {
    }

    else
    {
      v7 = [identityKind isEqual:identityKind2];

      if ((v7 & 1) == 0)
      {
        v8 = selfCopy[12];
        if (v8 && ([v8 isPlaceholder] & 1) == 0)
        {
          v11 = selfCopy[12];
          if (selfCopy[13])
          {
            self = [v11 unionSet:?];
          }

          else
          {
            self = v11;
          }

          goto LABEL_10;
        }

        v9 = selfCopy[13];
LABEL_9:
        self = v9;
LABEL_10:
        v1 = vars8;
        goto LABEL_11;
      }
    }

    v9 = selfCopy[6];
    goto LABEL_9;
  }

LABEL_11:

  return self;
}

+ (id)progressiveItemWithRequestedIdentifiers:(void *)identifiers modelObject:(void *)object parentResult:(int)result piaTag:
{
  objectCopy = object;
  identifiersCopy = identifiers;
  v11 = a2;
  v12 = objc_alloc(objc_opt_self());
  v13 = v11;
  v14 = identifiersCopy;
  v15 = objectCopy;
  if (v12)
  {
    v25.receiver = v12;
    v25.super_class = _MPCAccumulatorProgressiveResult;
    v16 = objc_msgSendSuper2(&v25, sel_init);
    v12 = v16;
    if (v16)
    {
      objc_storeStrong(v16 + 6, a2);
      personalizedStore = [v13 personalizedStore];
      personID = [personalizedStore personID];
      v19 = personID;
      if (personID)
      {
        v20 = personID;
      }

      else
      {
        v20 = *MEMORY[0x1E69E4388];
      }

      v21 = [v13 prioritizedStoreStringIdentifiersForPersonID:v20];
      v22 = [v21 mutableCopy];
      v23 = v12[8];
      v12[8] = v22;

      objc_storeStrong(v12 + 15, identifiers);
      objc_storeStrong(v12 + 7, object);
      *(v12 + 2) = result;
    }
  }

  return v12;
}

- (uint64_t)isAnonymousGroup
{
  if (!self)
  {
    return 0;
  }

  modelKind = [*(self + 48) modelKind];
  identityKind = [modelKind identityKind];
  identityKind2 = [MEMORY[0x1E6970690] identityKind];
  if (identityKind == identityKind2)
  {
    v4 = 1;
  }

  else
  {
    v4 = [identityKind isEqual:identityKind2];
  }

  return v4;
}

- (BOOL)isValid
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 96);
    return v2 && ![v2 isPlaceholder] || *(v1 + 104) || objc_msgSend(*(v1 + 64), "count") != 0;
  }

  return result;
}

- (id)progressiveIdentifiers
{
  selfCopy = self;
  if (self)
  {
    v2 = self[12];
    if (v2 && ![v2 isPlaceholder] || selfCopy[13] || objc_msgSend(selfCopy[8], "count"))
    {
      resolvedIdentifiers = [(_MPCAccumulatorProgressiveResult *)selfCopy resolvedIdentifiers];
      v4 = resolvedIdentifiers;
      if (resolvedIdentifiers)
      {
        v5 = resolvedIdentifiers;
      }

      else
      {
        v5 = [selfCopy[6] copyWithSource:@"XL-Accumulator-Placeholder" block:&__block_literal_global_10544];
      }

      selfCopy = v5;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (uint64_t)isResolved
{
  if (result)
  {
    v1 = result;
    if (([(_MPCAccumulatorProgressiveResult *)result isAnonymousGroup]& 1) != 0)
    {
      return 1;
    }

    v2 = *(v1 + 96);
    return v2 && ![v2 isPlaceholder] || *(v1 + 104) != 0;
  }

  return result;
}

- (id)nextLoadableStoreID
{
  if (self)
  {
    self = [self[8] firstObject];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)didStartLoadingStoreID:(uint64_t)d
{
  v3 = a2;
  v4 = v3;
  if (d)
  {
    v9 = v3;
    [*(d + 64) removeObject:v3];
    v5 = *(d + 72);
    if (!v5)
    {
      array = [MEMORY[0x1E695DF70] array];
      v7 = *(d + 72);
      *(d + 72) = array;

      v5 = *(d + 72);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

@end