@interface CESRFidesASRRecord
+ (id)recordFromData:(id)a3;
+ (void)deleteAllRecordsForPlugin:(id)a3 completion:(id)a4;
- (BOOL)hasData;
- (CESRFidesASRRecord)initWithCoder:(id)a3;
- (CESRFidesASRRecord)initWithLanguage:(id)a3 task:(id)a4 context:(id)a5 narrowband:(BOOL)a6 farField:(BOOL)a7 interactionIdentifier:(id)a8 asrSelfComponentIdentifier:(id)a9 pluginId:(id)a10;
- (double)_audioPacketsDuration;
- (id)_recordData;
- (id)_recordInfo;
- (id)concatenatedAudioPackets;
- (id)description;
- (id)todaysDate;
- (void)addAudioPacket:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)save;
- (void)saveOneRecordPerDay;
- (void)setCorrectedText:(id)a3;
- (void)setCorrectedTextV2:(id)a3;
@end

@implementation CESRFidesASRRecord

- (void)saveOneRecordPerDay
{
  v3 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:self->_pluginId];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __41__CESRFidesASRRecord_saveOneRecordPerDay__block_invoke;
  v5[3] = &unk_27857F6D0;
  v5[4] = self;
  v6 = v3;
  v4 = v3;
  [v4 fetchSavedRecordInfoWithCompletion:v5];
}

void __41__CESRFidesASRRecord_saveOneRecordPerDay__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v27 = "[CESRFidesASRRecord saveOneRecordPerDay]_block_invoke";
      _os_log_error_impl(&dword_225EEB000, v7, OS_LOG_TYPE_ERROR, "%s Failed to fetch records.", buf, 0xCu);
    }
  }

  else
  {
    v20 = a1;
    v8 = [*(a1 + 32) todaysDate];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = [v5 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [v5 objectForKeyedSubscript:v14];
          v16 = [v15 objectForKeyedSubscript:@"date"];

          if ([v16 isEqualToString:v8])
          {
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __41__CESRFidesASRRecord_saveOneRecordPerDay__block_invoke_2;
            v21[3] = &unk_27857F6A8;
            v18 = *(v20 + 32);
            v17 = *(v20 + 40);
            v21[4] = v14;
            v21[5] = v18;
            [v17 deleteSavedRecordWithIdentfier:v14 completion:v21];

            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    [*(v20 + 32) save];
LABEL_14:

    v6 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __41__CESRFidesASRRecord_saveOneRecordPerDay__block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0B8];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[CESRFidesASRRecord saveOneRecordPerDay]_block_invoke_2";
      v10 = 2112;
      v11 = v5;
      _os_log_error_impl(&dword_225EEB000, v4, OS_LOG_TYPE_ERROR, "%s Failed to delete record: %@", &v8, 0x16u);
    }
  }

  else
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v8 = 136315394;
      v9 = "[CESRFidesASRRecord saveOneRecordPerDay]_block_invoke";
      v10 = 2112;
      v11 = v7;
      _os_log_debug_impl(&dword_225EEB000, v4, OS_LOG_TYPE_DEBUG, "%s Deleted record(%@)", &v8, 0x16u);
    }

    [*(a1 + 40) save];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)todaysDate
{
  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEBB0] timeZoneWithAbbreviation:@"UTC"];
  [v2 setTimeZone:v3];

  [v2 setDateFormat:@"yyyyMMdd"];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v2 stringFromDate:v4];

  return v5;
}

- (void)save
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_hasRecognizedAnything)
  {
    v3 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:self->_pluginId];
    v4 = [(CESRFidesASRRecord *)self todaysDate];
    date = self->_date;
    self->_date = v4;

    v6 = [(CESRFidesASRRecord *)self _recordInfo];
    v7 = [(CESRFidesASRRecord *)self _recordData];
    v8 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_DEBUG))
    {
      v11 = v8;
      *buf = 136315650;
      v14 = "[CESRFidesASRRecord save]";
      v15 = 2114;
      v16 = v6;
      v17 = 2050;
      v18 = [v7 length];
      _os_log_debug_impl(&dword_225EEB000, v11, OS_LOG_TYPE_DEBUG, "%s Creating DES record (SPI v2): %{public}@, %{public}zu bytes", buf, 0x20u);
    }

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __26__CESRFidesASRRecord_save__block_invoke;
    v12[3] = &unk_27857F680;
    v12[4] = self;
    [v3 saveRecordWithData:v7 recordInfo:v6 completion:v12];
  }

  else
  {
    v9 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v14 = "[CESRFidesASRRecord save]";
      _os_log_impl(&dword_225EEB000, v9, OS_LOG_TYPE_INFO, "%s Skip DES record creation because of no recognition", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __26__CESRFidesASRRecord_save__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CEF0B8];
  if (v6)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      v8 = *(*(a1 + 32) + 32);
      v11 = 136315650;
      v12 = "[CESRFidesASRRecord save]_block_invoke";
      v13 = 2114;
      v14 = v8;
      v15 = 2114;
      v16 = v6;
      _os_log_error_impl(&dword_225EEB000, v7, OS_LOG_TYPE_ERROR, "%s Could not write DES record for SPI v2 %{public}@: %{public}@", &v11, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
  {
    v9 = *(*(a1 + 32) + 32);
    v11 = 136315650;
    v12 = "[CESRFidesASRRecord save]_block_invoke";
    v13 = 2112;
    v14 = v9;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_225EEB000, v7, OS_LOG_TYPE_INFO, "%s DES Record created for SPI v2 %@: %@", &v11, 0x20u);
  }

  [MEMORY[0x277CEF148] logDESRecordingForLanguage:*(*(a1 + 32) + 32) error:v6];

  v10 = *MEMORY[0x277D85DE8];
}

- (id)_recordData
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v7];
  v3 = v7;
  if (!v2)
  {
    v4 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[CESRFidesASRRecord _recordData]";
      v10 = 2112;
      v11 = v3;
      _os_log_error_impl(&dword_225EEB000, v4, OS_LOG_TYPE_ERROR, "%s Unable to serialize DES record: %@", buf, 0x16u);
    }
  }

  v5 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_recordInfo
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setObject:self->_language forKeyedSubscript:@"language"];
  [v3 setObject:self->_task forKeyedSubscript:@"task"];
  [v3 setObject:self->_context forKeyedSubscript:@"context"];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_samplingRate];
  [v3 setObject:v4 forKeyedSubscript:@"samplingRate"];

  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_farField];
  [v3 setObject:v5 forKeyedSubscript:@"farField"];

  [v3 setObject:self->_interactionIdentifier forKeyedSubscript:@"interactionIdentifier"];
  [v3 setObject:self->_asrSelfComponentIdentifier forKeyedSubscript:@"asrSelfComponentIdentifier"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_personalizedLMUsed];
  [v3 setObject:v6 forKeyedSubscript:@"personalizedLMUsed"];

  [v3 setObject:self->_applicationName forKeyedSubscript:@"applicationName"];
  v7 = MEMORY[0x277CCABB0];
  [(CESRFidesASRRecord *)self _audioPacketsDuration];
  v8 = [v7 numberWithDouble:?];
  [v3 setObject:v8 forKeyedSubscript:@"audioPacketsDuration"];

  [v3 setObject:self->_date forKeyedSubscript:@"date"];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 encodeObject:self->_pluginId forKey:@"_pluginId"];
  [v4 encodeObject:self->_language forKey:@"_language"];
  [v4 encodeObject:self->_task forKey:@"_task"];
  [v4 encodeInteger:self->_samplingRate forKey:@"_samplingRate"];
  [v4 encodeBool:self->_farField forKey:@"_farField"];
  [v4 encodeObject:self->_context forKey:@"_context"];
  [v4 encodeObject:self->_UUIDString forKey:@"_UUIDString"];
  originalAudioFileURL = self->_originalAudioFileURL;
  if (originalAudioFileURL)
  {
    v6 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "[CESRFidesASRRecord encodeWithCoder:]";
      _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s Skipping audio bytes and save originalAudioFileURL instead", &v11, 0xCu);
      originalAudioFileURL = self->_originalAudioFileURL;
    }

    v7 = @"_originalAudioFileURL";
    v8 = v4;
    audioPackets = originalAudioFileURL;
  }

  else
  {
    audioPackets = self->_audioPackets;
    v7 = @"_audioPackets";
    v8 = v4;
  }

  [v8 encodeObject:audioPackets forKey:v7];
  [v4 encodeBool:self->_hasRecognizedAnything forKey:@"_hasRecognizedAnything"];
  [v4 encodeObject:self->_interactionIdentifier forKey:@"_interactionIdentifier"];
  [v4 encodeObject:self->_asrSelfComponentIdentifier forKey:@"_asrSelfComponentIdentifier"];
  [v4 encodeObject:self->_correctedText forKey:@"_correctedText"];
  [v4 encodeObject:self->_correctedTextV2 forKey:@"_correctedTextV2"];
  [v4 encodeObject:self->_recognizedText forKey:@"_recognizedText"];
  [v4 encodeObject:self->_postITNRecognizedText forKey:@"_postITNRecognizedText"];
  [v4 encodeObject:self->_recognizedNbest forKey:@"_recognizedNbest"];
  [v4 encodeBool:self->_personalizedLMUsed forKey:@"_personalizedLMUsed"];
  [v4 encodeObject:self->_applicationName forKey:@"_applicationName"];
  [v4 encodeObject:self->_date forKey:@"_date"];
  [v4 encodeDouble:@"_timestamp" forKey:self->_timestamp];
  [v4 encodeObject:self->_alternatives forKey:@"_alternatives"];
  [v4 encodeObject:self->_profile forKey:@"_profile"];

  v10 = *MEMORY[0x277D85DE8];
}

- (CESRFidesASRRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CESRFidesASRRecord *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_pluginId"];
    pluginId = v5->_pluginId;
    v5->_pluginId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_language"];
    language = v5->_language;
    v5->_language = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_task"];
    task = v5->_task;
    v5->_task = v10;

    v5->_samplingRate = [v4 decodeIntegerForKey:@"_samplingRate"];
    v5->_farField = [v4 decodeBoolForKey:@"_farField"];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v12 setWithObjects:{v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"_context"];
    context = v5->_context;
    v5->_context = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_UUIDString"];
    UUIDString = v5->_UUIDString;
    v5->_UUIDString = v20;

    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v22 setWithObjects:{v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"_audioPackets"];
    v29 = [v28 mutableCopy];
    audioPackets = v5->_audioPackets;
    v5->_audioPackets = v29;

    v5->_hasRecognizedAnything = [v4 decodeBoolForKey:@"_hasRecognizedAnything"];
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_interactionIdentifier"];
    interactionIdentifier = v5->_interactionIdentifier;
    v5->_interactionIdentifier = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_asrSelfComponentIdentifier"];
    asrSelfComponentIdentifier = v5->_asrSelfComponentIdentifier;
    v5->_asrSelfComponentIdentifier = v33;

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_correctedText"];
    correctedText = v5->_correctedText;
    v5->_correctedText = v35;

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_correctedTextV2"];
    correctedTextV2 = v5->_correctedTextV2;
    v5->_correctedTextV2 = v37;

    v39 = MEMORY[0x277CBEB98];
    v40 = objc_opt_class();
    v41 = objc_opt_class();
    v42 = objc_opt_class();
    v43 = objc_opt_class();
    v44 = [v39 setWithObjects:{v40, v41, v42, v43, objc_opt_class(), 0}];
    v45 = [v4 decodeObjectOfClasses:v44 forKey:@"_recognizedText"];
    recognizedText = v5->_recognizedText;
    v5->_recognizedText = v45;

    v47 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_postITNRecognizedText"];
    postITNRecognizedText = v5->_postITNRecognizedText;
    v5->_postITNRecognizedText = v47;

    v49 = MEMORY[0x277CBEB98];
    v50 = objc_opt_class();
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v54 = [v49 setWithObjects:{v50, v51, v52, v53, objc_opt_class(), 0}];
    v55 = [v4 decodeObjectOfClasses:v54 forKey:@"_recognizedNbest"];
    recognizedNbest = v5->_recognizedNbest;
    v5->_recognizedNbest = v55;

    v5->_personalizedLMUsed = [v4 decodeBoolForKey:@"_personalizedLMUsed"];
    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v57;

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v59;

    [v4 decodeDoubleForKey:@"_timestamp"];
    v5->_timestamp = v61;
    v62 = MEMORY[0x277CBEB98];
    v63 = objc_opt_class();
    v64 = objc_opt_class();
    v65 = objc_opt_class();
    v66 = objc_opt_class();
    v67 = [v62 setWithObjects:{v63, v64, v65, v66, objc_opt_class(), 0}];
    v68 = [v4 decodeObjectOfClasses:v67 forKey:@"_alternatives"];
    alternatives = v5->_alternatives;
    v5->_alternatives = v68;

    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_profile"];
    profile = v5->_profile;
    v5->_profile = v70;

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_originalAudioFileURL"];
    originalAudioFileURL = v5->_originalAudioFileURL;
    v5->_originalAudioFileURL = v72;
  }

  return v5;
}

- (void)setCorrectedTextV2:(id)a3
{
  v5 = a3;
  if (!self->_audioExceededMaxDuration)
  {
    v6 = v5;
    objc_storeStrong(&self->_correctedTextV2, a3);
    v5 = v6;
  }
}

- (void)setCorrectedText:(id)a3
{
  v5 = a3;
  if (!self->_audioExceededMaxDuration)
  {
    v6 = v5;
    objc_storeStrong(&self->_correctedText, a3);
    v5 = v6;
  }
}

- (id)description
{
  v13 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = CESRFidesASRRecord;
  v3 = [(CESRFidesASRRecord *)&v14 description];
  v12 = *&self->_pluginId;
  samplingRate = self->_samplingRate;
  task = self->_task;
  farField = self->_farField;
  UUIDString = self->_UUIDString;
  context = self->_context;
  [(CESRFidesASRRecord *)self _audioPacketsDuration];
  v5 = [v13 stringWithFormat:@"%@, pluginId=%@, language=%@, task=%@, samplingRate=%ld, farField=%d, context=%@, UUIDString=%@, audioPackets(duration)=%f, hasRecognizedAnything=%d, interactionIdentifier=%@, asrSelfComponentIdentifier=%@, correctedText=%@, correctedTextV2=%@, recognizedText=%@, postITNRecognizedText=%@, recognizedNbest(count)=%lu, personalizedLMUsed=%d, applicationName=%@, date=%@, timestamp=%f, alternatives=%@, profile(length)=%ld, originalAudioFileURL=%@", v3, v12, task, samplingRate, farField, context, UUIDString, v4, self->_hasRecognizedAnything, self->_interactionIdentifier, self->_asrSelfComponentIdentifier, self->_correctedText, self->_correctedTextV2, self->_recognizedText, self->_postITNRecognizedText, -[NSArray count](self->_recognizedNbest, "count"), self->_personalizedLMUsed, self->_applicationName, self->_date, *&self->_timestamp, self->_alternatives, -[NSData length](self->_profile, "length"), self->_originalAudioFileURL];

  return v5;
}

- (id)concatenatedAudioPackets
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_audioPackets;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendData:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

- (double)_audioPacketsDuration
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_samplingRate)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_audioPackets;
    v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v13;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v6 += [*(*(&v12 + 1) + 8 * i) length];
        }

        v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
      v9 = (v6 >> 1);
    }

    else
    {
      v9 = 0.0;
    }

    result = v9 / self->_samplingRate;
  }

  else
  {
    result = 0.0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)hasData
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_originalAudioFileURL)
  {
    LOBYTE(v2) = 1;
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = self->_audioPackets;
    v2 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v2)
    {
      v4 = *v9;
      while (2)
      {
        for (i = 0; i != v2; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v3);
          }

          if ([*(*(&v8 + 1) + 8 * i) length])
          {
            LOBYTE(v2) = 1;
            goto LABEL_13;
          }
        }

        v2 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v6 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)addAudioPacket:(id)a3
{
  v4 = a3;
  if (!self->_originalAudioFileURL && self->_samplingRate)
  {
    v6 = v4;
    v5 = self->_collectedAudioDurationMS + ([v4 length] >> 1) / self->_samplingRate * 1000.0;
    if (v5 <= 60000.0)
    {
      self->_collectedAudioDurationMS = v5;
      [(NSMutableArray *)self->_audioPackets addObject:v6];
    }

    else
    {
      self->_audioExceededMaxDuration = 1;
    }

    v4 = v6;
  }
}

- (CESRFidesASRRecord)initWithLanguage:(id)a3 task:(id)a4 context:(id)a5 narrowband:(BOOL)a6 farField:(BOOL)a7 interactionIdentifier:(id)a8 asrSelfComponentIdentifier:(id)a9 pluginId:(id)a10
{
  v12 = a6;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v44.receiver = self;
  v44.super_class = CESRFidesASRRecord;
  v22 = [(CESRFidesASRRecord *)&v44 init];
  if (v22)
  {
    v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
    audioPackets = v22->_audioPackets;
    v22->_audioPackets = v23;

    v25 = [v16 copy];
    language = v22->_language;
    v22->_language = v25;

    v27 = [v17 copy];
    task = v22->_task;
    v22->_task = v27;

    v29 = [v18 copy];
    context = v22->_context;
    v22->_context = v29;

    v31 = 16000;
    if (v12)
    {
      v31 = 8000;
    }

    v22->_samplingRate = v31;
    v22->_farField = a7;
    v32 = [MEMORY[0x277CCAD78] UUID];
    v33 = [v32 UUIDString];
    UUIDString = v22->_UUIDString;
    v22->_UUIDString = v33;

    v22->_hasRecognizedAnything = 0;
    v35 = [v19 copy];
    interactionIdentifier = v22->_interactionIdentifier;
    v22->_interactionIdentifier = v35;

    v37 = [v20 copy];
    asrSelfComponentIdentifier = v22->_asrSelfComponentIdentifier;
    v22->_asrSelfComponentIdentifier = v37;

    v39 = [v21 copy];
    pluginId = v22->_pluginId;
    v22->_pluginId = v39;

    v41 = [MEMORY[0x277CBEAA8] date];
    [v41 timeIntervalSince1970];
    v22->_timestamp = v42;

    v22->_audioExceededMaxDuration = 0;
  }

  return v22;
}

+ (void)deleteAllRecordsForPlugin:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_alloc(MEMORY[0x277D05630]) initWithBundleIdentifier:v5];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__CESRFidesASRRecord_deleteAllRecordsForPlugin_completion___block_invoke;
  v10[3] = &unk_27857FE80;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  [v7 deleteAllSavedRecordsWithCompletion:v10];
}

void __59__CESRFidesASRRecord_deleteAllRecordsForPlugin_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CEF0B8];
  if (v3)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "+[CESRFidesASRRecord deleteAllRecordsForPlugin:completion:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_225EEB000, v4, OS_LOG_TYPE_ERROR, "%s Failed to delete all records for plugin=%@ with error=%@", &v9, 0x20u);
    }
  }

  else if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v9 = 136315394;
    v10 = "+[CESRFidesASRRecord deleteAllRecordsForPlugin:completion:]_block_invoke";
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_225EEB000, v4, OS_LOG_TYPE_INFO, "%s Successfully deleted all records for plugin=%@", &v9, 0x16u);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (id)recordFromData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAAC8];
  v4 = a3;
  v11 = 0;
  v5 = [[v3 alloc] initForReadingFromData:v4 error:&v11];

  v6 = v11;
  v7 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];
  [v5 finishDecoding];
  if (!v7)
  {
    v8 = *MEMORY[0x277CEF0B8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0B8], OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v13 = "+[CESRFidesASRRecord recordFromData:]";
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_225EEB000, v8, OS_LOG_TYPE_INFO, "%s DES record unarchive error: %@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

@end