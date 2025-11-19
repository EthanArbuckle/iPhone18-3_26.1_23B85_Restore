@interface MPCModelStorePlaybackItemsRequestAccumulator
@end

@implementation MPCModelStorePlaybackItemsRequestAccumulator

id __114___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__locked_resolveContentDescriptorsUsingServerObjectDatabase__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = v6[4];
  v26 = 0;
  v8 = [v6 _serverObjectFromPlaceholderContentDescriptor:v5 propertySet:v7 error:&v26];
  v9 = v26;
  if (v9)
  {
    v10 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:69 underlyingError:v9 debugDescription:{@"Found non-playable section: %@", v5}];
    v11 = *(a1 + 32);
    v12 = *(v11 + 136);
    *(v11 + 136) = v10;

    v13 = v5;
LABEL_3:

    goto LABEL_4;
  }

  if (v8)
  {
    v15 = [v8 type];
    if (v15 > 0xD || ((1 << v15) & 0x2014) == 0)
    {
      v13 = [MEMORY[0x1E696AFB0] UUID];
      v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 32);
        *buf = 134218498;
        v28 = v25;
        v29 = 2114;
        v30 = v13;
        v31 = 2114;
        v32 = v8;
        _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_ERROR, "[PIA] %p using UUID [section object is not a section type] uuid=%{public}@ section=%{public}@", buf, 0x20u);
      }

      goto LABEL_3;
    }

    v17 = *(a1 + 32);
    v18 = [MEMORY[0x1E696AC88] indexPathWithIndex:a3];
    v13 = [v17 _locked_mergedObjectWithRequestedObjectIfNeeded:v8 forIndexPath:v18];

    if (![*(*(a1 + 32) + 72) numberOfItemsInSection:a3])
    {
      [*(a1 + 40) addIndex:a3];
      v19 = *(a1 + 32);
      v20 = v19[7];
      v21 = [v13 identifiers];
      v22 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)v19 _locked_requestIdentifierForIdentifierSet:v21];
      [v20 addObject:v22];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (![*(*(a1 + 32) + 72) numberOfItemsInSection:a3])
      {
        [*(a1 + 40) addIndex:a3];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)*(a1 + 32) _locked_requestIdentifierForIdentifierSet:v5];
        [*(*(a1 + 32) + 56) addObject:v23];
      }
    }

    v13 = v5;
  }

LABEL_4:

  return v13;
}

id __114___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__locked_resolveContentDescriptorsUsingServerObjectDatabase__block_invoke_92(uint64_t a1, void *a2, void *a3)
{
  v36[6] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v7[4];
  v35 = 0;
  v9 = [v7 _serverObjectFromPlaceholderContentDescriptor:v5 propertySet:v8 error:&v35];
  v10 = v35;
  if (v10)
  {
    v11 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCError" code:69 underlyingError:v10 debugDescription:{@"Found non-playable item: %@", v5}];
    v12 = *(a1 + 32);
    v13 = *(v12 + 136);
    *(v12 + 136) = v11;

    v14 = v5;
    v15 = v9;
    goto LABEL_18;
  }

  v15 = [*(a1 + 32) _locked_mergedObjectWithRequestedObjectIfNeeded:v9 forIndexPath:v6];

  if (!v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_16:
      v18 = v5;
      goto LABEL_17;
    }

    v17 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)*(a1 + 32) _locked_requestIdentifierForIdentifierSet:v5];
    [*(*(a1 + 32) + 56) addObject:v17];
LABEL_15:

    goto LABEL_16;
  }

  v16 = [v15 type];
  if (v16 > 9)
  {
LABEL_12:
    v19 = dispatch_semaphore_create(0);
    v30 = MEMORY[0x1E69B13D8];
    v29 = *MEMORY[0x1E69B1340];
    v32 = [*(*(a1 + 32) + 72) description];
    v36[0] = v32;
    v31 = [v6 description];
    v36[1] = v31;
    v20 = [v15 description];
    v21 = v20;
    v22 = @"null";
    if (v20)
    {
      v22 = v20;
    }

    v36[2] = v22;
    v28 = [v5 description];
    v36[3] = v28;
    v27 = [v15 description];
    v36[4] = v27;
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v15, "type")}];
    v36[5] = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:6];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __114___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__locked_resolveContentDescriptorsUsingServerObjectDatabase__block_invoke_2;
    v33[3] = &unk_1E8239298;
    v34 = v19;
    v17 = v19;
    [v30 snapshotWithDomain:v29 type:@"Bug" subType:@"UnplayableObjectInSOD" context:@"progressiveContentDescriptors" triggerThresholdValues:0 events:v24 completion:v33];

    dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPCModelStorePlaybackItemsRequestAccumulator_Legacy.m" lineNumber:955 description:{@"Found unplayable object in SOD: %@", v15}];

    goto LABEL_15;
  }

  if (((1 << v16) & 0x260) == 0)
  {
    if (((1 << v16) & 0x14) != 0)
    {
      [*(a1 + 40) addObject:v6];
      goto LABEL_11;
    }

    if (v16 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_11:
  v18 = v15;
  v15 = v18;
LABEL_17:
  v14 = v18;
LABEL_18:

  return v14;
}

void __114___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__locked_resolveContentDescriptorsUsingServerObjectDatabase__block_invoke_3(uint64_t a1, uint64_t a2)
{
  v60[4] = *MEMORY[0x1E69E9840];
  v3 = [*(*(a1 + 32) + 72) sectionAtIndex:a2];
  objc_opt_class();
  v54 = v3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MPCModelStorePlaybackItemsRequestAccumulator_Legacy.m" lineNumber:1019 description:{@"Attempting to populate items for non model object: %@", v54}];
  }

  v4 = [v54 type];
  v5 = MEMORY[0x1E696FBE8];
  if (v4 != 4)
  {
    v5 = MEMORY[0x1E696FBE0];
  }

  v6 = *v5;
  v7 = [v54 identifiers];
  v50 = [v7 versionHash];
  v51 = v7;
  v52 = v6;
  v8 = [*(*(a1 + 32) + 16) relatedIdentifierSetsForParentIdentifierSet:v7 parentVersionHash:? childKey:?];
  if ([v8 count])
  {
    v9 = *(a1 + 32);
    v10 = [v54 identifiers];
    v11 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)v9 _locked_requestIdentifierForIdentifierSet:v10];

    [*(*(a1 + 32) + 56) removeObject:v11];
  }

  if ([v8 count] >= 1)
  {
    v12 = 0;
    v49 = *MEMORY[0x1E69B1340];
    v13 = 0x1E696A000uLL;
    v14 = 0x1E696A000uLL;
    v15 = @"MPCError";
    v53 = v8;
    do
    {
      v16 = [*(v13 + 3208) indexPathForItem:v12 inSection:a2];
      v17 = [v8 objectAtIndexedSubscript:v12];
      v18 = *(a1 + 32);
      v19 = *(v18 + 16);
      v20 = *(v18 + 32);
      v59 = 0;
      v21 = [v19 modelObjectMatchingIdentifierSet:v17 propertySet:v20 error:&v59];
      v22 = v59;
      if (v22)
      {
        v23 = [*(v14 + 3008) msv_errorWithDomain:v15 code:69 underlyingError:v22 debugDescription:{@"Found non-playable item: %@", v17}];
        v24 = *(a1 + 32);
        v25 = *(v24 + 136);
        *(v24 + 136) = v23;
      }

      else if (v21)
      {
        v26 = [v21 type];
        if (v26 > 9 || ((1 << v26) & 0x242) == 0)
        {
          v32 = *(*(a1 + 32) + 16);
          v58 = 0;
          v33 = [v32 payloadDataForIdentifierSet:v17 outError:&v58];
          v34 = v58;
          v47 = v33;
          v48 = v34;
          if (v34)
          {
            v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v34];
          }

          else
          {
            v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v33 encoding:4];
          }

          v36 = v35;
          v46 = v35;
          v37 = dispatch_semaphore_create(0);
          v43 = MEMORY[0x1E69B13D8];
          v45 = [v8 description];
          v60[0] = v45;
          v44 = [v17 description];
          v60[1] = v44;
          v38 = [v21 description];
          v60[2] = v38;
          v60[3] = v36;
          v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:4];
          v56[0] = MEMORY[0x1E69E9820];
          v56[1] = 3221225472;
          v56[2] = __114___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__locked_resolveContentDescriptorsUsingServerObjectDatabase__block_invoke_4;
          v56[3] = &unk_1E8239298;
          v57 = v37;
          v40 = v37;
          [v43 snapshotWithDomain:v49 type:@"Bug" subType:@"UnplayableObjectInSOD" context:@"childIdentifierSets" triggerThresholdValues:0 events:v39 completion:v56];

          dispatch_semaphore_wait(v40, 0xFFFFFFFFFFFFFFFFLL);
          v41 = [MEMORY[0x1E696AAA8] currentHandler];
          [v41 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MPCModelStorePlaybackItemsRequestAccumulator_Legacy.m" lineNumber:1064 description:{@"Found unplayable object in SOD: %@", v21}];

          v13 = 0x1E696A000;
          v14 = 0x1E696A000;
          v15 = @"MPCError";
        }

        else
        {
          [*(*(a1 + 32) + 72) insertItem:v21 atIndexPath:v16];
        }
      }

      else
      {
        [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)*(a1 + 32) _locked_requestIdentifierForIdentifierSet:v17];
        v28 = v15;
        v29 = v14;
        v31 = v30 = v13;
        [*(*(a1 + 32) + 72) insertItem:v17 atIndexPath:v16];
        [*(*(a1 + 32) + 56) addObject:v31];

        v13 = v30;
        v14 = v29;
        v15 = v28;
        v8 = v53;
      }

      if (v22)
      {
        break;
      }

      ++v12;
    }

    while (v12 < [v8 count]);
  }
}

void __98___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__playlistEntryForObject_containerUniqueID___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) type];
  switch(v3)
  {
    case 9:
      v4 = [*(a1 + 32) movie];
      [v5 setMovie:v4];
      break;
    case 6:
      v4 = [*(a1 + 32) tvEpisode];
      [v5 setTvEpisode:v4];
      break;
    case 1:
      v4 = [*(a1 + 32) song];
      [v5 setSong:v4];
      break;
    default:
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"MPCModelStorePlaybackItemsRequestAccumulator_Legacy.m" lineNumber:855 description:{@"Unknown playlist entry: %@", *(a1 + 32)}];
      break;
  }
}

void __83___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_newStoreItemMetadataRequest__block_invoke_76(uint64_t a1, void *a2)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)*(a1 + 32) _locked_requestIdentifierForIdentifierSet:v10];
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v3 = 0;
      goto LABEL_9;
    }

    v4 = *(a1 + 32);
    v5 = [v10 identifiers];
    v3 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)v4 _locked_requestIdentifierForIdentifierSet:v5];

    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v6 = [*(a1 + 40) indexOfObject:v3];
  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v6;
    v8 = *(a1 + 48);
    v9 = [*(a1 + 40) objectAtIndex:v6];
    [v8 addObject:v9];

    [*(a1 + 40) removeObjectAtIndex:v7];
  }

LABEL_9:
}

void __81___MPCModelStorePlaybackItemsRequestAccumulator_Legacy__locked_accumulatorResult__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v13 = a2;
  v6 = [*(*(a1 + 32) + 72) sectionAtIndex:{objc_msgSend(v13, "section")}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    goto LABEL_3;
  }

  v10 = v6;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

LABEL_11:
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
    goto LABEL_12;
  }

  v11 = [v10 identifiers];
  v12 = [v11 isPlaceholder];

  if (v12)
  {
    goto LABEL_11;
  }

LABEL_3:
  v7 = [*(*(a1 + 32) + 72) itemAtIndexPath:v13];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 identifiers], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isPlaceholder"), v8, v9))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_12:
}

void __88___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_unpersonalizedContentDescriptors__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    v6 = *(a1 + 32);
    if (*(v6 + 129) != 1 || (v7 = MEMORY[0x1E6970670], [*(v6 + 8) sectionedModelObjects], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "sectionAtIndex:", a3), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "genericObjectWithModelObject:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "copyWithPropertySet:", *(*(a1 + 32) + 32)), v10, v9, v8, !v11))
    {
      v12 = objc_alloc(MEMORY[0x1E6970670]);
      v13 = [MEMORY[0x1E6970550] emptyIdentifierSet];
      v11 = [v12 initWithIdentifiers:v13 block:&__block_literal_global_32];
LABEL_8:
    }
  }

  else
  {
    objc_opt_class();
    v11 = v5;
    if (objc_opt_isKindOfClass())
    {
      v14 = *(a1 + 32);
      v11 = v5;
      if (*(v14 + 129) == 1)
      {
        v15 = [*(v14 + 8) sectionedModelObjects];
        v13 = [v15 sectionAtIndex:a3];

        v16 = [v13 identifiers];
        v17 = [v16 copyWithSource:@"Accumulator-SectionPlaceholder" block:&__block_literal_global_37];
        v18 = [v13 copyWithIdentifiers:v17];

        v19 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v18];
        v11 = [v19 copyWithPropertySet:*(*(a1 + 32) + 32)];

        goto LABEL_8;
      }
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = [v11 copyWithPropertySet:*(*(a1 + 32) + 32)];

    v21 = [objc_alloc(MEMORY[0x1E69709D8]) initWithModel:v20 personalizationStyle:*(*(a1 + 32) + 96)];
    [*(a1 + 40) appendSection:v21];
    v22 = [v20 type];
    v23 = v22 == 4;
    if (v22 == 4)
    {
      v24 = [MEMORY[0x1E696AB50] setWithCapacity:{objc_msgSend(*(*(a1 + 32) + 72), "numberOfItemsInSection:", a3)}];
    }

    else
    {
      v24 = 0;
    }

    v26 = *(a1 + 32);
    v25 = *(a1 + 40);
    v27 = *(v26 + 72);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __88___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_unpersonalizedContentDescriptors__block_invoke_5;
    v29[3] = &unk_1E8233940;
    v32 = a3;
    v33 = v23;
    v29[4] = v26;
    v30 = v24;
    v31 = v25;
    v28 = v24;
    [v27 enumerateItemsInSectionAtIndex:a3 usingBlock:v29];

    v11 = v20;
  }
}

void __88___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_unpersonalizedContentDescriptors__block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a2;
  objc_opt_class();
  v6 = v5;
  if (objc_opt_isKindOfClass())
  {
    v7 = [(_MPCModelStorePlaybackItemsRequestAccumulator_Legacy *)*(a1 + 32) _locked_requestIdentifierForIdentifierSet:v5];
    if ([*(*(a1 + 32) + 48) containsObject:v7])
    {
      v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 32);
        *buf = 134218242;
        *&buf[4] = v9;
        *&buf[12] = 2114;
        *&buf[14] = v7;
        _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[PIA] %p skipping item [store lookup failed] itemID=%{public}@", buf, 0x16u);
      }

      v6 = v5;
LABEL_40:

      goto LABEL_41;
    }

    v10 = *(a1 + 32);
    v11 = *(v10 + 8);
    if (*(v10 + 129) == 1)
    {
      v12 = [v11 sectionedModelObjects];
      v13 = [MEMORY[0x1E696AC88] indexPathForItem:a3 inSection:*(a1 + 56)];
      v14 = [v12 itemAtIndexPath:v13];

      v15 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v14];
      v16 = [v14 identifiers];
      v17 = [v16 copyWithSource:@"Accumulator-ItemPlaceholder" block:&__block_literal_global_46];
      v6 = [v15 copyWithIdentifiers:v17 propertySet:*(*(a1 + 32) + 32)];
    }

    else
    {
      v6 = v5;
      if (![v11 supportsPaginatedResults])
      {
LABEL_11:

        goto LABEL_12;
      }

      v6 = [objc_alloc(MEMORY[0x1E6970670]) initWithIdentifiers:v5];
      v14 = v5;
    }

    goto LABEL_11;
  }

LABEL_12:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = *(a1 + 32);
    v19 = *(v18 + 128);
    v20 = *(v18 + 96);
    v21 = *(v18 + 104);
    v6 = v6;
    v22 = [v6 type];
    IsRestricted = 0;
    v24 = 0;
    v25 = 1;
    if (v22 > 5)
    {
      if (v22 == 6)
      {
        v30 = [v6 tvEpisode];
        IsRestricted = MPModelTVEpisodeIsRestricted();
        v31 = [v30 storeAsset];
      }

      else
      {
        if (v22 != 9)
        {
          goto LABEL_30;
        }

        v30 = [v6 movie];
        IsRestricted = MPModelMovieIsRestricted();
        v31 = [v30 storeAsset];
      }

      v24 = v31;

      v25 = 0;
LABEL_30:
      if ([v24 endpointType])
      {
        v34 = v20;
      }

      else
      {
        v34 = v21;
      }

      if ((v25 | IsRestricted ^ 1))
      {
        if (*(a1 + 64) == 1 && [v6 type] != 5)
        {
          v35 = v6;
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          *&buf[24] = 8;
          v63 = 0;
          v64 = &v63;
          v65 = 0x2020000000;
          LOBYTE(v66) = 0;
          v57 = 0;
          v58 = &v57;
          v59 = 0x2020000000;
          v60 = 3;
          v36 = MEMORY[0x1E69706F8];
          v43 = MEMORY[0x1E69E9820];
          v44 = 3221225472;
          v45 = __88___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_unpersonalizedContentDescriptors__block_invoke_2_48;
          v46 = &unk_1E8234550;
          v37 = v35;
          v47 = v37;
          v48 = buf;
          v49 = &v63;
          v50 = &v57;
          [v36 performWithoutEnforcement:&v43];
          v38 = [v37 identifiers];
          v39 = MPContainerUniqueIDPrefix();

          v40 = MEMORY[0x1C6954980](v39, [*(a1 + 40) countForObject:v39]);
          [*(a1 + 40) addObject:v39];
          v6 = [*(a1 + 32) _playlistEntryForObject:v37 containerUniqueID:v40];

          _Block_object_dispose(&v57, 8);
          _Block_object_dispose(&v63, 8);
          _Block_object_dispose(buf, 8);
        }

        v7 = [objc_alloc(MEMORY[0x1E69709D8]) initWithModel:v6 personalizationStyle:v34];
        [*(a1 + 48) appendItem:v7];
      }

      else
      {
        v7 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback_Oversize");
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v41 = *(a1 + 32);
          v42 = *(v41 + 128);
          *buf = 134218498;
          *&buf[4] = v41;
          *&buf[12] = 1024;
          *&buf[14] = v42;
          *&buf[18] = 2114;
          *&buf[20] = v6;
          _os_log_impl(&dword_1C5C61000, v7, OS_LOG_TYPE_DEFAULT, "[PIA] %p skipping item [not eligible] allowExplicitContent=%{BOOL}u item=%{public}@ ", buf, 0x1Cu);
        }
      }

      goto LABEL_40;
    }

    if (v22 == 1)
    {
      v32 = [v6 song];
      IsRestricted = [v32 isExplicitSong];
      v24 = [v32 storeAsset];

      v25 = v19;
      goto LABEL_30;
    }

    if (v22 != 5)
    {
      goto LABEL_30;
    }

    v26 = [v6 playlistEntry];
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__11236;
    v67 = __Block_byref_object_dispose__11237;
    v68 = 0;
    v57 = 0;
    v58 = &v57;
    v59 = 0x3032000000;
    v60 = __Block_byref_object_copy__11236;
    v61 = __Block_byref_object_dispose__11237;
    v62 = 0;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy__11236;
    v55 = __Block_byref_object_dispose__11237;
    v56 = 0;
    v27 = MEMORY[0x1E69706F8];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___MPCPIAEligibilityForItem_block_invoke;
    *&buf[24] = &unk_1E8234550;
    v71 = &v63;
    v28 = v26;
    v70 = v28;
    v72 = &v57;
    v73 = &v51;
    [v27 performWithoutEnforcement:buf];
    v29 = v64[5];
    if (v29)
    {
      IsRestricted = [v29 isExplicitSong];
      v24 = [v64[5] storeAsset];
      v25 = v19;
    }

    else
    {
      if (v58[5])
      {
        IsRestricted = MPModelTVEpisodeIsRestricted();
        v33 = [v58[5] storeAsset];
      }

      else
      {
        if (!v52[5])
        {
          v24 = 0;
          IsRestricted = 0;
          v25 = 1;
          goto LABEL_29;
        }

        IsRestricted = MPModelMovieIsRestricted();
        v33 = [v52[5] storeAsset];
      }

      v24 = v33;
      v25 = 0;
    }

LABEL_29:

    _Block_object_dispose(&v51, 8);
    _Block_object_dispose(&v57, 8);

    _Block_object_dispose(&v63, 8);
    goto LABEL_30;
  }

LABEL_41:
}

void __88___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_unpersonalizedContentDescriptors__block_invoke_2_48(uint64_t a1)
{
  v2 = [*(a1 + 32) type];
  switch(v2)
  {
    case 9:
      v7 = [*(a1 + 32) movie];
      *(*(*(a1 + 48) + 8) + 24) = [v7 isLibraryAdded];

      v5 = [*(a1 + 32) movie];
      break;
    case 6:
      v6 = [*(a1 + 32) tvEpisode];
      *(*(*(a1 + 48) + 8) + 24) = [v6 isLibraryAdded];

      v5 = [*(a1 + 32) tvEpisode];
      break;
    case 1:
      v3 = [*(a1 + 32) song];
      *(*(*(a1 + 40) + 8) + 24) = [v3 cloudStatus];

      v4 = [*(a1 + 32) song];
      *(*(*(a1 + 48) + 8) + 24) = [v4 isLibraryAdded];

      v5 = [*(a1 + 32) song];
      break;
    default:
      return;
  }

  v9 = v5;
  v8 = [v5 storeAsset];
  *(*(*(a1 + 56) + 8) + 24) = [v8 endpointType];
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_initWithRequest_serverObjectDatabase___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [v5 identifiers];
  v7 = [v6 universalStore];
  v8 = [v7 universalCloudLibraryID];
  v9 = [v8 length];

  if (v9)
  {
    *(*(a1 + 32) + 112) = 1;
  }

  v10 = [v5 identifiers];
  v11 = [v10 modelKind];
  v12 = [v11 identityKind];
  v13 = [MEMORY[0x1E6970690] identityKind];
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    v15 = [v12 isEqual:v13];

    if ((v15 & 1) == 0)
    {
      v16 = [v5 identifiers];
      v17 = [v16 prioritizedStoreStringIdentifiersForPersonID:*(*(a1 + 32) + 24)];

      if ([v17 count])
      {
        v18 = [v5 identifiers];
        v19 = [v18 personalizedStore];
        v20 = [v19 personID];
        v21 = [v20 length];

        if (v21)
        {
LABEL_17:
          [*(*(a1 + 32) + 72) appendSection:v18];

          goto LABEL_18;
        }

        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_initWithRequest_serverObjectDatabase___block_invoke_11;
        v33[3] = &unk_1E82389D8;
        v34 = *(a1 + 32);
        v22 = [v18 copyWithSource:@"Accumulator-PersonID" block:v33];

        v23 = v34;
        v18 = v22;
      }

      else
      {
        v18 = [MEMORY[0x1E696AFB0] UUID];
        v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v29 = *(a1 + 32);
          *buf = 134218498;
          v36 = v29;
          v37 = 2114;
          v38 = v18;
          v39 = 2114;
          v40 = v5;
          _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_ERROR, "[PIA] %p using UUID [section object has no preferred storeID] uuid=%{public}@ section=%{public}@", buf, 0x20u);
        }
      }

      goto LABEL_17;
    }
  }

  v24 = objc_alloc(MEMORY[0x1E696AFB0]);
  v25 = [v5 identifiers];
  v26 = [v25 opaqueID];
  v17 = [v24 initWithUUIDString:v26];

  if (!v17)
  {
    v17 = [MEMORY[0x1E696AFB0] UUID];
    v27 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = *(a1 + 32);
      *buf = 134218498;
      v36 = v28;
      v37 = 2114;
      v38 = v17;
      v39 = 2114;
      v40 = v5;
      _os_log_impl(&dword_1C5C61000, v27, OS_LOG_TYPE_ERROR, "[PIA] %p using UUID [section is Group, but opaqueID was not a valid UUID] uuid=%{public}@ section=%{public}@", buf, 0x20u);
    }
  }

  [*(*(a1 + 32) + 72) appendSection:v17];
LABEL_18:

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_initWithRequest_serverObjectDatabase___block_invoke_14;
  v31[3] = &unk_1E82338F0;
  v30 = *(a1 + 40);
  v32 = *(a1 + 32);
  [v30 enumerateItemsInSectionAtIndex:a3 usingBlock:v31];
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_initWithRequest_serverObjectDatabase___block_invoke_14(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifiers];
  v5 = [v4 universalStore];
  v6 = [v5 universalCloudLibraryID];
  v7 = [v6 length];

  if (v7)
  {
    *(*(a1 + 32) + 112) = 1;
  }

  v8 = [v3 identifiers];
  v9 = [v8 prioritizedStoreStringIdentifiersForPersonID:*(*(a1 + 32) + 24)];

  if (![v9 count])
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(a1 + 32);
      *buf = 134218498;
      v20 = v16;
      v21 = 2114;
      v22 = v10;
      v23 = 2114;
      v24 = v3;
      _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "[PIA] %p using UUID [item object has no preferred storeID] uuid=%{public}@ item=%{public}@", buf, 0x20u);
    }

    goto LABEL_8;
  }

  v10 = [v3 identifiers];
  v11 = [v10 personalizedStore];
  v12 = [v11 personID];
  v13 = [v12 length];

  if (!v13)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Legacy_initWithRequest_serverObjectDatabase___block_invoke_2_15;
    v17[3] = &unk_1E82389D8;
    v18 = *(a1 + 32);
    v14 = [v10 copyWithSource:@"Accumulator-PersonID" block:v17];

    v15 = v18;
    v10 = v14;
LABEL_8:
  }

  [*(*(a1 + 32) + 72) appendItem:v10];
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_populateSection_sectionIndex___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v10 = [MEMORY[0x1E6970550] emptyIdentifierSet];
  v6 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v10 modelObject:0 parentResult:*(a1 + 32) piaTag:*(*(a1 + 40) + 104)];
  [v6 setToken:a2 forDatabase:{a3, *(*(a1 + 40) + 16)}];
  v7 = [MEMORY[0x1E696AC88] indexPathForItem:*(*(*(a1 + 56) + 8) + 24) inSection:*(a1 + 72)];
  [*(*(a1 + 40) + 64) insertItem:v6 atIndexPath:v7];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 24);
  if (!v9)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 24);
  }

  *(v8 + 24) = v9 + 1;
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_populateSection_sectionIndex___block_invoke_128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  v10 = [MEMORY[0x1E6970550] emptyIdentifierSet];
  v6 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v10 modelObject:0 parentResult:*(a1 + 32) piaTag:*(*(a1 + 40) + 104)];
  [v6 setToken:a2 forDatabase:{a3, *(*(a1 + 40) + 24)}];
  v7 = [MEMORY[0x1E696AC88] indexPathForItem:*(*(*(a1 + 56) + 8) + 24) inSection:*(a1 + 72)];
  [*(*(a1 + 40) + 64) insertItem:v6 atIndexPath:v7];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 24);
  if (!v9)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v6);
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 24);
  }

  *(v8 + 24) = v9 + 1;
}

void __91___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_promoteToSection_indexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v5 = [v2 UUID];
  v4 = [v5 UUIDString];
  [v3 setOpaqueID:v4];
}

void __89___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_resolveProgressiveResults__block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_1C5C61000, v3, OS_SIGNPOST_INTERVAL_END, v4, "resolveProgressiveResults", "", v5, 2u);
  }
}

void __89___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_resolveProgressiveResults__block_invoke_107(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (([(_MPCAccumulatorProgressiveResult *)v5 isResolved]& 1) != 0)
  {
    if (![*(*(a1 + 32) + 64) numberOfItemsInSection:a3])
    {
      v6 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        v7 = *(*(a1 + 32) + 104);
        v10 = 67109378;
        v11 = v7;
        v12 = 2114;
        v13 = v5;
        _os_log_impl(&dword_1C5C61000, v6, OS_LOG_TYPE_DEBUG, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | adding section to progressiveResultsToPromoteAndPopulate [numberOfItemsInSection = 0] %{public}@", &v10, 0x12u);
      }

      [*(a1 + 40) addObject:v5];
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(*(a1 + 32) + 104);
      v10 = 67109378;
      v11 = v9;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_DEBUG, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | skipping progressiveSection [unresolved] %{public}@", &v10, 0x12u);
    }
  }
}

void __89___MPCModelStorePlaybackItemsRequestAccumulator_Modern__locked_resolveProgressiveResults__block_invoke_108(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [(_MPCAccumulatorProgressiveResult *)v3 resolvedIdentifiers];
  v5 = v4;
  if (!v4)
  {
    v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(*(a1 + 32) + 104);
      *buf = 67109378;
      v27 = v23;
      v28 = 2114;
      v29 = v3;
      _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_DEBUG, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | skipping progressiveItem [unresolved] %{public}@", buf, 0x12u);
    }

    goto LABEL_21;
  }

  v6 = v4;
  v7 = [v6 modelKind];
  v8 = [v7 identityKind];
  v9 = [MEMORY[0x1E6970638] identityKind];
  if (v8 == v9)
  {
    goto LABEL_22;
  }

  v10 = [v8 isEqual:v9];

  if (v10)
  {
    goto LABEL_23;
  }

  v7 = [v6 modelKind];
  v8 = [v7 identityKind];
  v9 = [MEMORY[0x1E6970730] identityKind];
  if (v8 == v9)
  {
LABEL_22:

    goto LABEL_23;
  }

  v11 = [v8 isEqual:v9];

  if (v11)
  {
LABEL_23:

    goto LABEL_24;
  }

  v7 = [v6 modelKind];
  v8 = [v7 identityKind];
  v9 = [MEMORY[0x1E6970758] identityKind];
  if (v8 == v9)
  {
    goto LABEL_22;
  }

  v12 = [v8 isEqual:v9];

  if (v12)
  {
    goto LABEL_23;
  }

  v7 = [v6 modelKind];
  v8 = [v7 identityKind];
  v9 = [MEMORY[0x1E6970690] identityKind];
  if (v8 == v9)
  {
    goto LABEL_22;
  }

  v13 = [v8 isEqual:v9];

  if ((v13 & 1) == 0)
  {
    v14 = v6;
    v15 = [v14 modelKind];
    v16 = [v15 identityKind];
    v17 = [MEMORY[0x1E6970778] identityKind];
    if (v16 != v17)
    {
      v18 = [v16 isEqual:v17];

      if (v18)
      {
        goto LABEL_21;
      }

      v15 = [v14 modelKind];
      v16 = [v15 identityKind];
      v17 = [MEMORY[0x1E6970728] identityKind];
      if (v16 != v17)
      {
        v19 = [v16 isEqual:v17];

        if (v19)
        {
          goto LABEL_21;
        }

        v15 = [v14 modelKind];
        v16 = [v15 identityKind];
        v17 = [MEMORY[0x1E69707B0] identityKind];
        if (v16 != v17)
        {
          v20 = [v16 isEqual:v17];

          if ((v20 & 1) == 0)
          {
            v15 = [v14 modelKind];
            v16 = [v15 identityKind];
            v17 = [MEMORY[0x1E69706F0] identityKind];
            if (v16 != v17)
            {
              v21 = [v16 isEqual:v17];

              if ((v21 & 1) == 0)
              {
                v22 = [MEMORY[0x1E696AAA8] currentHandler];
                [v22 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:784 description:{@"Found unplayable identifiers in modern accumulator: %@", v14}];
              }

              goto LABEL_27;
            }

            goto LABEL_28;
          }

LABEL_21:

          goto LABEL_27;
        }
      }
    }

LABEL_28:

    goto LABEL_21;
  }

LABEL_24:
  v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = *(*(a1 + 32) + 104);
    *buf = 67109378;
    v27 = v25;
    v28 = 2114;
    v29 = v3;
    _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_DEBUG, "[SPIR:%{sonic:fourCC}u] resolveProgressiveResults | adding result to progressiveResultsToPromoteAndPopulate [resolved modelKind is collection] %{public}@", buf, 0x12u);
  }

  [*(a1 + 40) addObject:v3];
LABEL_27:
}

void __74___MPCModelStorePlaybackItemsRequestAccumulator_Modern_accumulatedResults__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = *(*(a1 + 48) + 8);
  v7 = v5;
  if (([(_MPCAccumulatorProgressiveResult *)v7 isAnonymousGroup]& 1) != 0)
  {
    v8 = 48;
    goto LABEL_13;
  }

  if (!v7)
  {
LABEL_12:
    v8 = 44;
    goto LABEL_13;
  }

  v9 = v7[12];
  if (!v9)
  {
    v11 = v7[13];
LABEL_10:
    if (v11)
    {
      v8 = 36;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v10 = [v9 isPlaceholder];
  v11 = v7[13];
  if (v10)
  {
    goto LABEL_10;
  }

  v12 = v11 == 0;
  v8 = 40;
  if (v12)
  {
    v8 = 32;
  }

LABEL_13:
  ++*(v6 + v8);

  if ([(_MPCAccumulatorProgressiveResult *)v7 isValid])
  {
    v13 = [(_MPCAccumulatorProgressiveResult *)v7 progressiveIdentifiers];
    if (!v13)
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:423 description:{@"Valid progressiveResult failed to produce progressiveIdentifiers: %@", v7}];
    }

    v14 = *(a1 + 40);
    v15 = [v7 copy];
    [v14 appendSection:v15];
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x1E6970550]);
    v17 = [MEMORY[0x1E6970690] identityKind];
    v13 = [v16 initWithSource:@"XL-Accumulator-Anonymous-Section" modelKind:v17 block:&__block_literal_global_287];

    v18 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = *(*(a1 + 32) + 104);
      v20 = [v7 inputIdentifiers];
      *buf = 67109378;
      v30 = v19;
      v31 = 2114;
      v32 = v20;
      _os_log_impl(&dword_1C5C61000, v18, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] accumulatedResults | using anonymous section [invalid section object] progressiveSection.inputIdentifiers=%{public}@", buf, 0x12u);
    }

    v21 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v13 modelObject:0 parentResult:0 piaTag:*(*(a1 + 32) + 104)];
    [*(a1 + 40) appendSection:v21];
  }

  v23 = *(a1 + 32);
  v22 = *(a1 + 40);
  v24 = *(v23 + 64);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __74___MPCModelStorePlaybackItemsRequestAccumulator_Modern_accumulatedResults__block_invoke_63;
  v26[3] = &unk_1E8233B18;
  v28 = *(a1 + 56);
  v26[4] = v23;
  v27 = v22;
  [v24 enumerateItemsInSectionAtIndex:a3 usingBlock:v26];
}

void __74___MPCModelStorePlaybackItemsRequestAccumulator_Modern_accumulatedResults__block_invoke_63(void *a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[6] + 8);
  v5 = v3;
  if (([(_MPCAccumulatorProgressiveResult *)v5 isAnonymousGroup]& 1) != 0)
  {
    v6 = 48;
    goto LABEL_13;
  }

  if (!v5)
  {
LABEL_12:
    v6 = 44;
    goto LABEL_13;
  }

  v7 = v5[12];
  if (!v7)
  {
    v9 = v5[13];
LABEL_10:
    if (v9)
    {
      v6 = 36;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = [v7 isPlaceholder];
  v9 = v5[13];
  if (v8)
  {
    goto LABEL_10;
  }

  v10 = v9 == 0;
  v6 = 40;
  if (v10)
  {
    v6 = 32;
  }

LABEL_13:
  ++*(v4 + v6);

  if ([(_MPCAccumulatorProgressiveResult *)v5 isValid])
  {
    v11 = [(_MPCAccumulatorProgressiveResult *)v5 progressiveIdentifiers];
    if (!v11)
    {
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a1[7] object:a1[4] file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:438 description:{@"Valid progressiveResult failed to produce progressiveIdentifiers: %@", v5}];
    }

    v12 = a1[5];
    v13 = [v5 copy];
    [v12 appendItem:v13];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v14 = *(a1[4] + 104);
      *buf = 67109378;
      v17 = v14;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_DEBUG, "[SPIR:%{sonic:fourCC}u] accumulatedResults | dropping item [invalid] progressiveItem=%{public}@", buf, 0x12u);
    }
  }
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [v4 identifiers];
  v6 = [v5 universalStore];
  v7 = [v6 universalCloudLibraryID];
  v8 = [v7 length];

  if (v8)
  {
    *(*(a1 + 32) + 96) = 1;
  }

  v9 = [v4 identifiers];
  v10 = [v9 modelKind];
  v11 = [v10 identityKind];
  v12 = [MEMORY[0x1E6970690] identityKind];
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_13;
  }

  v14 = [v11 isEqual:v12];

  if (v14)
  {
LABEL_13:
    v26 = objc_alloc(MEMORY[0x1E696AFB0]);
    v27 = [v4 identifiers];
    v28 = [v27 opaqueID];
    v15 = [v26 initWithUUIDString:v28];

    if (v15)
    {
      goto LABEL_20;
    }

    v29 = [MEMORY[0x1E696AFB0] UUID];
    v30 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *(*(a1 + 32) + 104);
      *buf = 67109634;
      v61 = v31;
      v62 = 2114;
      v63 = v29;
      v64 = 2114;
      v65 = v4;
      _os_log_impl(&dword_1C5C61000, v30, OS_LOG_TYPE_ERROR, "[SPIR:%{sonic:fourCC}u] initWithRequest: | replacing opaqueID [section is Group, but opaqueID was not a valid UUID] uuid=%{public}@ section=%{public}@", buf, 0x1Cu);
    }

    v32 = objc_alloc(MEMORY[0x1E6970550]);
    v33 = [MEMORY[0x1E6970690] identityKind];
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_16;
    v58[3] = &unk_1E82389D8;
    v15 = v29;
    v59 = v15;
    v25 = [v32 initWithSource:@"XL-Accumulator" modelKind:v33 block:v58];

    v17 = v59;
    goto LABEL_17;
  }

  v15 = *(*(a1 + 32) + 32);
  v16 = [v9 personalizedStore];
  v17 = [v16 personID];

  v18 = *(*(a1 + 32) + 32);
  v19 = v18;
  if (v18 == v17)
  {

    goto LABEL_19;
  }

  v20 = [v18 isEqual:v17];

  if ((v20 & 1) == 0)
  {
    if ((MSVDeviceOSIsInternalInstall() & 1) == 0)
    {
      v21 = MPCHashedDSIDFromDSID(v15);

      v22 = MPCHashedDSIDFromDSID(v17);

      v17 = v22;
      v15 = v21;
    }

    v23 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*(a1 + 32) + 104);
      *buf = 67109634;
      v61 = v24;
      v62 = 2114;
      v63 = v17;
      v64 = 2114;
      v65 = v15;
      _os_log_impl(&dword_1C5C61000, v23, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] initWithRequest: | repairing section identifiers [personID mismatch] identifiers.personID=%{public}@ pre.personID=%{public}@", buf, 0x1Cu);
    }

    v56[0] = MEMORY[0x1E69E9820];
    v56[1] = 3221225472;
    v56[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_21;
    v56[3] = &unk_1E82389D8;
    v57 = *(a1 + 32);
    v25 = [v9 copyWithSource:@"XL-Accumulator-PersonID" block:v56];

LABEL_17:
    v9 = v25;
  }

LABEL_19:

LABEL_20:
  v34 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v4];
  v35 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v9 modelObject:v34 parentResult:0 piaTag:*(*(a1 + 32) + 104)];
  [*(*(a1 + 32) + 64) appendSection:v35];
  v36 = [(_MPCAccumulatorProgressiveResult *)v35 progressiveIdentifiers];
  v37 = [v36 modelKind];
  v38 = [v37 identityKind];
  v39 = [MEMORY[0x1E6970730] identityKind];
  if (v38 == v39)
  {
    v40 = 1;
  }

  else
  {
    v40 = [v38 isEqual:v39];
  }

  if (v40)
  {
    v41 = v49;
    v42 = [MEMORY[0x1E696AB50] setWithCapacity:{objc_msgSend(*(a1 + 40), "numberOfItemsInSection:", v49)}];
  }

  else
  {
    v42 = 0;
    v41 = v49;
  }

  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_3;
  v50[3] = &unk_1E8233AC8;
  v43 = *(a1 + 40);
  v44 = *(a1 + 32);
  v55 = v40;
  v51 = v44;
  v52 = v42;
  v45 = *(a1 + 48);
  v53 = v35;
  v54 = v45;
  v46 = v35;
  v47 = v42;
  [v43 enumerateItemsInSectionAtIndex:v41 usingBlock:v50];
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_54(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v5 = [v2 UUID];
  v4 = [v5 UUIDString];
  [v3 setOpaqueID:v4];
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_16(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 UUIDString];
  [v3 setOpaqueID:v4];
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_3(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifiers];
  v5 = [v4 universalStore];
  v6 = [v5 universalCloudLibraryID];
  v7 = [v6 length];

  if (v7)
  {
    *(*(a1 + 32) + 96) = 1;
  }

  v8 = [v3 identifiers];
  v9 = *(*(a1 + 32) + 32);
  v10 = [v8 personalizedStore];
  v11 = [v10 personID];

  v12 = *(*(a1 + 32) + 32);
  v13 = v12;
  if (v12 == v11)
  {
  }

  else
  {
    v14 = [v12 isEqual:v11];

    if ((v14 & 1) == 0)
    {
      if ((MSVDeviceOSIsInternalInstall() & 1) == 0)
      {
        v15 = MPCHashedDSIDFromDSID(v9);

        v16 = MPCHashedDSIDFromDSID(v11);

        v11 = v16;
        v9 = v15;
      }

      v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = *(*(a1 + 32) + 104);
        *buf = 67109634;
        v69 = v18;
        v70 = 2114;
        v71 = v11;
        v72 = 2114;
        v73 = v9;
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] initWithRequest: | repairing item identifiers [personID mismatch] identifiers.personID=%{public}@ pre.personID=%{public}@", buf, 0x1Cu);
      }

      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_27;
      v66[3] = &unk_1E82389D8;
      v67 = *(a1 + 32);
      v19 = [v8 copyWithSource:@"XL-Accumulator-PersonID" block:v66];

      v8 = v19;
    }
  }

  v20 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v3];
  if (*(a1 + 64) == 1)
  {
    v57 = v9;
    v21 = [v8 mpc_playlistEntryOccurrencePrefix];
    v22 = [*(a1 + 40) countForObject:v21];
    [*(a1 + 40) addObject:v21];
    v23 = MEMORY[0x1C6954980](v21, v22);
    v24 = [v8 modelKind];
    v25 = [v24 identityKind];

    v26 = [MEMORY[0x1E6970728] identityKind];
    v58 = v25;
    if (v25 == v26)
    {
LABEL_29:

      goto LABEL_30;
    }

    v27 = [v25 isEqual:v26];

    if (v27)
    {
      v25 = v58;
LABEL_30:
      if ([v20 type] == 5)
      {
        v9 = v57;
      }

      else
      {
        v46 = v23;
        v47 = MEMORY[0x1E6970670];
        v48 = objc_alloc(MEMORY[0x1E6970720]);
        v59[0] = MEMORY[0x1E69E9820];
        v59[1] = 3221225472;
        v59[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_48;
        v59[3] = &unk_1E8233AA0;
        v49 = v20;
        v50 = *(a1 + 56);
        v60 = v49;
        v62 = v50;
        v61 = *(a1 + 32);
        v51 = [v48 initWithIdentifiers:v8 block:v59];
        v20 = [v47 genericObjectWithModelObject:v51];

        v52 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          v53 = *(*(a1 + 32) + 104);
          *buf = 67109378;
          v69 = v53;
          v70 = 2114;
          v71 = v20;
          _os_log_impl(&dword_1C5C61000, v52, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] initWithRequest: | repairing source model object [section is Playlist] playlistEntryIdentifiers=%{public}@", buf, 0x12u);
        }

        v9 = v57;
        v25 = v58;
        v23 = v46;
      }

      goto LABEL_36;
    }

    v55 = v21;
    v56 = v23;
    v28 = v8;
    v29 = [v28 modelKind];
    v30 = [v29 identityKind];
    v31 = [MEMORY[0x1E6970778] identityKind];
    if (v30 != v31)
    {
      v32 = [v30 isEqual:v31];

      v33 = v28;
      v34 = v28;
      if (v32)
      {
        goto LABEL_25;
      }

      v29 = [v28 modelKind];
      v30 = [v29 identityKind];
      v31 = [MEMORY[0x1E6970728] identityKind];
      if (v30 != v31)
      {
        v35 = [v30 isEqual:v31];

        v33 = v28;
        v34 = v28;
        if (v35)
        {
          goto LABEL_25;
        }

        v29 = [v28 modelKind];
        v30 = [v29 identityKind];
        v31 = [MEMORY[0x1E69707B0] identityKind];
        if (v30 != v31)
        {
          v36 = [v30 isEqual:v31];

          v33 = v28;
          v34 = v28;
          if ((v36 & 1) == 0)
          {
            v37 = [v28 modelKind];
            [v37 identityKind];
            v39 = v38 = v34;
            v40 = [MEMORY[0x1E69706F0] identityKind];
            v41 = v40;
            if (v39 == v40)
            {

              v33 = v38;
              v34 = v38;
            }

            else
            {
              v42 = [v39 isEqual:v40];

              v34 = v38;
              if (v42)
              {
LABEL_26:
                v63[0] = MEMORY[0x1E69E9820];
                v63[1] = 3221225472;
                v63[2] = __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_3_42;
                v63[3] = &unk_1E8233A78;
                v43 = v34;
                v64 = v43;
                v23 = v56;
                v65 = v56;
                v8 = [v43 copyWithSource:@"XL-Accumulator-PlaylistEntry" block:v63];
                v44 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
                v21 = v55;
                if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  v45 = *(*(a1 + 32) + 104);
                  *buf = 67109634;
                  v69 = v45;
                  v70 = 2114;
                  v71 = v43;
                  v72 = 2114;
                  v73 = v8;
                  _os_log_impl(&dword_1C5C61000, v44, OS_LOG_TYPE_DEFAULT, "[SPIR:%{sonic:fourCC}u] initWithRequest: | repairing item identifiers [section is Playlist] identifiers=%{public}@ playlistEntryIdentifiers=%{public}@", buf, 0x1Cu);
                }

                v26 = v64;
                v25 = v58;
                goto LABEL_29;
              }

              v33 = [MEMORY[0x1E696AAA8] currentHandler];
              [v33 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:321 description:{@"Attempt to play sectionedModelObjects with unplayable item: %@", v38}];
            }
          }

LABEL_25:

          goto LABEL_26;
        }
      }
    }

    v34 = v28;
    v33 = v28;
    goto LABEL_25;
  }

LABEL_36:
  v54 = [_MPCAccumulatorProgressiveResult progressiveItemWithRequestedIdentifiers:v8 modelObject:v20 parentResult:*(a1 + 48) piaTag:*(*(a1 + 32) + 104)];
  [*(*(a1 + 32) + 64) appendItem:v54];
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_3_42(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) modelKind];
  v5 = MEMORY[0x1E6970720];
  v14[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v7 = [v5 kindWithKinds:v6];
  [v3 setModelKind:v7];

  v8 = [v3 containerUniqueID];
  v9 = [v8 length];

  if (!v9)
  {
    [v3 setContainerUniqueID:*(a1 + 40)];
  }

  v10 = [*(a1 + 32) library];
  v11 = [v10 persistentID];

  if (v11)
  {
    v12 = [*(a1 + 32) library];
    v13 = [v12 databaseID];
    [v3 setLibraryIdentifiersWithDatabaseID:v13 block:&__block_literal_global_47];
  }
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_48(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) type];
  switch(v3)
  {
    case 9:
      v4 = [*(a1 + 32) movie];
      [v5 setMovie:v4];
      break;
    case 6:
      v4 = [*(a1 + 32) tvEpisode];
      [v5 setTvEpisode:v4];
      break;
    case 1:
      v4 = [*(a1 + 32) song];
      [v5 setSong:v4];
      break;
    default:
      v4 = [MEMORY[0x1E696AAA8] currentHandler];
      [v4 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"MPCModelStorePlaybackItemsRequestAccumulator_Modern.m" lineNumber:353 description:{@"Attempt to play sectionedModelObjects with unplayable item: %@", *(a1 + 32)}];
      break;
  }
}

void __93___MPCModelStorePlaybackItemsRequestAccumulator_Modern_initWithRequest_serverObjectDatabase___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setContainedPersistentID:{objc_msgSend(v2, "persistentID")}];
  [v2 setPersistentID:0];
}

@end