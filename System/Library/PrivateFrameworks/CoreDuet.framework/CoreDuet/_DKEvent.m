@interface _DKEvent
+ (BOOL)copyMetadata:(id)a3 toManagedObject:(id)a4;
+ (BOOL)isValidURL:(id)a3;
+ (_DKEvent)eventWithRelevantShortcut:(id)a3 bundleID:(id)a4;
+ (_DKEvent)eventWithSearchableItem:(id)a3 bundleIdentifier:(id)a4;
+ (_DKEvent)eventWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 categoryIntegerValue:(int64_t)a7 confidence:(double)a8 metadata:(id)a9;
+ (_DKEvent)eventWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 identifierStringValue:(id)a7 confidence:(double)a8 metadata:(id)a9;
+ (_DKEvent)eventWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 quantityDoubleValue:(double)a7 confidence:(double)a8 metadata:(id)a9;
+ (_DKEvent)eventWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 value:(id)a7 confidence:(double)a8 metadata:(id)a9;
+ (_DKEvent)eventWithStream:(id)a3 startDate:(id)a4 endDate:(id)a5 value:(id)a6;
+ (_DKEvent)eventWithStream:(id)a3 startDate:(id)a4 endDate:(id)a5 value:(id)a6 confidence:(double)a7 metadata:(id)a8;
+ (_DKEvent)eventWithStream:(id)a3 startDate:(id)a4 endDate:(id)a5 value:(id)a6 metadata:(id)a7;
+ (id)allowedWebpageURLSchemes;
+ (id)eventRepresentingUserActivityWithSearchableItem:(id)a3 bundleIdentifier:(id)a4;
+ (id)eventStreamFromManagedObject:(id)a3 forValue:(id)a4 cache:(id)a5;
+ (id)fetchCustomMetadataWithName:(id)a3 valueHash:(id)a4 context:(id)a5;
+ (id)fromPBCodable:(id)a3 skipMetadata:(BOOL)a4;
+ (id)keyPathForMOKeyPath:(uint64_t)a1;
+ (id)metadataForInteraction:(id)a3 storeKeyImage:(BOOL)a4;
+ (id)moKeyPathForKeyPath:(uint64_t)a1;
+ (id)relatedContactIdentifiersFromIntent:(id)a3;
- (BOOL)BOOLValue;
- (BOOL)copyToManagedObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (_DKEvent)initWithCoder:(id)a3;
- (_DKEvent)initWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 value:(id)a7 confidence:(double)a8 metadata:(id)a9;
- (double)doubleValue;
- (id)_initWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 value:(id)a7 confidence:(double)a8 metadata:(id)a9;
- (id)interaction;
- (id)metadataFromCustomMetadata:(id)a3;
- (id)metadataFromCustomMetadata:(id)a3 cache:(id)a4;
- (id)metadataFromStructuredMetadata:(id)a3 excludedMetadataKeys:(id)a4;
- (id)metadataFromStructuredMetadata:(id)a3 excludedMetadataKeys:(id)a4 cache:(id)a5;
- (id)primaryValue;
- (id)relevantShortcut;
- (id)stringValue;
- (id)toPBCodableUseStructuredMetadata:(BOOL)a3;
- (int64_t)compareValue:(id)a3;
- (int64_t)integerValue;
- (unint64_t)eventValueClassOf:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)fetchInteractionWithPopulatedKeyImage:(id)a3;
@end

@implementation _DKEvent

- (id)stringValue
{
  v2 = [(_DKEvent *)self value];
  v3 = [v2 stringValue];

  return v3;
}

- (id)primaryValue
{
  v3 = [(_DKEvent *)self value];
  v4 = [v3 conformsToProtocol:&unk_1F05F7418];

  if (v4)
  {
    v5 = [(_DKEvent *)self value];
    v6 = [v5 primaryValue];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (_DKEvent)eventWithSearchableItem:(id)a3 bundleIdentifier:(id)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v6 isEqualToString:@"com.apple.mobilesafari"])
  {
    v7 = [_DKSource sourceForSearchableItem:v5 bundleID:v6];
    v8 = [v5 attributeSet];
    v9 = [v8 contentURL];
    v10 = [v9 absoluteString];

    if (v10)
    {
      v11 = [v5 attributeSet];
      v12 = [v11 title];

      if (v12)
      {
        v13 = +[_DKSafariHistoryMetadataKey title];
        v21 = v13;
        v22[0] = v12;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      }

      else
      {
        v14 = 0;
      }

      v16 = +[_DKSystemEventStreams safariHistoryStream];
      v17 = [MEMORY[0x1E695DF00] date];
      v18 = [MEMORY[0x1E695DF00] date];
      v15 = [_DKEvent eventWithStream:v16 source:v7 startDate:v17 endDate:v18 identifierStringValue:v10 metadata:v14];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (id)allowedWebpageURLSchemes
{
  if (allowedWebpageURLSchemes_once != -1)
  {
    +[_DKEvent(CSSearchableItem) allowedWebpageURLSchemes];
  }

  v3 = allowedWebpageURLSchemes_result;

  return v3;
}

+ (BOOL)isValidURL:(id)a3
{
  v4 = MEMORY[0x1E696AF20];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:v5 resolvingAgainstBaseURL:1];

  if (v6 && ([v6 scheme], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "lowercaseString"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "copy"), v8, v7, v9))
  {
    v10 = [a1 allowedWebpageURLSchemes];
    v11 = [v10 containsObject:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)eventRepresentingUserActivityWithSearchableItem:(id)a3 bundleIdentifier:(id)a4
{
  v53[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"com.apple.mobilesafari"])
  {
    v8 = [_DKSource sourceForSearchableItem:v6 bundleID:v7];
    v9 = [v6 attributeSet];
    v10 = [v9 contentURL];

    if (!v10)
    {
      v18 = 0;
LABEL_22:

      goto LABEL_23;
    }

    if (([a1 isValidURL:v10] & 1) == 0)
    {
      v19 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [_DKEvent(CSSearchableItem) eventRepresentingUserActivityWithSearchableItem:v10 bundleIdentifier:v19];
      }

      v18 = 0;
      goto LABEL_21;
    }

    v11 = [v6 attributeSet];
    v42 = [v11 title];

    v12 = objc_alloc(MEMORY[0x1E69636A8]);
    v13 = [v12 initWithActivityType:*MEMORY[0x1E696AA68]];
    [v13 setWebpageURL:v10];
    [v13 setTitle:v42];
    v46 = 0;
    v47 = &v46;
    v48 = 0x3032000000;
    v49 = __Block_byref_object_copy__9;
    v50 = __Block_byref_object_dispose__9;
    v51 = 0;
    v14 = dispatch_semaphore_create(0);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __95___DKEvent_CSSearchableItem__eventRepresentingUserActivityWithSearchableItem_bundleIdentifier___block_invoke;
    v43[3] = &unk_1E7368790;
    v45 = &v46;
    v15 = v14;
    v44 = v15;
    [v13 _createUserActivityStringsWithOptions:0 completionHandler:v43];
    v16 = dispatch_time(0, 1000000000);
    v41 = dispatch_semaphore_wait(v15, v16);
    if (v41)
    {
      v17 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [_DKEvent(CSSearchableItem) eventRepresentingUserActivityWithSearchableItem:v17 bundleIdentifier:?];
      }

      v18 = 0;
    }

    else
    {
      if (!v47[5] || ([v6 uniqueIdentifier], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
      {
        v18 = 0;
LABEL_20:

        _Block_object_dispose(&v46, 8);
        if (v41)
        {
LABEL_21:

          v35 = 0;
          goto LABEL_24;
        }

        goto LABEL_22;
      }

      v39 = +[_DKApplicationActivityMetadataKey itemIdentifier];
      v52[0] = v39;
      v38 = [v6 uniqueIdentifier];
      v53[0] = v38;
      v22 = +[_DKApplicationActivityMetadataKey userActivityRequiredString];
      v52[1] = v22;
      v53[1] = v47[5];
      v23 = +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
      v52[2] = v23;
      v53[2] = MEMORY[0x1E695E118];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];
      v17 = [v24 mutableCopy];

      v25 = [v13 _uniqueIdentifier];
      v26 = [v25 UUIDString];
      v27 = +[_DKApplicationActivityMetadataKey userActivityUUID];
      [v17 setObject:v26 forKeyedSubscript:v27];

      v28 = [v6 attributeSet];
      v29 = [v28 contentDescription];

      if (v29)
      {
        v30 = [v6 attributeSet];
        v31 = [v30 contentDescription];
        v32 = +[_DKApplicationActivityMetadataKey contentDescription];
        [v17 setObject:v31 forKeyedSubscript:v32];
      }

      v40 = +[_DKSystemEventStreams appActivityStream];
      v33 = [MEMORY[0x1E695DF00] date];
      v34 = [MEMORY[0x1E695DF00] date];
      v18 = [_DKEvent eventWithStream:v40 source:v8 startDate:v33 endDate:v34 identifierStringValue:v7 metadata:v17];
    }

    goto LABEL_20;
  }

  v18 = 0;
LABEL_23:
  v18 = v18;
  v35 = v18;
LABEL_24:

  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

+ (_DKEvent)eventWithRelevantShortcut:(id)a3 bundleID:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v19 = 0;
    goto LABEL_30;
  }

  v7 = INTrimToKeyImage();
  v48[1] = 0;
  v8 = INExtractKeyImage();
  v9 = 0;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11 = [v8 watchTemplate];
  v43 = v10;
  if (v11)
  {
    v12 = v11;
    v13 = [v8 watchTemplate];
    v14 = [v13 image];
    if (!v14)
    {
LABEL_10:

      goto LABEL_11;
    }

    v15 = v14;
    v16 = [v9 keyImage];

    if (!v16)
    {
LABEL_11:
      v42 = v7;
      v48[0] = 0;
      v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v48];
      v23 = v48[0];
      v24 = v23;
      if (v22)
      {
        v39 = v23;
        v25 = +[_DKRelevantShortcutMetadataKey serializedRelevantShortcut];
        v40 = v22;
        [v10 setObject:v22 forKeyedSubscript:v25];

        v26 = [MEMORY[0x1E695DF00] date];
        v27 = +[_DKSystemEventStreams appRelevantShortcutsStream];
        v41 = v6;
        v28 = [_DKBundleIdentifier withBundle:v6];
        v29 = [v10 copy];
        v19 = [_DKEvent eventWithStream:v27 startDate:v26 endDate:v26 value:v28 metadata:v29];

        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v30 = [v5 relevanceProviders];
        v31 = [v30 countByEnumeratingWithState:&v44 objects:v49 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v45;
          while (2)
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v45 != v33)
              {
                objc_enumerationMutation(v30);
              }

              v35 = *(*(&v44 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v36 = v35;
                if ([v36 situation] > 5)
                {
                  [v19 setCompatibilityVersion:4096];

                  goto LABEL_27;
                }
              }
            }

            v32 = [v30 countByEnumeratingWithState:&v44 objects:v49 count:16];
            if (v32)
            {
              continue;
            }

            break;
          }
        }

LABEL_27:

        v6 = v41;
        v24 = v39;
        v22 = v40;
      }

      else
      {
        v26 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          +[_DKEvent(INRelevantShortcut) eventWithRelevantShortcut:bundleID:];
        }

        v19 = 0;
      }

      v7 = v42;
      goto LABEL_29;
    }
  }

  v17 = [v9 keyImage];
  v12 = [v17 cd_encodedDataImage];

  v18 = [v9 keyImage];

  if (!v18 || v12)
  {
    v20 = [v9 proxyIdentifier];
    v21 = +[_DKRelevantShortcutMetadataKey keyImageProxyIdentifier];
    [v10 setObject:v20 forKeyedSubscript:v21];

    v13 = +[_DKRelevantShortcutMetadataKey serializedKeyImage];
    [v10 setObject:v12 forKeyedSubscript:v13];
    goto LABEL_10;
  }

  v19 = 0;
LABEL_29:

LABEL_30:
  v37 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)relevantShortcut
{
  v3 = [(_DKEvent *)self stream];
  v4 = +[_DKSystemEventStreams appRelevantShortcutsStream];
  v5 = [v3 isEqual:v4];

  if (v5)
  {
    v6 = [(_DKEvent *)self metadata];
    v7 = +[_DKRelevantShortcutMetadataKey serializedRelevantShortcut];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (!v8)
    {
      v10 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(_DKEvent(INRelevantShortcut) *)v10 relevantShortcut];
      }

      v21 = 0;
      goto LABEL_23;
    }

    v25 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v25];
    v10 = v25;
    if (!v9)
    {
      v9 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [_DKEvent(INRelevantShortcut) relevantShortcut];
      }

      v21 = 0;
      goto LABEL_22;
    }

    v11 = [(_DKEvent *)self metadata];
    v12 = +[_DKRelevantShortcutMetadataKey serializedKeyImage];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      v24 = v10;
      v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v13 error:&v24];
      v15 = v24;

      if (!v14)
      {
        v22 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [_DKEvent(INRelevantShortcut) relevantShortcut];
        }

        v21 = 0;
        goto LABEL_21;
      }

      v16 = objc_alloc_init(MEMORY[0x1E696E8D8]);
      [v16 setKeyImage:v14];
      v17 = [(_DKEvent *)self metadata];
      v18 = +[_DKRelevantShortcutMetadataKey keyImageProxyIdentifier];
      v19 = [v17 objectForKeyedSubscript:v18];
      [v16 setProxyIdentifier:v19];

      v20 = INInsertKeyImageExtraction();

      v9 = v20;
    }

    else
    {
      v15 = v10;
    }

    v9 = v9;
    v21 = v9;
LABEL_21:

    v10 = v15;
LABEL_22:

LABEL_23:
    goto LABEL_24;
  }

  v8 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [(_DKEvent(INRelevantShortcut) *)self relevantShortcut];
  }

  v21 = 0;
LABEL_24:

  return v21;
}

- (id)toPBCodableUseStructuredMetadata:(BOOL)a3
{
  v50 = a3;
  v58 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(_DKPREvent);
  v5 = [(_DKEvent *)self startDate];
  [v5 timeIntervalSinceReferenceDate];
  [(_DKPREvent *)v4 setStartDate:v6];

  v7 = [(_DKEvent *)self endDate];
  [v7 timeIntervalSinceReferenceDate];
  [(_DKPREvent *)v4 setEndDate:v8];

  v9 = [(_DKEvent *)self value];
  v10 = [v9 toPBCodable];
  [(_DKPREvent *)v4 setValue:v10];

  v11 = [(_DKEvent *)self stream];
  v12 = [v11 toPBCodable];
  [(_DKPREvent *)v4 setStream:v12];

  v13 = [(_DKObject *)self UUID];
  v14 = [v13 UUIDString];
  [(_DKPREvent *)v4 setIdentifier:v14];

  v15 = [(_DKObject *)self source];
  v16 = [v15 toPBCodable];
  [(_DKPREvent *)v4 setSource:v16];

  v17 = [(_DKObject *)self creationDate];
  [v17 timeIntervalSinceReferenceDate];
  [(_DKPREvent *)v4 setCreationDate:v18];

  v19 = [(_DKEvent *)self timeZone];

  if (v19)
  {
    v20 = [(_DKEvent *)self timeZone];
    -[_DKPREvent setTimeZone:](v4, [v20 secondsFromGMT]);
  }

  if ([(_DKEvent *)self compatibilityVersion])
  {
    [(_DKPREvent *)v4 setCompatibilityVersion:?];
  }

  [(_DKEvent *)self confidence];
  if (v21 != 1.0)
  {
    [(_DKEvent *)self confidence];
    [(_DKPREvent *)v4 setConfidence:v22];
  }

  v23 = [(_DKEvent *)self metadata];
  if (v23)
  {
    v24 = v23;
    v25 = [(_DKEvent *)self metadata];
    v26 = [v25 count];

    if (v26)
    {
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      obj = [(_DKEvent *)self metadata];
      v27 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = self;
        v30 = *v52;
        v31 = 0x1E7366000uLL;
        do
        {
          v32 = 0;
          do
          {
            if (*v52 != v30)
            {
              objc_enumerationMutation(obj);
            }

            v33 = *(*(&v51 + 1) + 8 * v32);
            v34 = [(_DKEvent *)v29 metadata];
            v35 = [v34 objectForKeyedSubscript:v33];

            v36 = objc_alloc_init(*(v31 + 1984));
            if (!v50)
            {
              goto LABEL_17;
            }

            +[_DKMetadataPersistenceLookupTable keyToIndex];
            v49 = v35;
            v37 = v28;
            v38 = v30;
            v39 = v31;
            v40 = v29;
            v42 = v41 = v4;
            v43 = [v42 objectForKeyedSubscript:v33];

            v4 = v41;
            v29 = v40;
            v31 = v39;
            v30 = v38;
            v28 = v37;
            v35 = v49;
            if (v43)
            {
              -[_DKPRMetadataEntry setIndex:](v36, [v43 unsignedIntValue]);
              [(_DKPRMetadataEntry *)v36 setKey:?];
            }

            else
            {
LABEL_17:
              [(_DKPRMetadataEntry *)v36 setKey:v33];
            }

            v44 = [v35 toPBCodable];
            [(_DKPRMetadataEntry *)v36 setValue:v44];

            v45 = [(_DKPRMetadataEntry *)v36 value];

            if (v45)
            {
              [(_DKPREvent *)v4 addMetadata:v36];
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
            {
              [(_DKEvent(Protobuf) *)buf toPBCodableUseStructuredMetadata:v33, &v56];
            }

            ++v32;
          }

          while (v28 != v32);
          v28 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
        }

        while (v28);
      }
    }
  }

  v46 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)fromPBCodable:(id)a3 skipMetadata:(BOOL)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v5;
    v43 = v5;
    v6 = [(_DKPREvent *)v43 value];
    v42 = [_DKObject fromPBCodable:v6];

    if (!a4 && (-[_DKPREvent metadatas](v43), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (-[_DKPREvent metadatas](v43), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7, v9))
    {
      v10 = MEMORY[0x1E695DF90];
      v11 = [(_DKPREvent *)v43 metadatas];
      v44 = [v10 dictionaryWithCapacity:{objc_msgSend(v11, "count")}];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v12 = [(_DKPREvent *)v43 metadatas];
      v13 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v13)
      {
        v14 = *v46;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v46 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v45 + 1) + 8 * i);
            v17 = [(_DKPRMetadataEntry *)v16 key];
            if ([(_DKPRMetadataEntry *)v16 hasIndex])
            {
              v18 = +[_DKMetadataPersistenceLookupTable indexToKey];
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:-[_DKPRMetadataEntry index](v16)];
              v20 = [v18 objectForKeyedSubscript:v19];

              v17 = v20;
            }

            if ([v17 length])
            {
              v21 = MEMORY[0x1E69E58C0];
              v22 = [(_DKPRMetadataEntry *)v16 value];
              v23 = [v21 fromPBCodable:v22];
              [v44 setObject:v23 forKeyedSubscript:v17];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v45 objects:v49 count:16];
        }

        while (v13);
      }
    }

    else
    {
      v44 = 0;
    }

    v25 = [(_DKPREvent *)v43 stream];
    v26 = [_DKEventStream fromPBCodable:v25];

    v27 = [(_DKPREvent *)v43 source];
    v28 = [_DKSource fromPBCodable:v27];

    v29 = objc_alloc(MEMORY[0x1E696AFB0]);
    v30 = [(_DKPREvent *)v43 identifier];
    v31 = [v29 initWithUUIDString:v30];

    v32 = 1.0;
    if ([(_DKPREvent *)v43 hasConfidence])
    {
      v32 = [(_DKPREvent *)v43 confidence];
    }

    v33 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-[_DKPREvent startDate](v43)];
    v34 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-[_DKPREvent endDate](v43)];
    v24 = [[_DKEvent alloc] _initWithStream:v26 source:v28 startDate:v33 endDate:v34 value:v42 confidence:v44 metadata:v32];
    [v24 setUUID:v31];
    v35 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:-[_DKPREvent creationDate](v43)];
    [v24 setCreationDate:v35];

    if ([(_DKPREvent *)v43 hasTimeZone])
    {
      os_unfair_lock_lock(&fromPBCodable_skipMetadata___cacheLock);
      if (!fromPBCodable_skipMetadata___cachedTimeZone || (v36 = fromPBCodable_skipMetadata___cachedSecondsSinceGMT, v36 != [(_DKPREvent *)v43 timeZone]))
      {
        fromPBCodable_skipMetadata___cachedSecondsSinceGMT = [(_DKPREvent *)v43 timeZone];
        v37 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:-[_DKPREvent timeZone](v43)];
        v38 = fromPBCodable_skipMetadata___cachedTimeZone;
        fromPBCodable_skipMetadata___cachedTimeZone = v37;
      }

      [v24 setTimeZone:{fromPBCodable_skipMetadata___cachedTimeZone, v41}];
      os_unfair_lock_unlock(&fromPBCodable_skipMetadata___cacheLock);
    }

    if ([(_DKPREvent *)v43 hasCompatibilityVersion])
    {
      [v24 setCompatibilityVersion:-[_DKPREvent compatibilityVersion](v43)];
    }

    v5 = v41;
  }

  else
  {
    v24 = 0;
  }

  v39 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)metadataForInteraction:(id)a3 storeKeyImage:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:12];
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6];
  v9 = +[_DKIntentMetadataKey serializedInteraction];
  [v7 setObject:v8 forKeyedSubscript:v9];

  v10 = [v6 intent];
  v11 = [v10 _className];
  v12 = +[_DKIntentMetadataKey intentClass];
  [v7 setObject:v11 forKeyedSubscript:v12];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "_type")}];
  v14 = +[_DKIntentMetadataKey intentType];
  [v7 setObject:v13 forKeyedSubscript:v14];

  v15 = [v10 verb];
  v16 = +[_DKIntentMetadataKey intentVerb];
  [v7 setObject:v15 forKeyedSubscript:v16];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v6, "_donatedBySiri")}];
  v18 = +[_DKIntentMetadataKey donatedBySiri];
  [v7 setObject:v17 forKeyedSubscript:v18];

  v19 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "direction")}];
  v20 = +[_DKIntentMetadataKey direction];
  [v7 setObject:v19 forKeyedSubscript:v20];

  v21 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v6, "intentHandlingStatus")}];
  v22 = +[_DKIntentMetadataKey intentHandlingStatus];
  [v7 setObject:v21 forKeyedSubscript:v22];

  v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "shortcutAvailability")}];
  v24 = +[_DKIntentMetadataKey shortcutAvailability];
  [v7 setObject:v23 forKeyedSubscript:v24];

  v25 = [v10 cd_derivedIntentIdentifier];
  v26 = +[_DKIntentMetadataKey derivedIntentIdentifier];
  [v7 setObject:v25 forKeyedSubscript:v26];

  if (v4)
  {
    v27 = [v10 _keyImage];
    v28 = [v27 cd_encodedDataImage];
    v29 = +[_DKIntentMetadataKey serializedKeyImage];
    [v7 setObject:v28 forKeyedSubscript:v29];
  }

  v30 = [v6 identifier];
  v31 = +[_DKIntentMetadataKey interactionIdentifier];
  [v7 setObject:v30 forKeyedSubscript:v31];

  v32 = [a1 relatedContactIdentifiersFromIntent:v10];
  v33 = +[_DKIntentMetadataKey relatedContactIdentifiers];
  [v7 setObject:v32 forKeyedSubscript:v33];

  return v7;
}

+ (id)relatedContactIdentifiersFromIntent:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  [v3 _nonNilParameters];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v5 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    v8 = 0x1E695D000uLL;
    do
    {
      v9 = 0;
      v25 = v6;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [v3 valueForKey:{*(*(&v31 + 1) + 8 * v9), v25}];
        v11 = *(v8 + 3784);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v13 = v7;
          v14 = v8;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v15 = v10;
          v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v28;
            do
            {
              v19 = 0;
              do
              {
                if (*v28 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                __63___DKEvent_INInteraction__relatedContactIdentifiersFromIntent___block_invoke(v16, v4, *(*(&v27 + 1) + 8 * v19++));
              }

              while (v17 != v19);
              v16 = [v15 countByEnumeratingWithState:&v27 objects:v35 count:16];
              v17 = v16;
            }

            while (v16);
          }

          v8 = v14;
          v7 = v13;
          v6 = v25;
        }

        else
        {
          __63___DKEvent_INInteraction__relatedContactIdentifiersFromIntent___block_invoke(isKindOfClass, v4, v10);
        }

        ++v9;
      }

      while (v9 != v6);
      v6 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  v20 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    +[_DKEvent(INInteraction) relatedContactIdentifiersFromIntent:];
  }

  if ([v4 count])
  {
    v21 = [v4 allObjects];
    v22 = [v21 componentsJoinedByString:{@", "}];
  }

  else
  {
    v22 = 0;
  }

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)interaction
{
  v3 = [(_DKEvent *)self stream];
  v4 = [v3 name];
  v5 = +[_DKSystemEventStreams appIntentsStream];
  v6 = [v5 name];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    v8 = [(_DKEvent *)self metadata];
    v9 = +[_DKIntentMetadataKey serializedInteraction];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      v16 = 0;
      v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v16];
      v12 = v16;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v14 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [_DKEvent(INInteraction) interaction];
        }
      }
    }

    else
    {
      v12 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_DKEvent(INInteraction) interaction];
      }

      v11 = 0;
    }
  }

  else
  {
    v10 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_DKEvent(INInteraction) *)self interaction];
    }

    v11 = 0;
  }

  return v11;
}

- (void)fetchInteractionWithPopulatedKeyImage:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(_DKEvent *)self interaction];
    v6 = [v5 intent];
    v7 = [v6 _keyImage];
    if (v7)
    {
      v8 = [(_DKObject *)self source];
      v9 = [v8 deviceID];

      if (v9)
      {
        v10 = [(_DKEvent *)self metadata];
        v11 = +[_DKIntentMetadataKey serializedKeyImage];
        v12 = [v10 objectForKeyedSubscript:v11];

        if (v12)
        {
          v24 = 0;
          v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v24];
          v14 = v24;
          v15 = v14;
          if (!v13)
          {
            v17 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [_DKEvent(INInteraction) fetchInteractionWithPopulatedKeyImage:];
            }

            v4[2](v4, 0);
            goto LABEL_17;
          }

LABEL_9:
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __65___DKEvent_INInteraction__fetchInteractionWithPopulatedKeyImage___block_invoke;
          v21[3] = &unk_1E7369028;
          v22 = v7;
          v23 = v13;
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __65___DKEvent_INInteraction__fetchInteractionWithPopulatedKeyImage___block_invoke_2;
          v18[3] = &unk_1E7369050;
          v19 = v23;
          v20 = v4;
          v12 = v23;
          [v5 _injectProxiesForImages:v21 completion:v18];

LABEL_17:
          goto LABEL_18;
        }

        v16 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [_DKEvent(INInteraction) fetchInteractionWithPopulatedKeyImage:];
        }
      }

      else
      {
        v13 = [v7 cd_dataImage];
        if (v13)
        {
          goto LABEL_9;
        }
      }

      v4[2](v4, 0);
    }

    else
    {
      (v4)[2](v4, v5);
    }

LABEL_18:
  }
}

- (id)metadataFromStructuredMetadata:(id)a3 excludedMetadataKeys:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[_DKMetadataPersistenceLookupTable attributeToKey];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    v34 = v6;
    v35 = v5;
    v32 = *v44;
    v33 = v8;
    v40 = v9;
    do
    {
      v13 = 0;
      v41 = v11;
      do
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v43 + 1) + 8 * v13);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = v15;
        if (!v6 || !v15 || ([v6 containsObject:v15] & 1) == 0)
        {
          NSSelectorFromString(v14);
          if (objc_opt_respondsToSelector())
          {
            v17 = [v5 valueForKey:v14];
            if (v17)
            {
              v18 = v17;
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v19 = MEMORY[0x1E695DFD8];
                v39 = objc_opt_class();
                v38 = objc_opt_class();
                v37 = objc_opt_class();
                v36 = objc_opt_class();
                v20 = objc_opt_class();
                v21 = objc_opt_class();
                v22 = objc_opt_class();
                v23 = objc_opt_class();
                v24 = objc_opt_class();
                v25 = [v19 setWithObjects:{v39, v38, v37, v36, v20, v21, v22, v23, v24, objc_opt_class(), 0}];
                v42 = 0;
                v26 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v25 fromData:v18 error:&v42];
                v27 = v42;

                v9 = v40;
                if (v27)
                {
                  v28 = +[_CDLogging knowledgeChannel];
                  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    v48 = v27;
                    _os_log_error_impl(&dword_191750000, v28, OS_LOG_TYPE_ERROR, "Error unarchiving object %@", buf, 0xCu);
                  }
                }

                v18 = v26;
                v6 = v34;
                v5 = v35;
                v12 = v32;
                v8 = v33;
              }

              else
              {
                v9 = v40;
              }

              v29 = [v9 objectForKeyedSubscript:v14];
              [v8 setObject:v18 forKeyedSubscript:v29];

              v11 = v41;
            }
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v11);
  }

  v30 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)metadataFromStructuredMetadata:(id)a3 excludedMetadataKeys:(id)a4 cache:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    v13 = [v8 objectID];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __84___DKEvent_MOConversion__metadataFromStructuredMetadata_excludedMetadataKeys_cache___block_invoke;
    v14[3] = &unk_1E736A378;
    v14[4] = self;
    v15 = v8;
    v16 = v9;
    v11 = [(_DKObjectFromMOCache *)v10 objectForKey:v13 type:@"metadata" setIfMissingWithBlock:v14];
  }

  else
  {
    v11 = [(_DKEvent *)self metadataFromStructuredMetadata:v8 excludedMetadataKeys:v9];
  }

  return v11;
}

- (id)metadataFromCustomMetadata:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v3, "count")}];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      v9 = 0;
      do
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v40 + 1) + 8 * v9);
        v11 = [v10 name];
        if (!v11)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing attribute for CustomMetadata: %@", v10, v31];
          v14 = LABEL_10:;
          [_CDErrorUtilities simulateCrashWithDescription:v14];
          goto LABEL_18;
        }

        v12 = [v10 stringValue];

        if (v12)
        {
          v13 = [v10 stringValue];
LABEL_17:
          v14 = v13;
          [v4 setObject:v13 forKeyedSubscript:v11];
          goto LABEL_18;
        }

        v15 = [v10 integerValue];

        if (v15)
        {
          v13 = [v10 integerValue];
          goto LABEL_17;
        }

        v16 = [v10 doubleValue];

        if (v16)
        {
          v13 = [v10 doubleValue];
          goto LABEL_17;
        }

        v17 = [v10 dateValue];

        if (v17)
        {
          v13 = [v10 dateValue];
          goto LABEL_17;
        }

        v18 = [v10 binaryValue];

        if (!v18)
        {
          [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid attributeValue for key '%@': %@", v11, v10];
          goto LABEL_10;
        }

        v19 = [v10 valueHash];
        v20 = [v19 hasSuffix:@"B"];

        if (v20)
        {
          v14 = [v10 binaryValue];
          [v4 setObject:v14 forKeyedSubscript:v11];
        }

        else
        {
          v38 = MEMORY[0x1E695DFD8];
          v37 = objc_opt_class();
          v36 = objc_opt_class();
          v35 = objc_opt_class();
          v34 = objc_opt_class();
          v33 = objc_opt_class();
          v32 = objc_opt_class();
          v21 = objc_opt_class();
          v22 = objc_opt_class();
          v23 = objc_opt_class();
          v14 = [v38 setWithObjects:{v37, v36, v35, v34, v33, v32, v21, v22, v23, objc_opt_class(), 0}];
          v24 = MEMORY[0x1E696ACD0];
          v25 = [v10 binaryValue];
          v39 = 0;
          v26 = [v24 unarchivedObjectOfClasses:v14 fromData:v25 error:&v39];
          v27 = v39;

          if (v27)
          {
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              [(_DKEvent(MOConversion) *)buf metadataFromCustomMetadata:v27, &v45];
            }
          }

          else
          {
            [v4 setObject:v26 forKeyedSubscript:v11];
          }
        }

LABEL_18:

        ++v9;
      }

      while (v7 != v9);
      v28 = [v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
      v7 = v28;
    }

    while (v28);
  }

  v29 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)metadataFromCustomMetadata:(id)a3 cache:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v11 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v6;
    v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v23;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v23 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v22 + 1) + 8 * i) objectID];
          v18 = [v17 URIRepresentation];

          v19 = [v18 absoluteString];
          [v11 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    [v11 sortUsingSelector:sel_compare_];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __59___DKEvent_MOConversion__metadataFromCustomMetadata_cache___block_invoke;
    v20[3] = &unk_1E736A3A0;
    v20[4] = self;
    v21 = v12;
    v8 = [(_DKObjectFromMOCache *)v7 objectForKey:v11 type:@"attributeValue" setIfMissingWithBlock:v20];
  }

  else
  {
    v8 = [(_DKEvent *)self metadataFromCustomMetadata:v6];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)eventStreamFromManagedObject:(id)a3 forValue:(id)a4 cache:(id)a5
{
  v6 = a3;
  v7 = a4;
  if ([v7 conformsToProtocol:&unk_1F05F7490])
  {
    v8 = [v7 objectType];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 streamName];
  v10 = [_DKEventStream eventStreamWithName:v9 valueType:v8];

  return v10;
}

- (unint64_t)eventValueClassOf:(id)a3
{
  v3 = a3;
  v4 = [v3 UUID];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = 1;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = 2;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v5 = 3;
        }

        else
        {
          v5 = 0;
        }
      }
    }
  }

  return v5;
}

- (BOOL)copyToManagedObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v36.receiver = self, v36.super_class = _DKEvent, [(_DKObject *)&v36 copyToManagedObject:v4]))
  {
    v5 = v4;
    v6 = [(_DKEvent *)self stream];
    v7 = [v6 name];
    [v5 setStreamName:v7];

    v8 = [MEMORY[0x1E695DEE8] currentCalendar];
    v9 = [(_DKEvent *)self timeZone];
    [v5 setSecondsFromGMT:{objc_msgSend(v9, "secondsFromGMT")}];

    v10 = [(_DKEvent *)self startDate];
    [v10 timeIntervalSinceReferenceDate];
    [v5 setStartDate:?];

    [v5 startDate];
    [v5 setStartSecondOfDay:(v11 % 86400)];
    v12 = [(_DKEvent *)self startDate];
    v13 = [v8 components:512 fromDate:v12];
    [v5 setStartDayOfWeek:{objc_msgSend(v13, "weekday")}];

    v14 = [(_DKEvent *)self endDate];
    [v14 timeIntervalSinceReferenceDate];
    [v5 setEndDate:?];

    [v5 endDate];
    [v5 setEndSecondOfDay:(v15 % 86400)];
    v16 = [(_DKEvent *)self endDate];
    v17 = [v8 components:512 fromDate:v16];
    [v5 setEndDayOfWeek:{objc_msgSend(v17, "weekday")}];

    [v5 setShouldSync:{-[_DKEvent shouldSync](self, "shouldSync")}];
    [(_DKEvent *)self confidence];
    [v5 setConfidence:?];
    [v5 setCompatibilityVersion:{-[_DKEvent compatibilityVersion](self, "compatibilityVersion")}];
    v18 = [(_DKEvent *)self value];
    [v5 setValueInteger:{objc_msgSend(v18, "integerValue")}];

    v19 = [(_DKEvent *)self value];
    [v19 doubleValue];
    [v5 setValueDouble:?];

    v20 = [(_DKEvent *)self value];
    objc_opt_class();
    LOBYTE(v17) = objc_opt_isKindOfClass();

    if (v17)
    {
      v21 = [(_DKEvent *)self value];
      v22 = [v21 stringValue];
      [v5 setValueString:v22];
    }

    v23 = objc_opt_class();
    v24 = [(_DKEvent *)self metadata];
    [v23 copyMetadata:v24 toManagedObject:v5];

    v25 = [(_DKEvent *)self value];
    v26 = [(_DKEvent *)self eventValueClassOf:v25];

    [v5 setValueClass:v26];
    if (v26)
    {
      v27 = [(_DKEvent *)self value];
      [v5 setValueTypeCode:{objc_msgSend(v27, "typeCode")}];
      v28 = 1;
    }

    else
    {
      [v5 setValueClass:0];
      v29 = MEMORY[0x1E695D5B8];
      v30 = [(_DKEvent *)self value];
      v31 = [objc_opt_class() entityName];
      v32 = [v5 managedObjectContext];
      v33 = [v29 insertNewObjectForEntityForName:v31 inManagedObjectContext:v32];
      [v5 setValue:v33];

      v27 = [(_DKEvent *)self value];
      v34 = [v5 value];
      v28 = [v27 copyToManagedObject:v34];
    }
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

+ (id)fetchCustomMetadataWithName:(id)a3 valueHash:(id)a4 context:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__20;
  v30 = __Block_byref_object_dispose__20;
  v31 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __72___DKEvent_MOConversion__fetchCustomMetadataWithName_valueHash_context___block_invoke;
  v21 = &unk_1E7367F20;
  v10 = v9;
  v22 = v10;
  v11 = v7;
  v23 = v11;
  v12 = v8;
  v24 = v12;
  v25 = &v26;
  [v10 performWithOptions:4 andBlock:&v18];
  v13 = v27[5];
  if (!v13)
  {
    v14 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"CustomMetadata" inManagedObjectContext:{v10, v18, v19, v20, v21, v22, v23}];
    v15 = v27[5];
    v27[5] = v14;

    [v27[5] setName:v11];
    [v27[5] setValueHash:v12];
    v13 = v27[5];
  }

  v16 = v13;

  _Block_object_dispose(&v26, 8);

  return v16;
}

+ (BOOL)copyMetadata:(id)a3 toManagedObject:(id)a4
{
  v69 = *MEMORY[0x1E69E9840];
  v53 = a3;
  v5 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_46;
  }

  v47 = v5;
  v6 = v5;
  v52 = +[_DKMetadataPersistenceLookupTable keyToAttribute];
  v50 = [MEMORY[0x1E695DF90] dictionary];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v7 = [v53 allKeys];
  obj = [v7 sortedArrayUsingSelector:sel_compare_];

  v54 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (!v54)
  {
    v8 = 0;
    goto LABEL_44;
  }

  v8 = 0;
  v51 = *v59;
  do
  {
    v9 = 0;
    do
    {
      if (*v59 != v51)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v58 + 1) + 8 * v9);
      v11 = [v53 objectForKeyedSubscript:v10];
      v12 = [v52 objectForKeyedSubscript:v10];
      if (!v12)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = MEMORY[0x1E696AEC0];
          v22 = v11;
          v23 = [_CDHashUtilities md5ForString:v22];
          v24 = [v21 stringWithFormat:@"%@S", v23];

          v25 = [v6 managedObjectContext];
          v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v24 context:v25];

          [v26 setStringValue:v22];
LABEL_25:

          [v6 addCustomMetadataObject:v26];
          [v6 setHasCustomMetadata:1];
          if (([v10 hasPrefix:@"test"] & 1) == 0)
          {
            v38 = +[_CDLogging knowledgeChannel];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = [v6 streamName];
              v40 = objc_opt_class();
              v41 = NSStringFromClass(v40);
              *buf = 138412802;
              v63 = v39;
              v64 = 2112;
              v65 = v10;
              v66 = 2112;
              v67 = v41;
              _os_log_impl(&dword_191750000, v38, OS_LOG_TYPE_DEFAULT, "Using custom metadata path in stream %@ for key '%@'. Value class: %@", buf, 0x20u);
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v22 = v11;
            if (CFNumberIsFloatType(v22))
            {
              v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@D", v22];
              v27 = [v6 managedObjectContext];
              v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v24 context:v27];

              [v26 setDoubleValue:v22];
            }

            else
            {
              v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@I", v22];
              v34 = [v6 managedObjectContext];
              v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v24 context:v34];

              [v26 setIntegerValue:v22];
            }

            goto LABEL_25;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = MEMORY[0x1E696AEC0];
            v22 = v11;
            [v22 timeIntervalSinceReferenceDate];
            v24 = [v28 stringWithFormat:@"%fT", v29];
            v30 = [v6 managedObjectContext];
            v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v24 context:v30];

            [v26 setDateValue:v22];
            goto LABEL_25;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = MEMORY[0x1E696AEC0];
            v22 = v11;
            v32 = [_CDHashUtilities md5ForData:v22];
            v24 = [v31 stringWithFormat:@"%@B", v32];

            v33 = [v6 managedObjectContext];
            v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v24 context:v33];

            [v26 setBinaryValue:v22];
            goto LABEL_25;
          }

          if ([v11 conformsToProtocol:&unk_1F05F0800])
          {
            v24 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11];
            v35 = MEMORY[0x1E696AEC0];
            v36 = [_CDHashUtilities md5ForData:v24];
            v22 = [v35 stringWithFormat:@"%@O", v36];

            v37 = [v6 managedObjectContext];
            v26 = [_DKEvent fetchCustomMetadataWithName:v10 valueHash:v22 context:v37];

            [v26 setBinaryValue:v24];
            goto LABEL_25;
          }

          v26 = +[_CDLogging knowledgeChannel];
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [(_DKEvent(MOConversion) *)&v56 copyMetadata:v57 toManagedObject:v26];
          }
        }

        goto LABEL_30;
      }

      if (!v8)
      {
        v13 = [_DKStructuredMetadataMO alloc];
        v14 = +[_DKStructuredMetadataMO entity];
        v15 = [v6 managedObjectContext];
        v8 = [(_DKStructuredMetadataMO *)v13 initWithEntity:v14 insertIntoManagedObjectContext:v15];
      }

      v16 = [(_DKStructuredMetadataMO *)v8 entity];
      v17 = [v16 propertiesByName];
      v18 = [v17 objectForKeyedSubscript:v12];
      v19 = [v18 attributeType] == 1000;

      if (v19)
      {
        v20 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11];

        v11 = v20;
      }

      [(_DKStructuredMetadataMO *)v8 setValue:v11 forKey:v12];
      [v50 setObject:v11 forKeyedSubscript:v10];
LABEL_30:

      ++v9;
    }

    while (v54 != v9);
    v42 = [obj countByEnumeratingWithState:&v58 objects:v68 count:16];
    v54 = v42;
  }

  while (v42);

  if (v8)
  {
    v55 = 0;
    v43 = [_CDHashUtilities md5forDictionary:v50 error:&v55];
    obj = v55;
    if (v43)
    {
      [(_DKStructuredMetadataMO *)v8 setMetadataHash:v43];
      [(_DKStructuredMetadataMO *)v8 addEventObject:v6];
      [v6 setHasStructuredMetadata:1];
    }

    else
    {
      v44 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        +[_DKEvent(MOConversion) copyMetadata:toManagedObject:];
      }
    }

LABEL_44:
  }

  v5 = v47;
LABEL_46:

  v45 = *MEMORY[0x1E69E9840];
  return isKindOfClass & 1;
}

+ (id)moKeyPathForKeyPath:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 componentsSeparatedByString:@"."];
  v4 = [v3 firstObject];
  v5 = [v4 isEqualToString:@"metadata"];

  if (v5)
  {
    v6 = +[_DKMetadataPersistenceLookupTable keyToAttribute];
    v7 = [v3 lastObject];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"structuredMetadata.%@", v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v10 = [v3 firstObject];
    v11 = [v10 isEqualToString:@"value"];

    if (v11)
    {
      v12 = [v3 lastObject];
      v13 = [v12 stringByReplacingOccurrencesOfString:@"Value" withString:&stru_1F05B9908];

      v14 = [v13 substringToIndex:1];
      v15 = [v14 capitalizedString];
      v16 = [v13 stringByReplacingCharactersInRange:0 withString:{1, v15}];

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"value%@", v16];
    }

    else
    {
      v9 = v2;
    }
  }

  return v9;
}

+ (id)keyPathForMOKeyPath:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  v3 = [v2 componentsSeparatedByString:@"."];
  if ([v3 count] < 2)
  {
    if ([v2 hasPrefix:@"value"])
    {
      v10 = [v2 substringFromIndex:{objc_msgSend(@"value", "length")}];
      v11 = [v10 substringToIndex:1];
      v12 = [v11 lowercaseString];
      v13 = [v10 stringByReplacingCharactersInRange:0 withString:{1, v12}];

      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"value.%@Value", v13];
    }

    else
    {
      v9 = v2;
    }
  }

  else
  {
    v4 = [v3 firstObject];
    v5 = [v4 isEqualToString:@"structuredMetadata"];

    if (v5)
    {
      v6 = +[_DKMetadataPersistenceLookupTable attributeToKey];
      v7 = [v3 lastObject];
      v8 = [v6 objectForKeyedSubscript:v7];

      if (v8)
      {
        v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"metadata.%@", v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (_DKEvent)eventWithStream:(id)a3 startDate:(id)a4 endDate:(id)a5 value:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [[_DKEvent alloc] initWithStream:v12 source:0 startDate:v11 endDate:v10 value:v9 confidence:0 metadata:1.0];

  return v13;
}

+ (_DKEvent)eventWithStream:(id)a3 startDate:(id)a4 endDate:(id)a5 value:(id)a6 metadata:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = [[_DKEvent alloc] initWithStream:v15 source:0 startDate:v14 endDate:v13 value:v12 confidence:v11 metadata:1.0];

  return v16;
}

+ (_DKEvent)eventWithStream:(id)a3 startDate:(id)a4 endDate:(id)a5 value:(id)a6 confidence:(double)a7 metadata:(id)a8
{
  v13 = a8;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[_DKEvent alloc] initWithStream:v17 source:0 startDate:v16 endDate:v15 value:v14 confidence:v13 metadata:a7];

  return v18;
}

+ (_DKEvent)eventWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 value:(id)a7 confidence:(double)a8 metadata:(id)a9
{
  v15 = a9;
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [[_DKEvent alloc] initWithStream:v20 source:v19 startDate:v18 endDate:v17 value:v16 confidence:v15 metadata:a8];

  return v21;
}

+ (_DKEvent)eventWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 categoryIntegerValue:(int64_t)a7 confidence:(double)a8 metadata:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = +[_DKAnyIntegerCategory type];
  v21 = [v15 eventValueType];

  if (!v21)
  {
    goto LABEL_4;
  }

  v22 = [v15 eventValueType];
  v23 = [objc_msgSend(v22 "objectClass")];

  if (v23)
  {
    v24 = [v15 eventValueType];
    v25 = +[_DKObjectType objectTypeWithTypeCode:](_DKCategoryType, "objectTypeWithTypeCode:", [v24 typeCode]);

    v20 = v25;
LABEL_4:
    v26 = [_DKCategory categoryWithInteger:a7 type:v20];
    v27 = [[_DKEvent alloc] initWithStream:v15 source:v16 startDate:v17 endDate:v18 value:v26 confidence:v19 metadata:a8];

    goto LABEL_8;
  }

  v28 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [_DKEvent eventWithStream:v15 source:? startDate:? endDate:? categoryIntegerValue:? confidence:? metadata:?];
  }

  v27 = 0;
LABEL_8:

  return v27;
}

+ (_DKEvent)eventWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 quantityDoubleValue:(double)a7 confidence:(double)a8 metadata:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v20 = +[_DKAnyDoubleQuantity type];
  v21 = [v15 eventValueType];

  if (!v21)
  {
    goto LABEL_4;
  }

  v22 = [v15 eventValueType];
  v23 = [objc_msgSend(v22 "objectClass")];

  if (v23)
  {
    v24 = [v15 eventValueType];
    v25 = +[_DKObjectType objectTypeWithTypeCode:](_DKQuantityType, "objectTypeWithTypeCode:", [v24 typeCode]);

    v20 = v25;
LABEL_4:
    v26 = [_DKQuantity quantityWithDouble:v20 type:a7];
    v27 = [[_DKEvent alloc] initWithStream:v15 source:v16 startDate:v17 endDate:v18 value:v26 confidence:v19 metadata:a8];

    goto LABEL_8;
  }

  v28 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    [_DKEvent eventWithStream:v15 source:? startDate:? endDate:? quantityDoubleValue:? confidence:? metadata:?];
  }

  v27 = 0;
LABEL_8:

  return v27;
}

+ (_DKEvent)eventWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 identifierStringValue:(id)a7 confidence:(double)a8 metadata:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = +[_DKAnyStringIdentifier type];
  v22 = [v15 eventValueType];

  if (!v22)
  {
    goto LABEL_4;
  }

  v23 = [v15 eventValueType];
  v24 = [objc_msgSend(v23 "objectClass")];

  if (v24)
  {
    v25 = [v15 eventValueType];
    v26 = +[_DKObjectType objectTypeWithTypeCode:](_DKIdentifierType, "objectTypeWithTypeCode:", [v25 typeCode]);

    v21 = v26;
LABEL_4:
    v27 = [_DKIdentifier identifierWithString:v19 type:v21];
    v28 = [[_DKEvent alloc] initWithStream:v15 source:v16 startDate:v17 endDate:v18 value:v27 confidence:v20 metadata:a8];

    goto LABEL_8;
  }

  v29 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [_DKEvent eventWithStream:v15 source:? startDate:? endDate:? identifierStringValue:? confidence:? metadata:?];
  }

  v28 = 0;
LABEL_8:

  return v28;
}

- (_DKEvent)initWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 value:(id)a7 confidence:(double)a8 metadata:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a9;
  v22 = [v16 eventValueType];
  if (v22)
  {
    v23 = v22;
    v24 = objc_opt_class();
    v25 = [v16 eventValueType];
    LOBYTE(v24) = [v24 isEqual:{objc_msgSend(v25, "objectClass")}];

    if ((v24 & 1) == 0)
    {
      v26 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [_DKEvent initWithStream:v16 source:? startDate:? endDate:? value:? confidence:? metadata:?];
      }

      goto LABEL_9;
    }
  }

  if ([v18 compare:v19] == 1)
  {
    v26 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_DKEvent initWithStream:source:startDate:endDate:value:confidence:metadata:];
    }

LABEL_9:

    v27 = 0;
    goto LABEL_10;
  }

  self = [(_DKEvent *)self _initWithStream:v16 source:v17 startDate:v18 endDate:v19 value:v20 confidence:v21 metadata:a8];
  v27 = self;
LABEL_10:

  return v27;
}

- (id)_initWithStream:(id)a3 source:(id)a4 startDate:(id)a5 endDate:(id)a6 value:(id)a7 confidence:(double)a8 metadata:(id)a9
{
  v29 = a3;
  v17 = a4;
  v28 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v30.receiver = self;
  v30.super_class = _DKEvent;
  v21 = [(_DKObject *)&v30 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_stream, a3);
    objc_storeStrong(&v22->_startDate, a5);
    objc_storeStrong(&v22->_endDate, a6);
    v23 = [MEMORY[0x1E695DFE8] localTimeZone];
    v24 = [v23 copy];
    timeZone = v22->_timeZone;
    v22->_timeZone = v24;

    objc_storeStrong(&v22->_value, a7);
    objc_storeStrong(&v22->_metadata, a9);
    v22->_confidence = a8;
    [(_DKObject *)v22 setSource:v17];
    v26 = [MEMORY[0x1E696AFB0] UUID];
    [(_DKObject *)v22 setUUID:v26];
  }

  return v22;
}

- (_DKEvent)initWithCoder:(id)a3
{
  v26[10] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v25.receiver = self;
  v25.super_class = _DKEvent;
  v5 = [(_DKObject *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stream"];
    stream = v5->_stream;
    v5->_stream = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timeZone"];
    timeZone = v5->_timeZone;
    v5->_timeZone = v12;

    [v4 decodeDoubleForKey:@"confidence"];
    v5->_confidence = v14;
    v5->_shouldSync = [v4 decodeBoolForKey:@"shouldSync"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];
    value = v5->_value;
    v5->_value = v15;

    v5->_compatibilityVersion = [v4 decodeInt64ForKey:@"compatibilityVersion"];
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v4 dk_shouldSkipDecodingMetadata] & 1) == 0)
    {
      v17 = MEMORY[0x1E695DFD8];
      v26[0] = objc_opt_class();
      v26[1] = objc_opt_class();
      v26[2] = objc_opt_class();
      v26[3] = objc_opt_class();
      v26[4] = objc_opt_class();
      v26[5] = objc_opt_class();
      v26[6] = objc_opt_class();
      v26[7] = objc_opt_class();
      v26[8] = objc_opt_class();
      v26[9] = objc_opt_class();
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:10];
      v19 = [v17 setWithArray:v18];

      v20 = [v4 decodeObjectOfClasses:v19 forKey:@"metadata"];
      metadata = v5->_metadata;
      v5->_metadata = v20;
    }

    v22 = v5;
  }

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = _DKEvent;
  [(_DKObject *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_stream forKey:@"stream"];
  [v4 encodeObject:self->_startDate forKey:@"startDate"];
  [v4 encodeObject:self->_endDate forKey:@"endDate"];
  [v4 encodeObject:self->_timeZone forKey:@"timeZone"];
  [v4 encodeDouble:@"confidence" forKey:self->_confidence];
  [v4 encodeBool:self->_shouldSync forKey:@"shouldSync"];
  [v4 encodeObject:self->_value forKey:@"value"];
  [v4 encodeInt64:self->_compatibilityVersion forKey:@"compatibilityVersion"];
  metadata = self->_metadata;
  if (metadata && [(NSDictionary *)metadata count])
  {
    [v4 encodeObject:self->_metadata forKey:@"metadata"];
  }
}

- (NSString)description
{
  metadata = self->_metadata;
  v4 = [(NSDictionary *)metadata allKeys];
  v5 = [v4 _pas_filteredArrayWithTest:&__block_literal_global_67];
  v6 = [(NSDictionary *)metadata dictionaryWithValuesForKeys:v5];

  v20 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  stream = self->_stream;
  startDate = self->_startDate;
  endDate = self->_endDate;
  v12 = [(NSTimeZone *)self->_timeZone secondsFromGMT];
  confidence = self->_confidence;
  value = self->_value;
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldSync];
  v16 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_compatibilityVersion];
  v21.receiver = self;
  v21.super_class = _DKEvent;
  v17 = [(_DKObject *)&v21 description];
  v18 = [v20 stringWithFormat:@"%@: { stream='%@', start=%@, end=%@, tz=%d, conf=%f, value=%@, metadata=%@, shouldSync=%@, compatibilityVersion=%@, %@}", v8, stream, startDate, endDate, v12, *&confidence, value, v6, v15, v16, v17];

  return v18;
}

- (int64_t)compareValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(_DKEvent *)self value];
    v7 = [v6 conformsToProtocol:&unk_1F05F73A0];

    if (!v7)
    {
LABEL_11:
      v10 = -1;
      goto LABEL_12;
    }

    v8 = [(_DKEvent *)self value];
    v9 = [v5 value];
    v10 = [v8 compareValue:v9];

    if (!v10)
    {
      v11 = [(_DKEvent *)self metadata];
      if (v11)
      {

        goto LABEL_8;
      }

      v10 = [v5 metadata];

      if (v10)
      {
LABEL_8:
        v12 = [(_DKEvent *)self metadata];

        if (v12)
        {
          v13 = [v5 metadata];

          if (v13)
          {
            v14 = [(_DKEvent *)self metadata];
            v15 = [v5 metadata];
            v16 = [v14 isEqualToDictionary:v15];

            v10 = v16 - 1;
          }

          else
          {
            v10 = 1;
          }

          goto LABEL_12;
        }

        goto LABEL_11;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v10 = -1;
LABEL_13:

  return v10;
}

- (BOOL)BOOLValue
{
  v2 = [(_DKEvent *)self value];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int64_t)integerValue
{
  v2 = [(_DKEvent *)self value];
  v3 = [v2 integerValue];

  return v3;
}

- (double)doubleValue
{
  v2 = [(_DKEvent *)self value];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v52.receiver = self;
        v52.super_class = _DKEvent;
        if ([(_DKObject *)&v52 isEqual:v5])
        {
          v6 = v5;
          v7 = [(_DKEvent *)self stream];
          v8 = [(_DKEvent *)v6 stream];
          if (v7 != v8)
          {
            v9 = [(_DKEvent *)self stream];
            v10 = [(_DKEvent *)v6 stream];
            if (![v9 isEqual:v10])
            {
              v11 = 0;
              goto LABEL_41;
            }

            v49 = v10;
            v50 = v9;
          }

          v12 = [(_DKEvent *)self startDate];
          v13 = [(_DKEvent *)v6 startDate];
          if (v12 != v13)
          {
            v14 = [(_DKEvent *)self startDate];
            v15 = [(_DKEvent *)v6 startDate];
            if (![v14 isEqual:v15])
            {
              v11 = 0;
LABEL_39:

LABEL_40:
              v10 = v49;
              v9 = v50;
              if (v7 == v8)
              {
LABEL_42:

                goto LABEL_43;
              }

LABEL_41:

              goto LABEL_42;
            }

            v47 = v15;
            v48 = v14;
          }

          v16 = [(_DKEvent *)self endDate];
          v17 = [(_DKEvent *)v6 endDate];
          v51 = v16;
          if (v16 != v17)
          {
            v18 = [(_DKEvent *)self endDate];
            v44 = [(_DKEvent *)v6 endDate];
            v45 = v18;
            if (![v18 isEqual:?])
            {
              v11 = 0;
LABEL_37:

LABEL_38:
              v15 = v47;
              v14 = v48;
              if (v12 == v13)
              {
                goto LABEL_40;
              }

              goto LABEL_39;
            }
          }

          v19 = [(_DKEvent *)self timeZone];
          v46 = [(_DKEvent *)v6 timeZone];
          if (v19 != v46)
          {
            v20 = v19;
            v43 = [(_DKEvent *)self timeZone];
            v21 = [v43 secondsFromGMT];
            v42 = [(_DKEvent *)v6 timeZone];
            if (v21 != [v42 secondsFromGMT])
            {
              v11 = 0;
              v19 = v20;
              v27 = v46;
LABEL_35:

LABEL_36:
              if (v51 == v17)
              {
                goto LABEL_38;
              }

              goto LABEL_37;
            }

            v19 = v20;
          }

          [(_DKEvent *)self confidence];
          v23 = v22;
          [(_DKEvent *)v6 confidence];
          if (v23 != v24 || (v41 = v19, v25 = [(_DKEvent *)self shouldSync], v26 = v25 == [(_DKEvent *)v6 shouldSync], v19 = v41, !v26))
          {
            v11 = 0;
            goto LABEL_34;
          }

          v28 = [(_DKEvent *)self value];
          v39 = [(_DKEvent *)v6 value];
          v40 = v28;
          if (v28 == v39 || (-[_DKEvent value](self, "value"), v29 = objc_claimAutoreleasedReturnValue(), -[_DKEvent value](v6, "value"), v37 = objc_claimAutoreleasedReturnValue(), v38 = v29, [v29 isEqual:?]))
          {
            v31 = [(_DKEvent *)self metadata];
            v32 = [(_DKEvent *)v6 metadata];
            if (v31 == v32)
            {

              v11 = 1;
            }

            else
            {
              v36 = v32;
              v35 = [(_DKEvent *)self metadata];
              v33 = [(_DKEvent *)v6 metadata];
              v11 = [v35 isEqual:v33];

              v19 = v41;
            }

            v30 = v39;
            if (v40 == v39)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v11 = 0;
            v30 = v39;
          }

LABEL_33:
LABEL_34:
          v27 = v46;
          if (v19 == v46)
          {
            goto LABEL_36;
          }

          goto LABEL_35;
        }
      }
    }

    v11 = 0;
  }

LABEL_43:

  return v11;
}

+ (void)eventWithStream:(void *)a1 source:startDate:endDate:categoryIntegerValue:confidence:metadata:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 eventValueType];
  v2 = NSStringFromClass([v1 objectClass]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)eventWithStream:(void *)a1 source:startDate:endDate:quantityDoubleValue:confidence:metadata:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 eventValueType];
  v2 = NSStringFromClass([v1 objectClass]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)eventWithStream:(void *)a1 source:startDate:endDate:identifierStringValue:confidence:metadata:.cold.1(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = [a1 eventValueType];
  v2 = NSStringFromClass([v1 objectClass]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithStream:(void *)a1 source:startDate:endDate:value:confidence:metadata:.cold.1(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [a1 eventValueType];
  v2 = NSStringFromClass([v1 objectClass]);
  v3 = objc_opt_class();
  v10 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_7();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

- (void)initWithStream:source:startDate:endDate:value:confidence:metadata:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_191750000, v1, OS_LOG_TYPE_ERROR, "_DKEvent endDate (%@) must be at or later than startDate (%@).", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

@end