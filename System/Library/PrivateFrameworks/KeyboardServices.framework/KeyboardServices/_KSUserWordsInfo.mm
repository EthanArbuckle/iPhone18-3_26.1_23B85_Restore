@interface _KSUserWordsInfo
+ (id)filesForLanguage:(id)language;
+ (id)infoWithFiles:(id)files;
+ (id)infoWithRecord:(id)record;
+ (id)keyNamesExcludingData;
- (BOOL)isBetterThan:(id)than;
- (_KSUserWordsInfo)initWithFiles:(id)files;
- (_KSUserWordsInfo)initWithRecord:(id)record;
- (id)description;
- (void)saveToRecord:(id)record;
@end

@implementation _KSUserWordsInfo

+ (id)keyNamesExcludingData
{
  v5[2] = *MEMORY[0x277D85DE8];
  v5[0] = @"DynSize";
  v5[1] = @"DynDate";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)filesForLanguage:(id)language
{
  languageCopy = language;
  v5 = [[_KSFileDirectory alloc] initWithName:&stru_286796E30];
  keyboardDirectory = [self keyboardDirectory];
  if ([languageCopy isEqualToString:@"SharedAcrossLanguagesNegativeLearning"])
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [keyboardDirectory stringByAppendingPathComponent:@"AutocorrectionRejections.db"];
    v9 = [v7 fileURLWithPath:v8];

    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
LABEL_3:
      v10 = [[_KSFileFile alloc] initWithURL:v9];
      [(_KSFileDirectory *)v5 addEntry:v10];
LABEL_20:
    }

LABEL_21:

    goto LABEL_22;
  }

  if ([languageCopy isEqualToString:@"SharedAcrossLanguagesVulgarWordUsage"])
  {
    v11 = MEMORY[0x277CBEBC0];
    v12 = [keyboardDirectory stringByAppendingPathComponent:@"VulgarWordUsage.db"];
    v9 = [v11 fileURLWithPath:v12];

    if ([v9 checkResourceIsReachableAndReturnError:0])
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  v13 = _KSGetSetting(ksDefaultSaveDynamicData, MEMORY[0x277CBEC38]);
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    v15 = MEMORY[0x277CBEBC0];
    v16 = languageCopy;
    if ([v16 isEqualToString:@"en_US"])
    {
      v17 = @"dynamic-text.dat";
    }

    else
    {
      v17 = [v16 stringByAppendingString:@"-dynamic-text.dat"];
    }

    v18 = [keyboardDirectory stringByAppendingPathComponent:v17];
    v19 = [v15 fileURLWithPath:v18];

    if ([v19 checkResourceIsReachableAndReturnError:0])
    {
      v20 = [[_KSFileFile alloc] initWithURL:v19];
      [(_KSFileDirectory *)v5 addEntry:v20];
    }
  }

  v21 = _KSGetSetting(ksDefaultSaveLanguageModel, MEMORY[0x277CBEC38]);
  bOOLValue2 = [v21 BOOLValue];

  if (bOOLValue2)
  {
    v23 = MEMORY[0x277CBEBC0];
    v24 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:languageCopy];
    v25 = [v24 objectForKey:*MEMORY[0x277CBE6C8]];
    v26 = [v24 objectForKey:*MEMORY[0x277CBE6F8]];
    if (v26)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@-dynamic.lm", v25, v26];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@-dynamic.lm", v25];
    }
    v27 = ;

    v28 = [keyboardDirectory stringByAppendingPathComponent:v27];
    v9 = [v23 fileURLWithPath:v28];

    if (![v9 checkResourceIsReachableAndReturnError:0])
    {
      goto LABEL_21;
    }

    v10 = [[_KSFileDirectory alloc] initWithDirectory:v9 captureContents:1 storeRoot:1];
    [(_KSFileDirectory *)v5 addEntry:v10];
    goto LABEL_20;
  }

LABEL_22:

  contents = [(_KSFileDirectory *)v5 contents];
  if (contents)
  {
    v30 = v5;
  }

  else
  {
    v30 = 0;
  }

  v31 = v30;

  return v30;
}

+ (id)infoWithFiles:(id)files
{
  filesCopy = files;
  v4 = [[_KSUserWordsInfo alloc] initWithFiles:filesCopy];

  return v4;
}

+ (id)infoWithRecord:(id)record
{
  recordCopy = record;
  v4 = [[_KSUserWordsInfo alloc] initWithRecord:recordCopy];

  return v4;
}

- (_KSUserWordsInfo)initWithFiles:(id)files
{
  v56[2] = *MEMORY[0x277D85DE8];
  filesCopy = files;
  v48.receiver = self;
  v48.super_class = _KSUserWordsInfo;
  v6 = [(_KSUserWordsInfo *)&v48 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_14;
  }

  v47 = filesCopy;
  objc_storeStrong(&v6->_file, files);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v9 = FindEntry(v7->_file, @"AutocorrectionRejections.db");
  v10 = v9;
  if (v9)
  {
    v55[0] = @"size";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v9, "size")}];
    v56[0] = v11;
    v55[1] = @"date";
    lastModified = [v10 lastModified];
    v56[1] = lastModified;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:2];
    v14 = _KSGetSetting(ksDefaultSortNegativeLearning, &unk_28679DA18);
    [dictionary setObject:v13 forKey:v14];
  }

  v45 = v10;
  v15 = FindEntry(v7->_file, @"VulgarWordUsage.db");
  v16 = v15;
  if (v15)
  {
    v53[0] = @"size";
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v15, "size", v10)}];
    v53[1] = @"date";
    v54[0] = v17;
    lastModified2 = [v16 lastModified];
    v54[1] = lastModified2;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:2];
    v20 = _KSGetSetting(ksDefaultSortVulgarWordUsageDatabase, &unk_28679DA18);
    [dictionary setObject:v19 forKey:v20];
  }

  v21 = FindEntry(v7->_file, @"dynamic-text.dat");
  v22 = v21;
  if (v21)
  {
    v51[0] = @"size";
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v21, "size")}];
    v51[1] = @"date";
    v52[0] = v23;
    lastModified3 = [v22 lastModified];
    v52[1] = lastModified3;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:2];
    v26 = _KSGetSetting(ksDefaultSortDynamicData, &unk_28679DA30);
    [dictionary setObject:v25 forKey:v26];
  }

  v27 = FindEntry(v7->_file, @"dynamic.lm");
  v28 = FindEntry(v27, @"dynamic.dat");
  v29 = v28;
  if (v28)
  {
    v49[0] = @"size";
    v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v28, "size")}];
    v49[1] = @"date";
    v50[0] = v30;
    lastModified4 = [v29 lastModified];
    v50[1] = lastModified4;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
    v33 = _KSGetSetting(ksDefaultSortLanguageModel, &unk_28679DA48);
    [dictionary setObject:v32 forKey:v33];
  }

  allKeys = [dictionary allKeys];
  v35 = [allKeys sortedArrayUsingComparator:&__block_literal_global_6];

  if (v35)
  {
    lastObject = [v35 lastObject];
    v37 = [dictionary objectForKey:lastObject];
  }

  else
  {
    v37 = 0;
  }

  filesCopy = v47;
  v38 = [v37 objectForKey:@"date"];
  modifiedDate = v7->_modifiedDate;
  v7->_modifiedDate = v38;

  v40 = [v37 objectForKey:@"size"];
  v7->_size = [v40 intValue];

  v41 = v7->_modifiedDate;
  if (!v41)
  {
    v42 = 0;
  }

  else
  {
LABEL_14:
    v42 = v7;
  }

  v43 = *MEMORY[0x277D85DE8];
  return v42;
}

- (_KSUserWordsInfo)initWithRecord:(id)record
{
  recordCopy = record;
  v11.receiver = self;
  v11.super_class = _KSUserWordsInfo;
  v5 = [(_KSUserWordsInfo *)&v11 init];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = [recordCopy objectForKeyedSubscript:@"DynSize"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_9:

    v9 = 0;
    goto LABEL_10;
  }

  v5->_size = [v6 intValue];
  v7 = [recordCopy objectForKeyedSubscript:@"DynDate"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    goto LABEL_9;
  }

  modifiedDate = v5->_modifiedDate;
  v5->_modifiedDate = v7;

LABEL_7:
  v9 = v5;
LABEL_10:

  return v9;
}

- (BOOL)isBetterThan:(id)than
{
  if (!than)
  {
    return 1;
  }

  v4 = self->_size - *(than + 2);
  v5 = ksDefaultSizeNormalise;
  thanCopy = than;
  v7 = _KSGetSetting(v5, &unk_28679DA90);
  [v7 floatValue];
  v9 = v4 * v8;

  modifiedDate = self->_modifiedDate;
  v11 = thanCopy[1];

  [(NSDate *)modifiedDate timeIntervalSinceDate:v11];
  v13 = v12;
  v14 = _KSGetSetting(ksDefaultDateNormalise, &unk_28679DAA0);
  [v14 floatValue];
  v16 = v13 * v15;

  return v9 + v16 > 0.0;
}

- (void)saveToRecord:(id)record
{
  v4 = MEMORY[0x277CCABB0];
  size = self->_size;
  recordCopy = record;
  v7 = [v4 numberWithUnsignedLong:size];
  [recordCopy setObject:v7 forKeyedSubscript:@"DynSize"];

  [recordCopy setObject:self->_modifiedDate forKeyedSubscript:@"DynDate"];
  v8 = objc_alloc(MEMORY[0x277CBC190]);
  serialiseToTemporaryFile = [(_KSFileEntry *)self->_file serialiseToTemporaryFile];
  v9 = [v8 initWithFileURL:serialiseToTemporaryFile];
  [recordCopy setObject:v9 forKeyedSubscript:@"Data"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = _KSUserWordsInfo;
  v4 = [(_KSUserWordsInfo *)&v9 description];
  v5 = v4;
  if (self->_file)
  {
    v6 = @"; local";
  }

  else
  {
    v6 = &stru_286796E30;
  }

  v7 = [v3 stringWithFormat:@"<%@ size = %zu; date = %@%@>", v4, self->_size, self->_modifiedDate, v6];;

  return v7;
}

+ (void)filesForLanguage:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 136315650;
  v5 = "+[_KSUserWordsInfo filesForLanguage:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_2557E2000, log, OS_LOG_TYPE_ERROR, "%s  Failed to get files for language '%@': %@", &v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end