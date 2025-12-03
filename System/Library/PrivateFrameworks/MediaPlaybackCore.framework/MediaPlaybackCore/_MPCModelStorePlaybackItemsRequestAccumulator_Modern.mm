@interface _MPCModelStorePlaybackItemsRequestAccumulator_Modern
- ($CAB49A11545F495E2926099730158FC3)_locked_requestableIDsWithShouldPop:(SEL)pop;
- (BOOL)_importSODPayloadData:(id)data userIdentity:(id)identity;
- (BOOL)_locked_populateSection:(id)section sectionIndex:(int64_t)index;
- (BOOL)handleContainerPayload:(id)payload itemPayload:(id)itemPayload userIdentity:(id)identity;
- (ICURLAggregatedPerformanceMetrics)performanceMetrics;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)_locked_accumulatorResult;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)accumulatorResult;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handlePaginatedResponse:(id)response error:(id)error;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handleResponse:(id)response error:(id)error;
- (MPSectionedCollection)unpersonalizedContentDescriptors;
- (_MPCModelStorePlaybackItemsRequestAccumulator_Modern)initWithRequest:(id)request;
- (_MPCModelStorePlaybackItemsRequestAccumulator_Modern)initWithRequest:(id)request serverObjectDatabase:(id)database;
- (id)_locked_popNextBatchOfPendingStoreIDs;
- (id)accumulatedResults;
- (id)newStoreItemMetadataRequest;
- (id)nextPaginatedStoreItemMetadataRequest;
- (int64_t)_locked_promoteToSection:(id)section indexPath:(id)path;
- (int64_t)failedIDsCount;
- (int64_t)pendingIDsCount;
- (void)_locked_resolveProgressiveResults;
- (void)_resolveProgressiveResults;
@end

@implementation _MPCModelStorePlaybackItemsRequestAccumulator_Modern

- (BOOL)_locked_populateSection:(id)section sectionIndex:(int64_t)index
{
  v88 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  if (index == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:853 description:{@"progressiveSectionsToPopulate contains non-section: %@", sectionCopy}];
  }

  resolvedIdentifiers = [(_MPCAccumulatorProgressiveResult *)sectionCopy resolvedIdentifiers];
  if (!resolvedIdentifiers)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:855 description:@"Attempt to populate children of section without resolvedIdentifiers"];
  }

  modelKind = [resolvedIdentifiers modelKind];
  identityKind = [modelKind identityKind];
  identityKind2 = [MEMORY[0x1E6970730] identityKind];
  v12 = identityKind;
  v13 = identityKind2;
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    v15 = [v12 isEqual:v13];

    if (!v15)
    {
      v16 = MEMORY[0x1E696FBE0];
      goto LABEL_10;
    }
  }

  v16 = MEMORY[0x1E696FBE8];
LABEL_10:
  v17 = *v16;

  v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    piaTag = self->_piaTag;
    *buf = 67109378;
    *&buf[4] = piaTag;
    LOWORD(v84) = 2114;
    *(&v84 + 2) = sectionCopy;
    _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] populateSection:sectionIndex: | populating section [] progressiveSection=%{public}@", buf, 0x12u);
  }

  *buf = 0;
  *&v84 = buf;
  *(&v84 + 1) = 0x3032000000;
  v85 = __Block_byref_object_copy__11410;
  v86 = __Block_byref_object_dispose__11411;
  v87 = 0;
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  sod = self->_sod;
  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_populateSection_sectionIndex___block_invoke;
  v62[3] = &unk_1E8233BB8;
  v65 = &v73;
  v21 = sectionCopy;
  v63 = v21;
  selfCopy = self;
  v67 = buf;
  indexCopy = index;
  v66 = &v69;
  [(MPServerObjectDatabase *)sod enumerateRelatedTokensForResult:v21 childKey:v17 block:v62];
  if (!*(v84 + 40))
  {
    inputIdentifiers = [v21 inputIdentifiers];
    universalStore = [inputIdentifiers universalStore];
    if (![universalStore subscriptionAdamID])
    {
      universalStore2 = [inputIdentifiers universalStore];
      if ([universalStore2 purchasedAdamID])
      {
      }

      else
      {
        universalStore3 = [inputIdentifiers universalStore];
        universalCloudLibraryID = [universalStore3 universalCloudLibraryID];
        if ([universalCloudLibraryID length])
        {
        }

        else
        {
          personalizedStore = [inputIdentifiers personalizedStore];
          cloudAlbumID = [personalizedStore cloudAlbumID];
          v50 = [cloudAlbumID length] == 0;

          if (v50)
          {
            goto LABEL_27;
          }
        }

        lod = self->_lod;
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_populateSection_sectionIndex___block_invoke_128;
        v55[3] = &unk_1E8233BB8;
        v58 = &v73;
        v34 = v21;
        v56 = v34;
        selfCopy2 = self;
        v59 = &v69;
        v60 = buf;
        indexCopy2 = index;
        [(MPObjectDatabase *)lod enumerateRelatedTokensForResult:v34 childKey:v17 block:v55];
        if (*(v84 + 40))
        {
          v35 = self->_lod;
          allElementsEnumerator = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
          [(MPObjectDatabase *)v35 updateIdentifiersForResults:allElementsEnumerator options:self->_objectDatabaseOptions];

          v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = self->_piaTag;
            v39 = v70[3];
            *v77 = 67109634;
            v78 = v38;
            v79 = 2114;
            v80 = v34;
            v81 = 2048;
            v82 = v39;
            _os_log_impl(&dword_1C5C61000, v37, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] populateSection:sectionIndex: | populated section [LOD provided related tokens] progressiveSection=%{public}@ relatedProgressiveResults.count=%ld", v77, 0x1Cu);
          }
        }

        universalStore = v56;
      }
    }

    goto LABEL_27;
  }

  v22 = self->_sod;
  allElementsEnumerator2 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
  [(MPServerObjectDatabase *)v22 updateIdentifiersForResults:allElementsEnumerator2 options:self->_objectDatabaseOptions];

  v24 = self->_lod;
  allElementsEnumerator3 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
  [(MPObjectDatabase *)v24 updateTokensForResults:allElementsEnumerator3];

  v26 = self->_lod;
  allElementsEnumerator4 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
  [(MPObjectDatabase *)v26 updateIdentifiersForResults:allElementsEnumerator4 options:self->_objectDatabaseOptions];

  inputIdentifiers = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(inputIdentifiers, OS_LOG_TYPE_DEFAULT))
  {
    v29 = self->_piaTag;
    v30 = v70[3];
    *v77 = 67109634;
    v78 = v29;
    v79 = 2114;
    v80 = v21;
    v81 = 2048;
    v82 = v30;
    _os_log_impl(&dword_1C5C61000, inputIdentifiers, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] populateSection:sectionIndex: | populated section [SOD provided related tokens] progressiveSection=%{public}@ relatedProgressiveResults.count=%ld", v77, 0x1Cu);
  }

LABEL_27:

  if (*(v84 + 40))
  {
    goto LABEL_38;
  }

  v40 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = self->_piaTag;
    v42 = v70[3];
    *v77 = 67109634;
    v78 = v41;
    v79 = 2114;
    v80 = v21;
    v81 = 2048;
    v82 = v42;
    _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] populateSection:sectionIndex: | unable to populate section [not in SOD/LOD] progressiveSection=%{public}@ relatedProgressiveResults.count=%ld", v77, 0x1Cu);
  }

  if (*(v84 + 40))
  {
LABEL_38:
    if ([(NSMutableArray *)self->_prioritizedProgressiveResults containsObject:v21])
    {
      [(NSMutableArray *)self->_prioritizedProgressiveResults removeObject:v21];
      [(NSMutableArray *)self->_prioritizedProgressiveResults addObject:*(v84 + 40)];
      v43 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = self->_piaTag;
        msv_compactDescription = [(NSMutableArray *)self->_prioritizedProgressiveResults msv_compactDescription];
        *v77 = 67109378;
        v78 = v44;
        v79 = 2114;
        v80 = msv_compactDescription;
        _os_log_impl(&dword_1C5C61000, v43, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] populateSection:sectionIndex: | swapping section for item in prioritizedProgressiveResults [prioritized result was promoted] prioritizedProgressiveResults=%{public}@", v77, 0x12u);
      }
    }
  }

  v46 = *(v74 + 24);

  _Block_object_dispose(&v69, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v73, 8);
  return v46 & 1;
}

- (int64_t)_locked_promoteToSection:(id)section indexPath:(id)path
{
  v31 = *MEMORY[0x1E69E9840];
  sectionCopy = section;
  pathCopy = path;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([pathCopy length] != 2)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:818 description:{@"Attempt to section promote non item at indexPath %@ item=%@", pathCopy, sectionCopy}];
  }

  v9 = -[MPMutableSectionedCollection numberOfItemsInSection:](self->_progressiveResults, "numberOfItemsInSection:", [pathCopy section]);
  section = [pathCopy section];
  if ([pathCopy item])
  {
    [(MPMutableSectionedCollection *)self->_progressiveResults insertSection:sectionCopy atIndex:++section];
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      piaTag = self->_piaTag;
      *buf = 67109634;
      v26 = piaTag;
      v27 = 2114;
      v28 = sectionCopy;
      v29 = 2048;
      v30 = section;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | inserting promoted section [item in middle of section] promotedSection=%{public}@ promotedSectionIndex=%ld", buf, 0x1Cu);
    }
  }

  else
  {
    v11 = [(MPMutableSectionedCollection *)self->_progressiveResults sectionAtIndex:section];
    [(MPMutableSectionedCollection *)self->_progressiveResults replaceSectionAtIndex:section withObject:sectionCopy];
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_piaTag;
      *buf = 67109634;
      v26 = v14;
      v27 = 2114;
      v28 = v11;
      v29 = 2114;
      v30 = sectionCopy;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | replacing section with promoted section [first item in section] replacedSection=%{public}@ promotedSection=%{public}@", buf, 0x1Cu);
    }
  }

  [(MPMutableSectionedCollection *)self->_progressiveResults removeItemAtIndexPath:pathCopy];
  v15 = v9 + ~[pathCopy item];
  if (v15 >= 1)
  {
    v16 = objc_alloc(MEMORY[0x1E6970550]);
    identityKind = [MEMORY[0x1E6970690] identityKind];
    v18 = [v16 initWithSource:@"XL-Accumulator-Split" modelKind:identityKind block:&__block_literal_global_120];

    v19 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v18 modelObject:0 parentResult:0 piaTag:self->_piaTag];
    [(MPMutableSectionedCollection *)self->_progressiveResults insertSection:v19 atIndex:section + 1];
    for (i = 0; i != v15; ++i)
    {
      progressiveResults = self->_progressiveResults;
      v22 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:section + 1];
      [(MPMutableSectionedCollection *)progressiveResults moveItemFromIndexPath:pathCopy toIndexPath:v22];
    }
  }

  return section;
}

- (void)_locked_resolveProgressiveResults
{
  v68 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  if (!self->_accumulationError)
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v5 = os_signpost_id_generate(v4);

    v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v7 = v6;
    v8 = v5 - 1;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "resolveProgressiveResults", "", buf, 2u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __89___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_resolveProgressiveResults__block_invoke;
    aBlock[3] = &__block_descriptor_40_e5_v8__0l;
    aBlock[4] = v5;
    v52 = _Block_copy(aBlock);
    array = [MEMORY[0x1E695DF70] array];
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v11 = v10;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v5, "resolveProgressiveResults:sod", "", buf, 2u);
    }

    sod = self->_sod;
    allElementsEnumerator = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
    [(MPServerObjectDatabase *)sod updateTokensForResults:allElementsEnumerator];

    v14 = self->_sod;
    allElementsEnumerator2 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
    [(MPServerObjectDatabase *)v14 updateIdentifiersForResults:allElementsEnumerator2 options:self->_objectDatabaseOptions];

    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v17 = v16;
    if (v8 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v16))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v17, OS_SIGNPOST_INTERVAL_END, v5, "resolveProgressiveResults:sod", "", buf, 2u);
    }

    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v19 = v18;
    if (v8 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v5, "resolveProgressiveResults:lod", "", buf, 2u);
    }

    lod = self->_lod;
    allElementsEnumerator3 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
    [(MPObjectDatabase *)lod updateTokensForResults:allElementsEnumerator3];

    v22 = self->_lod;
    allElementsEnumerator4 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
    [(MPObjectDatabase *)v22 updateIdentifiersForResults:allElementsEnumerator4 options:self->_objectDatabaseOptions];

    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v25 = v24;
    if (v8 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v24))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v25, OS_SIGNPOST_INTERVAL_END, v5, "resolveProgressiveResults:lod", "", buf, 2u);
    }

    v26 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v27 = v26;
    if (v8 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v26))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v27, OS_SIGNPOST_EVENT, v5, "resolveProgressiveResults", "object databases done", buf, 2u);
    }

    v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      piaTag = self->_piaTag;
      *buf = 67109120;
      v65 = piaTag;
      _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEBUG, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | starting inspection [after object database resolution]", buf, 8u);
    }

    progressiveResults = self->_progressiveResults;
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __89___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_resolveProgressiveResults__block_invoke_107;
    v60[3] = &unk_1E8233B68;
    v60[4] = self;
    v31 = array;
    v61 = v31;
    [(MPMutableSectionedCollection *)progressiveResults enumerateSectionsUsingBlock:v60];
    v32 = self->_progressiveResults;
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __89___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_resolveProgressiveResults__block_invoke_108;
    v57[3] = &unk_1E8233B90;
    v57[4] = self;
    v33 = v31;
    v58 = v33;
    v59 = a2;
    [(MPMutableSectionedCollection *)v32 enumerateItemsUsingBlock:v57];
    v34 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = self->_piaTag;
      v36 = [v33 count];
      *buf = 67109376;
      v65 = v35;
      v66 = 2048;
      v67 = v36;
      _os_log_impl(&dword_1C5C61000, v34, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | finished inspection [] progressiveResultsToPromoteAndPopulate.count=%ld", buf, 0x12u);
    }

    v37 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v38 = v37;
    if (v8 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v37))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v38, OS_SIGNPOST_EVENT, v5, "resolveProgressiveResults", "inspection done", buf, 2u);
    }

    v39 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v40 = v39;
    if (v8 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v39))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v5, "resolveProgressiveResults:promoteAndPopulate", "", buf, 2u);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v41 = v33;
    v42 = 0;
    v43 = [v41 countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v43)
    {
      v44 = *v54;
      do
      {
        for (i = 0; i != v43; ++i)
        {
          if (*v54 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v53 + 1) + 8 * i);
          v47 = [(MPMutableSectionedCollection *)self->_progressiveResults mpc_indexPathForElement:v46];
          if ([v47 length] == 2)
          {
            [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_populateSection:v46 sectionIndex:[(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_promoteToSection:v46 indexPath:v47]];
          }

          else
          {
            v42 |= -[_MPCModelStorePlaybackItemsRequestAccumulator_Modern _locked_populateSection:sectionIndex:](self, "_locked_populateSection:sectionIndex:", v46, [v47 section]);
          }
        }

        v43 = [v41 countByEnumeratingWithState:&v53 objects:v63 count:16];
      }

      while (v43);
    }

    v48 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v49 = v48;
    if (v8 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v48))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v49, OS_SIGNPOST_INTERVAL_END, v5, "resolveProgressiveResults:promoteAndPopulate", "", buf, 2u);
    }

    if (v42)
    {
      v50 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        v51 = self->_piaTag;
        *buf = 67109120;
        v65 = v51;
        _os_log_impl(&dword_1C5C61000, v50, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | re-resolving [did populate children]", buf, 8u);
      }

      [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_resolveProgressiveResults];
    }

    v52[2]();
  }
}

- (void)_resolveProgressiveResults
{
  os_unfair_lock_lock_with_options();
  [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_resolveProgressiveResults];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)nextPaginatedStoreItemMetadataRequest
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_nextPaginatedStoreItemMetadataRequest__block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = objc_alloc_init(MEMORY[0x1E69709C8]);
  clientIdentifier = [(MPCModelStorePlaybackItemsRequest *)self->_request clientIdentifier];
  [v4 setClientIdentifier:clientIdentifier];

  [v4 setReason:3];
  [v4 setTimeoutInterval:&unk_1F4599AD0];
  [v4 setRetryDelay:2.0];
  [v4 setAllowLocalEquivalencies:{-[MPCModelStorePlaybackItemsRequest allowLocalEquivalencies](self->_request, "allowLocalEquivalencies")}];
  [v4 setPersonalizationStyle:self->_storePersonalizationStyle];
  _locked_popNextBatchOfPendingStoreIDs = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_popNextBatchOfPendingStoreIDs];
  [v4 setItemIdentifiers:_locked_popNextBatchOfPendingStoreIDs];

  if (objc_opt_respondsToSelector())
  {
    [v4 setQualityOfService:33];
  }

  playbackRequestEnvironment = [(MPCModelStorePlaybackItemsRequest *)self->_request playbackRequestEnvironment];
  _createStoreRequestContext = [playbackRequestEnvironment _createStoreRequestContext];

  clientInfo = [_createStoreRequestContext clientInfo];
  [v4 setClientInfo:clientInfo];

  delegatedIdentity = [_createStoreRequestContext delegatedIdentity];
  [v4 setDelegatedUserIdentity:delegatedIdentity];

  identity = [_createStoreRequestContext identity];
  [v4 setUserIdentity:identity];

  identityStore = [_createStoreRequestContext identityStore];
  [v4 setUserIdentityStore:identityStore];

  requestContextTag = [(MPCModelStorePlaybackItemsRequest *)self->_request requestContextTag];
  [v4 mpc_setRequestContextTag:requestContextTag];

  v3[2](v3);

  return v4;
}

- (id)_locked_popNextBatchOfPendingStoreIDs
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_requestableIDsWithShouldPop:1];
  array = [0 array];
  if ([array count])
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      piaTag = self->_piaTag;
      msv_compactDescription = [array msv_compactDescription];
      *buf = 67109378;
      v13 = piaTag;
      v14 = 2112;
      v15 = msv_compactDescription;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] popNextBatchOfPendingStoreIDs | using prioritized IDs [] prioritizedIDs=[%@]", buf, 0x12u);
    }

    array2 = array;
  }

  else
  {
    array2 = [0 array];
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_piaTag;
      msv_compactDescription2 = [array2 msv_compactDescription];
      *buf = 67109378;
      v13 = v9;
      v14 = 2112;
      v15 = msv_compactDescription2;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] popNextBatchOfPendingStoreIDs | using next batch [] nextBatchIDs=[%@]", buf, 0x12u);
    }
  }

  return array2;
}

- (id)newStoreItemMetadataRequest
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:686 description:@"newStoreItemMetadataRequest is not for the paginated operation"];

  return 0;
}

- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handlePaginatedResponse:(id)response error:(id)error
{
  v124 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  errorCopy = error;
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86___MPCModelStorePlaybackItemsRequestAccumulator_Modern_handlePaginatedResponse_error___block_invoke;
  aBlock[3] = &unk_1E8239298;
  selfCopy = self;
  aBlock[4] = self;
  v88 = _Block_copy(aBlock);
  v6 = [errorCopy msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1009];
  LOBYTE(error) = v6 == 0;

  if (error & 1) != 0 || ([MEMORY[0x1E69E4428] sharedMonitor], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isRemoteServerReachable"), v7, (v8))
  {
    lastBatchItemIdentifiers = [responseCopy lastBatchItemIdentifiers];
    if ([lastBatchItemIdentifiers count])
    {
      lastBatchStoreItemDictionaries = [responseCopy lastBatchStoreItemDictionaries];
      v86 = [lastBatchStoreItemDictionaries count];
      v87 = lastBatchStoreItemDictionaries;
      if ([lastBatchStoreItemDictionaries count])
      {
        v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          piaTag = self->_piaTag;
          v12 = [v87 count];
          v13 = [lastBatchItemIdentifiers count];
          msv_compactDescription = [lastBatchItemIdentifiers msv_compactDescription];
          *buf = 67110146;
          v115 = piaTag;
          v116 = 2048;
          v117 = responseCopy;
          v118 = 2048;
          v119 = v12;
          v120 = 2048;
          v121 = v13;
          v122 = 2112;
          v123 = msv_compactDescription;
          _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] handleResponse: | importing response [] response=%p storeDictionaryCount=%ld requestedIDs=(:%llu)[%@]", buf, 0x30u);
        }

        v15 = [objc_alloc(MEMORY[0x1E6970968]) initWithPayload:v87];
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
        v109 = 0;
        v37 = [(MPServerObjectDatabase *)sod importObjectsFromRequest:v15 options:0 error:&v109];
        v38 = v109;
        v39 = v38;
        if (!v37 || v38)
        {
          v40 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = self->_piaTag;
            *buf = 67109634;
            v115 = v41;
            v116 = 2048;
            v117 = responseCopy;
            v118 = 2114;
            v119 = v39;
            _os_log_impl(&dword_1C5C61000, v40, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] handleResponse: | failed to import response %p [] error=%{public}@", buf, 0x1Cu);
          }

          v42 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:77 underlyingError:v39 debugDescription:@"SOD import failed"];
          accumulationError = self->_accumulationError;
          self->_accumulationError = v42;
        }

        [(NSMutableArray *)self->_importResults addObject:v37];
      }

      v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(lastBatchItemIdentifiers, "count")}];
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      allElementsEnumerator = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
      v46 = [allElementsEnumerator countByEnumeratingWithState:&v105 objects:v113 count:16];
      if (v46)
      {
        v91 = allElementsEnumerator;
        v92 = *v106;
        do
        {
          v47 = 0;
          v94 = v46;
          do
          {
            if (*v106 != v92)
            {
              objc_enumerationMutation(allElementsEnumerator);
            }

            v48 = *(*(&v105 + 1) + 8 * v47);
            if (v48)
            {
              v49 = [*(v48 + 72) copy];
            }

            else
            {
              v49 = 0;
            }

            v95 = v47;
            v103 = 0u;
            v104 = 0u;
            v101 = 0u;
            v102 = 0u;
            v50 = lastBatchItemIdentifiers;
            v51 = [v50 countByEnumeratingWithState:&v101 objects:v112 count:16];
            if (v51)
            {
              v52 = *v102;
              do
              {
                for (i = 0; i != v51; ++i)
                {
                  if (*v102 != v52)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v54 = *(*(&v101 + 1) + 8 * i);
                  if ([v49 containsObject:v54])
                  {
                    v55 = [responseCopy storeItemMetadataForItemIdentifier:v54];
                    v56 = v54;
                    if (v55)
                    {
                      if (v48)
                      {
                        [*(v48 + 72) removeObject:v56];
                        v57 = *(v48 + 80);
                        if (!v57)
                        {
                          array = [MEMORY[0x1E695DF70] array];
                          v59 = *(v48 + 80);
                          *(v48 + 80) = array;

                          v57 = *(v48 + 80);
                        }

                        [v57 addObject:v56];
                      }

                      [v44 addObject:v48];
                    }

                    else
                    {
                      if (v48)
                      {
                        [*(v48 + 72) removeObject:v56];
                        v60 = *(v48 + 88);
                        if (!v60)
                        {
                          array2 = [MEMORY[0x1E695DF70] array];
                          v62 = *(v48 + 88);
                          *(v48 + 88) = array2;

                          v60 = *(v48 + 88);
                        }

                        [v60 addObject:v56];
                      }
                    }
                  }
                }

                v51 = [v50 countByEnumeratingWithState:&v101 objects:v112 count:16];
              }

              while (v51);
            }

            v47 = v95 + 1;
            allElementsEnumerator = v91;
          }

          while (v95 + 1 != v94);
          v63 = [v91 countByEnumeratingWithState:&v105 objects:v113 count:16];
          v46 = v63;
        }

        while (v63);
      }

      if (v86)
      {
        [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)selfCopy _locked_resolveProgressiveResults];
        v64 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = selfCopy->_piaTag;
          v66 = [(MPMutableSectionedCollection *)selfCopy->_progressiveResults debugDescription];
          *buf = 67109378;
          v115 = v65;
          v116 = 2114;
          v117 = v66;
          _os_log_impl(&dword_1C5C61000, v64, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] handleResponse: | updated progressiveResults [] progressiveResults=%{public}@", buf, 0x12u);
        }
      }

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v67 = v44;
      v68 = [v67 countByEnumeratingWithState:&v97 objects:v111 count:16];
      if (v68)
      {
        v69 = *v98;
        while (2)
        {
          for (j = 0; j != v68; ++j)
          {
            if (*v98 != v69)
            {
              objc_enumerationMutation(v67);
            }

            v71 = *(*(&v97 + 1) + 8 * j);
            if (v71)
            {
              v72 = *(v71 + 96);
              if (v72)
              {
                if (![v72 isPlaceholder])
                {
                  continue;
                }
              }
            }

            v73 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
            {
              v74 = selfCopy->_piaTag;
              *buf = 67109378;
              v115 = v74;
              v116 = 2114;
              v117 = v71;
              _os_log_impl(&dword_1C5C61000, v73, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] handleResponse: | failed to resolve progressive [no SOD identifers after re-resolve] progressive=%{public}@", buf, 0x12u);
            }

            v75 = MEMORY[0x1E696ABC0];
            if (v71)
            {
              v76 = [*(v71 + 80) copy];
            }

            else
            {
              v76 = 0;
            }

            msv_compactDescription2 = [v76 msv_compactDescription];
            v78 = [v75 msv_errorWithDomain:@"MPCError" code:78 debugDescription:{@"Failed to resolve entity via SOD after successful StorePlatform lookup: %@", msv_compactDescription2}];
            v79 = selfCopy->_accumulationError;
            selfCopy->_accumulationError = v78;

            goto LABEL_70;
          }

          v68 = [v67 countByEnumeratingWithState:&v97 objects:v111 count:16];
          if (v68)
          {
            continue;
          }

          break;
        }
      }

LABEL_70:

      v80 = MEMORY[0x1E69E4648];
      performanceMetrics = selfCopy->_performanceMetrics;
      performanceMetrics = [responseCopy performanceMetrics];
      v83 = [v80 aggregatedMetricsFromAggregatedMetrics:performanceMetrics addingAggregatedMetrics:performanceMetrics];
      v84 = selfCopy->_performanceMetrics;
      selfCopy->_performanceMetrics = v83;
    }

    _locked_accumulatorResult = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)selfCopy _locked_accumulatorResult];
  }

  else
  {
    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = self->_piaTag;
      lastBatchItemIdentifiers2 = [responseCopy lastBatchItemIdentifiers];
      msv_compactDescription3 = [lastBatchItemIdentifiers2 msv_compactDescription];
      *buf = 67109378;
      v115 = v25;
      v116 = 2114;
      v117 = msv_compactDescription3;
      _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] handleResponse: | marking remaining IDs as failed [EnvironmentMonitor.isRemoteServerReachable returned NO] failedIDs=%{public}@", buf, 0x12u);
    }

    v28 = MEMORY[0x1E69E4648];
    v29 = self->_performanceMetrics;
    performanceMetrics2 = [responseCopy performanceMetrics];
    v31 = [v28 aggregatedMetricsFromAggregatedMetrics:v29 addingAggregatedMetrics:performanceMetrics2];
    v32 = self->_performanceMetrics;
    self->_performanceMetrics = v31;

    v33 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:56 underlyingError:errorCopy debugDescription:@"EnvironmentMonitor.isRemoteServerReachable returned NO"];
    v34 = self->_accumulationError;
    self->_accumulationError = v33;

    _locked_accumulatorResult = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_accumulatorResult];
  }

  v88[2]();

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
    piaTag = self->_piaTag;
    v16[0] = 67109632;
    v16[1] = piaTag;
    v17 = 2048;
    v18 = [payloadCopy length];
    v19 = 2048;
    v20 = [itemPayloadCopy length];
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] handleContainerPayload:itemPayload: | importing payloads [] containerPayload.length=%{bytes}lu itemPayload.length=%{bytes}lu", v16, 0x1Cu);
  }

  v13 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _importSODPayloadData:payloadCopy userIdentity:identityCopy];
  v14 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _importSODPayloadData:itemPayloadCopy userIdentity:identityCopy];

  if (v13 || v14)
  {
    [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _resolveProgressiveResults];
  }

  return v13 || v14;
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:573 description:@"newStoreItemMetadataRequest is not for the paginated operation"];

  return 0;
}

- (MPCModelStorePlaybackItemsRequestAccumulatorResult)_locked_accumulatorResult
{
  os_unfair_lock_assert_owner(&self->_lock);
  [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_requestableIDsWithShouldPop:0];
  if ([0 count])
  {
    v3 = 0;
  }

  else
  {
    v3 = [0 count] == 0;
  }

  v4 = [0 count] == 0;

  return (v3 | (v4 << 8));
}

- (MPCModelStorePlaybackItemsRequestAccumulatorResult)accumulatorResult
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73___MPCModelStorePlaybackItemsRequestAccumulator_Modern_accumulatorResult__block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  LOWORD(self) = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_accumulatorResult];
  v3[2](v3);

  return self;
}

- ($CAB49A11545F495E2926099730158FC3)_locked_requestableIDsWithShouldPop:(SEL)pop
{
  v4 = a4;
  v57 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  v36 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:50];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = self->_prioritizedProgressiveResults;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v41 objects:v56 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v42;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v42 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v41 + 1) + 8 * i);
        if (([(_MPCAccumulatorProgressiveResult *)v11 isResolved]& 1) != 0)
        {
          allSections = [(MPMutableSectionedCollection *)self->_progressiveResults allSections];
          v13 = [allSections indexOfObject:v11];

          if (v13 == 0x7FFFFFFFFFFFFFFFLL || [(MPMutableSectionedCollection *)self->_progressiveResults numberOfItemsInSection:v13])
          {
            continue;
          }
        }

        v14 = v11;
        nextLoadableStoreID = [(_MPCAccumulatorProgressiveResult *)v14 nextLoadableStoreID];
        v16 = nextLoadableStoreID;
        if (v4 && nextLoadableStoreID)
        {
          [(_MPCAccumulatorProgressiveResult *)v14 didStartLoadingStoreID:nextLoadableStoreID];
        }

        if ([v16 length])
        {
          [v36 addObject:v16];
        }
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v41 objects:v56 count:16];
    }

    while (v8);
  }

  v17 = v4 && [v36 count] == 0;
  v18 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:50];
  [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v19 = v40 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v37 objects:v55 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    while (2)
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v37 + 1) + 8 * j);
        if (([(_MPCAccumulatorProgressiveResult *)v24 isResolved]& 1) == 0)
        {
          v25 = v24;
          nextLoadableStoreID2 = [(_MPCAccumulatorProgressiveResult *)v25 nextLoadableStoreID];
          if ((v17 & (nextLoadableStoreID2 != 0)) == 1)
          {
            [(_MPCAccumulatorProgressiveResult *)v25 didStartLoadingStoreID:nextLoadableStoreID2];
          }

          if ([nextLoadableStoreID2 length])
          {
            if ([v18 count] > 0x31)
            {

              v27 = 1;
              goto LABEL_36;
            }

            [v18 addObject:nextLoadableStoreID2];
            v17 &= [v18 count] != 50;
          }
        }
      }

      v21 = [v19 countByEnumeratingWithState:&v37 objects:v55 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }
  }

  v27 = 0;
LABEL_36:

  v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    piaTag = self->_piaTag;
    array = [v36 array];
    msv_compactDescription = [array msv_compactDescription];
    v32 = [v18 count];
    v33 = &stru_1F454A698;
    *buf = 67110146;
    v46 = piaTag;
    v47 = 1024;
    if (v27)
    {
      v33 = @"+";
    }

    v48 = v4;
    v49 = 2112;
    v50 = msv_compactDescription;
    v51 = 2048;
    v52 = v32;
    v53 = 2114;
    v54 = v33;
    _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] requestableIDsWithShouldPop:%{BOOL}u | computed requestable IDs [] prioritized=[%@] remainingIDsCount=%ld%{public}@", buf, 0x2Cu);
  }

  retstr->var0 = v36;
  retstr->var1 = v18;
  retstr->var2 = v27;

  return result;
}

- (MPSectionedCollection)unpersonalizedContentDescriptors
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:482 description:@"Can't produce unpersonalized content descriptors from modern PIA"];

  return 0;
}

- (ICURLAggregatedPerformanceMetrics)performanceMetrics
{
  os_unfair_lock_lock_with_options();
  v3 = self->_performanceMetrics;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)failedIDsCount
{
  os_unfair_lock_lock_with_options();
  v3 = self->_progressiveResults;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MPCPIACountFailedStoreIDs_block_invoke;
  v8[3] = &unk_1E8233C30;
  v10 = &v11;
  v4 = v3;
  v9 = v4;
  [(MPMutableSectionedCollection *)v4 enumerateSectionsUsingBlock:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___MPCPIACountFailedStoreIDs_block_invoke_2;
  v7[3] = &unk_1E8233C58;
  v7[4] = &v11;
  [(MPMutableSectionedCollection *)v4 enumerateItemsUsingBlock:v7];
  v5 = v12[3];

  _Block_object_dispose(&v11, 8);
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (int64_t)pendingIDsCount
{
  os_unfair_lock_lock_with_options();
  v3 = self->_progressiveResults;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___MPCPIACountPendingStoreIDs_block_invoke;
  v8[3] = &unk_1E8233C30;
  v10 = &v11;
  v4 = v3;
  v9 = v4;
  [(MPMutableSectionedCollection *)v4 enumerateSectionsUsingBlock:v8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___MPCPIACountPendingStoreIDs_block_invoke_2;
  v7[3] = &unk_1E8233C58;
  v7[4] = &v11;
  [(MPMutableSectionedCollection *)v4 enumerateItemsUsingBlock:v7];
  v5 = v12[3];

  _Block_object_dispose(&v11, 8);
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)accumulatedResults
{
  v123 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74___MPCModelStorePlaybackItemsRequestAccumulator_Modern_accumulatedResults__block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = objc_alloc_init(MEMORY[0x1E6970818]);
  v101 = 0;
  v102 = &v101;
  v103 = 0x3810000000;
  v105 = 0;
  v106 = 0;
  v104 = &unk_1C60E49B1;
  v107 = 0;
  v94 = 0;
  v95 = &v94;
  v96 = 0x3810000000;
  v98 = 0;
  v99 = 0;
  v97 = &unk_1C60E49B1;
  v100 = 0;
  progressiveResults = self->_progressiveResults;
  v89[0] = MEMORY[0x1E69E9820];
  v89[1] = 3221225472;
  v89[2] = __74___MPCModelStorePlaybackItemsRequestAccumulator_Modern_accumulatedResults__block_invoke_2;
  v89[3] = &unk_1E8233B40;
  v93 = a2;
  v91 = &v101;
  v89[4] = self;
  v7 = v5;
  v90 = v7;
  v92 = &v94;
  [(MPMutableSectionedCollection *)progressiveResults enumerateSectionsUsingBlock:v89];
  numberOfSections = [(MPMutableSectionedCollection *)self->_progressiveResults numberOfSections];
  totalItemCount = [(MPMutableSectionedCollection *)self->_progressiveResults totalItemCount];
  numberOfSections2 = [v7 numberOfSections];
  v88 = totalItemCount;
  totalItemCount2 = [v7 totalItemCount];
  v10 = v102;
  if (!v102[12])
  {
    v18 = v102 + 10;
    if (!v102[10])
    {
      if (!v102[8])
      {
        v19 = v102 + 9;
        if (!v102[9])
        {
          v20 = v102 + 11;
          if (!v102[11])
          {
            string = 0;
            goto LABEL_72;
          }

LABEL_61:
          string = [MEMORY[0x1E696AD60] string];
          goto LABEL_62;
        }

LABEL_47:
        string = [MEMORY[0x1E696AD60] string];
        goto LABEL_48;
      }

LABEL_33:
      string = [MEMORY[0x1E696AD60] string];
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  string = [MEMORY[0x1E696AD60] string];
  [string appendString:@"group:"];
  v12 = v10[12];
  if (v12)
  {
    v13 = &v112 + 3;
    quot = v10[12];
    do
    {
      quot = div(quot, 10).quot;
      v15 = HIDWORD(quot);
      if (quot < 0)
      {
        LODWORD(v15) = -HIDWORD(quot);
      }

      *(v13 - 2) = v15 + 48;
      v16 = (v13 - 2);
      --v13;
    }

    while (quot);
    if ((v12 & 0x80000000) != 0)
    {
      *(v13 - 2) = 45;
      v16 = (v13 - 2);
    }

    v17 = CFStringCreateWithBytes(0, v16, &v112 + 2 - v16, 0x8000100u, 0);
  }

  else
  {
    v17 = @"0";
  }

  [string appendString:{v17, totalItemCount2}];

  v18 = v10 + 10;
  if (v10[10])
  {
    if (string)
    {
      [string appendString:{@", "}];
LABEL_20:
      [string appendString:@"sodLod:"];
      v21 = *v18;
      if (*v18)
      {
        v22 = &v112 + 3;
        v23 = *v18;
        do
        {
          v23 = div(v23, 10).quot;
          v24 = HIDWORD(v23);
          if (v23 < 0)
          {
            LODWORD(v24) = -HIDWORD(v23);
          }

          *(v22 - 2) = v24 + 48;
          v25 = (v22 - 2);
          --v22;
        }

        while (v23);
        if (v21 < 0)
        {
          *(v22 - 2) = 45;
          v25 = (v22 - 2);
        }

        v26 = CFStringCreateWithBytes(0, v25, &v112 + 2 - v25, 0x8000100u, 0);
      }

      else
      {
        v26 = @"0";
      }

      [string appendString:v26];

      goto LABEL_30;
    }

LABEL_19:
    string = [MEMORY[0x1E696AD60] string];
    goto LABEL_20;
  }

LABEL_30:
  if (!v10[8])
  {
    goto LABEL_44;
  }

  if (!string)
  {
    goto LABEL_33;
  }

  [string appendString:{@", "}];
LABEL_34:
  [string appendString:@"sod:"];
  v27 = v10[8];
  if (v27)
  {
    v28 = &v112 + 3;
    v29 = v10[8];
    do
    {
      v29 = div(v29, 10).quot;
      v30 = HIDWORD(v29);
      if (v29 < 0)
      {
        LODWORD(v30) = -HIDWORD(v29);
      }

      *(v28 - 2) = v30 + 48;
      v31 = (v28 - 2);
      --v28;
    }

    while (v29);
    if ((v27 & 0x80000000) != 0)
    {
      *(v28 - 2) = 45;
      v31 = (v28 - 2);
    }

    v32 = CFStringCreateWithBytes(0, v31, &v112 + 2 - v31, 0x8000100u, 0);
  }

  else
  {
    v32 = @"0";
  }

  [string appendString:v32];

LABEL_44:
  v19 = v10 + 9;
  if (!v10[9])
  {
    goto LABEL_58;
  }

  if (!string)
  {
    goto LABEL_47;
  }

  [string appendString:{@", "}];
LABEL_48:
  [string appendString:@"lod:"];
  v33 = *v19;
  if (*v19)
  {
    v34 = &v112 + 3;
    v35 = *v19;
    do
    {
      v35 = div(v35, 10).quot;
      v36 = HIDWORD(v35);
      if (v35 < 0)
      {
        LODWORD(v36) = -HIDWORD(v35);
      }

      *(v34 - 2) = v36 + 48;
      v37 = (v34 - 2);
      --v34;
    }

    while (v35);
    if (v33 < 0)
    {
      *(v34 - 2) = 45;
      v37 = (v34 - 2);
    }

    v38 = CFStringCreateWithBytes(0, v37, &v112 + 2 - v37, 0x8000100u, 0);
  }

  else
  {
    v38 = @"0";
  }

  [string appendString:v38];

LABEL_58:
  v39 = v10[11];
  v20 = v10 + 11;
  if (!v39)
  {
    goto LABEL_72;
  }

  if (!string)
  {
    goto LABEL_61;
  }

  [string appendString:{@", "}];
LABEL_62:
  [string appendString:@"none:"];
  v40 = *v20;
  if (*v20)
  {
    v41 = &v112 + 3;
    v42 = *v20;
    do
    {
      v42 = div(v42, 10).quot;
      v43 = HIDWORD(v42);
      if (v42 < 0)
      {
        LODWORD(v43) = -HIDWORD(v42);
      }

      *(v41 - 2) = v43 + 48;
      v44 = (v41 - 2);
      --v41;
    }

    while (v42);
    if (v40 < 0)
    {
      *(v41 - 2) = 45;
      v44 = (v41 - 2);
    }

    v45 = CFStringCreateWithBytes(0, v44, &v112 + 2 - v44, 0x8000100u, 0);
  }

  else
  {
    v45 = @"0";
  }

  [string appendString:v45];

LABEL_72:
  v46 = v95;
  if (!v95[12])
  {
    v54 = v95 + 10;
    if (!v95[10])
    {
      if (!v95[8])
      {
        v55 = v95 + 9;
        if (!v95[9])
        {
          v56 = v95 + 11;
          if (!v95[11])
          {
            string2 = 0;
            goto LABEL_143;
          }

LABEL_132:
          string2 = [MEMORY[0x1E696AD60] string];
          goto LABEL_133;
        }

LABEL_118:
        string2 = [MEMORY[0x1E696AD60] string];
        goto LABEL_119;
      }

LABEL_104:
      string2 = [MEMORY[0x1E696AD60] string];
      goto LABEL_105;
    }

    goto LABEL_90;
  }

  string2 = [MEMORY[0x1E696AD60] string];
  [string2 appendString:@"group:"];
  v48 = v46[12];
  if (v48)
  {
    v49 = &v112 + 3;
    v50 = v46[12];
    do
    {
      v50 = div(v50, 10).quot;
      v51 = HIDWORD(v50);
      if (v50 < 0)
      {
        LODWORD(v51) = -HIDWORD(v50);
      }

      *(v49 - 2) = v51 + 48;
      v52 = (v49 - 2);
      --v49;
    }

    while (v50);
    if ((v48 & 0x80000000) != 0)
    {
      *(v49 - 2) = 45;
      v52 = (v49 - 2);
    }

    v53 = CFStringCreateWithBytes(0, v52, &v112 + 2 - v52, 0x8000100u, 0);
  }

  else
  {
    v53 = @"0";
  }

  [string2 appendString:{v53, totalItemCount2}];

  v54 = v46 + 10;
  if (v46[10])
  {
    if (string2)
    {
      [string2 appendString:{@", "}];
LABEL_91:
      [string2 appendString:@"sodLod:"];
      v57 = *v54;
      if (*v54)
      {
        v58 = &v112 + 3;
        v59 = *v54;
        do
        {
          v59 = div(v59, 10).quot;
          v60 = HIDWORD(v59);
          if (v59 < 0)
          {
            LODWORD(v60) = -HIDWORD(v59);
          }

          *(v58 - 2) = v60 + 48;
          v61 = (v58 - 2);
          --v58;
        }

        while (v59);
        if (v57 < 0)
        {
          *(v58 - 2) = 45;
          v61 = (v58 - 2);
        }

        v62 = CFStringCreateWithBytes(0, v61, &v112 + 2 - v61, 0x8000100u, 0);
      }

      else
      {
        v62 = @"0";
      }

      [string2 appendString:v62];

      goto LABEL_101;
    }

LABEL_90:
    string2 = [MEMORY[0x1E696AD60] string];
    goto LABEL_91;
  }

LABEL_101:
  if (!v46[8])
  {
    goto LABEL_115;
  }

  if (!string2)
  {
    goto LABEL_104;
  }

  [string2 appendString:{@", "}];
LABEL_105:
  [string2 appendString:@"sod:"];
  v63 = v46[8];
  if (v63)
  {
    v64 = &v112 + 3;
    v65 = v46[8];
    do
    {
      v65 = div(v65, 10).quot;
      v66 = HIDWORD(v65);
      if (v65 < 0)
      {
        LODWORD(v66) = -HIDWORD(v65);
      }

      *(v64 - 2) = v66 + 48;
      v67 = (v64 - 2);
      --v64;
    }

    while (v65);
    if ((v63 & 0x80000000) != 0)
    {
      *(v64 - 2) = 45;
      v67 = (v64 - 2);
    }

    v68 = CFStringCreateWithBytes(0, v67, &v112 + 2 - v67, 0x8000100u, 0);
  }

  else
  {
    v68 = @"0";
  }

  [string2 appendString:v68];

LABEL_115:
  v55 = v46 + 9;
  if (!v46[9])
  {
    goto LABEL_129;
  }

  if (!string2)
  {
    goto LABEL_118;
  }

  [string2 appendString:{@", "}];
LABEL_119:
  [string2 appendString:@"lod:"];
  v69 = *v55;
  if (*v55)
  {
    v70 = &v112 + 3;
    v71 = *v55;
    do
    {
      v71 = div(v71, 10).quot;
      v72 = HIDWORD(v71);
      if (v71 < 0)
      {
        LODWORD(v72) = -HIDWORD(v71);
      }

      *(v70 - 2) = v72 + 48;
      v73 = (v70 - 2);
      --v70;
    }

    while (v71);
    if (v69 < 0)
    {
      *(v70 - 2) = 45;
      v73 = (v70 - 2);
    }

    v74 = CFStringCreateWithBytes(0, v73, &v112 + 2 - v73, 0x8000100u, 0);
  }

  else
  {
    v74 = @"0";
  }

  [string2 appendString:v74];

LABEL_129:
  v75 = v46[11];
  v56 = v46 + 11;
  if (!v75)
  {
    goto LABEL_143;
  }

  if (!string2)
  {
    goto LABEL_132;
  }

  [string2 appendString:{@", "}];
LABEL_133:
  [string2 appendString:@"none:"];
  v76 = *v56;
  if (v76)
  {
    v77 = &v112 + 3;
    v78 = v76;
    do
    {
      v78 = div(v78, 10).quot;
      v79 = HIDWORD(v78);
      if (v78 < 0)
      {
        LODWORD(v79) = -HIDWORD(v78);
      }

      *(v77 - 2) = v79 + 48;
      v80 = (v77 - 2);
      --v77;
    }

    while (v78);
    if ((v76 & 0x80000000) != 0)
    {
      *(v77 - 2) = 45;
      v80 = (v77 - 2);
    }

    v81 = CFStringCreateWithBytes(0, v80, &v112 + 2 - v80, 0x8000100u, 0);
  }

  else
  {
    v81 = @"0";
  }

  [string2 appendString:v81];

LABEL_143:
  v82 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    piaTag = self->_piaTag;
    *buf = 67110658;
    v110 = piaTag;
    v111 = 2048;
    v112 = numberOfSections;
    v113 = 2048;
    v114 = numberOfSections2;
    v115 = 2114;
    v116 = string;
    v117 = 2048;
    v118 = v88;
    v119 = 2048;
    v120 = totalItemCount2;
    v121 = 2114;
    v122 = string2;
    _os_log_impl(&dword_1C5C61000, v82, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] accumulatedResults | stats [] totalSections=%ld/%ld (%{public}@) | totalItems=%ld/%ld (%{public}@)", buf, 0x44u);
  }

  v84 = [[MPCModelStorePlaybackItemsRequestAccumulation alloc] initWithProgressiveResults:v7 properties:self->_requestPropertySet libraryObjectDatabase:self->_lod performanceMetrics:self->_performanceMetrics];
  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v101, 8);

  v4[2](v4);

  return v84;
}

- (_MPCModelStorePlaybackItemsRequestAccumulator_Modern)initWithRequest:(id)request serverObjectDatabase:(id)database
{
  v128[0] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  databaseCopy = database;
  v120.receiver = self;
  v120.super_class = _MPCModelStorePlaybackItemsRequestAccumulator_Modern;
  v9 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)&v120 init];
  if (!v9)
  {
    goto LABEL_57;
  }

  v106 = databaseCopy;
  v10 = [requestCopy copy];
  request = v9->_request;
  v9->_request = v10;

  objc_storeStrong(&v9->_sod, database);
  v9->_lock._os_unfair_lock_opaque = 0;
  v12 = MSVNanoIDCreateWithCharacters();
  uTF8String = [v12 UTF8String];
  v14 = (uTF8String[1] << 16) | (*uTF8String << 24) | (uTF8String[2] << 8) | uTF8String[3];

  v9->_piaTag = v14;
  v15 = MEMORY[0x1E695DF70];
  playbackPrioritizedIndexPaths = [requestCopy playbackPrioritizedIndexPaths];
  v17 = [v15 arrayWithCapacity:{objc_msgSend(playbackPrioritizedIndexPaths, "count")}];
  prioritizedProgressiveResults = v9->_prioritizedProgressiveResults;
  v9->_prioritizedProgressiveResults = v17;

  v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  operationQueue = v9->_operationQueue;
  v9->_operationQueue = v19;

  [(NSOperationQueue *)v9->_operationQueue setQualityOfService:25];
  [(NSOperationQueue *)v9->_operationQueue setMaxConcurrentOperationCount:1];
  mEMORY[0x1E6970920] = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
  allowsExplicitContent = [mEMORY[0x1E6970920] allowsExplicitContent];

  playbackRequestEnvironment = [requestCopy playbackRequestEnvironment];
  [playbackRequestEnvironment delegationProperties];
  v25 = v24 = requestCopy;
  storeAccountID = [v25 storeAccountID];

  v107 = v24;
  if (storeAccountID)
  {
    v27 = v128 + 1;
    quot = storeAccountID;
    do
    {
      v29 = lldiv(quot, 10);
      quot = v29.quot;
      if (v29.rem >= 0)
      {
        LOBYTE(v30) = v29.rem;
      }

      else
      {
        v30 = -v29.rem;
      }

      *(v27 - 2) = v30 + 48;
      v31 = (v27 - 2);
      --v27;
    }

    while (v29.quot);
    v32 = v24;
    if (storeAccountID < 0)
    {
      *(v27 - 2) = 45;
      v31 = (v27 - 2);
    }

    v33 = CFStringCreateWithBytes(0, v31, v128 - v31, 0x8000100u, 0);
    personID = v9->_personID;
    v9->_personID = &v33->isa;

    if (allowsExplicitContent)
    {
      goto LABEL_12;
    }
  }

  else
  {
    playbackRequestEnvironment2 = [v24 playbackRequestEnvironment];
    userIdentity = [playbackRequestEnvironment2 userIdentity];

    defaultIdentityStore = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v48 = [defaultIdentityStore DSIDForUserIdentity:userIdentity outError:0];

    if (userIdentity && v48)
    {
      longLongValue = [v48 longLongValue];
      if (longLongValue)
      {
        v50 = longLongValue;
        v51 = v128 + 1;
        do
        {
          v52 = lldiv(longLongValue, 10);
          longLongValue = v52.quot;
          if (v52.rem >= 0)
          {
            LOBYTE(v53) = v52.rem;
          }

          else
          {
            v53 = -v52.rem;
          }

          *(v51 - 2) = v53 + 48;
          v54 = (v51 - 2);
          --v51;
        }

        while (v52.quot);
        if (v50 < 0)
        {
          *(v51 - 2) = 45;
          v54 = (v51 - 2);
        }

        v55 = CFStringCreateWithBytes(0, v54, v128 - v54, 0x8000100u, 0);
      }

      else
      {
        v55 = @"0";
      }

      v97 = v9->_personID;
      v9->_personID = &v55->isa;

      v98 = objc_alloc(MEMORY[0x1E6970570]);
      v99 = [MEMORY[0x1E69705E8] deviceMediaLibraryWithUserIdentity:userIdentity];
      v100 = [v98 initWithLibrary:v99];
      lod = v9->_lod;
      v9->_lod = v100;

      v102 = MEMORY[0x1E6970548];
      defaultIdentityStore2 = [MEMORY[0x1E69E4688] defaultIdentityStore];
      v104 = [v102 userMonitorWithUserIdentity:userIdentity fromUserIdentityStore:defaultIdentityStore2];

      if ([MEMORY[0x1E6970538] isCurrentDeviceValidHomeAccessory] && v104)
      {
        allowsExplicitContent = [v104 isExplicitSettingEnabled];
      }
    }

    else
    {
      objc_storeStrong(&v9->_personID, *MEMORY[0x1E69E4388]);
    }

    v32 = v24;
    if (allowsExplicitContent)
    {
      goto LABEL_12;
    }
  }

  v9->_objectDatabaseOptions = 1;
LABEL_12:
  v35 = MPCStoreModelPlaybackItemsRequestCopyGenericObjectPropertySet(v9->_request);
  requestPropertySet = v9->_requestPropertySet;
  v9->_requestPropertySet = v35;

  array = [MEMORY[0x1E695DF70] array];
  importResults = v9->_importResults;
  v9->_importResults = array;

  v39 = objc_alloc_init(MEMORY[0x1E6970818]);
  progressiveResults = v9->_progressiveResults;
  v9->_progressiveResults = v39;

  sectionedModelObjects = [(MPCModelStorePlaybackItemsRequest *)v9->_request sectionedModelObjects];

  if (sectionedModelObjects)
  {
    sectionedModelObjects2 = [(MPCModelStorePlaybackItemsRequest *)v9->_request sectionedModelObjects];
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke;
    v116[3] = &unk_1E8233AF0;
    v117 = v9;
    v118 = sectionedModelObjects2;
    v119 = a2;
    v43 = sectionedModelObjects2;
    [v43 enumerateSectionsUsingBlock:v116];

    v44 = v117;
  }

  else
  {
    v56 = objc_alloc(MEMORY[0x1E6970550]);
    identityKind = [MEMORY[0x1E6970690] identityKind];
    v58 = [v56 initWithSource:@"XL-Accumulator-AnonymousSection" modelKind:identityKind block:&__block_literal_global_56];

    v105 = v58;
    v44 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v58 modelObject:0 parentResult:0 piaTag:v9->_piaTag];
    [(MPMutableSectionedCollection *)v9->_progressiveResults appendSection:v44];
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    storeIDs = [(MPCModelStorePlaybackItemsRequest *)v9->_request storeIDs];
    v60 = [storeIDs countByEnumeratingWithState:&v112 objects:v123 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v113;
      do
      {
        for (i = 0; i != v61; ++i)
        {
          if (*v113 != v62)
          {
            objc_enumerationMutation(storeIDs);
          }

          v64 = _MPCCreateIdentifiersForOpaqueID(*(*(&v112 + 1) + 8 * i), v9->_personID, 0);
          universalStore = [v64 universalStore];
          universalCloudLibraryID = [universalStore universalCloudLibraryID];
          v67 = [universalCloudLibraryID length];

          if (v67)
          {
            v9->_storePersonalizationStyle = 1;
          }

          v68 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v64 modelObject:0 parentResult:v44 piaTag:v9->_piaTag];
          [(MPMutableSectionedCollection *)v9->_progressiveResults appendItem:v68];
        }

        v61 = [storeIDs countByEnumeratingWithState:&v112 objects:v123 count:16];
      }

      while (v61);
    }

    v32 = v107;
    v43 = v105;
  }

  playbackPrioritizedIndexPaths2 = [v32 playbackPrioritizedIndexPaths];
  if (![playbackPrioritizedIndexPaths2 count])
  {
    v70 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v122 = v70;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];

    playbackPrioritizedIndexPaths2 = v71;
  }

  v72 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    piaTag = v9->_piaTag;
    msv_compactDescription = [playbackPrioritizedIndexPaths2 msv_compactDescription];
    *buf = 67109378;
    v125 = piaTag;
    v126 = 2114;
    v127 = msv_compactDescription;
    _os_log_impl(&dword_1C5C61000, v72, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] initWithRequest: | processing request.playbackPrioritizedIndexPaths [] request.playbackPrioritizedIndexPaths=%{public}@", buf, 0x12u);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v75 = playbackPrioritizedIndexPaths2;
  v76 = [v75 countByEnumeratingWithState:&v108 objects:v121 count:16];
  if (v76)
  {
    v77 = v76;
    v78 = *v109;
    do
    {
      for (j = 0; j != v77; ++j)
      {
        if (*v109 != v78)
        {
          objc_enumerationMutation(v75);
        }

        v80 = *(*(&v108 + 1) + 8 * j);
        if ([v80 length] == 2)
        {
          msv_section = [v80 msv_section];
          if (msv_section < [(MPMutableSectionedCollection *)v9->_progressiveResults numberOfSections])
          {
            msv_item = [v80 msv_item];
            if (msv_item < -[MPMutableSectionedCollection numberOfItemsInSection:](v9->_progressiveResults, "numberOfItemsInSection:", [v80 msv_section]))
            {
              v83 = v9->_prioritizedProgressiveResults;
              v84 = -[MPMutableSectionedCollection sectionAtIndex:](v9->_progressiveResults, "sectionAtIndex:", [v80 section]);
              [(NSMutableArray *)v83 addObject:v84];

              v85 = v9->_prioritizedProgressiveResults;
              v86 = [(MPMutableSectionedCollection *)v9->_progressiveResults itemAtIndexPath:v80];
              [(NSMutableArray *)v85 addObject:v86];
            }
          }
        }
      }

      v77 = [v75 countByEnumeratingWithState:&v108 objects:v121 count:16];
    }

    while (v77);
  }

  v87 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
  {
    v88 = v9->_piaTag;
    msv_compactDescription2 = [(NSMutableArray *)v9->_prioritizedProgressiveResults msv_compactDescription];
    *buf = 67109378;
    v125 = v88;
    v126 = 2114;
    v127 = msv_compactDescription2;
    _os_log_impl(&dword_1C5C61000, v87, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] initWithRequest: | initialized prioritizedProgressiveResults [] prioritizedProgressiveResults=%{public}@", buf, 0x12u);
  }

  v90 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
  {
    v91 = v9->_piaTag;
    v92 = [(MPMutableSectionedCollection *)v9->_progressiveResults debugDescription];
    *buf = 67109378;
    v125 = v91;
    v126 = 2114;
    v127 = v92;
    _os_log_impl(&dword_1C5C61000, v90, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] initWithRequest: | initialized progressiveResults [] progressiveResults=%{public}@", buf, 0x12u);
  }

  [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)v9 _resolveProgressiveResults];
  v93 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
  if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
  {
    v94 = v9->_piaTag;
    v95 = [(MPMutableSectionedCollection *)v9->_progressiveResults debugDescription];
    *buf = 67109378;
    v125 = v94;
    v126 = 2114;
    v127 = v95;
    _os_log_impl(&dword_1C5C61000, v93, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] initWithRequest: | initial resolved progressiveResults [] progressiveResults=%{public}@", buf, 0x12u);
  }

  databaseCopy = v106;
  requestCopy = v107;
LABEL_57:

  return v9;
}

- (_MPCModelStorePlaybackItemsRequestAccumulator_Modern)initWithRequest:(id)request
{
  v4 = MEMORY[0x1E6970950];
  requestCopy = request;
  sharedServerObjectDatabase = [v4 sharedServerObjectDatabase];
  v7 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self initWithRequest:requestCopy serverObjectDatabase:sharedServerObjectDatabase];

  return v7;
}

@end