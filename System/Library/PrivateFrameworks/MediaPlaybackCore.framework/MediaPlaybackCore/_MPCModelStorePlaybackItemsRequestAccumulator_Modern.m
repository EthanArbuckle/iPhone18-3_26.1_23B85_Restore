@interface _MPCModelStorePlaybackItemsRequestAccumulator_Modern
- ($CAB49A11545F495E2926099730158FC3)_locked_requestableIDsWithShouldPop:(SEL)a3;
- (BOOL)_importSODPayloadData:(id)a3 userIdentity:(id)a4;
- (BOOL)_locked_populateSection:(id)a3 sectionIndex:(int64_t)a4;
- (BOOL)handleContainerPayload:(id)a3 itemPayload:(id)a4 userIdentity:(id)a5;
- (ICURLAggregatedPerformanceMetrics)performanceMetrics;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)_locked_accumulatorResult;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)accumulatorResult;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handlePaginatedResponse:(id)a3 error:(id)a4;
- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handleResponse:(id)a3 error:(id)a4;
- (MPSectionedCollection)unpersonalizedContentDescriptors;
- (_MPCModelStorePlaybackItemsRequestAccumulator_Modern)initWithRequest:(id)a3;
- (_MPCModelStorePlaybackItemsRequestAccumulator_Modern)initWithRequest:(id)a3 serverObjectDatabase:(id)a4;
- (id)_locked_popNextBatchOfPendingStoreIDs;
- (id)accumulatedResults;
- (id)newStoreItemMetadataRequest;
- (id)nextPaginatedStoreItemMetadataRequest;
- (int64_t)_locked_promoteToSection:(id)a3 indexPath:(id)a4;
- (int64_t)failedIDsCount;
- (int64_t)pendingIDsCount;
- (void)_locked_resolveProgressiveResults;
- (void)_resolveProgressiveResults;
@end

@implementation _MPCModelStorePlaybackItemsRequestAccumulator_Modern

- (BOOL)_locked_populateSection:(id)a3 sectionIndex:(int64_t)a4
{
  v88 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 0;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:853 description:{@"progressiveSectionsToPopulate contains non-section: %@", v7}];
  }

  v8 = [(_MPCAccumulatorProgressiveResult *)v7 resolvedIdentifiers];
  if (!v8)
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:855 description:@"Attempt to populate children of section without resolvedIdentifiers"];
  }

  v9 = [v8 modelKind];
  v10 = [v9 identityKind];
  v11 = [MEMORY[0x1E6970730] identityKind];
  v12 = v10;
  v13 = v11;
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
    *(&v84 + 2) = v7;
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
  v21 = v7;
  v63 = v21;
  v64 = self;
  v67 = buf;
  v68 = a4;
  v66 = &v69;
  [(MPServerObjectDatabase *)sod enumerateRelatedTokensForResult:v21 childKey:v17 block:v62];
  if (!*(v84 + 40))
  {
    v28 = [v21 inputIdentifiers];
    v31 = [v28 universalStore];
    if (![v31 subscriptionAdamID])
    {
      v32 = [v28 universalStore];
      if ([v32 purchasedAdamID])
      {
      }

      else
      {
        v54 = [v28 universalStore];
        v53 = [v54 universalCloudLibraryID];
        if ([v53 length])
        {
        }

        else
        {
          v52 = [v28 personalizedStore];
          v51 = [v52 cloudAlbumID];
          v50 = [v51 length] == 0;

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
        v57 = self;
        v59 = &v69;
        v60 = buf;
        v61 = a4;
        [(MPObjectDatabase *)lod enumerateRelatedTokensForResult:v34 childKey:v17 block:v55];
        if (*(v84 + 40))
        {
          v35 = self->_lod;
          v36 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
          [(MPObjectDatabase *)v35 updateIdentifiersForResults:v36 options:self->_objectDatabaseOptions];

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

        v31 = v56;
      }
    }

    goto LABEL_27;
  }

  v22 = self->_sod;
  v23 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
  [(MPServerObjectDatabase *)v22 updateIdentifiersForResults:v23 options:self->_objectDatabaseOptions];

  v24 = self->_lod;
  v25 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
  [(MPObjectDatabase *)v24 updateTokensForResults:v25];

  v26 = self->_lod;
  v27 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
  [(MPObjectDatabase *)v26 updateIdentifiersForResults:v27 options:self->_objectDatabaseOptions];

  v28 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = self->_piaTag;
    v30 = v70[3];
    *v77 = 67109634;
    v78 = v29;
    v79 = 2114;
    v80 = v21;
    v81 = 2048;
    v82 = v30;
    _os_log_impl(&dword_1C5C61000, v28, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] populateSection:sectionIndex: | populated section [SOD provided related tokens] progressiveSection=%{public}@ relatedProgressiveResults.count=%ld", v77, 0x1Cu);
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
        v45 = [(NSMutableArray *)self->_prioritizedProgressiveResults msv_compactDescription];
        *v77 = 67109378;
        v78 = v44;
        v79 = 2114;
        v80 = v45;
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

- (int64_t)_locked_promoteToSection:(id)a3 indexPath:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([v8 length] != 2)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:818 description:{@"Attempt to section promote non item at indexPath %@ item=%@", v8, v7}];
  }

  v9 = -[MPMutableSectionedCollection numberOfItemsInSection:](self->_progressiveResults, "numberOfItemsInSection:", [v8 section]);
  v10 = [v8 section];
  if ([v8 item])
  {
    [(MPMutableSectionedCollection *)self->_progressiveResults insertSection:v7 atIndex:++v10];
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      piaTag = self->_piaTag;
      *buf = 67109634;
      v26 = piaTag;
      v27 = 2114;
      v28 = v7;
      v29 = 2048;
      v30 = v10;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | inserting promoted section [item in middle of section] promotedSection=%{public}@ promotedSectionIndex=%ld", buf, 0x1Cu);
    }
  }

  else
  {
    v11 = [(MPMutableSectionedCollection *)self->_progressiveResults sectionAtIndex:v10];
    [(MPMutableSectionedCollection *)self->_progressiveResults replaceSectionAtIndex:v10 withObject:v7];
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = self->_piaTag;
      *buf = 67109634;
      v26 = v14;
      v27 = 2114;
      v28 = v11;
      v29 = 2114;
      v30 = v7;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | replacing section with promoted section [first item in section] replacedSection=%{public}@ promotedSection=%{public}@", buf, 0x1Cu);
    }
  }

  [(MPMutableSectionedCollection *)self->_progressiveResults removeItemAtIndexPath:v8];
  v15 = v9 + ~[v8 item];
  if (v15 >= 1)
  {
    v16 = objc_alloc(MEMORY[0x1E6970550]);
    v17 = [MEMORY[0x1E6970690] identityKind];
    v18 = [v16 initWithSource:@"XL-Accumulator-Split" modelKind:v17 block:&__block_literal_global_120];

    v19 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v18 modelObject:0 parentResult:0 piaTag:self->_piaTag];
    [(MPMutableSectionedCollection *)self->_progressiveResults insertSection:v19 atIndex:v10 + 1];
    for (i = 0; i != v15; ++i)
    {
      progressiveResults = self->_progressiveResults;
      v22 = [MEMORY[0x1E696AC88] indexPathForItem:i inSection:v10 + 1];
      [(MPMutableSectionedCollection *)progressiveResults moveItemFromIndexPath:v8 toIndexPath:v22];
    }
  }

  return v10;
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
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    v11 = v10;
    if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C5C61000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v5, "resolveProgressiveResults:sod", "", buf, 2u);
    }

    sod = self->_sod;
    v13 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
    [(MPServerObjectDatabase *)sod updateTokensForResults:v13];

    v14 = self->_sod;
    v15 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
    [(MPServerObjectDatabase *)v14 updateIdentifiersForResults:v15 options:self->_objectDatabaseOptions];

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
    v21 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
    [(MPObjectDatabase *)lod updateTokensForResults:v21];

    v22 = self->_lod;
    v23 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
    [(MPObjectDatabase *)v22 updateIdentifiersForResults:v23 options:self->_objectDatabaseOptions];

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
    v31 = v9;
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
  v5 = [(MPCModelStorePlaybackItemsRequest *)self->_request clientIdentifier];
  [v4 setClientIdentifier:v5];

  [v4 setReason:3];
  [v4 setTimeoutInterval:&unk_1F4599AD0];
  [v4 setRetryDelay:2.0];
  [v4 setAllowLocalEquivalencies:{-[MPCModelStorePlaybackItemsRequest allowLocalEquivalencies](self->_request, "allowLocalEquivalencies")}];
  [v4 setPersonalizationStyle:self->_storePersonalizationStyle];
  v6 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_popNextBatchOfPendingStoreIDs];
  [v4 setItemIdentifiers:v6];

  if (objc_opt_respondsToSelector())
  {
    [v4 setQualityOfService:33];
  }

  v7 = [(MPCModelStorePlaybackItemsRequest *)self->_request playbackRequestEnvironment];
  v8 = [v7 _createStoreRequestContext];

  v9 = [v8 clientInfo];
  [v4 setClientInfo:v9];

  v10 = [v8 delegatedIdentity];
  [v4 setDelegatedUserIdentity:v10];

  v11 = [v8 identity];
  [v4 setUserIdentity:v11];

  v12 = [v8 identityStore];
  [v4 setUserIdentityStore:v12];

  v13 = [(MPCModelStorePlaybackItemsRequest *)self->_request requestContextTag];
  [v4 mpc_setRequestContextTag:v13];

  v3[2](v3);

  return v4;
}

- (id)_locked_popNextBatchOfPendingStoreIDs
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_lock);
  [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_requestableIDsWithShouldPop:1];
  v3 = [0 array];
  if ([v3 count])
  {
    v4 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      piaTag = self->_piaTag;
      v6 = [v3 msv_compactDescription];
      *buf = 67109378;
      v13 = piaTag;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1C5C61000, v4, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] popNextBatchOfPendingStoreIDs | using prioritized IDs [] prioritizedIDs=[%@]", buf, 0x12u);
    }

    v7 = v3;
  }

  else
  {
    v7 = [0 array];
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_piaTag;
      v10 = [v7 msv_compactDescription];
      *buf = 67109378;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] popNextBatchOfPendingStoreIDs | using next batch [] nextBatchIDs=[%@]", buf, 0x12u);
    }
  }

  return v7;
}

- (id)newStoreItemMetadataRequest
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:686 description:@"newStoreItemMetadataRequest is not for the paginated operation"];

  return 0;
}

- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handlePaginatedResponse:(id)a3 error:(id)a4
{
  v124 = *MEMORY[0x1E69E9840];
  v96 = a3;
  v89 = a4;
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86___MPCModelStorePlaybackItemsRequestAccumulator_Modern_handlePaginatedResponse_error___block_invoke;
  aBlock[3] = &unk_1E8239298;
  v90 = self;
  aBlock[4] = self;
  v88 = _Block_copy(aBlock);
  v6 = [v89 msv_errorByUnwrappingDomain:*MEMORY[0x1E696A978] code:-1009];
  LOBYTE(a4) = v6 == 0;

  if (a4 & 1) != 0 || ([MEMORY[0x1E69E4428] sharedMonitor], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isRemoteServerReachable"), v7, (v8))
  {
    v93 = [v96 lastBatchItemIdentifiers];
    if ([v93 count])
    {
      v9 = [v96 lastBatchStoreItemDictionaries];
      v86 = [v9 count];
      v87 = v9;
      if ([v9 count])
      {
        v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          piaTag = self->_piaTag;
          v12 = [v87 count];
          v13 = [v93 count];
          v14 = [v93 msv_compactDescription];
          *buf = 67110146;
          v115 = piaTag;
          v116 = 2048;
          v117 = v96;
          v118 = 2048;
          v119 = v12;
          v120 = 2048;
          v121 = v13;
          v122 = 2112;
          v123 = v14;
          _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] handleResponse: | importing response [] response=%p storeDictionaryCount=%ld requestedIDs=(:%llu)[%@]", buf, 0x30u);
        }

        v15 = [objc_alloc(MEMORY[0x1E6970968]) initWithPayload:v87];
        v16 = self->_request;
        v17 = [(MPCModelStorePlaybackItemsRequest *)v16 playbackRequestEnvironment];
        v18 = [v17 delegationProperties];
        v19 = [v18 storeAccountID];

        if (v19)
        {
          v20 = MEMORY[0x1E69E4680];
          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v19];
          v22 = [v20 specificAccountWithDSID:v21];
          v23 = [v22 identityAllowingDelegation:1];
        }

        else
        {
          v21 = [(MPCModelStorePlaybackItemsRequest *)v16 playbackRequestEnvironment];
          v23 = [v21 userIdentity];
        }

        [v15 setUserIdentity:v23];
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
            v117 = v96;
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

      v44 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v93, "count")}];
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v45 = [(MPMutableSectionedCollection *)self->_progressiveResults allElementsEnumerator];
      v46 = [v45 countByEnumeratingWithState:&v105 objects:v113 count:16];
      if (v46)
      {
        v91 = v45;
        v92 = *v106;
        do
        {
          v47 = 0;
          v94 = v46;
          do
          {
            if (*v106 != v92)
            {
              objc_enumerationMutation(v45);
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
            v50 = v93;
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
                    v55 = [v96 storeItemMetadataForItemIdentifier:v54];
                    v56 = v54;
                    if (v55)
                    {
                      if (v48)
                      {
                        [*(v48 + 72) removeObject:v56];
                        v57 = *(v48 + 80);
                        if (!v57)
                        {
                          v58 = [MEMORY[0x1E695DF70] array];
                          v59 = *(v48 + 80);
                          *(v48 + 80) = v58;

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
                          v61 = [MEMORY[0x1E695DF70] array];
                          v62 = *(v48 + 88);
                          *(v48 + 88) = v61;

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
            v45 = v91;
          }

          while (v95 + 1 != v94);
          v63 = [v91 countByEnumeratingWithState:&v105 objects:v113 count:16];
          v46 = v63;
        }

        while (v63);
      }

      if (v86)
      {
        [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)v90 _locked_resolveProgressiveResults];
        v64 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = v90->_piaTag;
          v66 = [(MPMutableSectionedCollection *)v90->_progressiveResults debugDescription];
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
              v74 = v90->_piaTag;
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

            v77 = [v76 msv_compactDescription];
            v78 = [v75 msv_errorWithDomain:@"MPCError" code:78 debugDescription:{@"Failed to resolve entity via SOD after successful StorePlatform lookup: %@", v77}];
            v79 = v90->_accumulationError;
            v90->_accumulationError = v78;

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
      performanceMetrics = v90->_performanceMetrics;
      v82 = [v96 performanceMetrics];
      v83 = [v80 aggregatedMetricsFromAggregatedMetrics:performanceMetrics addingAggregatedMetrics:v82];
      v84 = v90->_performanceMetrics;
      v90->_performanceMetrics = v83;
    }

    v35 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)v90 _locked_accumulatorResult];
  }

  else
  {
    v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = self->_piaTag;
      v26 = [v96 lastBatchItemIdentifiers];
      v27 = [v26 msv_compactDescription];
      *buf = 67109378;
      v115 = v25;
      v116 = 2114;
      v117 = v27;
      _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] handleResponse: | marking remaining IDs as failed [EnvironmentMonitor.isRemoteServerReachable returned NO] failedIDs=%{public}@", buf, 0x12u);
    }

    v28 = MEMORY[0x1E69E4648];
    v29 = self->_performanceMetrics;
    v30 = [v96 performanceMetrics];
    v31 = [v28 aggregatedMetricsFromAggregatedMetrics:v29 addingAggregatedMetrics:v30];
    v32 = self->_performanceMetrics;
    self->_performanceMetrics = v31;

    v33 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:56 underlyingError:v89 debugDescription:@"EnvironmentMonitor.isRemoteServerReachable returned NO"];
    v34 = self->_accumulationError;
    self->_accumulationError = v33;

    v35 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _locked_accumulatorResult];
  }

  v88[2]();

  return v35;
}

- (BOOL)handleContainerPayload:(id)a3 itemPayload:(id)a4 userIdentity:(id)a5
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    piaTag = self->_piaTag;
    v16[0] = 67109632;
    v16[1] = piaTag;
    v17 = 2048;
    v18 = [v8 length];
    v19 = 2048;
    v20 = [v9 length];
    _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] handleContainerPayload:itemPayload: | importing payloads [] containerPayload.length=%{bytes}lu itemPayload.length=%{bytes}lu", v16, 0x1Cu);
  }

  v13 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _importSODPayloadData:v8 userIdentity:v10];
  v14 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _importSODPayloadData:v9 userIdentity:v10];

  if (v13 || v14)
  {
    [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self _resolveProgressiveResults];
  }

  return v13 || v14;
}

- (BOOL)_importSODPayloadData:(id)a3 userIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length])
  {
    v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v6 options:0 error:0];
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
      [v18 setUserIdentity:v7];
      v20 = [(MPServerObjectDatabase *)self->_sod importObjectsFromRequest:v19 options:0 error:0];
      v21 = [v20 error];
      v14 = v21 == 0;

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

- (MPCModelStorePlaybackItemsRequestAccumulatorResult)handleResponse:(id)a3 error:(id)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:573 description:@"newStoreItemMetadataRequest is not for the paginated operation"];

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

- ($CAB49A11545F495E2926099730158FC3)_locked_requestableIDsWithShouldPop:(SEL)a3
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
          v12 = [(MPMutableSectionedCollection *)self->_progressiveResults allSections];
          v13 = [v12 indexOfObject:v11];

          if (v13 == 0x7FFFFFFFFFFFFFFFLL || [(MPMutableSectionedCollection *)self->_progressiveResults numberOfItemsInSection:v13])
          {
            continue;
          }
        }

        v14 = v11;
        v15 = [(_MPCAccumulatorProgressiveResult *)v14 nextLoadableStoreID];
        v16 = v15;
        if (v4 && v15)
        {
          [(_MPCAccumulatorProgressiveResult *)v14 didStartLoadingStoreID:v15];
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
          v26 = [(_MPCAccumulatorProgressiveResult *)v25 nextLoadableStoreID];
          if ((v17 & (v26 != 0)) == 1)
          {
            [(_MPCAccumulatorProgressiveResult *)v25 didStartLoadingStoreID:v26];
          }

          if ([v26 length])
          {
            if ([v18 count] > 0x31)
            {

              v27 = 1;
              goto LABEL_36;
            }

            [v18 addObject:v26];
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
    v30 = [v36 array];
    v31 = [v30 msv_compactDescription];
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
    v50 = v31;
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:482 description:@"Can't produce unpersonalized content descriptors from modern PIA"];

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
  v8 = [(MPMutableSectionedCollection *)self->_progressiveResults numberOfSections];
  v9 = [(MPMutableSectionedCollection *)self->_progressiveResults totalItemCount];
  v87 = [v7 numberOfSections];
  v88 = v9;
  v86 = [v7 totalItemCount];
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
            v11 = 0;
            goto LABEL_72;
          }

LABEL_61:
          v11 = [MEMORY[0x1E696AD60] string];
          goto LABEL_62;
        }

LABEL_47:
        v11 = [MEMORY[0x1E696AD60] string];
        goto LABEL_48;
      }

LABEL_33:
      v11 = [MEMORY[0x1E696AD60] string];
      goto LABEL_34;
    }

    goto LABEL_19;
  }

  v11 = [MEMORY[0x1E696AD60] string];
  [v11 appendString:@"group:"];
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

  [v11 appendString:{v17, v86}];

  v18 = v10 + 10;
  if (v10[10])
  {
    if (v11)
    {
      [v11 appendString:{@", "}];
LABEL_20:
      [v11 appendString:@"sodLod:"];
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

      [v11 appendString:v26];

      goto LABEL_30;
    }

LABEL_19:
    v11 = [MEMORY[0x1E696AD60] string];
    goto LABEL_20;
  }

LABEL_30:
  if (!v10[8])
  {
    goto LABEL_44;
  }

  if (!v11)
  {
    goto LABEL_33;
  }

  [v11 appendString:{@", "}];
LABEL_34:
  [v11 appendString:@"sod:"];
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

  [v11 appendString:v32];

LABEL_44:
  v19 = v10 + 9;
  if (!v10[9])
  {
    goto LABEL_58;
  }

  if (!v11)
  {
    goto LABEL_47;
  }

  [v11 appendString:{@", "}];
LABEL_48:
  [v11 appendString:@"lod:"];
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

  [v11 appendString:v38];

LABEL_58:
  v39 = v10[11];
  v20 = v10 + 11;
  if (!v39)
  {
    goto LABEL_72;
  }

  if (!v11)
  {
    goto LABEL_61;
  }

  [v11 appendString:{@", "}];
LABEL_62:
  [v11 appendString:@"none:"];
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

  [v11 appendString:v45];

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
            v47 = 0;
            goto LABEL_143;
          }

LABEL_132:
          v47 = [MEMORY[0x1E696AD60] string];
          goto LABEL_133;
        }

LABEL_118:
        v47 = [MEMORY[0x1E696AD60] string];
        goto LABEL_119;
      }

LABEL_104:
      v47 = [MEMORY[0x1E696AD60] string];
      goto LABEL_105;
    }

    goto LABEL_90;
  }

  v47 = [MEMORY[0x1E696AD60] string];
  [v47 appendString:@"group:"];
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

  [v47 appendString:{v53, v86}];

  v54 = v46 + 10;
  if (v46[10])
  {
    if (v47)
    {
      [v47 appendString:{@", "}];
LABEL_91:
      [v47 appendString:@"sodLod:"];
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

      [v47 appendString:v62];

      goto LABEL_101;
    }

LABEL_90:
    v47 = [MEMORY[0x1E696AD60] string];
    goto LABEL_91;
  }

LABEL_101:
  if (!v46[8])
  {
    goto LABEL_115;
  }

  if (!v47)
  {
    goto LABEL_104;
  }

  [v47 appendString:{@", "}];
LABEL_105:
  [v47 appendString:@"sod:"];
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

  [v47 appendString:v68];

LABEL_115:
  v55 = v46 + 9;
  if (!v46[9])
  {
    goto LABEL_129;
  }

  if (!v47)
  {
    goto LABEL_118;
  }

  [v47 appendString:{@", "}];
LABEL_119:
  [v47 appendString:@"lod:"];
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

  [v47 appendString:v74];

LABEL_129:
  v75 = v46[11];
  v56 = v46 + 11;
  if (!v75)
  {
    goto LABEL_143;
  }

  if (!v47)
  {
    goto LABEL_132;
  }

  [v47 appendString:{@", "}];
LABEL_133:
  [v47 appendString:@"none:"];
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

  [v47 appendString:v81];

LABEL_143:
  v82 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    piaTag = self->_piaTag;
    *buf = 67110658;
    v110 = piaTag;
    v111 = 2048;
    v112 = v8;
    v113 = 2048;
    v114 = v87;
    v115 = 2114;
    v116 = v11;
    v117 = 2048;
    v118 = v88;
    v119 = 2048;
    v120 = v86;
    v121 = 2114;
    v122 = v47;
    _os_log_impl(&dword_1C5C61000, v82, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] accumulatedResults | stats [] totalSections=%ld/%ld (%{public}@) | totalItems=%ld/%ld (%{public}@)", buf, 0x44u);
  }

  v84 = [[MPCModelStorePlaybackItemsRequestAccumulation alloc] initWithProgressiveResults:v7 properties:self->_requestPropertySet libraryObjectDatabase:self->_lod performanceMetrics:self->_performanceMetrics];
  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v101, 8);

  v4[2](v4);

  return v84;
}

- (_MPCModelStorePlaybackItemsRequestAccumulator_Modern)initWithRequest:(id)a3 serverObjectDatabase:(id)a4
{
  v128[0] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v120.receiver = self;
  v120.super_class = _MPCModelStorePlaybackItemsRequestAccumulator_Modern;
  v9 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)&v120 init];
  if (!v9)
  {
    goto LABEL_57;
  }

  v106 = v8;
  v10 = [v7 copy];
  request = v9->_request;
  v9->_request = v10;

  objc_storeStrong(&v9->_sod, a4);
  v9->_lock._os_unfair_lock_opaque = 0;
  v12 = MSVNanoIDCreateWithCharacters();
  v13 = [v12 UTF8String];
  v14 = (v13[1] << 16) | (*v13 << 24) | (v13[2] << 8) | v13[3];

  v9->_piaTag = v14;
  v15 = MEMORY[0x1E695DF70];
  v16 = [v7 playbackPrioritizedIndexPaths];
  v17 = [v15 arrayWithCapacity:{objc_msgSend(v16, "count")}];
  prioritizedProgressiveResults = v9->_prioritizedProgressiveResults;
  v9->_prioritizedProgressiveResults = v17;

  v19 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  operationQueue = v9->_operationQueue;
  v9->_operationQueue = v19;

  [(NSOperationQueue *)v9->_operationQueue setQualityOfService:25];
  [(NSOperationQueue *)v9->_operationQueue setMaxConcurrentOperationCount:1];
  v21 = [MEMORY[0x1E6970920] sharedRestrictionsMonitor];
  v22 = [v21 allowsExplicitContent];

  v23 = [v7 playbackRequestEnvironment];
  [v23 delegationProperties];
  v25 = v24 = v7;
  v26 = [v25 storeAccountID];

  v107 = v24;
  if (v26)
  {
    v27 = v128 + 1;
    quot = v26;
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
    if (v26 < 0)
    {
      *(v27 - 2) = 45;
      v31 = (v27 - 2);
    }

    v33 = CFStringCreateWithBytes(0, v31, v128 - v31, 0x8000100u, 0);
    personID = v9->_personID;
    v9->_personID = &v33->isa;

    if (v22)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v45 = [v24 playbackRequestEnvironment];
    v46 = [v45 userIdentity];

    v47 = [MEMORY[0x1E69E4688] defaultIdentityStore];
    v48 = [v47 DSIDForUserIdentity:v46 outError:0];

    if (v46 && v48)
    {
      v49 = [v48 longLongValue];
      if (v49)
      {
        v50 = v49;
        v51 = v128 + 1;
        do
        {
          v52 = lldiv(v49, 10);
          v49 = v52.quot;
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
      v99 = [MEMORY[0x1E69705E8] deviceMediaLibraryWithUserIdentity:v46];
      v100 = [v98 initWithLibrary:v99];
      lod = v9->_lod;
      v9->_lod = v100;

      v102 = MEMORY[0x1E6970548];
      v103 = [MEMORY[0x1E69E4688] defaultIdentityStore];
      v104 = [v102 userMonitorWithUserIdentity:v46 fromUserIdentityStore:v103];

      if ([MEMORY[0x1E6970538] isCurrentDeviceValidHomeAccessory] && v104)
      {
        v22 = [v104 isExplicitSettingEnabled];
      }
    }

    else
    {
      objc_storeStrong(&v9->_personID, *MEMORY[0x1E69E4388]);
    }

    v32 = v24;
    if (v22)
    {
      goto LABEL_12;
    }
  }

  v9->_objectDatabaseOptions = 1;
LABEL_12:
  v35 = MPCStoreModelPlaybackItemsRequestCopyGenericObjectPropertySet(v9->_request);
  requestPropertySet = v9->_requestPropertySet;
  v9->_requestPropertySet = v35;

  v37 = [MEMORY[0x1E695DF70] array];
  importResults = v9->_importResults;
  v9->_importResults = v37;

  v39 = objc_alloc_init(MEMORY[0x1E6970818]);
  progressiveResults = v9->_progressiveResults;
  v9->_progressiveResults = v39;

  v41 = [(MPCModelStorePlaybackItemsRequest *)v9->_request sectionedModelObjects];

  if (v41)
  {
    v42 = [(MPCModelStorePlaybackItemsRequest *)v9->_request sectionedModelObjects];
    v116[0] = MEMORY[0x1E69E9820];
    v116[1] = 3221225472;
    v116[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke;
    v116[3] = &unk_1E8233AF0;
    v117 = v9;
    v118 = v42;
    v119 = a2;
    v43 = v42;
    [v43 enumerateSectionsUsingBlock:v116];

    v44 = v117;
  }

  else
  {
    v56 = objc_alloc(MEMORY[0x1E6970550]);
    v57 = [MEMORY[0x1E6970690] identityKind];
    v58 = [v56 initWithSource:@"XL-Accumulator-AnonymousSection" modelKind:v57 block:&__block_literal_global_56];

    v105 = v58;
    v44 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v58 modelObject:0 parentResult:0 piaTag:v9->_piaTag];
    [(MPMutableSectionedCollection *)v9->_progressiveResults appendSection:v44];
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v59 = [(MPCModelStorePlaybackItemsRequest *)v9->_request storeIDs];
    v60 = [v59 countByEnumeratingWithState:&v112 objects:v123 count:16];
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
            objc_enumerationMutation(v59);
          }

          v64 = _MPCCreateIdentifiersForOpaqueID(*(*(&v112 + 1) + 8 * i), v9->_personID, 0);
          v65 = [v64 universalStore];
          v66 = [v65 universalCloudLibraryID];
          v67 = [v66 length];

          if (v67)
          {
            v9->_storePersonalizationStyle = 1;
          }

          v68 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v64 modelObject:0 parentResult:v44 piaTag:v9->_piaTag];
          [(MPMutableSectionedCollection *)v9->_progressiveResults appendItem:v68];
        }

        v61 = [v59 countByEnumeratingWithState:&v112 objects:v123 count:16];
      }

      while (v61);
    }

    v32 = v107;
    v43 = v105;
  }

  v69 = [v32 playbackPrioritizedIndexPaths];
  if (![v69 count])
  {
    v70 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    v122 = v70;
    v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v122 count:1];

    v69 = v71;
  }

  v72 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
  {
    piaTag = v9->_piaTag;
    v74 = [v69 msv_compactDescription];
    *buf = 67109378;
    v125 = piaTag;
    v126 = 2114;
    v127 = v74;
    _os_log_impl(&dword_1C5C61000, v72, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] initWithRequest: | processing request.playbackPrioritizedIndexPaths [] request.playbackPrioritizedIndexPaths=%{public}@", buf, 0x12u);
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v75 = v69;
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
          v81 = [v80 msv_section];
          if (v81 < [(MPMutableSectionedCollection *)v9->_progressiveResults numberOfSections])
          {
            v82 = [v80 msv_item];
            if (v82 < -[MPMutableSectionedCollection numberOfItemsInSection:](v9->_progressiveResults, "numberOfItemsInSection:", [v80 msv_section]))
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
    v89 = [(NSMutableArray *)v9->_prioritizedProgressiveResults msv_compactDescription];
    *buf = 67109378;
    v125 = v88;
    v126 = 2114;
    v127 = v89;
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

  v8 = v106;
  v7 = v107;
LABEL_57:

  return v9;
}

- (_MPCModelStorePlaybackItemsRequestAccumulator_Modern)initWithRequest:(id)a3
{
  v4 = MEMORY[0x1E6970950];
  v5 = a3;
  v6 = [v4 sharedServerObjectDatabase];
  v7 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Modern *)self initWithRequest:v5 serverObjectDatabase:v6];

  return v7;
}

@end