@interface _DPToolCommand
+ (id)supportedCommands;
+ (id)supportedMetadataKeys;
- (BOOL)executeCommand;
- (BOOL)listKeys;
- (BOOL)listReportsFor:(id)for;
- (BOOL)recordBitValues:(id)values metadata:(id)metadata forKey:(id)key;
- (BOOL)recordBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key;
- (BOOL)recordFloatVectors:(id)vectors metadata:(id)metadata forKey:(id)key;
- (BOOL)recordNumbers:(id)numbers metadata:(id)metadata forKey:(id)key;
- (BOOL)recordNumbersVectors:(id)vectors metadata:(id)metadata forKey:(id)key;
- (BOOL)recordStrings:(id)strings metadata:(id)metadata forKey:(id)key;
- (BOOL)recordWords:(id)words forKey:(id)key;
- (BOOL)submitRecordsForKey:(id)key;
- (_DPToolCommand)initWithAction:(id)action arguments:(id)arguments metadata:(id)metadata recordKey:(id)key databasePath:(id)path writeOK:(BOOL)k;
- (id)description;
- (id)floatVectorsFromCSVString:(id)string;
- (id)metadataFromCSVString:(id)string;
- (id)queryForKey:(id)key;
- (void)executeCommand;
@end

@implementation _DPToolCommand

+ (id)supportedCommands
{
  if (supportedCommands_onceToken != -1)
  {
    +[_DPToolCommand supportedCommands];
  }

  v3 = _DPToolSupportedCommands;

  return v3;
}

+ (id)supportedMetadataKeys
{
  if (supportedMetadataKeys_onceToken != -1)
  {
    +[_DPToolCommand supportedMetadataKeys];
  }

  v3 = _DPToolSupportedMetadataKeys;

  return v3;
}

- (_DPToolCommand)initWithAction:(id)action arguments:(id)arguments metadata:(id)metadata recordKey:(id)key databasePath:(id)path writeOK:(BOOL)k
{
  kCopy = k;
  actionCopy = action;
  argumentsCopy = arguments;
  metadataCopy = metadata;
  keyCopy = key;
  pathCopy = path;
  v28.receiver = self;
  v28.super_class = _DPToolCommand;
  v18 = [(_DPToolCommand *)&v28 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_6;
  }

  objc_storeStrong(&v18->_action, action);
  objc_storeStrong(&v19->_arguments, arguments);
  objc_storeStrong(&v19->_metadata, metadata);
  objc_storeStrong(&v19->_recordKey, key);
  objc_storeStrong(&v19->_databasePath, path);
  v19->_writeOK = kCopy;
  if (pathCopy)
  {
    actionCopy = [_DPStorage storageWithDirectory:pathCopy readOnly:!kCopy, argumentsCopy, actionCopy];
    storage = v19->_storage;
    v19->_storage = actionCopy;
  }

  else
  {
    storage = [_DPStrings databaseDirectoryPath:argumentsCopy];
    v22 = [_DPStorage storageWithDirectory:storage readOnly:!kCopy];
    v23 = v19->_storage;
    v19->_storage = v22;
  }

  if (!v19->_storage)
  {
    v24 = 0;
  }

  else
  {
LABEL_6:
    v24 = v19;
  }

  return v24;
}

- (BOOL)executeCommand
{
  v38 = *MEMORY[0x277D85DE8];
  p_metadata = &self->_metadata;
  v4 = [(_DPToolCommand *)self metadataFromCSVString:self->_metadata];
  v5 = v4;
  if (*p_metadata)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v9 = +[_DPLog tool];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_DPToolCommand *)p_metadata executeCommand:v9];
    }

LABEL_9:

    v16 = 0;
    goto LABEL_23;
  }

  p_action = &self->_action;
  if ([(NSString *)self->_action isEqualToString:@"recordnumbers"])
  {
    listKeys = [(_DPToolCommand *)self recordNumbers:self->_arguments metadata:v5 forKey:self->_recordKey];
LABEL_22:
    v16 = listKeys;
    goto LABEL_23;
  }

  if ([(NSString *)*p_action isEqualToString:@"recordnumbersvectors"])
  {
    listKeys = [(_DPToolCommand *)self recordNumbersVectors:self->_arguments metadata:v5 forKey:self->_recordKey];
    goto LABEL_22;
  }

  if ([(NSString *)*p_action isEqualToString:@"recordbitvalues"])
  {
    listKeys = [(_DPToolCommand *)self recordBitValues:self->_arguments metadata:v5 forKey:self->_recordKey];
    goto LABEL_22;
  }

  if ([(NSString *)*p_action isEqualToString:@"recordbitvectors"])
  {
    listKeys = [(_DPToolCommand *)self recordBitVectors:self->_arguments metadata:v5 forKey:self->_recordKey];
    goto LABEL_22;
  }

  if ([(NSString *)*p_action isEqualToString:@"recordfloatvectors"])
  {
    listKeys = [(_DPToolCommand *)self recordFloatVectors:self->_arguments metadata:v5 forKey:self->_recordKey];
    goto LABEL_22;
  }

  if ([(NSString *)*p_action isEqualToString:@"recordstrings"])
  {
    listKeys = [(_DPToolCommand *)self recordStrings:self->_arguments metadata:v5 forKey:self->_recordKey];
    goto LABEL_22;
  }

  if ([(NSString *)*p_action isEqualToString:@"recordwords"])
  {
    listKeys = [(_DPToolCommand *)self recordWords:self->_arguments forKey:self->_recordKey];
    goto LABEL_22;
  }

  if (![(NSString *)*p_action isEqualToString:@"query"])
  {
    if ([(NSString *)*p_action isEqualToString:@"submitrecords"])
    {
      listKeys = [(_DPToolCommand *)self submitRecordsForKey:self->_recordKey];
      goto LABEL_22;
    }

    if ([(NSString *)*p_action isEqualToString:@"listreports"])
    {
      listKeys = [(_DPToolCommand *)self listReportsFor:self->_arguments];
      goto LABEL_22;
    }

    if ([(NSString *)*p_action isEqualToString:@"listkeys"])
    {
      listKeys = [(_DPToolCommand *)self listKeys];
      goto LABEL_22;
    }

    v9 = +[_DPLog tool];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_DPToolCommand *)p_action executeCommand:v9];
    }

    goto LABEL_9;
  }

  v19 = [(_DPToolCommand *)self queryForKey:self->_recordKey];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v34;
    v23 = MEMORY[0x277D85E08];
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v34 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v25 = *v23;
        v26 = [*(*(&v33 + 1) + 8 * i) description];
        fprintf(v25, "%s\n", [v26 UTF8String]);
      }

      v21 = [v19 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v21);
  }

  v16 = 1;
LABEL_23:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (id)floatVectorsFromCSVString:(id)string
{
  v27 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  dp_floatVectorsFromCSVString = [stringCopy dp_floatVectorsFromCSVString];
  if ([dp_floatVectorsFromCSVString count])
  {
    v5 = dp_floatVectorsFromCSVString;
  }

  else
  {
    v18 = dp_floatVectorsFromCSVString;
    v5 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v19 = stringCopy;
    dp_stringsFromCSVString = [stringCopy dp_stringsFromCSVString];
    v7 = [dp_stringsFromCSVString countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(dp_stringsFromCSVString);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v13 = [v11 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

          v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v13];
          if (v14)
          {
            [v5 addObject:v14];
          }

          else
          {
            v15 = +[_DPLog tool];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v25 = v13;
              _os_log_error_impl(&dword_22622D000, v15, OS_LOG_TYPE_ERROR, "Fail to read (%@) as binary data", buf, 0xCu);
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [dp_stringsFromCSVString countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v8);
    }

    dp_floatVectorsFromCSVString = v18;
    stringCopy = v19;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)metadataFromCSVString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (stringCopy)
  {
    dp_dictionaryFromJsonString = [stringCopy dp_dictionaryFromJsonString];
    if ([dp_dictionaryFromJsonString count])
    {
      dp_dictionaryFromJsonString = dp_dictionaryFromJsonString;
      v6 = dp_dictionaryFromJsonString;
    }

    else
    {
      v15 = 0;
      v7 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4 options:1 error:&v15];
      v8 = v15;
      v9 = v8;
      if (v7)
      {
        v14 = v8;
        v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v14];
        v11 = v14;

        if (v10)
        {
          dp_dictionaryFromJsonString = v10;
          v6 = dp_dictionaryFromJsonString;
        }

        else
        {
          v12 = +[_DPLog tool];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [_DPToolCommand metadataFromCSVString:];
          }

          dp_dictionaryFromJsonString = 0;
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
        v11 = v8;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)recordNumbers:(id)numbers metadata:(id)metadata forKey:(id)key
{
  numbersCopy = numbers;
  metadataCopy = metadata;
  keyCopy = key;
  v10 = [[_DPNumericDataRecorder alloc] initWithKey:keyCopy];
  if (v10)
  {
    dp_numbersFromCSVString = [numbersCopy dp_numbersFromCSVString];
    if (metadataCopy)
    {
      v12 = [(_DPNumericDataRecorder *)v10 record:dp_numbersFromCSVString metadata:metadataCopy];
    }

    else
    {
      v12 = [(_DPNumericDataRecorder *)v10 record:dp_numbersFromCSVString];
    }

    v14 = v12;
  }

  else
  {
    v13 = +[_DPLog tool];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPToolCommand recordNumbers:metadata:forKey:];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)recordNumbersVectors:(id)vectors metadata:(id)metadata forKey:(id)key
{
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  v10 = [[_DPNumericDataRecorder alloc] initWithKey:keyCopy];
  if (v10)
  {
    dp_numbersVectorsFromCSVString = [vectorsCopy dp_numbersVectorsFromCSVString];
    if (metadataCopy)
    {
      v12 = [(_DPNumericDataRecorder *)v10 recordNumbersVectors:dp_numbersVectorsFromCSVString metadata:metadataCopy];
    }

    else
    {
      v12 = [(_DPNumericDataRecorder *)v10 recordNumbersVectors:dp_numbersVectorsFromCSVString];
    }

    v14 = v12;
  }

  else
  {
    v13 = +[_DPLog tool];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPToolCommand recordNumbers:metadata:forKey:];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)recordBitValues:(id)values metadata:(id)metadata forKey:(id)key
{
  valuesCopy = values;
  metadataCopy = metadata;
  keyCopy = key;
  v10 = [[_DPBitValueRecorder alloc] initWithKey:keyCopy];
  if (v10)
  {
    dp_numbersFromCSVString = [valuesCopy dp_numbersFromCSVString];
    if (metadataCopy)
    {
      v12 = [(_DPBitValueRecorder *)v10 record:dp_numbersFromCSVString metadata:metadataCopy];
    }

    else
    {
      v12 = [(_DPBitValueRecorder *)v10 record:dp_numbersFromCSVString];
    }

    v14 = v12;
  }

  else
  {
    v13 = +[_DPLog tool];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPToolCommand recordNumbers:metadata:forKey:];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)recordBitVectors:(id)vectors metadata:(id)metadata forKey:(id)key
{
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  v10 = [[_DPBitValueRecorder alloc] initWithKey:keyCopy];
  if (v10)
  {
    dp_bitVectorsFromCSVString = [vectorsCopy dp_bitVectorsFromCSVString];
    if (metadataCopy)
    {
      v12 = [(_DPBitValueRecorder *)v10 recordBitVectors:dp_bitVectorsFromCSVString metadata:metadataCopy];
    }

    else
    {
      v12 = [(_DPBitValueRecorder *)v10 recordBitVectors:dp_bitVectorsFromCSVString];
    }

    v14 = v12;
  }

  else
  {
    v13 = +[_DPLog tool];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPToolCommand recordNumbers:metadata:forKey:];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)recordFloatVectors:(id)vectors metadata:(id)metadata forKey:(id)key
{
  vectorsCopy = vectors;
  metadataCopy = metadata;
  keyCopy = key;
  v11 = [[_DPFloatValueRecorder alloc] initWithKey:keyCopy];
  if (!v11)
  {
    v12 = +[_DPLog tool];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_DPToolCommand recordNumbers:metadata:forKey:];
    }

    goto LABEL_10;
  }

  v12 = [(_DPToolCommand *)self floatVectorsFromCSVString:vectorsCopy];
  if (![v12 count])
  {
    v14 = +[_DPLog tool];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_DPToolCommand recordFloatVectors:metadata:forKey:];
    }

LABEL_10:
    v15 = 0;
    goto LABEL_13;
  }

  if (metadataCopy)
  {
    v13 = [(_DPFloatValueRecorder *)v11 recordFloatVectors:v12 metadata:metadataCopy];
  }

  else
  {
    v13 = [(_DPFloatValueRecorder *)v11 recordFloatVectors:v12];
  }

  v15 = v13;
LABEL_13:

  return v15;
}

- (BOOL)recordStrings:(id)strings metadata:(id)metadata forKey:(id)key
{
  stringsCopy = strings;
  metadataCopy = metadata;
  keyCopy = key;
  v10 = [[_DPStringRecorder alloc] initWithKey:keyCopy];
  if (v10)
  {
    dp_stringsFromCSVString = [stringsCopy dp_stringsFromCSVString];
    if (metadataCopy)
    {
      v12 = [(_DPStringRecorder *)v10 record:dp_stringsFromCSVString metadata:metadataCopy];
    }

    else
    {
      v12 = [(_DPStringRecorder *)v10 record:dp_stringsFromCSVString];
    }

    v14 = v12;
  }

  else
  {
    v13 = +[_DPLog tool];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_DPToolCommand recordNumbers:metadata:forKey:];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)recordWords:(id)words forKey:(id)key
{
  wordsCopy = words;
  keyCopy = key;
  v7 = [[_DPWordRecorder alloc] initWithKey:keyCopy];
  if (v7)
  {
    dp_wordRecordsFromCSVString = [wordsCopy dp_wordRecordsFromCSVString];
    v9 = [(_DPWordRecorder *)v7 record:dp_wordRecordsFromCSVString];
  }

  else
  {
    v10 = +[_DPLog tool];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [_DPToolCommand recordNumbers:metadata:forKey:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)queryForKey:(id)key
{
  keyCopy = key;
  v6 = self->_databasePath;
  if (v6)
  {
    v7 = v6;
    v8 = !self->_writeOK;
  }

  else
  {
    v7 = +[_DPStrings databaseDirectoryPath];
    v8 = 1;
  }

  v9 = [_DPStorage storageWithDirectory:v7 readOnly:v8];
  if (v9)
  {
    v10 = [_DPRecordQueryPredicates entityForKey:keyCopy];
    if (v10)
    {
      v11 = [_DPRecordQueryPredicates predicateForRecordsNotSubmittedForKeyBeginsWith:keyCopy];
      v20 = 0;
      v21 = &v20;
      v22 = 0x3032000000;
      v23 = __Block_byref_object_copy__6;
      v24 = __Block_byref_object_dispose__6;
      v25 = 0;
      v12 = dispatch_semaphore_create(0);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __30___DPToolCommand_queryForKey___block_invoke;
      v16[3] = &unk_27858B238;
      v18 = &v20;
      v19 = a2;
      v13 = v12;
      v17 = v13;
      [v9 fetchRecordsFor:v10 predicate:v11 fetchLimit:1000 fetchOffset:0 withCompletion:v16];
      dispatch_semaphore_wait(v13, 0xFFFFFFFFFFFFFFFFLL);
      v14 = v21[5];

      _Block_object_dispose(&v20, 8);
    }

    else
    {
      v11 = +[_DPLog tool];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [_DPToolCommand queryForKey:];
      }

      v14 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v14 = MEMORY[0x277CBEBF8];
  }

  return v14;
}

- (BOOL)submitRecordsForKey:(id)key
{
  v15[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = self->_databasePath;
  if (v5)
  {
    v6 = v5;
    v7 = !self->_writeOK;
  }

  else
  {
    v6 = +[_DPStrings databaseDirectoryPath];
    v7 = 1;
  }

  v8 = objc_opt_new();
  v9 = [_DPStorage storageWithDirectory:v6 readOnly:v7];
  if (v9)
  {
    v15[0] = keyCopy;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    v11 = [v8 generateReportForKeys:v10 storage:v9];

    v12 = v11 != 0;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)listReportsFor:(id)for
{
  forCopy = for;
  if ([forCopy isEqualToString:@"all"])
  {
    reportsNotYetSubmitted = +[_DPReportFileManager submittedReports];
  }

  else
  {
    if (![forCopy isEqualToString:@"pending"])
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = objc_opt_new();
    reportsNotYetSubmitted = [v5 reportsNotYetSubmitted];
  }

  NSLog(&stru_283969448.isa, reportsNotYetSubmitted);

  v6 = 1;
LABEL_7:

  return v6;
}

- (BOOL)listKeys
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = +[_DPKeyNames allKeyNames];
  v3 = [v2 mutableCopy];

  [v3 sortUsingSelector:sel_compare_];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [_DPKeyNames keyPropertiesForKey:v9];
        if (v10)
        {
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@*", v9];
          puts([v11 UTF8String]);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { recordKey=%@  action=%@ ; arguments=%@ }", v5, self->_recordKey, self->_action, self->_arguments];;

  return v6;
}

- (void)executeCommand
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*self);
  OUTLINED_FUNCTION_0(&dword_22622D000, a2, a3, "Failed to parse JSON from string: '%@'", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)metadataFromCSVString:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_22622D000, v1, OS_LOG_TYPE_ERROR, "Cannot parse JSON from file=(%@): error=%@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)recordNumbers:metadata:forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Fail to instantiate recorder for key=%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)recordFloatVectors:metadata:forKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Cannot parse float vectors from \n%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)queryForKey:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_22622D000, v0, v1, "Fail to find entityName for key=(%@)", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end