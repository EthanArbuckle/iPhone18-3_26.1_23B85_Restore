@interface _CPClientSession
- (BOOL)getResourceVersions:(id *)a3 forKey:(id)a4;
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
- (void)addExperimentInfo:(id)a3;
- (void)addFeedback:(id)a3;
- (void)setExperimentInfo:(id)a3;
- (void)setFeedback:(id)a3;
- (void)setResourceVersions:(id)a3;
- (void)setResourceVersions:(id)a3 forKey:(id)a4;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_65;
  }

  v5 = [(_CPClientSession *)self agent];
  v6 = [v4 agent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_64;
  }

  v7 = [(_CPClientSession *)self agent];
  if (v7)
  {
    v8 = v7;
    v9 = [(_CPClientSession *)self agent];
    v10 = [v4 agent];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  v5 = [(_CPClientSession *)self userGuidString];
  v6 = [v4 userGuidString];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_64;
  }

  v12 = [(_CPClientSession *)self userGuidString];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPClientSession *)self userGuidString];
    v15 = [v4 userGuidString];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  v5 = [(_CPClientSession *)self resourceVersions];
  v6 = [v4 resourceVersions];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_64;
  }

  v17 = [(_CPClientSession *)self resourceVersions];
  if (v17)
  {
    v18 = v17;
    v19 = [(_CPClientSession *)self resourceVersions];
    v20 = [v4 resourceVersions];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  sessionStart = self->_sessionStart;
  [v4 sessionStart];
  if (sessionStart != v23)
  {
    goto LABEL_65;
  }

  previousSessionEndReason = self->_previousSessionEndReason;
  if (previousSessionEndReason != [v4 previousSessionEndReason])
  {
    goto LABEL_65;
  }

  removeTimestamps = self->_removeTimestamps;
  if (removeTimestamps != [v4 removeTimestamps])
  {
    goto LABEL_65;
  }

  v5 = [(_CPClientSession *)self parsecDeveloperID];
  v6 = [v4 parsecDeveloperID];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_64;
  }

  v26 = [(_CPClientSession *)self parsecDeveloperID];
  if (v26)
  {
    v27 = v26;
    v28 = [(_CPClientSession *)self parsecDeveloperID];
    v29 = [v4 parsecDeveloperID];
    v30 = [v28 isEqual:v29];

    if (!v30)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  duEnabled = self->_duEnabled;
  if (duEnabled != [v4 duEnabled])
  {
    goto LABEL_65;
  }

  v5 = [(_CPClientSession *)self countryCode];
  v6 = [v4 countryCode];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_64;
  }

  v32 = [(_CPClientSession *)self countryCode];
  if (v32)
  {
    v33 = v32;
    v34 = [(_CPClientSession *)self countryCode];
    v35 = [v4 countryCode];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  v5 = [(_CPClientSession *)self locale];
  v6 = [v4 locale];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_64;
  }

  v37 = [(_CPClientSession *)self locale];
  if (v37)
  {
    v38 = v37;
    v39 = [(_CPClientSession *)self locale];
    v40 = [v4 locale];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  v5 = [(_CPClientSession *)self usageSinceLookback];
  v6 = [v4 usageSinceLookback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_64;
  }

  v42 = [(_CPClientSession *)self usageSinceLookback];
  if (v42)
  {
    v43 = v42;
    v44 = [(_CPClientSession *)self usageSinceLookback];
    v45 = [v4 usageSinceLookback];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  v5 = [(_CPClientSession *)self cohortsFeedback];
  v6 = [v4 cohortsFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_64;
  }

  v47 = [(_CPClientSession *)self cohortsFeedback];
  if (v47)
  {
    v48 = v47;
    v49 = [(_CPClientSession *)self cohortsFeedback];
    v50 = [v4 cohortsFeedback];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  devicePersistentD20 = self->_devicePersistentD20;
  if (devicePersistentD20 != [v4 devicePersistentD20])
  {
    goto LABEL_65;
  }

  privateRelayStatus = self->_privateRelayStatus;
  if (privateRelayStatus != [v4 privateRelayStatus])
  {
    goto LABEL_65;
  }

  isInternalCarry = self->_isInternalCarry;
  if (isInternalCarry != [v4 isInternalCarry])
  {
    goto LABEL_65;
  }

  v5 = [(_CPClientSession *)self experimentInfos];
  v6 = [v4 experimentInfos];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_64;
  }

  v55 = [(_CPClientSession *)self experimentInfos];
  if (v55)
  {
    v56 = v55;
    v57 = [(_CPClientSession *)self experimentInfos];
    v58 = [v4 experimentInfos];
    v59 = [v57 isEqual:v58];

    if (!v59)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  searchOptOut = self->_searchOptOut;
  if (searchOptOut != [v4 searchOptOut])
  {
    goto LABEL_65;
  }

  v5 = [(_CPClientSession *)self jsonFeedback];
  v6 = [v4 jsonFeedback];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_64;
  }

  v61 = [(_CPClientSession *)self jsonFeedback];
  if (v61)
  {
    v62 = v61;
    v63 = [(_CPClientSession *)self jsonFeedback];
    v64 = [v4 jsonFeedback];
    v65 = [v63 isEqual:v64];

    if (!v65)
    {
      goto LABEL_65;
    }
  }

  else
  {
  }

  v5 = [(_CPClientSession *)self feedbacks];
  v6 = [v4 feedbacks];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_64:

    goto LABEL_65;
  }

  v66 = [(_CPClientSession *)self feedbacks];
  if (!v66)
  {

LABEL_68:
    v71 = 1;
    goto LABEL_66;
  }

  v67 = v66;
  v68 = [(_CPClientSession *)self feedbacks];
  v69 = [v4 feedbacks];
  v70 = [v68 isEqual:v69];

  if (v70)
  {
    goto LABEL_68;
  }

LABEL_65:
  v71 = 0;
LABEL_66:

  return v71;
}

- (void)writeTo:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_CPClientSession *)self agent];

  if (v5)
  {
    agent = self->_agent;
    PBDataWriterWriteStringField();
  }

  v7 = [(_CPClientSession *)self userGuidString];

  if (v7)
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

  v20 = [(_CPClientSession *)self parsecDeveloperID];

  if (v20)
  {
    parsecDeveloperID = self->_parsecDeveloperID;
    PBDataWriterWriteStringField();
  }

  if ([(_CPClientSession *)self duEnabled])
  {
    duEnabled = self->_duEnabled;
    PBDataWriterWriteBOOLField();
  }

  v23 = [(_CPClientSession *)self countryCode];

  if (v23)
  {
    countryCode = self->_countryCode;
    PBDataWriterWriteStringField();
  }

  v25 = [(_CPClientSession *)self locale];

  if (v25)
  {
    locale = self->_locale;
    PBDataWriterWriteStringField();
  }

  v27 = [(_CPClientSession *)self usageSinceLookback];

  if (v27)
  {
    v28 = [(_CPClientSession *)self usageSinceLookback];
    PBDataWriterWriteSubmessage();
  }

  v29 = [(_CPClientSession *)self cohortsFeedback];

  if (v29)
  {
    v30 = [(_CPClientSession *)self cohortsFeedback];
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

  v41 = [(_CPClientSession *)self jsonFeedback];

  if (v41)
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

- (void)addFeedback:(id)a3
{
  v4 = a3;
  feedbacks = self->_feedbacks;
  v8 = v4;
  if (!feedbacks)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_feedbacks;
    self->_feedbacks = v6;

    v4 = v8;
    feedbacks = self->_feedbacks;
  }

  [(NSArray *)feedbacks addObject:v4];
}

- (void)setFeedback:(id)a3
{
  v4 = [a3 mutableCopy];
  feedbacks = self->_feedbacks;
  self->_feedbacks = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)addExperimentInfo:(id)a3
{
  v4 = a3;
  experimentInfos = self->_experimentInfos;
  v8 = v4;
  if (!experimentInfos)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_experimentInfos;
    self->_experimentInfos = v6;

    v4 = v8;
    experimentInfos = self->_experimentInfos;
  }

  [(NSArray *)experimentInfos addObject:v4];
}

- (void)setExperimentInfo:(id)a3
{
  v4 = [a3 mutableCopy];
  experimentInfos = self->_experimentInfos;
  self->_experimentInfos = v4;

  MEMORY[0x1EEE66BB8]();
}

- (void)setResourceVersions:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!self->_resourceVersions)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    resourceVersions = self->_resourceVersions;
    self->_resourceVersions = v8;
  }

  v10 = v7;
  v11 = v6;
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

- (BOOL)getResourceVersions:(id *)a3 forKey:(id)a4
{
  v5 = [(NSDictionary *)self->_resourceVersions objectForKeyedSubscript:a4];
  if (a3 && v5)
  {
    v5 = v5;
    *a3 = v5;
  }

  v6 = v5 != 0;

  return v6;
}

- (void)setResourceVersions:(id)a3
{
  v4 = [a3 mutableCopy];
  resourceVersions = self->_resourceVersions;
  self->_resourceVersions = v4;

  MEMORY[0x1EEE66BB8]();
}

@end