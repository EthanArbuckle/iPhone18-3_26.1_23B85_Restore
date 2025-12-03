@interface _MPCModelStorePlaybackItemsRequestAccumulator_Legacy
- (BOOL)_importSODPayloadData:(id)data userIdentity:(id)identity;
- (BOOL)handleContainerPayload:(id)payload itemPayload:(id)itemPayload userIdentity:(id)identity;
- (ICURLAggregatedPerformanceMetrics)performanceMetrics;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)_locked_accumulatorResult;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)accumulatorResult;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handlePaginatedResponse:(id)response error:(id)error;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handleResponse:(id)response error:(id)error;
- (MPSectionedCollection)unpersonalizedContentDescriptors;
- (_MPCModelStorePlaybackItemsRequestAccumulator_Legacy)initWithRequest:(id)request;
- (_MPCModelStorePlaybackItemsRequestAccumulator_Legacy)initWithRequest:(id)request serverObjectDatabase:(id)database;
- (id)_locked_mergedObjectWithRequestedObjectIfNeeded:(id)needed forIndexPath:(id)path;
- (id)_locked_requestIdentifierForIdentifierSet:(id)set;
- (id)_playlistEntryForObject:(id)object containerUniqueID:(id)d;
- (id)_serverObjectFromPlaceholderContentDescriptor:(id)descriptor propertySet:(id)set error:(id *)error;
- (id)accumulatedResults;
- (id)newStoreItemMetadataRequest;
- (id)nextPaginatedStoreItemMetadataRequest;
- (int64_t)failedIDsCount;
- (int64_t)pendingIDsCount;
- (void)_locked_resolveContentDescriptorsUsingServerObjectDatabase;
- (void)_resolveContentDescriptorsUsingServerObjectDatabase;
@end

@implementation _MPCModelStorePlaybackItemsRequestAccumulator_Legacy

- (id)_locked_mergedObjectWithRequestedObjectIfNeeded:(id)needed forIndexPath:(id)path
{
  neededCopy = needed;
  pathCopy = path;
  v8 = pathCopy;
  if (neededCopy && self->_requestUsesSectionedModelObjects)
  {
    v9 = [pathCopy length];
    sectionedModelObjects = [(MPCModelStorePlaybackItemsRequest *)self->_request sectionedModelObjects];
    v11 = sectionedModelObjects;
    if (v9 == 1)
    {
      [sectionedModelObjects sectionAtIndex:{objc_msgSend(v8, "indexAtPosition:", 0)}];
    }

    else
    {
      [sectionedModelObjects itemAtIndexPath:v8];
    }
    v13 = ;

    v14 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v13];
    if ([v14 type] == 5)
    {
      playlistEntry = [v14 playlistEntry];
      anyObject = [playlistEntry anyObject];

      if (!anyObject)
      {
        anyObject2 = [neededCopy anyObject];
        v18 = objc_opt_class();
        if (!v18)
        {
          v18 = objc_opt_class();
        }

        v19 = [v18 alloc];
        identifiers = [v14 identifiers];
        anyObject = [v19 initWithIdentifiers:identifiers];
      }

      v21 = [MEMORY[0x1E6970670] genericObjectWithModelObject:anyObject];

      v14 = v21;
    }

    v22 = [v14 mergeWithObject:neededCopy];

    v12 = v22;
  }

  else
  {
    v12 = neededCopy;
  }

  return v12;
}

- (id)_serverObjectFromPlaceholderContentDescriptor:(id)descriptor propertySet:(id)set error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifiers2 = descriptorCopy;
    v9 = 0;
    if (identifiers2)
    {
LABEL_3:
      v10 = [(MPServerObjectDatabase *)self->_sod modelObjectMatchingIdentifierSet:identifiers2 propertySet:self->_requestPropertySet error:error];
      goto LABEL_15;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = descriptorCopy;
      identifiers = [v9 identifiers];
      isPlaceholder = [identifiers isPlaceholder];

      if (isPlaceholder)
      {
        identifiers2 = [v9 identifiers];
        if (identifiers2)
        {
          goto LABEL_3;
        }
      }

      else
      {
        identifiers2 = 0;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = objc_opt_class();
          v15 = NSStringFromClass(v14);
          v17 = 134218242;
          selfCopy = self;
          v19 = 2114;
          v20 = v15;
          _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_ERROR, "[PIA] %p _serverObjectFromPlaceholderContentDescriptor | failed to generate IdentifierSet from unsupported contentDescriptor %{public}@", &v17, 0x16u);
        }
      }

      identifiers2 = 0;
      v9 = 0;
    }
  }

  v10 = 0;
LABEL_15:

  return v10;
}

- (void)_locked_resolveContentDescriptorsUsingServerObjectDatabase
{
  v52 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_accumulationError)
  {
    unpersonalizedContentDescriptors = self->_unpersonalizedContentDescriptors;
    self->_unpersonalizedContentDescriptors = 0;

    indexSet = [MEMORY[0x1E696AD50] indexSet];
    array = [MEMORY[0x1E695DF70] array];
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    pendingStoreIDs = self->_pendingStoreIDs;
    self->_pendingStoreIDs = orderedSet;

    progressiveContentDescriptors = self->_progressiveContentDescriptors;
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __114___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__locked_resolveContentDescriptorsUsingServerObjectDatabase__block_invoke;
    v49[3] = &unk_1E82339E0;
    v49[4] = self;
    v10 = indexSet;
    v50 = v10;
    [(MPMutableSectionedCollection *)progressiveContentDescriptors replaceSectionsUsingBlock:v49];
    if (!self->_accumulationError)
    {
      v11 = self->_progressiveContentDescriptors;
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __114___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__locked_resolveContentDescriptorsUsingServerObjectDatabase__block_invoke_92;
      v46[3] = &unk_1E8233A08;
      v46[4] = self;
      v12 = array;
      v47 = v12;
      v48 = a2;
      [(MPMutableSectionedCollection *)v11 replaceItemsUsingBlock:v46];
      if (!self->_accumulationError)
      {
        v32 = array;
        v33 = a2;
        if ([v12 count])
        {
          [(MPCModelStorePlaybackItemsRequest *)self->_request setPlaybackPrioritizedIndexPaths:MEMORY[0x1E695E0F0]];
        }

        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        obj = v12;
        v37 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v37)
        {
          v13 = 0;
          v35 = *v43;
          v36 = v10;
          do
          {
            for (i = 0; i != v37; ++i)
            {
              if (*v43 != v35)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v42 + 1) + 8 * i);
              v16 = [MEMORY[0x1E696AC88] indexPathForItem:objc_msgSend(v15 inSection:{"item"), objc_msgSend(v15, "section") + v13}];
              v17 = -[MPMutableSectionedCollection numberOfItemsInSection:](self->_progressiveContentDescriptors, "numberOfItemsInSection:", [v16 section]);
              v18 = [(MPMutableSectionedCollection *)self->_progressiveContentDescriptors itemAtIndexPath:v15];
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler handleFailureInMethod:v33 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Legacy.m" lineNumber:982 description:{@"Attempting to promote section for non model object: %@", v18}];
              }

              item = [v15 item];
              section = [v16 section];
              v21 = section;
              v39 = v16;
              v40 = v13;
              if (item)
              {
                v21 = section + 1;
                [(MPMutableSectionedCollection *)self->_progressiveContentDescriptors insertSection:v18 atIndex:section + 1];
                v22 = 1;
              }

              else
              {
                -[MPMutableSectionedCollection replaceSectionAtIndex:withObject:](self->_progressiveContentDescriptors, "replaceSectionAtIndex:withObject:", [v16 section], v18);
                v22 = 0;
              }

              v38 = v18;
              identifiers = [v18 identifiers];
              v24 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _locked_requestIdentifierForIdentifierSet:identifiers];

              [(NSMutableOrderedSet *)self->_pendingStoreIDs addObject:v24];
              [(MPMutableSectionedCollection *)self->_progressiveContentDescriptors removeItemAtIndexPath:v15];

              v25 = v17 + ~[v15 item];
              if (v25 >= 1)
              {
                v26 = self->_progressiveContentDescriptors;
                uUID = [MEMORY[0x1E696AFB0] UUID];
                [(MPMutableSectionedCollection *)v26 insertSection:uUID atIndex:v21 + 1];

                for (j = 0; j != v25; ++j)
                {
                  v29 = self->_progressiveContentDescriptors;
                  v30 = [MEMORY[0x1E696AC88] indexPathForItem:j inSection:v21 + 1];
                  [(MPMutableSectionedCollection *)v29 moveItemFromIndexPath:v15 toIndexPath:v30];
                }

                ++v22;
              }

              v10 = v36;
              [v36 shiftIndexesStartingAtIndex:v21 by:v22];
              [v36 addIndex:v21];
              v13 = v22 + v40;
            }

            v37 = [obj countByEnumeratingWithState:&v42 objects:v51 count:16];
          }

          while (v37);
        }

        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __114___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__locked_resolveContentDescriptorsUsingServerObjectDatabase__block_invoke_3;
        v41[3] = &unk_1E8233A30;
        v41[4] = self;
        v41[5] = v33;
        [v10 enumerateIndexesUsingBlock:v41];
        [(NSMutableOrderedSet *)self->_pendingStoreIDs minusSet:self->_failedStoreIDs];
        array = v32;
      }
    }
  }
}

- (id)_locked_requestIdentifierForIdentifierSet:(id)set
{
  setCopy = set;
  if (set)
  {
    v3 = a2;
    os_unfair_lock_assert_owner(setCopy + 22);
    v4 = [v3 prioritizedStoreStringIdentifiersForPersonID:*(setCopy + 3)];

    v5 = [v4 mutableCopy];
    allObjects = [*(setCopy + 6) allObjects];
    [v5 removeObjectsInArray:allObjects];

    firstObject = [v5 firstObject];
    v8 = firstObject;
    if (firstObject)
    {
      firstObject2 = firstObject;
    }

    else
    {
      firstObject2 = [v4 firstObject];
    }

    setCopy = firstObject2;
  }

  return setCopy;
}

- (void)_resolveContentDescriptorsUsingServerObjectDatabase
{
  os_unfair_lock_lock(&self->_lock);
  [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _locked_resolveContentDescriptorsUsingServerObjectDatabase];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_playlistEntryForObject:(id)object containerUniqueID:(id)d
{
  v39[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  dCopy = d;
  identifiers = [objectCopy identifiers];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __98___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__playlistEntryForObject_containerUniqueID___block_invoke;
  v37[3] = &unk_1E82389D8;
  v10 = dCopy;
  v38 = v10;
  v11 = [identifiers copyWithSource:@"Accumulator-PlaylistEntry" block:v37];
  v12 = [objectCopy copyWithIdentifiers:v11];

  identifiers2 = [v12 identifiers];
  if (![identifiers2 isPlaceholder])
  {

    goto LABEL_5;
  }

  type = [v12 type];

  if (type)
  {
LABEL_5:
    v30 = a2;
    identifiers3 = [objectCopy identifiers];
    modelKind = [identifiers3 modelKind];

    if (modelKind)
    {
      v18 = MEMORY[0x1E6970720];
      v39[0] = modelKind;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
      identityKind = [v18 kindWithKinds:v19];
    }

    else
    {
      identityKind = [MEMORY[0x1E6970728] identityKind];
    }

    v21 = objc_alloc(MEMORY[0x1E6970550]);
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __98___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__playlistEntryForObject_containerUniqueID___block_invoke_2;
    v35[3] = &unk_1E82389D8;
    v36 = v10;
    v22 = [v21 initWithSource:@"Accumulator-PlaylistEntry" modelKind:identityKind block:v35];
    identifiers4 = [objectCopy identifiers];
    v24 = [identifiers4 unionSet:v22];

    type2 = [objectCopy type];
    v26 = MEMORY[0x1E6970670];
    if (type2)
    {
      v27 = objc_alloc(MEMORY[0x1E6970720]);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __98___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__playlistEntryForObject_containerUniqueID___block_invoke_3;
      v31[3] = &unk_1E8233AA0;
      selfCopy = self;
      v34 = v30;
      v32 = objectCopy;
      v28 = [v27 initWithIdentifiers:v24 block:v31];
      v15 = [v26 genericObjectWithModelObject:v28];
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E6970670]) initWithIdentifiers:v24];
    }

    goto LABEL_12;
  }

  v15 = v12;
LABEL_12:

  return v15;
}

- (id)nextPaginatedStoreItemMetadataRequest
{
  v54 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_nextPaginatedStoreItemMetadataRequest__block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v34 = _Block_copy(aBlock);
  v36 = objc_alloc_init(MEMORY[0x1E69709C8]);
  clientIdentifier = [(MPCModelStorePlaybackItemsRequest *)self->_request clientIdentifier];
  [v36 setClientIdentifier:clientIdentifier];

  [v36 setReason:3];
  [v36 setTimeoutInterval:&unk_1F4599AC0];
  [v36 setRetryDelay:2.0];
  [v36 setAllowLocalEquivalencies:{-[MPCModelStorePlaybackItemsRequest allowLocalEquivalencies](self->_request, "allowLocalEquivalencies")}];
  [v36 setPersonalizationStyle:self->_storePersonalizationStyle];
  if (objc_opt_respondsToSelector())
  {
    [v36 setQualityOfService:33];
  }

  v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableOrderedSet count](self->_pendingStoreIDs, "count", v34)}];
  v4 = [(NSMutableOrderedSet *)self->_pendingStoreIDs mutableCopy];
  allSections = [(MPMutableSectionedCollection *)self->_progressiveContentDescriptors allSections];
  v6 = [allSections mutableCopy];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  playbackPrioritizedIndexPaths = [(MPCModelStorePlaybackItemsRequest *)self->_request playbackPrioritizedIndexPaths];
  v8 = [playbackPrioritizedIndexPaths countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v8)
  {
    v9 = *v44;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(playbackPrioritizedIndexPaths);
        }

        v11 = [(MPMutableSectionedCollection *)self->_progressiveContentDescriptors itemAtIndexPath:*(*(&v43 + 1) + 8 * i)];
        [v6 addObject:v11];
      }

      v8 = [playbackPrioritizedIndexPaths countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v8);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v6;
  v12 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v12)
  {
    v13 = *v40;
    do
    {
      v14 = 0;
      do
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v39 + 1) + 8 * v14);
        v16 = v15;
        if (self)
        {
          os_unfair_lock_assert_owner(&self->_lock);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v17 = v16;
          }

          else
          {
            v17 = 0;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            identifiers = [v16 identifiers];

            v17 = identifiers;
          }

          v19 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _locked_requestIdentifierForIdentifierSet:v17];

          if (v19)
          {
            v20 = [v4 indexOfObject:v19];
            if (v20 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v21 = [v4 objectAtIndex:v20];
              [v37 addObject:v21];

              [v4 removeObjectAtIndex:v20];
            }
          }
        }

        else
        {

          v19 = 0;
        }

        ++v14;
      }

      while (v12 != v14);
      v22 = [obj countByEnumeratingWithState:&v39 objects:v52 count:16];
      v12 = v22;
    }

    while (v22);
  }

  if ([v37 count])
  {
    array = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(array, OS_LOG_TYPE_DEFAULT))
    {
      msv_compactDescription = [v37 msv_compactDescription];
      *buf = 134218242;
      selfCopy = self;
      v50 = 2112;
      v51 = msv_compactDescription;
      _os_log_impl(&dword_1C5C61000, array, OS_LOG_TYPE_DEFAULT, "[PIA] %p Only requesting prioritized IDs requestedIDs=[%@]", buf, 0x16u);
    }
  }

  else
  {
    array = [v4 array];
    if ([array count]>= 0x33)
    {
      v25 = [array subarrayWithRange:0, 50];

      array = v25;
    }

    [v37 addObjectsFromArray:array];
  }

  [v36 setItemIdentifiers:v37];
  playbackRequestEnvironment = [(MPCModelStorePlaybackItemsRequest *)self->_request playbackRequestEnvironment];
  _createStoreRequestContext = [playbackRequestEnvironment _createStoreRequestContext];

  clientInfo = [_createStoreRequestContext clientInfo];
  [v36 setClientInfo:clientInfo];

  delegatedIdentity = [_createStoreRequestContext delegatedIdentity];
  [v36 setDelegatedUserIdentity:delegatedIdentity];

  identity = [_createStoreRequestContext identity];
  [v36 setUserIdentity:identity];

  identityStore = [_createStoreRequestContext identityStore];
  [v36 setUserIdentityStore:identityStore];

  requestContextTag = [(MPCModelStorePlaybackItemsRequest *)self->_request requestContextTag];
  [v36 mpc_setRequestContextTag:requestContextTag];

  v35[2]();

  return v36;
}

- (id)newStoreItemMetadataRequest
{
  v45 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_newStoreItemMetadataRequest__block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v29 = _Block_copy(aBlock);
  v30 = objc_alloc_init(MEMORY[0x1E69709C8]);
  clientIdentifier = [(MPCModelStorePlaybackItemsRequest *)self->_request clientIdentifier];
  [v30 setClientIdentifier:clientIdentifier];

  [v30 setReason:3];
  [v30 setTimeoutInterval:&unk_1F4599AC0];
  [v30 setRetryDelay:2.0];
  [v30 setAllowLocalEquivalencies:{-[MPCModelStorePlaybackItemsRequest allowLocalEquivalencies](self->_request, "allowLocalEquivalencies")}];
  [v30 setPersonalizationStyle:self->_storePersonalizationStyle];
  if (objc_opt_respondsToSelector())
  {
    [v30 setQualityOfService:33];
  }

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSMutableOrderedSet count](self->_pendingStoreIDs, "count")}];
  v5 = [(NSMutableOrderedSet *)self->_pendingStoreIDs mutableCopy];
  progressiveContentDescriptors = self->_progressiveContentDescriptors;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __83___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_newStoreItemMetadataRequest__block_invoke_76;
  v36[3] = &unk_1E82339B8;
  v36[4] = self;
  v7 = v5;
  v37 = v7;
  v31 = v4;
  v38 = v31;
  [(MPMutableSectionedCollection *)progressiveContentDescriptors enumerateSectionsUsingBlock:v36];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  playbackPrioritizedIndexPaths = [(MPCModelStorePlaybackItemsRequest *)self->_request playbackPrioritizedIndexPaths];
  v9 = [playbackPrioritizedIndexPaths countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v9)
  {
    v10 = *v33;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(playbackPrioritizedIndexPaths);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        sectionedModelObjects = [(MPCModelStorePlaybackItemsRequest *)self->_request sectionedModelObjects];
        v14 = [sectionedModelObjects itemAtIndexPath:v12];

        identifiers = [v14 identifiers];
        v16 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _locked_requestIdentifierForIdentifierSet:identifiers];

        v17 = [v7 indexOfObject:v16];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v7 objectAtIndex:v17];
          [v31 addObject:v18];

          [v7 removeObjectAtIndex:v17];
        }
      }

      v9 = [playbackPrioritizedIndexPaths countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v9);
  }

  if ([v31 count])
  {
    array = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(array, OS_LOG_TYPE_DEFAULT))
    {
      msv_compactDescription = [v31 msv_compactDescription];
      *buf = 134218242;
      selfCopy = self;
      v42 = 2112;
      v43 = msv_compactDescription;
      _os_log_impl(&dword_1C5C61000, array, OS_LOG_TYPE_DEFAULT, "[PIA] %p Only requesting prioritized IDs requestedIDs=[%@]", buf, 0x16u);
    }
  }

  else
  {
    array = [v7 array];
    [v31 addObjectsFromArray:array];
  }

  [v30 setItemIdentifiers:v31];
  playbackRequestEnvironment = [(MPCModelStorePlaybackItemsRequest *)self->_request playbackRequestEnvironment];
  _createStoreRequestContext = [playbackRequestEnvironment _createStoreRequestContext];

  clientInfo = [_createStoreRequestContext clientInfo];
  [v30 setClientInfo:clientInfo];

  delegatedIdentity = [_createStoreRequestContext delegatedIdentity];
  [v30 setDelegatedUserIdentity:delegatedIdentity];

  identity = [_createStoreRequestContext identity];
  [v30 setUserIdentity:identity];

  identityStore = [_createStoreRequestContext identityStore];
  [v30 setUserIdentityStore:identityStore];

  requestContextTag = [(MPCModelStorePlaybackItemsRequest *)self->_request requestContextTag];
  [v30 mpc_setRequestContextTag:requestContextTag];

  v29[2]();
  return v30;
}

- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handlePaginatedResponse:(id)response error:(id)error
{
  v89 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_handlePaginatedResponse_error___block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v70 = _Block_copy(aBlock);
  v7 = *MEMORY[0x1E696A978];
  v8 = [errorCopy msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1009];
  LOBYTE(error) = v8 == 0;

  if (error & 1) != 0 || ([MEMORY[0x1E69E4428] sharedMonitor], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isRemoteServerReachable"), v9, (v10))
  {
    lastBatchItemIdentifiers = [responseCopy lastBatchItemIdentifiers];
    if (![lastBatchItemIdentifiers count])
    {
LABEL_44:
      _locked_accumulatorResult = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _locked_accumulatorResult];

      goto LABEL_45;
    }

    lastBatchStoreItemDictionaries = [responseCopy lastBatchStoreItemDictionaries];
    v67 = [lastBatchStoreItemDictionaries count];
    v68 = lastBatchStoreItemDictionaries;
    if ([lastBatchStoreItemDictionaries count])
    {
      v12 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [lastBatchStoreItemDictionaries count];
        v14 = [lastBatchItemIdentifiers count];
        msv_compactDescription = [lastBatchItemIdentifiers msv_compactDescription];
        *buf = 134219010;
        selfCopy4 = self;
        v81 = 2048;
        v82 = responseCopy;
        v83 = 2048;
        v84 = v13;
        v85 = 2048;
        v86 = v14;
        v87 = 2112;
        v88 = msv_compactDescription;
        _os_log_impl(&dword_1C5C61000, v12, OS_LOG_TYPE_DEFAULT, "[PIA] %p Importing paginated response %p storeDictionaryCount=%ld requestedIDs=(:%llu)[%@]", buf, 0x34u);
      }

      v16 = [objc_alloc(MEMORY[0x1E6970968]) initWithPayload:v68];
      v17 = self->_request;
      playbackRequestEnvironment = [(MPCModelStorePlaybackItemsRequest *)v17 playbackRequestEnvironment];
      delegationProperties = [playbackRequestEnvironment delegationProperties];
      storeAccountID = [delegationProperties storeAccountID];

      if (storeAccountID)
      {
        v21 = MEMORY[0x1E69E4680];
        playbackRequestEnvironment2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:storeAccountID];
        v23 = [v21 specificAccountWithDSID:playbackRequestEnvironment2];
        userIdentity = [v23 identityAllowingDelegation:1];
      }

      else
      {
        playbackRequestEnvironment2 = [(MPCModelStorePlaybackItemsRequest *)v17 playbackRequestEnvironment];
        userIdentity = [playbackRequestEnvironment2 userIdentity];
      }

      [v16 setUserIdentity:userIdentity];
      sod = self->_sod;
      v76 = 0;
      v37 = [(MPServerObjectDatabase *)sod importObjectsFromRequest:v16 options:0 error:&v76];
      v38 = v76;
      v39 = v38;
      if (!v37 || v38)
      {
        v40 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          selfCopy4 = self;
          v81 = 2048;
          v82 = responseCopy;
          v83 = 2114;
          v84 = v39;
          _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_ERROR, "[PIA] %p Failed to import paginated response %p. error=%{public}@", buf, 0x20u);
        }
      }

      [(NSMutableArray *)self->_importResults addObject:v37];
    }

    if (errorCopy)
    {
      v41 = errorCopy;
      v42 = [v41 msv_errorByUnwrappingDomain:v7];
      code = [v42 code];

      v44 = [v41 msv_errorByUnwrappingDomain:*MEMORY[0x1E69E4198]];
      code2 = [v44 code];

      if ((code + 1009) <= 0xA && ((1 << (code - 15)) & 0x501) != 0)
      {
        v46 = 1;
      }

      else
      {
        v46 = 1;
        if (code2 != -7100 && code2 != -7007)
        {
          v46 = code2 == -7003;
        }
      }
    }

    else
    {
      v46 = 0;
    }

    v47 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(lastBatchItemIdentifiers, "count")}];
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v48 = lastBatchItemIdentifiers;
    v49 = [v48 countByEnumeratingWithState:&v72 objects:v78 count:16];
    if (v49)
    {
      v50 = *v73;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v73 != v50)
          {
            objc_enumerationMutation(v48);
          }

          v52 = *(*(&v72 + 1) + 8 * i);
          v53 = [responseCopy storeItemMetadataForItemIdentifier:v52];
          if (v53)
          {
            v54 = 1;
          }

          else
          {
            v54 = v46;
          }

          if ((v54 & 1) == 0)
          {
            [v47 addObject:v52];
          }
        }

        v49 = [v48 countByEnumeratingWithState:&v72 objects:v78 count:16];
      }

      while (v49);
    }

    if ([v47 count])
    {
      v55 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        performanceMetrics = [responseCopy performanceMetrics];
        urlMetrics = [performanceMetrics urlMetrics];
        v58 = [urlMetrics valueForKey:@"jingleCorrelationKey"];
        msv_compactDescription2 = [v58 msv_compactDescription];
        msv_compactDescription3 = [v47 msv_compactDescription];
        *buf = 134218498;
        selfCopy4 = self;
        v81 = 2114;
        v82 = msv_compactDescription2;
        v83 = 2114;
        v84 = msv_compactDescription3;
        _os_log_impl(&dword_1C5C61000, v55, OS_LOG_TYPE_ERROR, "[PIA] %p marking items as failed [missing from response] correlationKey=%{public}@ identifiers=[%{public}@]", buf, 0x20u);
      }

      [(NSMutableSet *)self->_failedStoreIDs addObjectsFromArray:v47];
    }

    else if (!v67)
    {
LABEL_43:
      v61 = MEMORY[0x1E69E4648];
      performanceMetrics = self->_performanceMetrics;
      performanceMetrics2 = [responseCopy performanceMetrics];
      v64 = [v61 aggregatedMetricsFromAggregatedMetrics:performanceMetrics addingAggregatedMetrics:performanceMetrics2];
      v65 = self->_performanceMetrics;
      self->_performanceMetrics = v64;

      goto LABEL_44;
    }

    [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _locked_resolveContentDescriptorsUsingServerObjectDatabase];
    goto LABEL_43;
  }

  v25 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    lastBatchItemIdentifiers2 = [responseCopy lastBatchItemIdentifiers];
    msv_compactDescription4 = [lastBatchItemIdentifiers2 msv_compactDescription];
    *buf = 134218498;
    selfCopy4 = self;
    v81 = 2048;
    v82 = responseCopy;
    v83 = 2114;
    v84 = msv_compactDescription4;
    _os_log_impl(&dword_1C5C61000, v25, OS_LOG_TYPE_ERROR, "[PIA] %p Handling paginated response=%p marking remaining IDs as failed [EnvironmentMonitor.isRemoteServerReachable returned NO] failedIDs=%{public}@", buf, 0x20u);
  }

  v28 = MEMORY[0x1E69E4648];
  v29 = self->_performanceMetrics;
  performanceMetrics3 = [responseCopy performanceMetrics];
  v31 = [v28 aggregatedMetricsFromAggregatedMetrics:v29 addingAggregatedMetrics:performanceMetrics3];
  v32 = self->_performanceMetrics;
  self->_performanceMetrics = v31;

  v33 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:56 underlyingError:errorCopy debugDescription:@"EnvironmentMonitor.isRemoteServerReachable returned NO"];
  accumulationError = self->_accumulationError;
  self->_accumulationError = v33;

  _locked_accumulatorResult = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _locked_accumulatorResult];
LABEL_45:
  v70[2]();

  return _locked_accumulatorResult;
}

- (BOOL)handleContainerPayload:(id)payload itemPayload:(id)itemPayload userIdentity:(id)identity
{
  v21 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  itemPayloadCopy = itemPayload;
  identityCopy = identity;
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 134218496;
    selfCopy = self;
    v17 = 2048;
    v18 = [payloadCopy length];
    v19 = 2048;
    v20 = [itemPayloadCopy length];
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[PIA] %p importing container/item payloads [] containerPayload.length=%{bytes}lu itemPayload.length=%{bytes}lu", &v15, 0x20u);
  }

  v12 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _importSODPayloadData:payloadCopy userIdentity:identityCopy];
  v13 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _importSODPayloadData:itemPayloadCopy userIdentity:identityCopy];

  if (v12 || v13)
  {
    [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _resolveContentDescriptorsUsingServerObjectDatabase];
  }

  return v12 || v13;
}

- (BOOL)_importSODPayloadData:(id)data userIdentity:(id)identity
{
  dataCopy = data;
  identityCopy = identity;
  if ([dataCopy length])
  {
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:dataCopy options:0 error:0];
    if (!v8 || !_NSIsNSDictionary())
    {
      v14 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v9 = v8;
    v10 = [v9 objectForKeyedSubscript:@"id"];
    if (v10 && (v11 = v10, [v9 objectForKeyedSubscript:@"type"], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
    {
      v13 = 0x1E6970958;
    }

    else
    {
      v15 = [v9 objectForKeyedSubscript:@"id"];
      if (!v15)
      {
        goto LABEL_14;
      }

      v16 = v15;
      v17 = [v9 objectForKeyedSubscript:@"kind"];

      if (!v17)
      {
        goto LABEL_14;
      }

      v13 = 0x1E6970968;
    }

    v18 = [objc_alloc(*v13) initWithPayload:v9];
    if (v18)
    {
      v19 = v18;
      [v18 setUserIdentity:identityCopy];
      v20 = [(MPServerObjectDatabase *)self->_sod importObjectsFromRequest:v19 options:0 error:0];
      error = [v20 error];
      v14 = error == 0;

      v8 = v9;
LABEL_15:

      goto LABEL_16;
    }

LABEL_14:
    v14 = 0;
    v19 = v9;
    goto LABEL_15;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handleResponse:(id)response error:(id)error
{
  v92 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_handleResponse_error___block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v77 = _Block_copy(aBlock);
  v7 = *MEMORY[0x1E696A978];
  v8 = [errorCopy msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1009];
  LOBYTE(error) = v8 == 0;

  if (error & 1) != 0 || ([MEMORY[0x1E69E4428] sharedMonitor], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isRemoteServerReachable"), v9, (v10))
  {
    lastBatchStoreItemDictionaries = [responseCopy lastBatchStoreItemDictionaries];
    if ([lastBatchStoreItemDictionaries count])
    {
      v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [lastBatchStoreItemDictionaries count];
        requestItemIdentifiers = [responseCopy requestItemIdentifiers];
        msv_compactDescription = [requestItemIdentifiers msv_compactDescription];
        *buf = 134218754;
        selfCopy7 = self;
        v88 = 2048;
        v89 = responseCopy;
        v90 = 2048;
        *v91 = v12;
        *&v91[8] = 2112;
        *&v91[10] = msv_compactDescription;
        _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[PIA] %p Importing response %p storeDictionaryCount=%ld requestedIDs=[%@]", buf, 0x2Au);
      }

      v15 = [objc_alloc(MEMORY[0x1E6970968]) initWithPayload:lastBatchStoreItemDictionaries];
      v16 = self->_request;
      playbackRequestEnvironment = [(MPCModelStorePlaybackItemsRequest *)v16 playbackRequestEnvironment];
      delegationProperties = [playbackRequestEnvironment delegationProperties];
      storeAccountID = [delegationProperties storeAccountID];

      if (storeAccountID)
      {
        v20 = MEMORY[0x1E69E4680];
        playbackRequestEnvironment2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:storeAccountID];
        v22 = [v20 specificAccountWithDSID:playbackRequestEnvironment2];
        userIdentity = [v22 identityAllowingDelegation:1];
      }

      else
      {
        playbackRequestEnvironment2 = [(MPCModelStorePlaybackItemsRequest *)v16 playbackRequestEnvironment];
        userIdentity = [playbackRequestEnvironment2 userIdentity];
      }

      [v15 setUserIdentity:userIdentity];
      sod = self->_sod;
      v83 = 0;
      v36 = [(MPServerObjectDatabase *)sod importObjectsFromRequest:v15 options:0 error:&v83];
      v37 = v83;
      v38 = v37;
      if (!v36 || v37)
      {
        v39 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218498;
          selfCopy7 = self;
          v88 = 2048;
          v89 = responseCopy;
          v90 = 2114;
          *v91 = v38;
          _os_log_impl(&dword_1C5C61000, v39, OS_LOG_TYPE_ERROR, "[PIA] %p Failed to import response %p. error=%{public}@", buf, 0x20u);
        }
      }

      [(NSMutableArray *)self->_importResults addObject:v36];
    }

    if (errorCopy)
    {
      v40 = errorCopy;
      v41 = [v40 msv_errorByUnwrappingDomain:v7];
      code = [v41 code];

      v43 = [v40 msv_errorByUnwrappingDomain:*MEMORY[0x1E69E4198]];
      code2 = [v43 code];

      if ((code + 1009) <= 0xA && ((1 << (code - 15)) & 0x501) != 0)
      {
        v45 = 0;
      }

      else
      {
        v45 = 0;
        if (code2 != -7100 && code2 != -7007)
        {
          v45 = code2 != -7003;
        }
      }

      v46 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        selfCopy7 = self;
        v88 = 2048;
        v89 = responseCopy;
        v90 = 1024;
        *v91 = v45;
        *&v91[4] = 2114;
        *&v91[6] = v40;
        _os_log_impl(&dword_1C5C61000, v46, OS_LOG_TYPE_ERROR, "[PIA] %p Handling SP response=%p isFatalError=%{BOOL}u error=%{public}@", buf, 0x26u);
      }
    }

    else
    {
      v45 = 1;
    }

    array = [MEMORY[0x1E695DF70] array];
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    lastBatchItemIdentifiers = [responseCopy lastBatchItemIdentifiers];
    v49 = [lastBatchItemIdentifiers countByEnumeratingWithState:&v79 objects:v85 count:16];
    if (v49)
    {
      v50 = *v80;
      do
      {
        for (i = 0; i != v49; ++i)
        {
          if (*v80 != v50)
          {
            objc_enumerationMutation(lastBatchItemIdentifiers);
          }

          v52 = *(*(&v79 + 1) + 8 * i);
          v53 = [responseCopy storeItemMetadataForItemIdentifier:v52];
          v54 = !v45;
          if (v53)
          {
            v54 = 1;
          }

          if ((v54 & 1) == 0)
          {
            [array addObject:v52];
          }
        }

        v49 = [lastBatchItemIdentifiers countByEnumeratingWithState:&v79 objects:v85 count:16];
      }

      while (v49);
    }

    if ([array count])
    {
      v55 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        urlMetrics = [(ICURLAggregatedPerformanceMetrics *)self->_performanceMetrics urlMetrics];
        v57 = [urlMetrics valueForKey:@"jingleCorrelationKey"];
        msv_compactDescription2 = [v57 msv_compactDescription];
        msv_compactDescription3 = [array msv_compactDescription];
        *buf = 134218498;
        selfCopy7 = self;
        v88 = 2114;
        v89 = msv_compactDescription2;
        v90 = 2114;
        *v91 = msv_compactDescription3;
        _os_log_impl(&dword_1C5C61000, v55, OS_LOG_TYPE_ERROR, "[PIA] %p marking items as failed [missing from response] correlationKey=%{public}@ identifiers=[%{public}@]", buf, 0x20u);
      }

      [(NSMutableSet *)self->_failedStoreIDs addObjectsFromArray:array];
    }

    [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _locked_resolveContentDescriptorsUsingServerObjectDatabase];
    if ([responseCopy isFinalResponse])
    {
      v60 = MEMORY[0x1E695DFA8];
      requestItemIdentifiers2 = [responseCopy requestItemIdentifiers];
      v62 = [v60 setWithArray:requestItemIdentifiers2];

      v63 = [(NSMutableOrderedSet *)self->_pendingStoreIDs set];
      [v62 intersectSet:v63];

      allObjects = [v62 allObjects];
      v65 = allObjects;
      if (v45 && [allObjects count])
      {
        v66 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
        if (errorCopy)
        {
          if (v67)
          {
            msv_compactDescription4 = [v65 msv_compactDescription];
            *buf = 134218242;
            selfCopy7 = self;
            v88 = 2114;
            v89 = msv_compactDescription4;
            _os_log_impl(&dword_1C5C61000, v66, OS_LOG_TYPE_ERROR, "[PIA] %p Permanently failed items: [fatal final response] identifiers=[%{public}@]", buf, 0x16u);
          }
        }

        else if (v67)
        {
          msv_compactDescription5 = [v65 msv_compactDescription];
          *buf = 134218242;
          selfCopy7 = self;
          v88 = 2114;
          v89 = msv_compactDescription5;
          _os_log_impl(&dword_1C5C61000, v66, OS_LOG_TYPE_ERROR, "[PIA] %p Permanently failed items: [final response succeeded] identifiers=[%{public}@]", buf, 0x16u);
        }

        [(NSMutableSet *)self->_failedStoreIDs addObjectsFromArray:v65];
      }

      [(NSMutableOrderedSet *)self->_pendingStoreIDs removeObjectsInArray:v65];
    }

    v70 = MEMORY[0x1E69E4648];
    performanceMetrics = self->_performanceMetrics;
    performanceMetrics = [responseCopy performanceMetrics];
    v73 = [v70 aggregatedMetricsFromAggregatedMetrics:performanceMetrics addingAggregatedMetrics:performanceMetrics];
    v74 = self->_performanceMetrics;
    self->_performanceMetrics = v73;

    _locked_accumulatorResult = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _locked_accumulatorResult];
  }

  else
  {
    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      requestItemIdentifiers3 = [responseCopy requestItemIdentifiers];
      msv_compactDescription6 = [requestItemIdentifiers3 msv_compactDescription];
      *buf = 134218498;
      selfCopy7 = self;
      v88 = 2048;
      v89 = responseCopy;
      v90 = 2114;
      *v91 = msv_compactDescription6;
      _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_ERROR, "[PIA] %p Handling SP response=%p marking remaining IDs as failed [EnvironmentMonitor.isRemoteServerReachable returned NO] failedIDs=%{public}@", buf, 0x20u);
    }

    v27 = MEMORY[0x1E69E4648];
    v28 = self->_performanceMetrics;
    performanceMetrics2 = [responseCopy performanceMetrics];
    v30 = [v27 aggregatedMetricsFromAggregatedMetrics:v28 addingAggregatedMetrics:performanceMetrics2];
    v31 = self->_performanceMetrics;
    self->_performanceMetrics = v30;

    v32 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:56 underlyingError:errorCopy debugDescription:@"EnvironmentMonitor.isRemoteServerReachable returned NO"];
    accumulationError = self->_accumulationError;
    self->_accumulationError = v32;

    _locked_accumulatorResult = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self _locked_accumulatorResult];
  }

  v77[2]();

  return _locked_accumulatorResult;
}

- (MPCModelStorePlaybackItemsRequestAccumulatorResult)_locked_accumulatorResult
{
  v30[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = 1;
  v4 = 1;
  if (!self->_accumulationError)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    if ([(MPMutableSectionedCollection *)self->_progressiveContentDescriptors totalItemCount]< 1)
    {
      *(v17 + 24) = 0;
    }

    else
    {
      playbackPrioritizedIndexPaths = [(MPCModelStorePlaybackItemsRequest *)self->_request playbackPrioritizedIndexPaths];
      if (![playbackPrioritizedIndexPaths count])
      {
        v6 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
        v30[0] = v6;
        v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];

        playbackPrioritizedIndexPaths = v7;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __81___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__locked_accumulatorResult__block_invoke;
      v15[3] = &unk_1E8233990;
      v15[4] = self;
      v15[5] = &v16;
      [playbackPrioritizedIndexPaths enumerateObjectsUsingBlock:v15];
    }

    v8 = [(NSMutableOrderedSet *)self->_pendingStoreIDs count];
    v3 = v8 == 0;
    v9 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v8 == 0;
      v11 = *(v17 + 24);
      v12 = [(NSMutableOrderedSet *)self->_pendingStoreIDs count];
      array = [(NSMutableOrderedSet *)self->_pendingStoreIDs array];
      *buf = 134219010;
      selfCopy = self;
      v22 = 1024;
      v23 = v10;
      v24 = 1024;
      v25 = v11;
      v26 = 2048;
      v27 = v12;
      v28 = 2114;
      v29 = array;
      _os_log_impl(&dword_1C5C61000, v9, OS_LOG_TYPE_DEFAULT, "[PIA] %p computed accumulatorResult didFinishEntireRequest=%{BOOL}u didFinishPrioritizedBatch=%{BOOL}u pendingStoreIDs=(:%llu)[%{public}@]", buf, 0x2Cu);
    }

    v4 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  return (v3 | (v4 << 8));
}

- (MPCModelStorePlaybackItemsRequestAccumulatorResult)accumulatorResult
{
  selfCopy = self;
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_accumulatorResult__block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = selfCopy;
  v3 = _Block_copy(aBlock);
  LOWORD(selfCopy) = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)selfCopy _locked_accumulatorResult];
  v3[2](v3);

  return selfCopy;
}

- (MPSectionedCollection)unpersonalizedContentDescriptors
{
  os_unfair_lock_lock(&self->_lock);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __88___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_unpersonalizedContentDescriptors__block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (self->_accumulationError)
  {
    v4 = objc_alloc_init(MEMORY[0x1E6970938]);
LABEL_5:
    v7 = v4;
    goto LABEL_6;
  }

  p_unpersonalizedContentDescriptors = &self->_unpersonalizedContentDescriptors;
  unpersonalizedContentDescriptors = self->_unpersonalizedContentDescriptors;
  if (unpersonalizedContentDescriptors)
  {
    v4 = unpersonalizedContentDescriptors;
    goto LABEL_5;
  }

  v9 = objc_alloc_init(MEMORY[0x1E6970818]);
  progressiveContentDescriptors = self->_progressiveContentDescriptors;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __88___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_unpersonalizedContentDescriptors__block_invoke_2;
  v13[3] = &unk_1E8233968;
  v13[4] = self;
  v11 = v9;
  v14 = v11;
  [(MPMutableSectionedCollection *)progressiveContentDescriptors enumerateSectionsUsingBlock:v13];
  objc_storeStrong(p_unpersonalizedContentDescriptors, v9);
  v12 = v14;
  v7 = v11;

LABEL_6:
  v3[2](v3);

  return v7;
}

- (ICURLAggregatedPerformanceMetrics)performanceMetrics
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_performanceMetrics;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)failedIDsCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_failedStoreIDs count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (int64_t)pendingIDsCount
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableOrderedSet *)self->_pendingStoreIDs count];
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (id)accumulatedResults
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Legacy.m" lineNumber:287 description:@"Cannot produce accumulated result from legacy PIA"];

  return 0;
}

- (_MPCModelStorePlaybackItemsRequestAccumulator_Legacy)initWithRequest:(id)request serverObjectDatabase:(id)database
{
  v73 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  databaseCopy = database;
  v71.receiver = self;
  v71.super_class = _MPCModelStorePlaybackItemsRequestAccumulator_Legacy;
  v8 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)&v71 init];
  if (v8)
  {
    v9 = [requestCopy copy];
    request = v8->_request;
    v8->_request = v9;

    sectionedModelObjects = [(MPCModelStorePlaybackItemsRequest *)v8->_request sectionedModelObjects];
    v8->_requestUsesSectionedModelObjects = sectionedModelObjects != 0;

    objc_storeStrong(&v8->_sod, database);
    v12 = [MEMORY[0x1E695DFA8] set];
    failedStoreIDs = v8->_failedStoreIDs;
    v8->_failedStoreIDs = v12;

    v8->_lock._os_unfair_lock_opaque = 0;
    v14 = MSVNanoIDCreateWithCharacters();
    uTF8String = [v14 UTF8String];
    v16 = (uTF8String[1] << 16) | (*uTF8String << 24) | (uTF8String[2] << 8) | uTF8String[3];

    v8->_piaTag = v16;
    v17 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    operationQueue = v8->_operationQueue;
    v8->_operationQueue = v17;

    [(NSOperationQueue *)v8->_operationQueue setQualityOfService:25];
    [(NSOperationQueue *)v8->_operationQueue setMaxConcurrentOperationCount:1];
    mEMORY[0x1E6970920] = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
    v8->_allowsExplicitContent = [mEMORY[0x1E6970920] allowsExplicitContent];

    playbackRequestEnvironment = [requestCopy playbackRequestEnvironment];
    delegationProperties = [playbackRequestEnvironment delegationProperties];
    storeAccountID = [delegationProperties storeAccountID];

    if (storeAccountID)
    {
      v23 = &v73 + 1;
      quot = storeAccountID;
      do
      {
        v25 = lldiv(quot, 10);
        quot = v25.quot;
        if (v25.rem >= 0)
        {
          LOBYTE(v26) = v25.rem;
        }

        else
        {
          v26 = -v25.rem;
        }

        *(v23 - 2) = v26 + 48;
        v27 = (v23 - 2);
        --v23;
      }

      while (v25.quot);
      if (storeAccountID < 0)
      {
        *(v23 - 2) = 45;
        v27 = (v23 - 2);
      }

      v28 = CFStringCreateWithBytes(0, v27, &v73 - v27, 0x8000100u, 0);
      personID = v8->_personID;
      v8->_personID = &v28->isa;
    }

    else
    {
      playbackRequestEnvironment2 = [requestCopy playbackRequestEnvironment];
      personID = [playbackRequestEnvironment2 userIdentity];

      defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
      v32 = [defaultIdentityStore DSIDForUserIdentity:personID outError:0];

      if (personID && v32)
      {
        longLongValue = [v32 longLongValue];
        if (longLongValue)
        {
          v34 = longLongValue;
          v35 = &v73 + 1;
          do
          {
            v36 = lldiv(longLongValue, 10);
            longLongValue = v36.quot;
            if (v36.rem >= 0)
            {
              LOBYTE(v37) = v36.rem;
            }

            else
            {
              v37 = -v36.rem;
            }

            *(v35 - 2) = v37 + 48;
            v38 = (v35 - 2);
            --v35;
          }

          while (v36.quot);
          if (v34 < 0)
          {
            *(v35 - 2) = 45;
            v38 = (v35 - 2);
          }

          v39 = CFStringCreateWithBytes(0, v38, &v73 - v38, 0x8000100u, 0);
        }

        else
        {
          v39 = @"0";
        }

        v42 = v8->_personID;
        v8->_personID = &v39->isa;

        v43 = MEMORY[0x1E6970548];
        defaultIdentityStore2 = [MEMORY[0x1E69E4688] defaultIdentityStore];
        v41 = [v43 userMonitorWithUserIdentity:personID fromUserIdentityStore:defaultIdentityStore2];

        if ([MEMORY[0x1E6970538] isCurrentDeviceValidHomeAccessory] && v41)
        {
          v8->_allowsExplicitContent = [v41 isExplicitSettingEnabled];
        }
      }

      else
      {
        v40 = *MEMORY[0x1E69E4388];
        v41 = v8->_personID;
        v8->_personID = v40;
      }
    }

    v45 = MPCStoreModelPlaybackItemsRequestCopyGenericObjectPropertySet(v8->_request);
    requestPropertySet = v8->_requestPropertySet;
    v8->_requestPropertySet = v45;

    array = [MEMORY[0x1E695DF70] array];
    importResults = v8->_importResults;
    v8->_importResults = array;

    playbackRequestEnvironment3 = [(MPCModelStorePlaybackItemsRequest *)v8->_request playbackRequestEnvironment];
    delegationProperties2 = [playbackRequestEnvironment3 delegationProperties];
    v51 = delegationProperties2 == 0;

    v8->_defaultLibraryPersonalizationStyle = v51;
    v8->_unknownEndpointLibraryPersonalizationStyle = 2 * v51;
    v52 = objc_alloc_init(MEMORY[0x1E6970818]);
    progressiveContentDescriptors = v8->_progressiveContentDescriptors;
    v8->_progressiveContentDescriptors = v52;

    if (v8->_requestUsesSectionedModelObjects)
    {
      sectionedModelObjects2 = [(MPCModelStorePlaybackItemsRequest *)v8->_request sectionedModelObjects];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_initWithRequest_serverObjectDatabase___block_invoke;
      v68[3] = &unk_1E8233918;
      v69 = v8;
      v70 = sectionedModelObjects2;
      storeIDs = sectionedModelObjects2;
      [storeIDs enumerateSectionsUsingBlock:v68];
    }

    else
    {
      v56 = v8->_progressiveContentDescriptors;
      uUID = [MEMORY[0x1E696AFB0] UUID];
      [(MPMutableSectionedCollection *)v56 appendSection:uUID];

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      storeIDs = [(MPCModelStorePlaybackItemsRequest *)v8->_request storeIDs];
      v58 = [storeIDs countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v65;
        do
        {
          for (i = 0; i != v59; ++i)
          {
            if (*v65 != v60)
            {
              objc_enumerationMutation(storeIDs);
            }

            v62 = _MPCCreateIdentifiersForOpaqueID(*(*(&v64 + 1) + 8 * i), v8->_personID, 1);
            [(MPMutableSectionedCollection *)v8->_progressiveContentDescriptors appendItem:v62];
          }

          v59 = [storeIDs countByEnumeratingWithState:&v64 objects:v72 count:16];
        }

        while (v59);
      }
    }

    [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)v8 _resolveContentDescriptorsUsingServerObjectDatabase];
  }

  return v8;
}

- (_MPCModelStorePlaybackItemsRequestAccumulator_Legacy)initWithRequest:(id)request
{
  v4 = MEMORY[0x1E6970950];
  requestCopy = request;
  sharedServerObjectDatabase = [v4 sharedServerObjectDatabase];
  v7 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)self initWithRequest:requestCopy serverObjectDatabase:sharedServerObjectDatabase];

  return v7;
}

@end