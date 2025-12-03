@interface CESRRawSpeechProfileConverter
- (BOOL)_processRawSpeechProfile:(id)profile deviceId:(id)id userId:(id)userId error:(id *)error;
- (BOOL)addCompanionRawSpeechProfile:(id)profile deviceId:(id)id userId:(id)userId error:(id *)error;
- (CESRRawSpeechProfileConverter)initWithOmittedItemTypes:(id)types;
- (id)convertToKVProfileWithError:(id *)error;
@end

@implementation CESRRawSpeechProfileConverter

- (id)convertToKVProfileWithError:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  if (self->_primaryProfile)
  {
    if (![(NSMutableDictionary *)self->_companionProfiles count])
    {
      v7 = self->_primaryProfile;
      goto LABEL_17;
    }

    primaryProfile = self->_primaryProfile;
    allValues = [(NSMutableDictionary *)self->_companionProfiles allValues];
    v21 = 0;
    v7 = [CESRRawSpeechProfileTools mergeMultiUserPrimaryProfile:primaryProfile withCompanionProfiles:allValues error:&v21];
    v8 = v21;

    if (v7)
    {
      v9 = v7;
LABEL_16:

      goto LABEL_17;
    }

    v14 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      companionProfiles = self->_companionProfiles;
      v19 = v14;
      v20 = [(NSMutableDictionary *)companionProfiles count];
      *buf = 136315650;
      v23 = "[CESRRawSpeechProfileConverter convertToKVProfileWithError:]";
      v24 = 2048;
      v25 = v20;
      v26 = 2112;
      v27 = v8;
      _os_log_error_impl(&dword_225EEB000, v19, OS_LOG_TYPE_ERROR, "%s Failed to merge primary and %lu companion profile(s), error: %@", buf, 0x20u);

      if (!error)
      {
        goto LABEL_16;
      }
    }

    else if (!error)
    {
      goto LABEL_16;
    }

    if (v8)
    {
      v15 = v8;
      *error = v8;
    }

    goto LABEL_16;
  }

  v10 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v23 = "[CESRRawSpeechProfileConverter convertToKVProfileWithError:]";
    v24 = 2112;
    v25 = @"No primary profile data has been successfuly added to the builder.";
    _os_log_error_impl(&dword_225EEB000, v10, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
  }

  v11 = MEMORY[0x277CCA9B8];
  v28 = *MEMORY[0x277CCA450];
  v29[0] = @"No primary profile data has been successfuly added to the builder.";
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
  v13 = [v11 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:9 userInfo:v12];
  if (error && v13)
  {
    v13 = v13;
    *error = v13;
  }

  v7 = 0;
LABEL_17:
  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)_processRawSpeechProfile:(id)profile deviceId:(id)id userId:(id)userId error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  userIdCopy = userId;
  omitItemTypes = self->_omitItemTypes;
  v20 = 0;
  v13 = [CESRRawSpeechProfileTools convertRawSpeechProfile:profile deviceId:idCopy userId:userIdCopy omitItemTypes:omitItemTypes error:&v20];
  v14 = v20;
  if (v13)
  {
    if (userIdCopy)
    {
      [(NSMutableDictionary *)self->_companionProfiles setObject:v13 forKey:userIdCopy];
    }

    else
    {
      objc_storeStrong(&self->_primaryProfile, v13);
    }
  }

  else
  {
    v15 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      if (idCopy | userIdCopy)
      {
        userIdCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"[companion: {deviceId: %@ userId: %@}]", idCopy, userIdCopy];
      }

      else
      {
        userIdCopy = @"[primary]";
      }

      *buf = 136315650;
      v22 = "[CESRRawSpeechProfileConverter _processRawSpeechProfile:deviceId:userId:error:]";
      v23 = 2112;
      v24 = userIdCopy;
      v25 = 2112;
      v26 = v14;
      _os_log_error_impl(&dword_225EEB000, v15, OS_LOG_TYPE_ERROR, "%s Failed to convert rawSpeechProfile %@ to KVProfile, error: %@", buf, 0x20u);
    }

    if (error && v14)
    {
      v16 = v14;
      *error = v14;
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v13 != 0;
}

- (BOOL)addCompanionRawSpeechProfile:(id)profile deviceId:(id)id userId:(id)userId error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  idCopy = id;
  userIdCopy = userId;
  if ([idCopy length])
  {
    if ([userIdCopy length])
    {
      v13 = [(CESRRawSpeechProfileConverter *)self _processRawSpeechProfile:profileCopy deviceId:idCopy userId:userIdCopy error:error];
      goto LABEL_14;
    }

    userIdCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"userId must be nonempty string: %@", userIdCopy];
    v20 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[CESRRawSpeechProfileConverter addCompanionRawSpeechProfile:deviceId:userId:error:]";
      v31 = 2112;
      v32 = userIdCopy;
      _os_log_error_impl(&dword_225EEB000, v20, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v21 = MEMORY[0x277CCA9B8];
    v25 = *MEMORY[0x277CCA450];
    v26 = userIdCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    v18 = v21;
    v19 = 8;
  }

  else
  {
    userIdCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"deviceId must be nonempty string: %@", idCopy];
    v15 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[CESRRawSpeechProfileConverter addCompanionRawSpeechProfile:deviceId:userId:error:]";
      v31 = 2112;
      v32 = userIdCopy;
      _os_log_error_impl(&dword_225EEB000, v15, OS_LOG_TYPE_ERROR, "%s %@", buf, 0x16u);
    }

    v16 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CCA450];
    v28 = userIdCopy;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v18 = v16;
    v19 = 7;
  }

  v22 = [v18 errorWithDomain:@"com.apple.siri.speech-profile.tools" code:v19 userInfo:v17];
  if (error && v22)
  {
    v22 = v22;
    *error = v22;
  }

  v13 = 0;
LABEL_14:

  v23 = *MEMORY[0x277D85DE8];
  return v13;
}

- (CESRRawSpeechProfileConverter)initWithOmittedItemTypes:(id)types
{
  typesCopy = types;
  v13.receiver = self;
  v13.super_class = CESRRawSpeechProfileConverter;
  v6 = [(CESRRawSpeechProfileConverter *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_omitItemTypes, types);
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    companionProfiles = v7->_companionProfiles;
    v7->_companionProfiles = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    companionPriors = v7->_companionPriors;
    v7->_companionPriors = v10;
  }

  return v7;
}

@end