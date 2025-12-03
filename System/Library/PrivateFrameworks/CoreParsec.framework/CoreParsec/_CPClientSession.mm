@interface _CPClientSession
- (BOOL)getResourceVersions:(id *)versions forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
- (void)addExperimentInfo:(id)info;
- (void)addFeedback:(id)feedback;
- (void)setExperimentInfo:(id)info;
- (void)setFeedback:(id)feedback;
- (void)setResourceVersions:(id)versions;
- (void)setResourceVersions:(id)versions forKey:(id)key;
- (void)writeTo:(id)to;
@end

@implementation _CPClientSession

- (unint64_t)hash
{
  v3 = [(NSString *)self->_agent hash];
  v4 = [(NSString *)self->_userGuidString hash]^ v3;
  v26 = v4 ^ [(NSDictionary *)self->_resourceVersions hash];
  sessionStart = self->_sessionStart;
  if (sessionStart < 0.0)
  {
    sessionStart = -sessionStart;
  }

  *v5.i64 = round(sessionStart);
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v25 = (*vbslq_s8(vnegq_f64(v8), v6, v5).i64 * 2654435760.0) + vcvtd_n_u64_f64(sessionStart - *v5.i64, 0x40uLL);
  v23 = 2654435761 * self->_removeTimestamps;
  v24 = 2654435761 * self->_previousSessionEndReason;
  v9 = [(NSString *)self->_parsecDeveloperID hash];
  v21 = 2654435761 * self->_duEnabled;
  v22 = v9;
  v20 = [(NSString *)self->_countryCode hash];
  v10 = [(NSString *)self->_locale hash];
  v11 = [(_CPUsageSinceLookback *)self->_usageSinceLookback hash];
  v12 = [(_CPUsageEnvelope *)self->_cohortsFeedback hash];
  v13 = 2654435761 * self->_devicePersistentD20;
  v14 = 2654435761 * self->_privateRelayStatus;
  v15 = 2654435761 * self->_isInternalCarry;
  v16 = [(NSArray *)self->_experimentInfos hash];
  v17 = 2654435761 * self->_searchOptOut;
  v18 = [(NSData *)self->_jsonFeedback hash];
  return v26 ^ v23 ^ v24 ^ v22 ^ v21 ^ v20 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ [(NSArray *)self->_feedbacks hash]^ v25;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_65;
  }

  agent = [(_CPClientSession *)self agent];
  agent2 = [equalCopy agent];
  if ((agent != 0) == (agent2 == 0))
  {
    goto LABEL_64;
  }

  agent3 = [(_CPClientSession *)self agent];
  if (agent3)
  {
    v8 = agent3;
    agent4 = [(_CPClientSession *)self agent];
    agent5 = [equalCopy agent];
    v11 = [agent4 isEqual:agent5];

    if (!v11)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  agent = [(_CPClientSession *)self userGuidString];
  agent2 = [equalCopy userGuidString];
  if ((agent != 0) == (agent2 == 0))
  {
    goto LABEL_64;
  }

  userGuidString = [(_CPClientSession *)self userGuidString];
  if (userGuidString)
  {
    v13 = userGuidString;
    userGuidString2 = [(_CPClientSession *)self userGuidString];
    userGuidString3 = [equalCopy userGuidString];
    v16 = [userGuidString2 isEqual:userGuidString3];

    if (!v16)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  agent = [(_CPClientSession *)self resourceVersions];
  agent2 = [equalCopy resourceVersions];
  if ((agent != 0) == (agent2 == 0))
  {
    goto LABEL_64;
  }

  resourceVersions = [(_CPClientSession *)self resourceVersions];
  if (resourceVersions)
  {
    v18 = resourceVersions;
    resourceVersions2 = [(_CPClientSession *)self resourceVersions];
    resourceVersions3 = [equalCopy resourceVersions];
    v21 = [resourceVersions2 isEqual:resourceVersions3];

    if (!v21)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  sessionStart = self->_sessionStart;
  [equalCopy sessionStart];
  if (sessionStart != v23)
  {
    goto LABEL_65;
  }

  previousSessionEndReason = self->_previousSessionEndReason;
  if (previousSessionEndReason != [equalCopy previousSessionEndReason])
  {
    goto LABEL_65;
  }

  removeTimestamps = self->_removeTimestamps;
  if (removeTimestamps != [equalCopy removeTimestamps])
  {
    goto LABEL_65;
  }

  agent = [(_CPClientSession *)self parsecDeveloperID];
  agent2 = [equalCopy parsecDeveloperID];
  if ((agent != 0) == (agent2 == 0))
  {
    goto LABEL_64;
  }

  parsecDeveloperID = [(_CPClientSession *)self parsecDeveloperID];
  if (parsecDeveloperID)
  {
    v27 = parsecDeveloperID;
    parsecDeveloperID2 = [(_CPClientSession *)self parsecDeveloperID];
    parsecDeveloperID3 = [equalCopy parsecDeveloperID];
    v30 = [parsecDeveloperID2 isEqual:parsecDeveloperID3];

    if (!v30)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  duEnabled = self->_duEnabled;
  if (duEnabled != [equalCopy duEnabled])
  {
    goto LABEL_65;
  }

  agent = [(_CPClientSession *)self countryCode];
  agent2 = [equalCopy countryCode];
  if ((agent != 0) == (agent2 == 0))
  {
    goto LABEL_64;
  }

  countryCode = [(_CPClientSession *)self countryCode];
  if (countryCode)
  {
    v33 = countryCode;
    countryCode2 = [(_CPClientSession *)self countryCode];
    countryCode3 = [equalCopy countryCode];
    v36 = [countryCode2 isEqual:countryCode3];

    if (!v36)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  agent = [(_CPClientSession *)self locale];
  agent2 = [equalCopy locale];
  if ((agent != 0) == (agent2 == 0))
  {
    goto LABEL_64;
  }

  locale = [(_CPClientSession *)self locale];
  if (locale)
  {
    v38 = locale;
    locale2 = [(_CPClientSession *)self locale];
    locale3 = [equalCopy locale];
    v41 = [locale2 isEqual:locale3];

    if (!v41)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  agent = [(_CPClientSession *)self usageSinceLookback];
  agent2 = [equalCopy usageSinceLookback];
  if ((agent != 0) == (agent2 == 0))
  {
    goto LABEL_64;
  }

  usageSinceLookback = [(_CPClientSession *)self usageSinceLookback];
  if (usageSinceLookback)
  {
    v43 = usageSinceLookback;
    usageSinceLookback2 = [(_CPClientSession *)self usageSinceLookback];
    usageSinceLookback3 = [equalCopy usageSinceLookback];
    v46 = [usageSinceLookback2 isEqual:usageSinceLookback3];

    if (!v46)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  agent = [(_CPClientSession *)self cohortsFeedback];
  agent2 = [equalCopy cohortsFeedback];
  if ((agent != 0) == (agent2 == 0))
  {
    goto LABEL_64;
  }

  cohortsFeedback = [(_CPClientSession *)self cohortsFeedback];
  if (cohortsFeedback)
  {
    v48 = cohortsFeedback;
    cohortsFeedback2 = [(_CPClientSession *)self cohortsFeedback];
    cohortsFeedback3 = [equalCopy cohortsFeedback];
    v51 = [cohortsFeedback2 isEqual:cohortsFeedback3];

    if (!v51)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  devicePersistentD20 = self->_devicePersistentD20;
  if (devicePersistentD20 != [equalCopy devicePersistentD20])
  {
    goto LABEL_65;
  }

  privateRelayStatus = self->_privateRelayStatus;
  if (privateRelayStatus != [equalCopy privateRelayStatus])
  {
    goto LABEL_65;
  }

  isInternalCarry = self->_isInternalCarry;
  if (isInternalCarry != [equalCopy isInternalCarry])
  {
    goto LABEL_65;
  }

  agent = [(_CPClientSession *)self experimentInfos];
  agent2 = [equalCopy experimentInfos];
  if ((agent != 0) == (agent2 == 0))
  {
    goto LABEL_64;
  }

  experimentInfos = [(_CPClientSession *)self experimentInfos];
  if (experimentInfos)
  {
    v56 = experimentInfos;
    experimentInfos2 = [(_CPClientSession *)self experimentInfos];
    experimentInfos3 = [equalCopy experimentInfos];
    v59 = [experimentInfos2 isEqual:experimentInfos3];

    if (!v59)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  searchOptOut = self->_searchOptOut;
  if (searchOptOut != [equalCopy searchOptOut])
  {
    goto LABEL_65;
  }

  agent = [(_CPClientSession *)self jsonFeedback];
  agent2 = [equalCopy jsonFeedback];
  if ((agent != 0) == (agent2 == 0))
  {
    goto LABEL_64;
  }

  jsonFeedback = [(_CPClientSession *)self jsonFeedback];
  if (jsonFeedback)
  {
    v62 = jsonFeedback;
    jsonFeedback2 = [(_CPClientSession *)self jsonFeedback];
    jsonFeedback3 = [equalCopy jsonFeedback];
    v65 = [jsonFeedback2 isEqual:jsonFeedback3];

    if (!v65)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  agent = [(_CPClientSession *)self feedbacks];
  agent2 = [equalCopy feedbacks];
  if ((agent != 0) == (agent2 == 0))
  {
LABEL_64:

    goto LABEL_65;
  }

  feedbacks = [(_CPClientSession *)self feedbacks];
  if (!feedbacks)
  {

LABEL_68:
    v71 = 1;
    goto LABEL_66;
  }

  v67 = feedbacks;
  feedbacks2 = [(_CPClientSession *)self feedbacks];
  feedbacks3 = [equalCopy feedbacks];
  v70 = [feedbacks2 isEqual:feedbacks3];

  if (v70)
  {
    goto LABEL_68;
  }

LABEL_65:
  v71 = 0;
LABEL_66:

  return v71;
}

- (void)writeTo:(id)to
{
  v66 = *MEMORY[0x1E69E9840];
  toCopy = to;
  agent = [(_CPClientSession *)self agent];

  if (agent)
  {
    agent = self->_agent;
    PBDataWriterWriteStringField();
  }

  userGuidString = [(_CPClientSession *)self userGuidString];

  if (userGuidString)
  {
    userGuidString = self->_userGuidString;
    PBDataWriterWriteStringField();
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v9 = self->_resourceVersions;
  v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v60;
    do
    {
      v13 = 0;
      do
      {
        if (*v60 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v59 + 1) + 8 * v13);
        v58 = 0;
        PBDataWriterPlaceMark();
        PBDataWriterWriteStringField();
        v15 = [(NSDictionary *)self->_resourceVersions objectForKeyedSubscript:v14];
        PBDataWriterWriteStringField();

        PBDataWriterRecallMark();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v11);
  }

  [(_CPClientSession *)self sessionStart];
  if (v16 != 0.0)
  {
    sessionStart = self->_sessionStart;
    PBDataWriterWriteDoubleField();
  }

  if ([(_CPClientSession *)self previousSessionEndReason])
  {
    previousSessionEndReason = self->_previousSessionEndReason;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPClientSession *)self removeTimestamps])
  {
    removeTimestamps = self->_removeTimestamps;
    PBDataWriterWriteBOOLField();
  }

  parsecDeveloperID = [(_CPClientSession *)self parsecDeveloperID];

  if (parsecDeveloperID)
  {
    parsecDeveloperID = self->_parsecDeveloperID;
    PBDataWriterWriteStringField();
  }

  if ([(_CPClientSession *)self duEnabled])
  {
    duEnabled = self->_duEnabled;
    PBDataWriterWriteBOOLField();
  }

  countryCode = [(_CPClientSession *)self countryCode];

  if (countryCode)
  {
    countryCode = self->_countryCode;
    PBDataWriterWriteStringField();
  }

  locale = [(_CPClientSession *)self locale];

  if (locale)
  {
    locale = self->_locale;
    PBDataWriterWriteStringField();
  }

  usageSinceLookback = [(_CPClientSession *)self usageSinceLookback];

  if (usageSinceLookback)
  {
    usageSinceLookback2 = [(_CPClientSession *)self usageSinceLookback];
    PBDataWriterWriteSubmessage();
  }

  cohortsFeedback = [(_CPClientSession *)self cohortsFeedback];

  if (cohortsFeedback)
  {
    cohortsFeedback2 = [(_CPClientSession *)self cohortsFeedback];
    PBDataWriterWriteSubmessage();
  }

  if ([(_CPClientSession *)self devicePersistentD20])
  {
    devicePersistentD20 = self->_devicePersistentD20;
    PBDataWriterWriteUint32Field();
  }

  if ([(_CPClientSession *)self privateRelayStatus])
  {
    privateRelayStatus = self->_privateRelayStatus;
    PBDataWriterWriteInt32Field();
  }

  if ([(_CPClientSession *)self isInternalCarry])
  {
    isInternalCarry = self->_isInternalCarry;
    PBDataWriterWriteBOOLField();
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v34 = self->_experimentInfos;
  v35 = [(NSArray *)v34 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v55;
    do
    {
      v38 = 0;
      do
      {
        if (*v55 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v54 + 1) + 8 * v38);
        PBDataWriterWriteSubmessage();
        ++v38;
      }

      while (v36 != v38);
      v36 = [(NSArray *)v34 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v36);
  }

  if ([(_CPClientSession *)self searchOptOut])
  {
    searchOptOut = self->_searchOptOut;
    PBDataWriterWriteBOOLField();
  }

  jsonFeedback = [(_CPClientSession *)self jsonFeedback];

  if (jsonFeedback)
  {
    jsonFeedback = self->_jsonFeedback;
    PBDataWriterWriteDataField();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v43 = self->_feedbacks;
  v44 = [(NSArray *)v43 countByEnumeratingWithState:&v50 objects:v63 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v51;
    do
    {
      v47 = 0;
      do
      {
        if (*v51 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v50 + 1) + 8 * v47);
        PBDataWriterWriteSubmessage();
        ++v47;
      }

      while (v45 != v47);
      v45 = [(NSArray *)v43 countByEnumeratingWithState:&v50 objects:v63 count:16];
    }

    while (v45);
  }

  v49 = *MEMORY[0x1E69E9840];
}

- (void)addFeedback:(id)feedback
{
  feedbackCopy = feedback;
  feedbacks = self->_feedbacks;
  v8 = feedbackCopy;
  if (!feedbacks)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_feedbacks;
    self->_feedbacks = array;

    feedbackCopy = v8;
    feedbacks = self->_feedbacks;
  }

  [(NSArray *)feedbacks addObject:feedbackCopy];
}

- (void)setFeedback:(id)feedback
{
  v4 = [feedback mutableCopy];
  feedbacks = self->_feedbacks;
  self->_feedbacks = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addExperimentInfo:(id)info
{
  infoCopy = info;
  experimentInfos = self->_experimentInfos;
  v8 = infoCopy;
  if (!experimentInfos)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_experimentInfos;
    self->_experimentInfos = array;

    infoCopy = v8;
    experimentInfos = self->_experimentInfos;
  }

  [(NSArray *)experimentInfos addObject:infoCopy];
}

- (void)setExperimentInfo:(id)info
{
  v4 = [info mutableCopy];
  experimentInfos = self->_experimentInfos;
  self->_experimentInfos = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setResourceVersions:(id)versions forKey:(id)key
{
  versionsCopy = versions;
  keyCopy = key;
  if (!self->_resourceVersions)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    resourceVersions = self->_resourceVersions;
    self->_resourceVersions = dictionary;
  }

  v10 = keyCopy;
  v11 = versionsCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSDictionary *)self->_resourceVersions setObject:v11 forKey:v10];
    }
  }
}

- (BOOL)getResourceVersions:(id *)versions forKey:(id)key
{
  v5 = [(NSDictionary *)self->_resourceVersions objectForKeyedSubscript:key];
  if (versions && v5)
  {
    v5 = v5;
    *versions = v5;
  }

  v6 = v5 != 0;

  return v6;
}

- (void)setResourceVersions:(id)versions
{
  v4 = [versions mutableCopy];
  resourceVersions = self->_resourceVersions;
  self->_resourceVersions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end