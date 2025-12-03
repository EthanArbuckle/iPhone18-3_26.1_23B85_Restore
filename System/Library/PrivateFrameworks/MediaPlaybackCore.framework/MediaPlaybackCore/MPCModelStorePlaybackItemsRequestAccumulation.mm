@interface MPCModelStorePlaybackItemsRequestAccumulation
- (BOOL)isInvalid;
- (MPCModelStorePlaybackItemsRequestAccumulation)initWithProgressiveResults:(id)results properties:(id)properties libraryObjectDatabase:(id)database performanceMetrics:(id)metrics;
- (MPSectionedCollection)results;
- (id)_objectForProgressiveResult:(id)result;
- (id)identifiersForItemAtIndexPath:(id)path;
- (id)identifiersForSectionAtIndex:(int64_t)index;
- (id)itemAtIndexPath:(id)path;
- (id)onInvalidate;
- (id)sectionAtIndex:(unint64_t)index;
- (void)setOnInvalidate:(id)invalidate;
@end

@implementation MPCModelStorePlaybackItemsRequestAccumulation

- (id)_objectForProgressiveResult:(id)result
{
  resultCopy = result;
  resolvedIdentifiers = [(_MPCAccumulatorProgressiveResult *)resultCopy resolvedIdentifiers];
  modelKind = [resolvedIdentifiers modelKind];
  identityKind = [modelKind identityKind];
  identityKind2 = [MEMORY[0x1E6970690] identityKind];
  v9 = identityKind2;
  if (identityKind == identityKind2)
  {

    goto LABEL_8;
  }

  v10 = [identityKind isEqual:identityKind2];

  if (v10)
  {
LABEL_8:
    v13 = MEMORY[0x1E6970670];
    v14 = objc_alloc(MEMORY[0x1E6970688]);
    resolvedIdentifiers2 = [(_MPCAccumulatorProgressiveResult *)resultCopy resolvedIdentifiers];
    v16 = [v14 initWithIdentifiers:resolvedIdentifiers2];
    v17 = [v13 genericObjectWithModelObject:v16];

    goto LABEL_57;
  }

  if (resultCopy)
  {
    v11 = resultCopy[12];
    if (v11 && ([v11 isPlaceholder] & 1) == 0)
    {
      v12 = [(MPObjectDatabase *)self->_sod modelObjectForResult:resultCopy inContext:self->_sodFullObjectContext error:0];
    }

    else
    {
      v12 = 0;
    }

    if (resultCopy[13])
    {
      v18 = resultCopy[12];
      if (v18)
      {
        isPlaceholder = [v18 isPlaceholder];
        v20 = 56;
        if (isPlaceholder)
        {
          v20 = 48;
        }
      }

      else
      {
        v20 = 48;
      }

      v21 = [(MPObjectDatabase *)self->_lod modelObjectForResult:resultCopy inContext:*(&self->super.isa + v20) error:0];
    }

    else
    {
      v21 = 0;
    }

    v22 = resultCopy[15];
  }

  else
  {
    v21 = 0;
    v12 = 0;
    v22 = 0;
  }

  v23 = v22;
  v24 = resultCopy;
  v25 = v21;
  v26 = v12;
  v27 = v23;
  v28 = v27;
  if (v26 | v25)
  {
    v29 = 0;
  }

  else
  {
    if (v27)
    {
      identifiers = [v27 identifiers];
      v31 = [identifiers copyWithSource:@"XL-Placeholder" block:&__block_literal_global_143];
      v32 = [v28 copyWithIdentifiers:v31];
    }

    else
    {
      identifiers = [(_MPCAccumulatorProgressiveResult *)v24 progressiveIdentifiers];
      if (([identifiers isPlaceholder] & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v64 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"MPModelGenericObject * _Nullable _MPCAccumulationCreateFinalPlaceholder(_MPCAccumulatorProgressiveResult *__strong, MPModelGenericObject * _Nullable __strong, MPModelGenericObject * _Nullable __strong, MPModelGenericObject * _Nullable __strong)"}];
        [currentHandler handleFailureInFunction:v64 file:@"MPCModelStorePlaybackItemsRequestAccumulation.m" lineNumber:198 description:{@"Unexpected non-placeholder identifers: %@", identifiers}];
      }

      modelKind2 = [identifiers modelKind];
      modelClass = [modelKind2 modelClass];
      if (!modelClass)
      {
        modelClass = objc_opt_class();
      }

      v31 = [[modelClass alloc] initWithIdentifiers:identifiers];

      v32 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v31];
    }

    v29 = v32;
  }

  if (v29)
  {
    v17 = [v29 copyWithPropertySet:self->_fullObjectPropertySet];
  }

  else
  {
    v35 = v25;
    v36 = v26;
    v37 = v28;
    type = [v35 type];
    v39 = v35;
    if ((type == 5 || (v40 = [v36 type], v39 = v36, v40 == 5) || (v41 = objc_msgSend(v37, "type"), v39 = v37, v41 == 5)) && (objc_msgSend(v39, "playlistEntry"), (v42 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v65 = v25;
      v67 = v42;
      flattenedGenericObject = [v35 flattenedGenericObject];
      anyObject = [flattenedGenericObject anyObject];

      flattenedGenericObject2 = [v36 flattenedGenericObject];
      anyObject2 = [flattenedGenericObject2 anyObject];

      flattenedGenericObject3 = [v37 flattenedGenericObject];
      anyObject3 = [flattenedGenericObject3 anyObject];

      v66 = anyObject2;
      if (anyObject2)
      {
        v48 = anyObject2;
      }

      else
      {
        v48 = anyObject;
      }

      v49 = v48;
      v50 = v49;
      v68 = v35;
      if (anyObject && v49 != anyObject)
      {
        v51 = [v49 mergeWithObject:anyObject];

        v50 = v51;
      }

      v25 = v65;
      v69 = v36;
      v70 = v37;
      if (anyObject3)
      {
        v52 = [anyObject3 mergeWithObject:v50];

        v50 = v52;
      }

      identifiers2 = [v67 identifiers];
      v54 = [identifiers2 copyWithSource:@"XL-PlaylistEntry-Merged" block:&__block_literal_global_152];

      v72[0] = MEMORY[0x1E69E9820];
      v72[1] = 3221225472;
      v72[2] = ___MPCAccumulationCreateFinalPlaylistEntry_block_invoke_2;
      v72[3] = &unk_1E82338C8;
      v73 = v50;
      v55 = v50;
      v56 = [v67 copyWithIdentifiers:v54 block:v72];
      v57 = [MEMORY[0x1E6970670] genericObjectWithModelObject:v56];

      v36 = v69;
      v37 = v70;
      v35 = v68;
    }

    else
    {
      v57 = 0;
    }

    if (v57)
    {
      v17 = v57;
    }

    else
    {
      if (v36)
      {
        v58 = v36;
      }

      else
      {
        v58 = v35;
      }

      v59 = v58;
      v17 = v59;
      if (v35 && v59 != v35)
      {
        v60 = [v59 mergeWithObject:v35];

        v17 = v60;
      }

      if (v37)
      {
        v61 = [v37 mergeWithObject:v17];

        v17 = v61;
      }
    }
  }

LABEL_57:

  return v17;
}

- (id)itemAtIndexPath:(id)path
{
  v4 = [(MPSectionedCollection *)self->_progressiveResults itemAtIndexPath:path];
  v5 = [(MPCModelStorePlaybackItemsRequestAccumulation *)self _objectForProgressiveResult:v4];

  return v5;
}

- (id)sectionAtIndex:(unint64_t)index
{
  v4 = [(MPSectionedCollection *)self->_progressiveResults sectionAtIndex:index];
  v5 = [(MPCModelStorePlaybackItemsRequestAccumulation *)self _objectForProgressiveResult:v4];

  return v5;
}

- (id)identifiersForItemAtIndexPath:(id)path
{
  v5 = [(MPSectionedCollection *)self->_progressiveResults itemAtIndexPath:path];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 120);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  progressiveIdentifiers = [(_MPCAccumulatorProgressiveResult *)v6 progressiveIdentifiers];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulation.m" lineNumber:389 description:{@"Unexpected requestedModelObject: %@", v8}];
    }

    identifiers = [v8 identifiers];
    v11 = [identifiers unionSet:progressiveIdentifiers];

    progressiveIdentifiers = v11;
  }

  return progressiveIdentifiers;
}

- (id)identifiersForSectionAtIndex:(int64_t)index
{
  v5 = [(MPSectionedCollection *)self->_progressiveResults sectionAtIndex:index];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 120);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  progressiveIdentifiers = [(_MPCAccumulatorProgressiveResult *)v6 progressiveIdentifiers];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"MPCModelStorePlaybackItemsRequestAccumulation.m" lineNumber:378 description:{@"Unexpected requestedModelObject: %@", v8}];
    }

    identifiers = [v8 identifiers];
    v11 = [identifiers unionSet:progressiveIdentifiers];

    progressiveIdentifiers = v11;
  }

  return progressiveIdentifiers;
}

- (void)setOnInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__MPCModelStorePlaybackItemsRequestAccumulation_setOnInvalidate___block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (self->_invalid)
  {
    invalidateCopy[2](invalidateCopy);
  }

  else
  {
    v6 = _Block_copy(invalidateCopy);
    onInvalidate = self->_onInvalidate;
    self->_onInvalidate = v6;
  }

  v5[2](v5);
}

- (id)onInvalidate
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__MPCModelStorePlaybackItemsRequestAccumulation_onInvalidate__block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  v4 = _Block_copy(self->_onInvalidate);
  v3[2](v3);

  return v4;
}

- (BOOL)isInvalid
{
  os_unfair_lock_lock_with_options();
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__MPCModelStorePlaybackItemsRequestAccumulation_isInvalid__block_invoke;
  aBlock[3] = &unk_1E8239298;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  LOBYTE(self) = self->_invalid;
  v3[2]();

  return self;
}

- (MPSectionedCollection)results
{
  v2 = [objc_alloc(MEMORY[0x1E6970560]) initWithDataSource:self];

  return v2;
}

- (MPCModelStorePlaybackItemsRequestAccumulation)initWithProgressiveResults:(id)results properties:(id)properties libraryObjectDatabase:(id)database performanceMetrics:(id)metrics
{
  v142[5] = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  propertiesCopy = properties;
  databaseCopy = database;
  metricsCopy = metrics;
  v112.receiver = self;
  v112.super_class = MPCModelStorePlaybackItemsRequestAccumulation;
  v11 = [(MPCModelStorePlaybackItemsRequestAccumulation *)&v112 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_performanceMetrics, metrics);
    mEMORY[0x1E6970950] = [MEMORY[0x1E6970950] sharedServerObjectDatabase];
    sod = v12->_sod;
    v12->_sod = mEMORY[0x1E6970950];

    objc_storeStrong(&v12->_lod, database);
    objc_storeStrong(&v12->_progressiveResults, results);
    v15 = [propertiesCopy copy];
    fullObjectPropertySet = v12->_fullObjectPropertySet;
    v12->_fullObjectPropertySet = v15;

    v17 = MEMORY[0x1E6970660];
    v101 = v12->_fullObjectPropertySet;
    allSupportedProperties = [v17 allSupportedProperties];
    v18 = MEMORY[0x1E69708B0];
    v19 = *MEMORY[0x1E6970010];
    v142[0] = *MEMORY[0x1E6970008];
    v142[1] = v19;
    v20 = *MEMORY[0x1E6970000];
    v142[2] = *MEMORY[0x1E6970018];
    v142[3] = v20;
    v142[4] = *MEMORY[0x1E6970020];
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v142 count:5];
    v107 = [v18 propertySetWithProperties:v21];

    mqf_requiredItemPlaybackProperties = [MEMORY[0x1E6970710] mqf_requiredItemPlaybackProperties];
    v22 = MEMORY[0x1E69708B0];
    v141 = *MEMORY[0x1E696FD00];
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v141 count:1];
    v102 = [v22 propertySetWithProperties:v23];

    v24 = objc_alloc(MEMORY[0x1E69708B0]);
    v25 = *MEMORY[0x1E696FF48];
    location[0] = *MEMORY[0x1E696FF18];
    location[1] = v25;
    v26 = *MEMORY[0x1E696FF70];
    v128 = *MEMORY[0x1E696FF60];
    v129 = v26;
    v27 = *MEMORY[0x1E696FF80];
    v130 = *MEMORY[0x1E696FF78];
    v131 = v27;
    v28 = *MEMORY[0x1E696FF98];
    v132 = *MEMORY[0x1E696FF88];
    v133 = v28;
    v29 = *MEMORY[0x1E696FFC8];
    v134 = *MEMORY[0x1E696FF90];
    v135 = v29;
    v30 = *MEMORY[0x1E696FFD8];
    v136 = v128;
    v137 = v30;
    v31 = *MEMORY[0x1E696FFD0];
    v138 = *MEMORY[0x1E696FF40];
    v139 = v31;
    v140 = *MEMORY[0x1E696FF68];
    v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:location count:15];
    v33 = *MEMORY[0x1E6970200];
    v125[0] = *MEMORY[0x1E69701E8];
    v125[1] = v33;
    v126[0] = allSupportedProperties;
    v126[1] = v107;
    v34 = *MEMORY[0x1E69701F0];
    v125[2] = *MEMORY[0x1E69701F8];
    v125[3] = v34;
    v126[2] = mqf_requiredItemPlaybackProperties;
    v126[3] = v102;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:4];
    v36 = [v24 initWithProperties:v32 relationships:v35];

    v37 = objc_alloc(MEMORY[0x1E69708B0]);
    v38 = *MEMORY[0x1E696FD58];
    v124[0] = *MEMORY[0x1E696FD78];
    v124[1] = v38;
    v39 = *MEMORY[0x1E696FD68];
    v124[2] = *MEMORY[0x1E696FD60];
    v124[3] = v39;
    v40 = *MEMORY[0x1E696FD70];
    v124[4] = *MEMORY[0x1E696FD50];
    v124[5] = v40;
    v124[6] = *MEMORY[0x1E696FD48];
    v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:7];
    v42 = *MEMORY[0x1E6970190];
    v122[0] = *MEMORY[0x1E6970180];
    v122[1] = v42;
    v123[0] = allSupportedProperties;
    v123[1] = v107;
    v122[2] = *MEMORY[0x1E6970188];
    v123[2] = mqf_requiredItemPlaybackProperties;
    v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:3];
    v44 = [v37 initWithProperties:v41 relationships:v43];

    v45 = objc_alloc(MEMORY[0x1E69708B0]);
    v46 = *MEMORY[0x1E6970060];
    v121[0] = *MEMORY[0x1E6970080];
    v121[1] = v46;
    v47 = *MEMORY[0x1E6970070];
    v121[2] = *MEMORY[0x1E6970068];
    v121[3] = v47;
    v48 = *MEMORY[0x1E6970078];
    v121[4] = *MEMORY[0x1E6970058];
    v121[5] = v48;
    v121[6] = *MEMORY[0x1E6970050];
    v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v121 count:7];
    v50 = *MEMORY[0x1E6970228];
    v119[0] = *MEMORY[0x1E6970208];
    v119[1] = v50;
    v120[0] = allSupportedProperties;
    v120[1] = v107;
    v119[2] = *MEMORY[0x1E6970210];
    v120[2] = mqf_requiredItemPlaybackProperties;
    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:3];
    v52 = [v45 initWithProperties:v49 relationships:v51];

    v53 = MEMORY[0x1E69708B0];
    v54 = *MEMORY[0x1E696FC10];
    v118[0] = *MEMORY[0x1E696FC30];
    v118[1] = v54;
    v55 = *MEMORY[0x1E696FC20];
    v118[2] = *MEMORY[0x1E696FC18];
    v118[3] = v55;
    v56 = *MEMORY[0x1E696FC28];
    v118[4] = *MEMORY[0x1E696FC08];
    v118[5] = v56;
    v118[6] = *MEMORY[0x1E696FC00];
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v118 count:7];
    v58 = [v53 propertySetWithProperties:v57];

    v59 = MEMORY[0x1E69708B0];
    v60 = *MEMORY[0x1E696FDF0];
    v117[0] = *MEMORY[0x1E696FE08];
    v117[1] = v60;
    v61 = *MEMORY[0x1E696FE00];
    v117[2] = *MEMORY[0x1E696FDF8];
    v117[3] = v61;
    v62 = *MEMORY[0x1E696FDE0];
    v117[4] = *MEMORY[0x1E696FDE8];
    v117[5] = v62;
    v63 = [MEMORY[0x1E695DEC8] arrayWithObjects:v117 count:6];
    v64 = [v59 propertySetWithProperties:v63];

    v65 = objc_alloc(MEMORY[0x1E69708B0]);
    v66 = *MEMORY[0x1E6970110];
    v115[0] = *MEMORY[0x1E6970158];
    v115[1] = v66;
    v116[0] = v36;
    v116[1] = v44;
    v67 = *MEMORY[0x1E6970160];
    v116[2] = v52;
    v68 = *MEMORY[0x1E6970120];
    v115[2] = v67;
    v115[3] = v68;
    v69 = objc_alloc(MEMORY[0x1E69708B0]);
    v70 = *MEMORY[0x1E6970198];
    v113[0] = *MEMORY[0x1E69701A0];
    v113[1] = v70;
    v114[0] = v36;
    v114[1] = v44;
    v113[2] = *MEMORY[0x1E69701A8];
    v114[2] = v52;
    v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v114 forKeys:v113 count:3];
    v72 = [v69 initWithProperties:MEMORY[0x1E695E0F0] relationships:v71];
    v116[3] = v72;
    v73 = *MEMORY[0x1E6970118];
    v115[4] = *MEMORY[0x1E69700D8];
    v115[5] = v73;
    v116[4] = v58;
    v116[5] = v64;
    v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v116 forKeys:v115 count:6];
    v75 = [v65 initWithProperties:MEMORY[0x1E695E0F0] relationships:v74];

    v76 = [(MPPropertySet *)v101 propertySetByIntersectingWithPropertySet:v75];

    v77 = v12->_sod;
    allElementsEnumerator = [(MPSectionedCollection *)v12->_progressiveResults allElementsEnumerator];
    v79 = [allElementsEnumerator msv_lazyFilter:&__block_literal_global_10972];
    v80 = [(MPObjectDatabase *)v77 objectBuildingContextForResults:v79 propertySet:v12->_fullObjectPropertySet];
    sodFullObjectContext = v12->_sodFullObjectContext;
    v12->_sodFullObjectContext = v80;

    lod = v12->_lod;
    allElementsEnumerator2 = [(MPSectionedCollection *)v12->_progressiveResults allElementsEnumerator];
    v84 = [allElementsEnumerator2 msv_lazyFilter:&__block_literal_global_11];
    v85 = [(MPObjectDatabase *)lod objectBuildingContextForResults:v84 propertySet:propertiesCopy];
    lodFullObjectContext = v12->_lodFullObjectContext;
    v12->_lodFullObjectContext = v85;

    v87 = v12->_lod;
    allElementsEnumerator3 = [(MPSectionedCollection *)v12->_progressiveResults allElementsEnumerator];
    v89 = [allElementsEnumerator3 msv_lazyFilter:&__block_literal_global_13];
    v90 = [(MPObjectDatabase *)v87 objectBuildingContextForResults:v89 propertySet:v76];
    lodPersonalizationContext = v12->_lodPersonalizationContext;
    v12->_lodPersonalizationContext = v90;

    v92 = v12->_lod;
    allElementsEnumerator4 = [(MPSectionedCollection *)v12->_progressiveResults allElementsEnumerator];
    v94 = [allElementsEnumerator4 msv_lazyFilter:&__block_literal_global_15];
    emptyPropertySet = [MEMORY[0x1E69708B0] emptyPropertySet];
    v96 = [(MPObjectDatabase *)v92 objectBuildingContextForResults:v94 propertySet:emptyPropertySet];
    lodMissingObjectsContext = v12->_lodMissingObjectsContext;
    v12->_lodMissingObjectsContext = v96;

    [(MPObjectDatabaseProgressiveContext *)v12->_sodFullObjectContext setTag:1397118284];
    [(MPObjectDatabaseProgressiveContext *)v12->_lodFullObjectContext setTag:1279677772];
    [(MPObjectDatabaseProgressiveContext *)v12->_lodPersonalizationContext setTag:1280332371];
    [(MPObjectDatabaseProgressiveContext *)v12->_lodMissingObjectsContext setTag:1280136019];
    if (([(MPObjectDatabaseProgressiveContext *)v12->_sodFullObjectContext isInvalid]& 1) != 0 || ([(MPObjectDatabaseProgressiveContext *)v12->_lodFullObjectContext isInvalid]& 1) != 0 || ([(MPObjectDatabaseProgressiveContext *)v12->_lodPersonalizationContext isInvalid]& 1) != 0)
    {
      v12->_invalid = 1;
    }

    else
    {
      isInvalid = [(MPObjectDatabaseProgressiveContext *)v12->_lodMissingObjectsContext isInvalid];
      v12->_invalid = isInvalid;
      if ((isInvalid & 1) == 0)
      {
        objc_initWeak(location, v12);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __128__MPCModelStorePlaybackItemsRequestAccumulation_initWithProgressiveResults_properties_libraryObjectDatabase_performanceMetrics___block_invoke_5;
        aBlock[3] = &unk_1E8239500;
        objc_copyWeak(&v111, location);
        v100 = _Block_copy(aBlock);
        [(MPObjectDatabaseProgressiveContext *)v12->_sodFullObjectContext setOnInvalidate:v100];
        [(MPObjectDatabaseProgressiveContext *)v12->_lodFullObjectContext setOnInvalidate:v100];
        [(MPObjectDatabaseProgressiveContext *)v12->_lodPersonalizationContext setOnInvalidate:v100];
        [(MPObjectDatabaseProgressiveContext *)v12->_lodMissingObjectsContext setOnInvalidate:v100];

        objc_destroyWeak(&v111);
        objc_destroyWeak(location);
      }
    }
  }

  return v12;
}

void __128__MPCModelStorePlaybackItemsRequestAccumulation_initWithProgressiveResults_properties_libraryObjectDatabase_performanceMetrics___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __128__MPCModelStorePlaybackItemsRequestAccumulation_initWithProgressiveResults_properties_libraryObjectDatabase_performanceMetrics___block_invoke_6;
    aBlock[3] = &unk_1E8239298;
    v2 = WeakRetained;
    v7 = v2;
    v3 = _Block_copy(aBlock);
    if ((*(v2 + 76) & 1) == 0)
    {
      *(v2 + 76) = 1;
      v4 = *(v2 + 10);
      if (v4)
      {
        (*(v4 + 16))();
        v5 = *(v2 + 10);
        *(v2 + 10) = 0;
      }
    }

    v3[2](v3);
  }
}

BOOL __128__MPCModelStorePlaybackItemsRequestAccumulation_initWithProgressiveResults_properties_libraryObjectDatabase_performanceMetrics___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  v5 = v2 && (v4 = v2[12]) != 0 && ([v4 isPlaceholder] & 1) == 0 && v3[13] != 0;

  return v5;
}

BOOL __128__MPCModelStorePlaybackItemsRequestAccumulation_initWithProgressiveResults_properties_libraryObjectDatabase_performanceMetrics___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  v5 = v2 && ((v4 = v2[12]) == 0 || [v4 isPlaceholder]) && v3[13] != 0;

  return v5;
}

void *__128__MPCModelStorePlaybackItemsRequestAccumulation_initWithProgressiveResults_properties_libraryObjectDatabase_performanceMetrics___block_invoke(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  result = *(a2 + 96);
  if (result)
  {
    return ([result isPlaceholder] ^ 1);
  }

  return result;
}

@end