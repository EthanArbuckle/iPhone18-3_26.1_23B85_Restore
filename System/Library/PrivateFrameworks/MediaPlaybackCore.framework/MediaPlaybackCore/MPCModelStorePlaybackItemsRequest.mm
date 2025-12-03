@interface MPCModelStorePlaybackItemsRequest
+ (id)MPC_consumeSiriAssetInfo:(id)info userIdentity:(id)identity;
- (BOOL)isEqual:(id)equal;
- (MPCModelStorePlaybackItemsRequest)init;
- (MPCModelStorePlaybackItemsRequest)initWithCoder:(id)coder;
- (MPSectionedCollection)identifiers;
- (NSString)clientIdentifier;
- (NSString)description;
- (id)adjustedStartItemIdentifiersForIdentifiers:(id)identifiers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
- (void)setIdentifiers:(id)identifiers;
- (void)setStoreIDs:(id)ds;
@end

@implementation MPCModelStorePlaybackItemsRequest

- (id)adjustedStartItemIdentifiersForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if (![(NSArray *)self->_storeIDs count])
  {
    v13 = identifiersCopy;
    goto LABEL_16;
  }

  universalStore = [identifiersCopy universalStore];
  universalCloudLibraryID = [universalStore universalCloudLibraryID];

  personalizedStore = [identifiersCopy personalizedStore];
  cloudAlbumID = [personalizedStore cloudAlbumID];

  library = [identifiersCopy library];

  personalizedStore2 = [identifiersCopy personalizedStore];
  cloudID = [personalizedStore2 cloudID];

  if ([universalCloudLibraryID length])
  {
    v12 = ![(NSArray *)self->_storeIDs containsObject:universalCloudLibraryID];
  }

  else
  {
    v12 = 0;
  }

  if ([cloudAlbumID length])
  {
    v14 = ![(NSArray *)self->_storeIDs containsObject:cloudAlbumID];
    if (library)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v14 = 0;
    if (library)
    {
LABEL_14:
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __80__MPCModelStorePlaybackItemsRequest_adjustedStartItemIdentifiersForIdentifiers___block_invoke;
      v17[3] = &__block_descriptor_36_e49_v16__0__MPIdentifierSet_MPMutableIdentifierSet__8l;
      v18 = library != 0;
      v19 = v12;
      v20 = cloudID != 0;
      v21 = v14;
      v15 = [identifiersCopy copyWithSource:@"SPIR-Adjusted" block:v17];
      goto LABEL_15;
    }
  }

  if ((v12 & 1) != 0 || cloudID || v14)
  {
    goto LABEL_14;
  }

  v15 = identifiersCopy;
LABEL_15:
  v13 = v15;

LABEL_16:

  return v13;
}

void __80__MPCModelStorePlaybackItemsRequest_adjustedStartItemIdentifiersForIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    [v3 clearLibraryIdentifiers];
  }

  if (*(a1 + 33) == 1)
  {
    [v4 setUniversalStoreIdentifiersWithBlock:&__block_literal_global_178];
  }

  if ((*(a1 + 34) & 1) != 0 || *(a1 + 35) == 1)
  {
    v5 = [v4 personalizedStore];
    v6 = [v5 personID];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__MPCModelStorePlaybackItemsRequest_adjustedStartItemIdentifiersForIdentifiers___block_invoke_3;
    v7[3] = &__block_descriptor_34_e45_v16__0___MPMutablePersonalStoreIdentifiers__8l;
    v8 = *(a1 + 34);
    [v4 setPersonalStoreIdentifiersWithPersonID:v6 block:v7];
  }
}

void __80__MPCModelStorePlaybackItemsRequest_adjustedStartItemIdentifiersForIdentifiers___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) == 1)
  {
    [v3 setCloudID:0];
    v3 = v4;
  }

  if (*(a1 + 33) == 1)
  {
    [v4 setCloudAlbumID:0];
    v3 = v4;
  }
}

- (MPSectionedCollection)identifiers
{
  v3 = _os_feature_enabled_impl();
  playbackRequestEnvironment = [(MPCModelStorePlaybackItemsRequest *)self playbackRequestEnvironment];
  userIdentity = [playbackRequestEnvironment userIdentity];
  accountDSID = [userIdentity accountDSID];
  v7 = accountDSID;
  v8 = *MEMORY[0x1E69E4388];
  if (accountDSID)
  {
    v8 = accountDSID;
  }

  v9 = v8;

  if (self->_storeIDs)
  {
    v10 = v3 ^ 1;
    v11 = objc_alloc_init(MEMORY[0x1E6970818]);
    v12 = objc_alloc(MEMORY[0x1E6970550]);
    identityKind = [MEMORY[0x1E6970690] identityKind];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __48__MPCModelStorePlaybackItemsRequest_identifiers__block_invoke;
    v26[3] = &unk_1E8233A78;
    v26[4] = self;
    v14 = v9;
    v27 = v14;
    v15 = [v12 initWithSource:@"StorePlaybackItemsRequest" modelKind:identityKind block:v26];
    [v11 appendSection:v15];

    storeIDs = self->_storeIDs;
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __48__MPCModelStorePlaybackItemsRequest_identifiers__block_invoke_3;
    v23 = &unk_1E82337E0;
    v24 = v14;
    v25 = v10;
    v17 = [(NSArray *)storeIDs msv_map:&v20];
    [v11 appendItems:{v17, v20, v21, v22, v23}];
  }

  else
  {
    sectionedModelObjects = self->_sectionedModelObjects;
    if (sectionedModelObjects)
    {
      v11 = [(MPSectionedCollection *)sectionedModelObjects lazyMapWithSections:&__block_literal_global_167_10651 items:&__block_literal_global_170];
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

void __48__MPCModelStorePlaybackItemsRequest_identifiers__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(*(a1 + 32) + 64) UUIDString];
  [v4 setOpaqueID:v3];

  if ([*(a1 + 40) length])
  {
    [v4 setPersonalStoreIdentifiersWithPersonID:*(a1 + 40) block:&__block_literal_global_10679];
  }
}

- (void)setIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v6 = objc_alloc_init(MEMORY[0x1E6970818]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __52__MPCModelStorePlaybackItemsRequest_setIdentifiers___block_invoke;
  v12[3] = &unk_1E8233768;
  v15 = a2;
  v12[4] = self;
  v7 = v6;
  v13 = v7;
  v14 = identifiersCopy;
  v8 = identifiersCopy;
  [v8 enumerateSectionsUsingBlock:v12];
  sectionedModelObjects = self->_sectionedModelObjects;
  self->_sectionedModelObjects = v7;
  v10 = v7;

  storeIDs = self->_storeIDs;
  self->_storeIDs = 0;
}

void __52__MPCModelStorePlaybackItemsRequest_setIdentifiers___block_invoke(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 modelKind];
  v7 = [v6 modelClass];

  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a1[7] object:a1[4] file:@"MPCModelStorePlaybackItemsRequest.m" lineNumber:326 description:{@"Invalid section identifiers [missing section model class] for identifiers: %@", v5}];
  }

  if (([v7 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a1[7] object:a1[4] file:@"MPCModelStorePlaybackItemsRequest.m" lineNumber:327 description:{@"Invalid section identifiers [modelKind.modelClass is not a subclass of MPModelObject] for identifiers: %@", v5}];
  }

  if (v7 == objc_opt_class())
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a1[7] object:a1[4] file:@"MPCModelStorePlaybackItemsRequest.m" lineNumber:328 description:{@"Invalid section identifiers [modelKind.modelClass cannot be the abstract type MPModelObject] for identifiers: %@", v5}];
  }

  v8 = [[v7 alloc] initWithIdentifiers:v5];
  v9 = a1[5];
  v10 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v8];
  [v9 appendSection:v10];

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __52__MPCModelStorePlaybackItemsRequest_setIdentifiers___block_invoke_2;
  v17[3] = &unk_1E8233740;
  v11 = a1[6];
  v12 = a1[4];
  v13 = a1[5];
  v19 = a1[7];
  v17[4] = v12;
  v18 = v13;
  [v11 enumerateItemsInSectionAtIndex:a3 usingBlock:v17];
}

void __52__MPCModelStorePlaybackItemsRequest_setIdentifiers___block_invoke_2(void *a1, void *a2)
{
  v11 = a2;
  v3 = [v11 modelKind];
  v4 = [v3 modelClass];

  if (!v4)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a1[6] object:a1[4] file:@"MPCModelStorePlaybackItemsRequest.m" lineNumber:334 description:{@"Invalid item identifiers [missing item model class] for identifiers: %@", v11}];
  }

  if (([v4 isSubclassOfClass:objc_opt_class()] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a1[6] object:a1[4] file:@"MPCModelStorePlaybackItemsRequest.m" lineNumber:335 description:{@"Invalid item identifiers [modelKind.modelClass is not a subclass of MPModelObject] for identifiers: %@", v11}];
  }

  if (v4 == objc_opt_class())
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a1[6] object:a1[4] file:@"MPCModelStorePlaybackItemsRequest.m" lineNumber:336 description:{@"Invalid item identifiers [modelKind.modelClass cannot be the abstract type MPModelObject] for identifiers: %@", v11}];
  }

  v5 = [[v4 alloc] initWithIdentifiers:v11];
  v6 = a1[5];
  v7 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v5];
  [v6 appendItem:v7];
}

- (void)setStoreIDs:(id)ds
{
  v4 = MEMORY[0x1E696AFB0];
  dsCopy = ds;
  uUID = [v4 UUID];
  storeIDsAnonymousGroupUUID = self->_storeIDsAnonymousGroupUUID;
  self->_storeIDsAnonymousGroupUUID = uUID;

  v8 = [dsCopy copy];
  storeIDs = self->_storeIDs;
  self->_storeIDs = v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  allowLocalEquivalencies = self->_allowLocalEquivalencies;
  if (allowLocalEquivalencies == [equalCopy allowLocalEquivalencies])
  {
    goto LABEL_13;
  }

  sectionedModelObjects = self->_sectionedModelObjects;
  sectionedModelObjects = [equalCopy sectionedModelObjects];
  v8 = sectionedModelObjects;
  if (sectionedModelObjects == sectionedModelObjects)
  {
  }

  else
  {
    v9 = [(MPSectionedCollection *)sectionedModelObjects isEqual:sectionedModelObjects];

    if (!v9)
    {
      goto LABEL_13;
    }
  }

  storeIDs = self->_storeIDs;
  storeIDs = [equalCopy storeIDs];
  v12 = storeIDs;
  if (storeIDs == storeIDs)
  {
  }

  else
  {
    v13 = [(NSArray *)storeIDs isEqual:storeIDs];

    if (!v13)
    {
      goto LABEL_13;
    }
  }

  userIdentity = [(MPCPlaybackRequestEnvironment *)self->_playbackRequestEnvironment userIdentity];
  playbackRequestEnvironment = [equalCopy playbackRequestEnvironment];
  userIdentity2 = [playbackRequestEnvironment userIdentity];
  v17 = userIdentity2;
  if (userIdentity == userIdentity2)
  {

    goto LABEL_16;
  }

  v18 = [userIdentity isEqual:userIdentity2];

  if (v18)
  {
LABEL_16:
    inGroupSession = self->_inGroupSession;
    v19 = inGroupSession == [equalCopy isInGroupSession];
    goto LABEL_14;
  }

LABEL_13:
  v19 = 0;
LABEL_14:

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = MPCModelStorePlaybackItemsRequest;
  v4 = [(MPCModelStorePlaybackItemsRequest *)&v9 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    *(v4 + 73) = self->_allowLocalEquivalencies;
    objc_storeStrong(v4 + 13, self->_clientIdentifier);
    objc_storeStrong(v5 + 10, self->_playbackRequestEnvironment);
    objc_storeStrong(v5 + 12, self->_previousResponse);
    objc_storeStrong(v5 + 14, self->_sectionedModelObjects);
    objc_storeStrong(v5 + 11, self->_storeIDs);
    objc_storeStrong(v5 + 8, self->_storeIDsAnonymousGroupUUID);
    v6 = [(NSArray *)self->_playbackPrioritizedIndexPaths copy];
    v7 = v5[16];
    v5[16] = v6;

    *(v5 + 74) = self->_inGroupSession;
    objc_storeStrong(v5 + 15, self->_requestContextTag);
    *(v5 + 72) = self->_supportsPaginatedResults;
    objc_storeStrong(v5 + 17, self->_sodPersonID);
    objc_storeStrong(v5 + 18, self->_sodItemPayload);
    objc_storeStrong(v5 + 19, self->_sodContainerPayload);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = MPCModelStorePlaybackItemsRequest;
  [(MPCModelStorePlaybackItemsRequest *)&v14 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_allowLocalEquivalencies forKey:@"MPCModelStorePlaybackItemsRequestAllowLocalEquivalencies"];
  [coderCopy encodeObject:self->_clientIdentifier forKey:@"MPCModelStorePlaybackItemsRequestClientIdentifier"];
  [coderCopy encodeObject:self->_playbackRequestEnvironment forKey:@"MPCModelStorePlaybackItemsRequestPlaybackRequestEnvironment"];
  [coderCopy encodeObject:self->_storeIDs forKey:@"MPCModelStorePlaybackItemsRequestStoreIDs"];
  [coderCopy encodeObject:self->_storeIDsAnonymousGroupUUID forKey:@"_MPCModelStorePlaybackItemsRequestCodingKeyStoreIDsUUID"];
  [coderCopy encodeBool:self->_inGroupSession forKey:@"_MPCModelStorePlaybackItemsRequestCodingKeyInGroupSession"];
  if (self->_sectionedModelObjects)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{3 * -[MPSectionedCollection numberOfSections](self->_sectionedModelObjects, "numberOfSections")}];
    sectionedModelObjects = self->_sectionedModelObjects;
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __53__MPCModelStorePlaybackItemsRequest_encodeWithCoder___block_invoke;
    v11 = &unk_1E8233918;
    v12 = v5;
    selfCopy = self;
    v7 = v5;
    [(MPSectionedCollection *)sectionedModelObjects enumerateSectionsUsingBlock:&v8];
    [coderCopy encodeObject:v7 forKey:{@"MPCModelStorePlaybackItemsRequestSectionedModelObjects", v8, v9, v10, v11}];
  }
}

void __53__MPCModelStorePlaybackItemsRequest_encodeWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v5 addObject:v8];

  v9 = *(a1 + 32);
  v10 = [v6 identifiers];

  [v9 addObject:v10];
  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{2 * objc_msgSend(*(*(a1 + 40) + 112), "numberOfItemsInSection:", a3)}];
  v12 = *(*(a1 + 40) + 112);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __53__MPCModelStorePlaybackItemsRequest_encodeWithCoder___block_invoke_2;
  v14[3] = &unk_1E82338F0;
  v15 = v11;
  v13 = v11;
  [v12 enumerateItemsInSectionAtIndex:a3 usingBlock:v14];
  [*(a1 + 32) addObject:v13];
}

void __53__MPCModelStorePlaybackItemsRequest_encodeWithCoder___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v3 addObject:v6];

  v7 = *(a1 + 32);
  v8 = [v4 identifiers];

  [v7 addObject:v8];
}

- (MPCModelStorePlaybackItemsRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v86.receiver = self;
  v86.super_class = MPCModelStorePlaybackItemsRequest;
  v5 = [(MPCModelStorePlaybackItemsRequest *)&v86 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_allowLocalEquivalencies = [coderCopy decodeBoolForKey:@"MPCModelStorePlaybackItemsRequestAllowLocalEquivalencies"];
    v6 = 0x1E696A000uLL;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelStorePlaybackItemsRequestClientIdentifier"];
    clientIdentifier = v5->_clientIdentifier;
    v5->_clientIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPCModelStorePlaybackItemsRequestPlaybackRequestEnvironment"];
    playbackRequestEnvironment = v5->_playbackRequestEnvironment;
    v5->_playbackRequestEnvironment = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"MPCModelStorePlaybackItemsRequestStoreIDs"];
    storeIDs = v5->_storeIDs;
    v5->_storeIDs = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_MPCModelStorePlaybackItemsRequestCodingKeyStoreIDsUUID"];
    storeIDsAnonymousGroupUUID = v5->_storeIDsAnonymousGroupUUID;
    v5->_storeIDsAnonymousGroupUUID = v16;

    if (!v5->_storeIDsAnonymousGroupUUID)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      v19 = v5->_storeIDsAnonymousGroupUUID;
      v5->_storeIDsAnonymousGroupUUID = uUID;
    }

    v5->_inGroupSession = [coderCopy decodeBoolForKey:@"_MPCModelStorePlaybackItemsRequestCodingKeyInGroupSession"];
    msv_userInfo = [coderCopy msv_userInfo];
    v21 = [msv_userInfo objectForKeyedSubscript:@"SPIR.SOD.personID"];
    sodPersonID = v5->_sodPersonID;
    v5->_sodPersonID = v21;

    v23 = [msv_userInfo objectForKeyedSubscript:@"SPIR.SOD.itemPayloadData"];
    sodItemPayload = v5->_sodItemPayload;
    v5->_sodItemPayload = v23;

    v25 = [msv_userInfo objectForKeyedSubscript:@"SPIR.SOD.containerPayloadData"];
    sodContainerPayload = v5->_sodContainerPayload;
    v5->_sodContainerPayload = v25;

    if (!v5->_storeIDs)
    {
      v27 = MEMORY[0x1E695DFD8];
      v28 = objc_opt_class();
      v29 = objc_opt_class();
      v30 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
      v31 = [coderCopy decodeObjectOfClasses:v30 forKey:@"MPCModelStorePlaybackItemsRequestSectionedModelObjects"];

      if (v31)
      {
        v77 = msv_userInfo;
        v32 = [v31 count];
        v85 = objc_alloc_init(MEMORY[0x1E6970818]);
        if (v32 >= 3)
        {
          v33 = 0;
          v34 = v32 - 2;
          v79 = v31;
          v80 = coderCopy;
          v78 = v34;
          while (1)
          {
            v35 = [v31 objectAtIndex:v33];
            if (_NSIsNSString())
            {
              v36 = NSClassFromString(v35);
            }

            else
            {
              v36 = 0;
            }

            if (![v36 isSubclassOfClass:objc_opt_class()])
            {
              goto LABEL_55;
            }

            v37 = [v31 objectAtIndex:v33 + 1];
            v38 = [v31 objectAtIndex:v33 + 2];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (_NSIsNSArray())
              {
                break;
              }
            }

LABEL_54:

LABEL_55:
            v33 += 3;
            if (v33 >= v34)
            {
              goto LABEL_59;
            }
          }

          v39 = v37;
          v82 = v37;
          v83 = v35;
          if (objc_opt_class() == v36)
          {
            modelKind = [v39 modelKind];
            modelClass = [modelKind modelClass];

            if (modelClass != objc_opt_class() && modelClass != objc_opt_class() && [(objc_class *)modelClass isSubclassOfClass:objc_opt_class()])
            {
              v45 = [[modelClass alloc] initWithIdentifiers:v39];
              v46 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v45];
              if (!v46)
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                v48 = [*(v6 + 3776) stringWithUTF8String:{"MPModelGenericObject *_MPCSPIRDecodeGenericObject(__unsafe_unretained Class, MPIdentifierSet *__strong)"}];
                [currentHandler handleFailureInFunction:v48 file:@"MPCModelStorePlaybackItemsRequest.m" lineNumber:166 description:{@"Failed to create generic object from identifers.modelKind | potentialModelClass=MPModelGenericObject identifierSet=%@", v39}];
LABEL_58:

                v52 = 0;
                goto LABEL_27;
              }

              goto LABEL_26;
            }
          }

          emptyIdentifierSet = [MEMORY[0x1E6970550] emptyIdentifierSet];
          v41 = emptyIdentifierSet;
          if (v39 == emptyIdentifierSet)
          {
          }

          else
          {
            v42 = [v39 isEqual:emptyIdentifierSet];

            if (!v42)
            {
LABEL_25:
              v45 = [[v36 alloc] initWithIdentifiers:v39];
              v46 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v45];
              if (!v46)
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                v48 = [*(v6 + 3776) stringWithUTF8String:{"MPModelGenericObject *_MPCSPIRDecodeGenericObject(__unsafe_unretained Class, MPIdentifierSet *__strong)"}];
                v76 = v39;
                [currentHandler handleFailureInFunction:v48 file:@"MPCModelStorePlaybackItemsRequest.m" lineNumber:180 description:{@"Failed to create generic object from potentialModelClass | potentialModelClass=%@ identifierSet=%@", v36}];
                goto LABEL_58;
              }

LABEL_26:
              v52 = v46;
LABEL_27:

              v81 = v52;
              [v85 appendSection:v52];
              v53 = [v38 count];
              if (v53 >= 2)
              {
                v54 = 0;
                v55 = v53 - 1;
                v84 = v53 - 1;
                while (2)
                {
                  v56 = [v38 objectAtIndex:v54];
                  if (_NSIsNSString())
                  {
                    v57 = NSClassFromString(v56);
                  }

                  else
                  {
                    v57 = 0;
                  }

                  if (![v57 isSubclassOfClass:objc_opt_class()])
                  {
                    goto LABEL_49;
                  }

                  v58 = [v38 objectAtIndex:v54 + 1];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v59 = v58;
                    if (objc_opt_class() == v57)
                    {
                      modelKind2 = [v59 modelKind];
                      modelClass2 = [modelKind2 modelClass];

                      if (modelClass2 != objc_opt_class() && modelClass2 != objc_opt_class() && [(objc_class *)modelClass2 isSubclassOfClass:objc_opt_class()])
                      {
                        v65 = [[modelClass2 alloc] initWithIdentifiers:v59];
                        v66 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v65];
                        if (!v66)
                        {
                          currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                          v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPModelGenericObject *_MPCSPIRDecodeGenericObject(__unsafe_unretained Class, MPIdentifierSet *__strong)"}];
                          [currentHandler2 handleFailureInFunction:v68 file:@"MPCModelStorePlaybackItemsRequest.m" lineNumber:166 description:{@"Failed to create generic object from identifers.modelKind | potentialModelClass=MPModelGenericObject identifierSet=%@", v59, v76}];
                          goto LABEL_52;
                        }

LABEL_46:
                        v72 = v66;
                        goto LABEL_47;
                      }
                    }

                    emptyIdentifierSet2 = [MEMORY[0x1E6970550] emptyIdentifierSet];
                    v61 = emptyIdentifierSet2;
                    if (v59 == emptyIdentifierSet2)
                    {
                    }

                    else
                    {
                      v62 = [v59 isEqual:emptyIdentifierSet2];

                      if (!v62)
                      {
                        goto LABEL_45;
                      }
                    }

                    v57 = objc_opt_class();
                    v69 = objc_alloc(MEMORY[0x1E6970550]);
                    identityKind = [MEMORY[0x1E6970690] identityKind];
                    v71 = [v69 initWithSource:@"StorePlaybackItemsRequest-DecodedEmpty" modelKind:identityKind block:&__block_literal_global_341];

                    v59 = v71;
LABEL_45:
                    v65 = [[v57 alloc] initWithIdentifiers:v59];
                    v66 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v65];
                    if (v66)
                    {
                      goto LABEL_46;
                    }

                    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
                    [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPModelGenericObject *_MPCSPIRDecodeGenericObject(__unsafe_unretained Class, MPIdentifierSet *__strong)"}];
                    v68 = v75 = v57;
                    [currentHandler2 handleFailureInFunction:v68 file:@"MPCModelStorePlaybackItemsRequest.m" lineNumber:180 description:{@"Failed to create generic object from potentialModelClass | potentialModelClass=%@ identifierSet=%@", v75, v59}];
LABEL_52:

                    v72 = 0;
LABEL_47:

                    [v85 appendItem:v72];
                    v55 = v84;
                  }

LABEL_49:
                  v54 += 2;
                  if (v54 >= v55)
                  {
                    break;
                  }

                  continue;
                }
              }

              v31 = v79;
              coderCopy = v80;
              v6 = 0x1E696A000;
              v34 = v78;
              v37 = v82;
              v35 = v83;
              goto LABEL_54;
            }
          }

          v36 = objc_opt_class();
          v49 = objc_alloc(MEMORY[0x1E6970550]);
          identityKind2 = [MEMORY[0x1E6970690] identityKind];
          v51 = [v49 initWithSource:@"StorePlaybackItemsRequest-DecodedEmpty" modelKind:identityKind2 block:&__block_literal_global_341];

          v39 = v51;
          goto LABEL_25;
        }

LABEL_59:
        sectionedModelObjects = v5->_sectionedModelObjects;
        v5->_sectionedModelObjects = v85;

        msv_userInfo = v77;
      }
    }
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  if ([(MPCModelStorePlaybackItemsRequest *)self supportsPaginatedResults])
  {
    previousResponse = [(MPCModelStorePlaybackItemsRequest *)self previousResponse];
    accumulator = [previousResponse accumulator];
    if (!accumulator)
    {
      v7 = _os_feature_enabled_impl();
      v8 = off_1E822D8F8;
      if (!v7)
      {
        v8 = off_1E822D8F0;
      }

      accumulator = [objc_alloc(*v8) initWithRequest:self];
    }

    v9 = objc_alloc(MEMORY[0x1E69704B8]);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __69__MPCModelStorePlaybackItemsRequest_newOperationWithResponseHandler___block_invoke;
    v13[3] = &unk_1E8233718;
    v13[4] = self;
    v14 = accumulator;
    v15 = handlerCopy;
    v10 = accumulator;
    v11 = [v9 initWithStartHandler:v13];
  }

  else
  {
    v11 = [[MPCModelStorePlaybackItemsRequestOperation alloc] initWithRequest:self responseHandler:handlerCopy];
  }

  return v11;
}

void __69__MPCModelStorePlaybackItemsRequest_newOperationWithResponseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[MPCModelStorePlaybackItemsRequestPaginatedOperation alloc] initWithRequest:*(a1 + 32) responseHandler:*(a1 + 48) accumulator:*(a1 + 40)];
  v4 = [*(a1 + 40) operationQueue];
  [v4 addOperation:v5];

  [v3 finish];
}

- (NSString)clientIdentifier
{
  if (self->_clientIdentifier)
  {
    return self->_clientIdentifier;
  }

  else
  {
    return &stru_1F454A698;
  }
}

- (NSString)description
{
  v18.receiver = self;
  v18.super_class = MPCModelStorePlaybackItemsRequest;
  v3 = [(MPCModelStorePlaybackItemsRequest *)&v18 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  [v4 appendFormat:@" playbackRequestEnvironment=%@", self->_playbackRequestEnvironment];
  if ([(NSArray *)self->_storeIDs count])
  {
    v5 = [(NSArray *)self->_storeIDs count];
    msv_compactDescription = [(NSArray *)self->_storeIDs msv_compactDescription];
    [v4 appendFormat:@" storeIDs=(:%llu)[%@]", v5, msv_compactDescription];
  }

  sectionedModelObjects = self->_sectionedModelObjects;
  if (sectionedModelObjects)
  {
    numberOfSections = [(MPSectionedCollection *)sectionedModelObjects numberOfSections];
    [v4 appendFormat:@" sectionedModelObjects=[ <%ld sections>\n", numberOfSections];
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v9 = self->_sectionedModelObjects;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __48__MPCModelStorePlaybackItemsRequest_description__block_invoke;
    v13[3] = &unk_1E82336F0;
    v13[4] = self;
    v10 = v4;
    v14 = v10;
    v15 = v17;
    v16 = numberOfSections;
    [(MPSectionedCollection *)v9 enumerateSectionsUsingBlock:v13];
    [v10 appendString:@"]"];

    _Block_object_dispose(v17, 8);
  }

  if (self->_inGroupSession)
  {
    [v4 appendString:@" inGroupSession=YES"];
  }

  [v4 appendString:@">"];
  v11 = [v4 copy];

  return v11;
}

void __48__MPCModelStorePlaybackItemsRequest_description__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(*(a1 + 32) + 112);
  v8 = a2;
  v9 = [v7 numberOfItemsInSection:a3];
  v10 = *(a1 + 40);
  v11 = [v8 humanDescription];

  [v10 appendFormat:@"  %2ld <%ld items> %@: [\n", a3, v9, v11];
  v12 = *(*(a1 + 32) + 112);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__MPCModelStorePlaybackItemsRequest_description__block_invoke_2;
  v16[3] = &unk_1E82336C8;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v17 = v13;
  v18 = v14;
  v19 = a3;
  v20 = v9;
  [v12 enumerateItemsInSectionAtIndex:a3 usingBlock:v16];
  [*(a1 + 40) appendString:@"]\n"];
  if (*(*(*(a1 + 48) + 8) + 24) >= 51)
  {
    *a4 = 1;
    v15 = *(a1 + 56);
    if (a3 + 1 != v15)
    {
      [*(a1 + 40) appendFormat:@"  ... (%ld remaining sections)\n", v15 - a3];
    }
  }
}

void __48__MPCModelStorePlaybackItemsRequest_description__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v9 = [a2 humanDescription];
  [v7 appendFormat:@"  %2ld, %2ld %@\n", v8, a3, v9];

  if (++*(*(*(a1 + 40) + 8) + 24) >= 51)
  {
    *a4 = 1;
    [*(a1 + 32) appendFormat:@"    ... (%ld remaining items)\n", *(a1 + 56) - a3];
  }
}

- (MPCModelStorePlaybackItemsRequest)init
{
  v28[3] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = MPCModelStorePlaybackItemsRequest;
  v2 = [(MPCModelStorePlaybackItemsRequest *)&v23 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6970770] kindWithVariants:3];
    v4 = [MEMORY[0x1E6970630] kindWithSongKind:v3];
    v5 = [MEMORY[0x1E69707A8] kindWithVariants:2];
    v6 = [MEMORY[0x1E69706E8] kindWithVariants:2];
    v7 = MEMORY[0x1E6970718];
    v8 = MEMORY[0x1E6970720];
    v28[0] = v3;
    v28[1] = v5;
    v28[2] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
    v10 = [v8 kindWithKinds:v9];
    v11 = [v7 kindWithPlaylistEntryKind:v10 options:0];

    v12 = MEMORY[0x1E6970670];
    v13 = *MEMORY[0x1E6970160];
    v26[0] = *MEMORY[0x1E6970158];
    v26[1] = v13;
    v27[0] = v3;
    v27[1] = v5;
    v26[2] = *MEMORY[0x1E6970110];
    v27[2] = v6;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:3];
    v15 = [v12 kindWithRelationshipKinds:v14];
    [(MPCModelStorePlaybackItemsRequest *)v2 setItemKind:v15];

    v16 = MEMORY[0x1E6970670];
    v17 = *MEMORY[0x1E6970118];
    v24[0] = *MEMORY[0x1E69700D8];
    v24[1] = v17;
    v25[0] = v4;
    v25[1] = v11;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v19 = [v16 kindWithRelationshipKinds:v18];
    [(MPCModelStorePlaybackItemsRequest *)v2 setSectionKind:v19];

    v20 = objc_alloc_init(MPCPlaybackRequestEnvironment);
    playbackRequestEnvironment = v2->_playbackRequestEnvironment;
    v2->_playbackRequestEnvironment = v20;
  }

  return v2;
}

+ (id)MPC_consumeSiriAssetInfo:(id)info userIdentity:(id)identity
{
  v31 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  identityCopy = identity;
  if ([infoCopy length])
  {
    v7 = MEMORY[0x1E696ACB0];
    v8 = [infoCopy dataUsingEncoding:4];
    v26 = 0;
    v9 = [v7 JSONObjectWithData:v8 options:0 error:&v26];
    v10 = v26;

    if (v10 || (_NSIsNSDictionary() & 1) == 0)
    {
      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v28 = v10;
        v29 = 2114;
        v30 = v9;
        _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_ERROR, "[MPCModelStorePlaybackItemsRequest] failed to parse SiriAssetInfo [error or non-dictionary] error=%{public}@ object=%{public}@", buf, 0x16u);
      }

      lastObject = 0;
      goto LABEL_14;
    }

    v11 = [objc_alloc(MEMORY[0x1E6970958]) initWithPayload:v9];
    [v11 setUserIdentity:identityCopy];
    mEMORY[0x1E6970950] = [MEMORY[0x1E6970950] sharedServerObjectDatabase];
    v25 = 0;
    v13 = [mEMORY[0x1E6970950] importObjectsFromRequest:v11 options:0 error:&v25];
    v14 = v25;

    playableAssetIdentifiers = [v13 playableAssetIdentifiers];
    v16 = playableAssetIdentifiers;
    if (v13 && !v14)
    {
      v17 = [playableAssetIdentifiers count];
      switch(v17)
      {
        case 2:
          lastObject = [v16 lastObject];
          v18 = _MPCLogCategoryPlayback();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          *buf = 138543362;
          v28 = lastObject;
          v24 = "[MPCModelStorePlaybackItemsRequest] selecting shuffle ID | [two playable assets] preferredShuffleStartIdentifiers=%{public}@";
          break;
        case 1:
          lastObject = [v16 firstObject];
          v18 = _MPCLogCategoryPlayback();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          *buf = 138543362;
          v28 = lastObject;
          v24 = "[MPCModelStorePlaybackItemsRequest] selecting shuffle ID | [single playable asset] preferredShuffleStartIdentifiers=%{public}@";
          break;
        case 0:
          v18 = _MPCLogCategoryPlayback();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v19 = "[MPCModelStorePlaybackItemsRequest] selecting shuffle ID | failed [no playable assets]";
            v20 = v18;
            v21 = 2;
LABEL_21:
            _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
            goto LABEL_22;
          }

          goto LABEL_22;
        default:
          lastObject = [v16 objectAtIndex:{arc4random_uniform(objc_msgSend(v16, "count"))}];
          v18 = _MPCLogCategoryPlayback();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_30;
          }

          *buf = 138543362;
          v28 = lastObject;
          v24 = "[MPCModelStorePlaybackItemsRequest] selecting shuffle ID | [two playable assets] preferredShuffleStartIdentifiers=%{public}@";
          break;
      }

      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, v24, buf, 0xCu);
      goto LABEL_30;
    }

    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v14;
      v19 = "[MPCModelStorePlaybackItemsRequest] failed to import payload - error=%{public}@.";
      v20 = v18;
      v21 = 12;
      goto LABEL_21;
    }

LABEL_22:
    lastObject = 0;
LABEL_30:

LABEL_14:
    goto LABEL_16;
  }

  lastObject = 0;
LABEL_16:

  return lastObject;
}

@end