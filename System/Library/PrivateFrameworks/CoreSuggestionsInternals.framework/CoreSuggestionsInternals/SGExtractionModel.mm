@interface SGExtractionModel
+ (id)argMaxForLastOutput:(id)output;
+ (id)argMaxForOutputIndex:(id)index index:(int)a4 shape:(id)shape;
+ (id)argMaxForSequence:(id)sequence;
+ (id)enrichTaggedCharacterRangesWithModelOutput:(id)output usingInputCharacterRanges:(id)ranges;
+ (id)inputDictFromTaggedCharacterRanges:(id)ranges usingTokenMapping:(id)mapping forModel:(id)model;
+ (id)inputDictFromTaggedCharacterRanges:(id)ranges usingTokenMapping:(id)mapping forModel:(id)model pflTraining:(BOOL)training hasEvent:(BOOL)event;
+ (id)loadLazyPlistWithBasename:(id)basename;
+ (id)modelOutputFromOutputMapping:(id)mapping modelOutput:(id)output modelInput:(id)input;
+ (unint64_t)featureDimensionForInputSection:(id)section forModel:(id)model;
+ (void)cleanLegacyModelsDirectoryOfModelsNamed:(id)named;
+ (void)cleanModelAssets;
+ (void)cleanModelsDirectoryOfModelsNamed:(id)named;
+ (void)writeDummyRecordInStore;
+ (void)writeToBiomeStreamWithInput:(id)input;
- (id)currentModelURLForModelName:(id)name;
@end

@implementation SGExtractionModel

+ (void)cleanLegacyModelsDirectoryOfModelsNamed:(id)named
{
  v20 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [SGPaths suggestionsDirectoryAfterCreatingIfNeeded:0];
  v6 = [defaultManager enumeratorAtPath:v5];
  nextObject = [v6 nextObject];
  if (nextObject)
  {
    v9 = nextObject;
    *&v8 = 138412290;
    v16 = v8;
    do
    {
      if ([v9 containsString:{namedCopy, v16}] && ((objc_msgSend(v9, "containsString:", @"mlmodel") & 1) != 0 || objc_msgSend(v9, "containsString:", @"mlmodelc")))
      {
        v10 = [v5 stringByAppendingPathComponent:v9];
        v17 = 0;
        v11 = [defaultManager removeItemAtPath:v10 error:&v17];
        v12 = v17;

        if (!v11 || v12)
        {
          v13 = sgLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = v16;
            v19 = v9;
            _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "SGExtractionModel: Couldn't delete model file: %@", buf, 0xCu);
          }
        }
      }

      nextObject2 = [v6 nextObject];

      v9 = nextObject2;
    }

    while (nextObject2);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)cleanModelsDirectoryOfModelsNamed:(id)named
{
  v22 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  modelsDirectoryName = [self modelsDirectoryName];
  v7 = [SGPaths suggestionsSubdirectory:modelsDirectoryName creatingDirectoriesIfNeeded:0];

  if ([defaultManager fileExistsAtPath:v7])
  {
    v8 = [defaultManager enumeratorAtPath:v7];
    nextObject = [v8 nextObject];
    if (nextObject)
    {
      v11 = nextObject;
      *&v10 = 138412290;
      v18 = v10;
      do
      {
        if ([v11 containsString:{namedCopy, v18}])
        {
          v12 = [v7 stringByAppendingPathComponent:v11];
          v19 = 0;
          v13 = [defaultManager removeItemAtPath:v12 error:&v19];
          v14 = v19;

          if (!v13 || v14)
          {
            v15 = sgLogHandle();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v18;
              v21 = v11;
              _os_log_error_impl(&dword_231E60000, v15, OS_LOG_TYPE_ERROR, "SGExtractionModel: Couldn't delete model file: %@", buf, 0xCu);
            }
          }
        }

        nextObject2 = [v8 nextObject];

        v11 = nextObject2;
      }

      while (nextObject2);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (void)cleanModelAssets
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14[0] = @"ReminderModel";
  v14[1] = @"StructuredEventModel";
  v14[2] = @"structuredEventGazetteer";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:{3, 0}];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [self cleanLegacyModelsDirectoryOfModelsNamed:v8];
        [self cleanModelsDirectoryOfModelsNamed:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)enrichTaggedCharacterRangesWithModelOutput:(id)output usingInputCharacterRanges:(id)ranges
{
  v45 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  rangesCopy = ranges;
  v32 = objc_opt_new();
  v7 = objc_opt_new();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = outputCopy;
  v8 = off_278949000;
  v9 = rangesCopy;
  v37 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v37)
  {
    v35 = *v41;
    do
    {
      for (i = 0; i != v37; ++i)
      {
        if (*v41 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [obj objectForKeyedSubscript:*(*(&v40 + 1) + 8 * i)];
        if ([v11 count])
        {
          v12 = 0;
          do
          {
            if ([v7 count] <= v12)
            {
              v13 = objc_opt_new();
              [v7 addObject:v13];
            }

            v14 = [v11 objectAtIndexedSubscript:v12];
            v15 = [v14 isEqualToString:@"NONE"];

            if ((v15 & 1) == 0)
            {
              v16 = [v7 objectAtIndexedSubscript:v12];
              v17 = objc_alloc(MEMORY[0x277CCACA8]);
              v18 = [SGTaggedCharacterRange annotationTypeUniqueIdentifier:10];
              v19 = [v11 objectAtIndexedSubscript:v12];
              v20 = [v17 initWithFormat:@"%@_%@", v18, v19];
              [v16 addObject:v20];

              v8 = off_278949000;
              rangesCopy = v9;
            }

            ++v12;
          }

          while ([v11 count] > v12);
        }
      }

      v37 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v37);
  }

  if ([v7 count])
  {
    v21 = 0;
    do
    {
      v33 = objc_alloc(v8[59]);
      v38 = [rangesCopy objectAtIndexedSubscript:v21];
      tags = [v38 tags];
      v34 = [v7 objectAtIndexedSubscript:v21];
      v22 = [tags arrayByAddingObjectsFromArray:v34];
      v23 = [rangesCopy objectAtIndexedSubscript:v21];
      range = [v23 range];
      v26 = v25;
      v27 = [v9 objectAtIndexedSubscript:v21];
      text = [v27 text];
      v29 = [v33 initWithAnnotationType:4 tags:v22 range:range text:{v26, text}];
      [v32 addObject:v29];

      v8 = off_278949000;
      rangesCopy = v9;

      ++v21;
    }

    while ([v7 count] > v21);
  }

  v30 = *MEMORY[0x277D85DE8];

  return v32;
}

+ (id)argMaxForOutputIndex:(id)index index:(int)a4 shape:(id)shape
{
  v23[2] = *MEMORY[0x277D85DE8];
  indexCopy = index;
  shapeCopy = shape;
  v8 = [shapeCopy objectAtIndexedSubscript:{objc_msgSend(shapeCopy, "count") > 1}];
  if ([v8 integerValue] < 1)
  {
    v21 = -1;
  }

  else
  {
    v9 = 0;
    v10 = -1.0;
    v21 = -1;
    do
    {
      if ([shapeCopy count] < 2)
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:v9];
        v22 = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
        v14 = [indexCopy objectForKeyedSubscript:v12];
      }

      else
      {
        v11 = [MEMORY[0x277CCABB0] numberWithInt:a4];
        v23[0] = v11;
        v12 = [MEMORY[0x277CCABB0] numberWithInt:v9];
        v23[1] = v12;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:2];
        v14 = [indexCopy objectForKeyedSubscript:v13];
      }

      [v14 doubleValue];
      if (v15 > v10)
      {
        [v14 doubleValue];
        v10 = v16;
        v21 = v9;
      }

      ++v9;
    }

    while ([v8 integerValue] > v9);
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:v21];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

+ (id)argMaxForLastOutput:(id)output
{
  outputCopy = output;
  shape = [outputCopy shape];
  v6 = [self argMaxForOutputIndex:outputCopy index:0xFFFFFFFFLL shape:shape];

  return v6;
}

+ (id)argMaxForSequence:(id)sequence
{
  sequenceCopy = sequence;
  shape = [sequenceCopy shape];
  v6 = [shape count];
  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  if (v6 == 2)
  {
    v8 = [shape objectAtIndexedSubscript:0];
    v9 = [v7 initWithCapacity:{objc_msgSend(v8, "integerValue")}];

    v10 = [shape objectAtIndexedSubscript:0];
    integerValue = [v10 integerValue];

    if (integerValue >= 1)
    {
      v12 = 0;
      do
      {
        v13 = [self argMaxForOutputIndex:sequenceCopy index:v12 shape:shape];
        [v9 setObject:v13 atIndexedSubscript:v12];

        ++v12;
        v14 = [shape objectAtIndexedSubscript:0];
        integerValue2 = [v14 integerValue];
      }

      while (integerValue2 > v12);
    }
  }

  else
  {
    v16 = [self argMaxForOutputIndex:sequenceCopy index:0 shape:shape];
    v9 = [v7 initWithObjects:{v16, 0}];
  }

  return v9;
}

+ (id)modelOutputFromOutputMapping:(id)mapping modelOutput:(id)output modelInput:(id)input
{
  mappingCopy = mapping;
  outputCopy = output;
  inputCopy = input;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9697;
  v24 = __Block_byref_object_dispose__9698;
  v25 = objc_opt_new();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__SGExtractionModel_modelOutputFromOutputMapping_modelOutput_modelInput___block_invoke;
  v15[3] = &unk_27894CDD8;
  v11 = outputCopy;
  v18 = &v20;
  selfCopy = self;
  v16 = v11;
  v12 = inputCopy;
  v17 = v12;
  [mappingCopy enumerateKeysAndObjectsUsingBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __73__SGExtractionModel_modelOutputFromOutputMapping_modelOutput_modelInput___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) valueForKey:v7];
  v10 = [v8 objectForKeyedSubscript:@"mapping"];
  v11 = [v8 objectForKeyedSubscript:@"IS_TIME_DISTRIBUTED"];
  v12 = [v11 BOOLValue];

  v13 = *(a1 + 56);
  v14 = objc_opt_class();
  v36 = a1;
  v37 = v9;
  if (v12)
  {
    v34 = v8;
    v35 = v7;
    v15 = [v14 argMaxForSequence:v9];
    v16 = objc_opt_new();
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v40;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [v10 objectAtIndexedSubscript:{objc_msgSend(*(*(&v39 + 1) + 8 * i), "integerValue")}];
          if (v22)
          {
            [v16 addObject:v22];
          }

          else
          {
            v23 = sgRemindersLogHandle();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, "Unable to map output to label", buf, 2u);
            }
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v39 objects:v43 count:16];
      }

      while (v19);
    }

    v7 = v35;
    [*(*(*(v36 + 48) + 8) + 40) setObject:v16 forKeyedSubscript:v35];
    v8 = v34;
  }

  else
  {
    v17 = [v14 argMaxForLastOutput:v9];
    v16 = [v10 objectAtIndexedSubscript:{objc_msgSend(v17, "integerValue")}];
    v24 = objc_opt_new();
    v25 = [*(a1 + 40) valueForKey:@"L"];
    v26 = v25;
    if (v25)
    {
      v27 = [v25 shape];
      v28 = [v27 objectAtIndexedSubscript:0];
      v29 = [v28 unsignedIntegerValue];

      for (; v29; --v29)
      {
        [v24 addObject:v16];
      }

      [*(*(*(v36 + 48) + 8) + 40) setObject:v24 forKeyedSubscript:v7];
    }

    else
    {
      v30 = sgRemindersLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_231E60000, v30, OS_LOG_TYPE_ERROR, "Found no Lemma input when trying to extend output label to sequence length.", buf, 2u);
      }

      v31 = *(*(v36 + 48) + 8);
      v32 = *(v31 + 40);
      *(v31 + 40) = 0;

      *a4 = 1;
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)featureDimensionForInputSection:(id)section forModel:(id)model
{
  v18 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  modelDescription = [model modelDescription];
  inputDescriptionsByName = [modelDescription inputDescriptionsByName];
  v8 = [inputDescriptionsByName objectForKeyedSubscript:sectionCopy];
  multiArrayConstraint = [v8 multiArrayConstraint];
  shape = [multiArrayConstraint shape];

  if (shape)
  {
    v11 = [shape objectAtIndexedSubscript:0];
    unsignedIntValue = [v11 unsignedIntValue];
  }

  else
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = sectionCopy;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "featureDimensionForInputSection: Model doesn't have description for inputSection: %@", &v16, 0xCu);
    }

    unsignedIntValue = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return unsignedIntValue;
}

+ (void)writeDummyRecordInStore
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:@"com.apple.CoreSuggestions.SemlPlugin"];
  v3 = v2;
  if (v2)
  {
    [v2 deleteAllSavedRecordsWithCompletion:&__block_literal_global_150];
    v4 = objc_opt_new();
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __44__SGExtractionModel_writeDummyRecordInStore__block_invoke_159;
    v10 = &unk_27894CDB0;
    v11 = &unk_28474B3F0;
    [v3 saveRecordWithData:v4 recordInfo:? completion:?];

    v5 = v11;
  }

  else
  {
    v5 = sgLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = @"com.apple.CoreSuggestions.SemlPlugin";
      _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "SemlTraining failed to get a DESRecordStore for %@", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __44__SGExtractionModel_writeDummyRecordInStore__block_invoke_159(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = sgLogHandle();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = 138412546;
      v11 = v7;
      v12 = 2112;
      v13 = v4;
      _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, "Failed to send session stats %@ to Fides. Error: %@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = 138412290;
    v11 = v9;
    _os_log_debug_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEBUG, "Successfully sent stats %@ to Fides.", &v10, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __44__SGExtractionModel_writeDummyRecordInStore__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (v2)
  {
    v3 = sgLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_231E60000, v3, OS_LOG_TYPE_ERROR, "Failed to delete existing records in DESRecordStore. Error: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (void)writeToBiomeStreamWithInput:(id)input
{
  v29 = *MEMORY[0x277D85DE8];
  inputCopy = input;
  v4 = MEMORY[0x277D42570];
  v25 = 0;
  v5 = [MEMORY[0x277CCAAA0] dataWithJSONObject:inputCopy options:0 error:&v25];
  v6 = v25;
  v7 = [v5 copy];
  v8 = [v4 compress:v7 lowMemory:1];

  v9 = sgLogHandle();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v8 length];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_231E60000, v10, OS_LOG_TYPE_DEFAULT, "JsonData: %tu bytes", &buf, 0xCu);
    }

    v10 = [MEMORY[0x277CF17F8] newPrivateStreamDefaultConfigurationWithStoreBasePath:@"/private/var/mobile/Library/PrivateBiomeStream/SemlPlugin/"];
    v12 = [objc_alloc(MEMORY[0x277CF1B30]) initWithPrivateStreamIdentifier:@"ExamplePrivateStream" storeConfig:v10];
    source = [v12 source];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v27 = 0x2020000000;
    v28 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v14 = [v12 publisherWithStartTime:0 endTime:0 maxEvents:&unk_284749410 lastN:0 reversed:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__SGExtractionModel_writeToBiomeStreamWithInput___block_invoke_2;
    v20[3] = &unk_27894CD60;
    v20[4] = &buf;
    v20[5] = &v21;
    v15 = [v14 sinkWithCompletion:&__block_literal_global_9737 receiveInput:v20];
    v16 = v22[3];
    if (v16 == [&unk_284749410 unsignedIntValue])
    {
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __49__SGExtractionModel_writeToBiomeStreamWithInput___block_invoke_3;
      v19[3] = &unk_27894CD88;
      v19[4] = &buf;
      [v12 pruneWithPredicateBlock:v19];
    }

    v17 = [ExampleEvent eventWithData:v8 dataVersion:1];
    [source sendEvent:v17];

    _Block_object_dispose(&v21, 8);
    _Block_object_dispose(&buf, 8);
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v6;
    _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "JSON data could not be generated: %@", &buf, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __49__SGExtractionModel_writeToBiomeStreamWithInput___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 timestamp];
  *(*(*(a1 + 32) + 8) + 24) = v4;
  ++*(*(*(a1 + 40) + 8) + 24);
  return result;
}

+ (id)inputDictFromTaggedCharacterRanges:(id)ranges usingTokenMapping:(id)mapping forModel:(id)model pflTraining:(BOOL)training hasEvent:(BOOL)event
{
  eventCopy = event;
  trainingCopy = training;
  v81 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  mappingCopy = mapping;
  modelCopy = model;
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = __Block_byref_object_copy__9697;
  v76[4] = __Block_byref_object_dispose__9698;
  v77 = 0;
  v47 = rangesCopy;
  v12 = [rangesCopy count];
  v13 = objc_opt_new();
  v14 = objc_opt_new();
  v72 = 0;
  v73 = &v72;
  v74 = 0x2020000000;
  v75 = 1;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __104__SGExtractionModel_inputDictFromTaggedCharacterRanges_usingTokenMapping_forModel_pflTraining_hasEvent___block_invoke;
  v62[3] = &unk_27894CD38;
  selfCopy = self;
  v70 = v12;
  v53 = modelCopy;
  v63 = v53;
  v67 = v76;
  v64 = mappingCopy;
  v68 = &v72;
  v49 = v13;
  v65 = v49;
  v71 = trainingCopy;
  v48 = v14;
  v66 = v48;
  v55 = v64;
  [v64 enumerateKeysAndObjectsUsingBlock:v62];
  if (*(v73 + 24) != 1)
  {
    v37 = 0;
    goto LABEL_28;
  }

  v52 = 0;
LABEL_3:
  if ([v47 count] > v52)
  {
    context = objc_autoreleasePoolPush();
    v15 = [v47 objectAtIndexedSubscript:v52];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v45 = v15;
    tags = [v15 tags];
    v17 = [tags countByEnumeratingWithState:&v58 objects:v80 count:16];
    if (!v17)
    {
      goto LABEL_20;
    }

    v56 = *v59;
    obj = tags;
    while (1)
    {
      v18 = 0;
      v57 = v17;
      do
      {
        if (*v59 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v58 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        v21 = [v19 substringWithRange:{0, 1}];
        v22 = [v55 objectForKeyedSubscript:v21];
        if (v22)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = [self featureDimensionForInputSection:v21 forModel:v53];
          v25 = [v19 substringFromIndex:2];
          v26 = [v22 objectForKeyedSubscript:v25];

          if (v26)
          {
            if (v24 < 2)
            {
              v34 = [v49 objectForKeyedSubscript:v21];
              v35 = [MEMORY[0x277CCABB0] numberWithInt:v52];
              v78[0] = v35;
              v78[1] = &unk_284749440;
              v78[2] = &unk_284749440;
              v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v78 count:3];
              [v34 setObject:v26 forKeyedSubscript:v36];

              if (trainingCopy)
              {
                v31 = [v48 objectForKeyedSubscript:v21];
                v32 = [v31 objectAtIndexedSubscript:v52];
                [v32 setObject:v26 atIndexedSubscript:0];
LABEL_16:
              }
            }

            else
            {
              v27 = [v49 objectForKeyedSubscript:v21];
              v28 = [MEMORY[0x277CCABB0] numberWithInt:v52];
              v79[0] = v28;
              v79[1] = &unk_284749440;
              v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v26, "unsignedIntValue")}];
              v79[2] = v29;
              v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v79 count:3];
              [v27 setObject:&unk_284749428 forKeyedSubscript:v30];

              if (trainingCopy)
              {
                v31 = [v48 objectForKeyedSubscript:v21];
                v32 = [v31 objectAtIndexedSubscript:v52];
                firstObject = [v32 firstObject];
                [firstObject setObject:&unk_284749428 atIndexedSubscript:{objc_msgSend(v26, "unsignedIntValue")}];

                goto LABEL_16;
              }
            }
          }

          objc_autoreleasePoolPop(v23);
        }

        objc_autoreleasePoolPop(v20);
        ++v18;
      }

      while (v57 != v18);
      tags = obj;
      v17 = [obj countByEnumeratingWithState:&v58 objects:v80 count:16];
      if (!v17)
      {
LABEL_20:

        objc_autoreleasePoolPop(context);
        ++v52;
        goto LABEL_3;
      }
    }
  }

  if (trainingCopy)
  {
    v38 = objc_opt_new();
    [v48 setObject:v38 forKeyedSubscript:@"polarity_true"];

    v39 = [v48 objectForKeyedSubscript:@"polarity_true"];
    v40 = v39;
    if (eventCopy)
    {
      v41 = &unk_284749428;
    }

    else
    {
      v41 = &unk_284749440;
    }

    [v39 addObject:v41];

    [self writeDummyRecordInStore];
    [self writeToBiomeStreamWithInput:v48];
  }

  v37 = v49;
LABEL_28:

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(v76, 8);

  v42 = *MEMORY[0x277D85DE8];

  return v37;
}

void __104__SGExtractionModel_inputDictFromTaggedCharacterRanges_usingTokenMapping_forModel_pflTraining_hasEvent___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v51[3] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v44 = v6;
  v8 = [*(a1 + 80) featureDimensionForInputSection:? forModel:?];
  v9 = objc_alloc(MEMORY[0x277CBFF48]);
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 88)];
  v51[0] = v10;
  v51[1] = &unk_284749428;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
  v51[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:3];
  v13 = *(*(a1 + 64) + 8);
  obj = *(v13 + 40);
  v14 = [v9 initWithShape:v12 dataType:131104 error:&obj];
  objc_storeStrong((v13 + 40), obj);

  v45 = v14;
  if (v14)
  {
    v16 = *(a1 + 88);
    v43 = a1;
    if (v16)
    {
      v17 = 0;
      *&v15 = 138412290;
      v41 = v15;
      do
      {
        if (v8)
        {
          for (i = 0; i != v8; ++i)
          {
            if (v8 < 2)
            {
              v19 = [MEMORY[0x277CCABB0] numberWithInt:0];
              v22 = [*(a1 + 40) objectForKeyedSubscript:v44];
              v20 = [v22 objectForKeyedSubscript:&stru_284703F00];

              if (!v20)
              {
                v23 = sgLogHandle();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = v41;
                  v49 = v44;
                  _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, "inputDictFromTaggedCharacterRanges: '' not present for inputSection: %@", buf, 0xCu);
                }

                v20 = v19;
              }

              v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v17, v41}];
              v47[0] = v21;
              v47[1] = &unk_284749440;
              v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
              v47[2] = v24;
              v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];
              [v45 setObject:v20 forKeyedSubscript:v25];

              a1 = v43;
            }

            else
            {
              v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
              v50[0] = v19;
              v50[1] = &unk_284749440;
              v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
              v50[2] = v20;
              v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:3];
              [v45 setObject:&unk_284749440 forKeyedSubscript:v21];
            }
          }

          v16 = *(a1 + 88);
        }

        ++v17;
      }

      while (v17 < v16);
    }

    [*(a1 + 48) setObject:v45 forKeyedSubscript:{v44, v41}];
    if (*(a1 + 96))
    {
      v26 = objc_opt_new();
      [*(v43 + 56) setObject:v26 forKeyedSubscript:v44];

      if (*(v43 + 88))
      {
        v28 = 0;
        *&v27 = 138412290;
        v42 = v27;
        do
        {
          v29 = objc_opt_new();
          if (v8)
          {
            for (j = 0; j != v8; ++j)
            {
              if (v8 < 2)
              {
                v35 = [*(v43 + 40) objectForKeyedSubscript:v44];
                v33 = [v35 objectForKeyedSubscript:&stru_284703F00];

                if (!v33)
                {
                  v36 = sgLogHandle();
                  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                  {
                    *buf = v42;
                    v49 = v44;
                    _os_log_error_impl(&dword_231E60000, v36, OS_LOG_TYPE_ERROR, "inputDictFromTaggedCharacterRanges: '' not present for inputSection: %@", buf, 0xCu);
                  }

                  v33 = &unk_284749440;
                }

                v32 = v29;
                v34 = v33;
              }

              else
              {
                if (!j)
                {
                  v31 = objc_opt_new();
                  [v29 addObject:v31];
                }

                v32 = [v29 objectAtIndex:{0, v42}];
                v33 = v32;
                v34 = &unk_284749440;
              }

              [v32 addObject:{v34, v42}];
            }
          }

          v37 = [*(v43 + 56) objectForKeyedSubscript:{v44, v42}];
          [v37 addObject:v29];

          ++v28;
        }

        while (v28 < *(v43 + 88));
      }
    }
  }

  else
  {
    v38 = sgLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v40 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138412290;
      v49 = v40;
      _os_log_error_impl(&dword_231E60000, v38, OS_LOG_TYPE_ERROR, "Unable to create input MLMultiArray: %@", buf, 0xCu);
    }

    *(*(*(a1 + 72) + 8) + 24) = 0;
    *a4 = 1;
  }

  v39 = *MEMORY[0x277D85DE8];
}

+ (id)inputDictFromTaggedCharacterRanges:(id)ranges usingTokenMapping:(id)mapping forModel:(id)model
{
  modelCopy = model;
  mappingCopy = mapping;
  rangesCopy = ranges;
  v10 = [objc_opt_class() inputDictFromTaggedCharacterRanges:rangesCopy usingTokenMapping:mappingCopy forModel:modelCopy pflTraining:0 hasEvent:0];

  return v10;
}

+ (id)loadLazyPlistWithBasename:(id)basename
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [basename stringByAppendingPathExtension:@"plplist"];
  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGExtractionModel.m" lineNumber:79 description:{@"Invalid parameter not satisfying: %@", @"relPath"}];
  }

  v6 = +[SGAsset localeAsset];
  v7 = [v6 filesystemPathForAssetDataRelativePath:v5];

  if (v7)
  {
    v14 = 0;
    v8 = [MEMORY[0x277D425D8] dictionaryWithPath:v7 error:&v14];
    v9 = v14;
    if (v8)
    {
      goto LABEL_11;
    }

    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v7;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_231E60000, v10, OS_LOG_TYPE_ERROR, "Unable to load plplist content for %@: %@", buf, 0x16u);
    }
  }

  else
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v5;
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "Unable to resolve path: %@", buf, 0xCu);
    }
  }

  v8 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)currentModelURLForModelName:(id)name
{
  nameCopy = name;
  v4 = +[SGAsset localeAsset];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@.%@", nameCopy, @"mlmodelc"];

  v6 = [v4 filesystemPathForAssetDataRelativePath:v5];

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v6];
  }

  else
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGExtractioNModel: Unable to find URL for model", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

@end