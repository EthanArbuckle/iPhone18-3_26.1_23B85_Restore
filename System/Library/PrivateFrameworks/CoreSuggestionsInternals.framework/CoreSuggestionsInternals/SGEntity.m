@interface SGEntity
- (BOOL)hasExtractionException;
- (BOOL)hasTag:(id)a3;
- (BOOL)isCancelled;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEntity:(id)a3;
- (BOOL)isEventComplete;
- (BOOL)isFromForwardedMessage;
- (BOOL)isInhuman;
- (BOOL)isNaturalLanguageEvent;
- (BOOL)isPartiallyDownloaded;
- (SGEntity)init;
- (SGEntity)initWithEntity:(id)a3;
- (_NSRange)contentRangeOfInterest;
- (id)description;
- (id)extraKeyTag;
- (id)fieldsToSaveOnConfirmation;
- (id)loggingIdentifier;
- (id)tags;
- (id)templateShortName;
- (unint64_t)hash;
- (void)addTag:(id)a3;
- (void)dealloc;
- (void)removeTag:(id)a3;
- (void)validate;
@end

@implementation SGEntity

- (_NSRange)contentRangeOfInterest
{
  length = self->_contentRangeOfInterest.length;
  location = self->_contentRangeOfInterest.location;
  result.length = length;
  result.location = location;
  return result;
}

- (BOOL)isEventComplete
{
  v17 = *MEMORY[0x277D85DE8];
  [(SGEntity *)self tags];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      if ([v7 isEventCompletenessTag])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v8 = v7;

    if (v8)
    {
      v2 = [v8 isEventComplete];
      v9 = [v2 BOOLValue];
      goto LABEL_12;
    }

    v9 = 1;
  }

  else
  {
LABEL_9:

    v8 = 0;
    v9 = 1;
LABEL_12:
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)loggingIdentifier
{
  if (self->_duplicateKey)
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%tu", -[SGDuplicateKey hash](self->_duplicateKey, "hash")];
  }

  else
  {
    v2 = &stru_284703F00;
  }

  if ([(__CFString *)v2 length]> 0xC)
  {
    v3 = [(__CFString *)v2 substringWithRange:0, 12];
  }

  else
  {
    v3 = v2;
  }

  v4 = v3;

  return v4;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SGEntity *)self duplicateKey];
  v5 = [(SGEntity *)self sourceKey];
  v6 = [(SGEntity *)self title];
  v7 = [v3 initWithFormat:@"<SGEntity:%@, sourceKey=%@, title=%@>", v4, v5, v6];

  return v7;
}

- (id)fieldsToSaveOnConfirmation
{
  v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
  v4 = v3;
  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKeyedSubscript:@"summary"];
  }

  content = self->_content;
  if (content)
  {
    [v4 setObject:content forKeyedSubscript:@"description"];
  }

  return v4;
}

- (BOOL)isPartiallyDownloaded
{
  v2 = [(SGEntity *)self tags];
  v3 = [MEMORY[0x277D01FA0] isPartiallyDownloaded];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)isInhuman
{
  v2 = [(SGEntity *)self tags];
  v3 = [MEMORY[0x277D01FA0] inhuman];
  if ([v2 containsObject:v3])
  {
    v4 = [MEMORY[0x277D01FA0] human];
    v5 = [v2 containsObject:v4] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)templateShortName
{
  v15 = *MEMORY[0x277D85DE8];
  [(SGEntity *)self tags];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if ([v6 isTemplateShortName])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = [v3 value];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)extraKeyTag
{
  v14 = *MEMORY[0x277D85DE8];
  [(SGEntity *)self tags];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if ([v6 isExtraKey])
        {
          v3 = v6;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)hasTag:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(SGEntity *)self tags];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) isEqualToEntityTag:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)tags
{
  pthread_mutex_lock(&self->_tagsLock);
  tagsSnapshot = self->_tagsSnapshot;
  if (!tagsSnapshot)
  {
    v4 = [(NSMutableSet *)self->_tags copy];
    v5 = self->_tagsSnapshot;
    self->_tagsSnapshot = v4;

    tagsSnapshot = self->_tagsSnapshot;
  }

  v6 = tagsSnapshot;
  pthread_mutex_unlock(&self->_tagsLock);

  return v6;
}

- (void)removeTag:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SGEntity.m" lineNumber:174 description:{@"Invalid parameter not satisfying: %@", @"tag"}];
  }

  pthread_mutex_lock(&self->_tagsLock);
  if ([(NSMutableSet *)self->_tags containsObject:v7])
  {
    tagsSnapshot = self->_tagsSnapshot;
    self->_tagsSnapshot = 0;

    [(NSMutableSet *)self->_tags removeObject:v7];
  }

  pthread_mutex_unlock(&self->_tagsLock);
}

- (void)addTag:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"SGEntity.m" lineNumber:162 description:{@"Invalid parameter not satisfying: %@", @"tag"}];
  }

  pthread_mutex_lock(&self->_tagsLock);
  if (([(NSMutableSet *)self->_tags containsObject:v7]& 1) == 0)
  {
    tagsSnapshot = self->_tagsSnapshot;
    self->_tagsSnapshot = 0;

    [(NSMutableSet *)self->_tags addObject:v7];
  }

  pthread_mutex_unlock(&self->_tagsLock);
}

- (BOOL)isFromForwardedMessage
{
  v2 = [(SGEntity *)self tags];
  v3 = [MEMORY[0x277D01FA0] fromForwardedMessage];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)hasExtractionException
{
  v2 = [(SGEntity *)self tags];
  v3 = [MEMORY[0x277D01FA0] templateException];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)isCancelled
{
  v2 = [(SGEntity *)self tags];
  v3 = [MEMORY[0x277D01FA0] extractedEventCancellation];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)isNaturalLanguageEvent
{
  v2 = [(SGEntity *)self tags];
  v3 = [MEMORY[0x277D01FA0] naturalLanguageEvent];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (void)validate
{
  v4 = [(SGEntity *)self duplicateKey];
  v5 = [v4 entityKey];

  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SGEntity.m" lineNumber:120 description:@"entityKey can't be nil."];
  }

  v6 = [(SGEntity *)self duplicateKey];
  v7 = [v6 entityType];

  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"SGEntity.m" lineNumber:121 description:@"entityType must not be SGEntityTypeUnknown"];
  }

  v8 = [(SGEntity *)self duplicateKey];
  v9 = [v8 entityType];

  if (v9 == 8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"SGEntity.m" lineNumber:122 description:@"entityType must not be SGEntityTypeDetectedEmailAddress"];
  }
}

- (unint64_t)hash
{
  v3 = [(SGRecordId *)self->_recordId hash];
  v4 = [(SGDuplicateKey *)self->_duplicateKey hash]- v3 + 32 * v3;
  return [(NSString *)self->_sourceKey hash]- v4 + 32 * v4;
}

- (BOOL)isEqualToEntity:(id)a3
{
  v4 = a3;
  v5 = self->_recordId;
  v6 = v5;
  if (v5 == v4[12])
  {
  }

  else
  {
    v7 = [(SGRecordId *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v8 = self->_duplicateKey;
  v9 = v8;
  if (v8 == v4[13])
  {
  }

  else
  {
    v10 = [(SGDuplicateKey *)v8 isEqual:?];

    if (!v10)
    {
      goto LABEL_27;
    }
  }

  v11 = self->_sourceKey;
  v12 = v11;
  if (v11 == v4[15])
  {
  }

  else
  {
    v13 = [(NSString *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v14 = self->_content;
  v15 = v14;
  if (v14 == v4[16])
  {
  }

  else
  {
    v16 = [(NSString *)v14 isEqual:?];

    if ((v16 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v17 = 0;
  if (self->_contentRangeOfInterest.location == v4[30] && self->_contentRangeOfInterest.length == v4[31])
  {
    v18 = self->_title;
    v19 = v18;
    if (v18 == v4[17])
    {
    }

    else
    {
      v20 = [(NSString *)v18 isEqual:?];

      if ((v20 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    [v4 creationTimestamp];
    if (self->_creationTimestamp.secondsFromUnixEpoch != v21)
    {
      goto LABEL_27;
    }

    [v4 lastModifiedTimestamp];
    if (self->_lastModifiedTimestamp.secondsFromUnixEpoch != v22)
    {
      goto LABEL_27;
    }

    v23 = self->_timeRange;
    v24 = v23;
    if (v23 == v4[23])
    {
    }

    else
    {
      v25 = [(SGSimpleTimeRange *)v23 isEqual:?];

      if ((v25 & 1) == 0)
      {
LABEL_27:
        v17 = 0;
        goto LABEL_28;
      }
    }

    v27 = [(SGEntity *)self tags];
    v28 = [v4 tags];
    if (![v27 isEqual:v28])
    {
      goto LABEL_42;
    }

    v29 = self->_structuredData;
    v30 = v29;
    if (v29 == v4[24])
    {
    }

    else
    {
      v31 = [(NSData *)v29 isEqual:?];

      if ((v31 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    quality = self->_quality;
    [v4 quality];
    if (quality == v33)
    {
      v34 = self->_locations;
      v35 = v34;
      if (v34 == v4[26])
      {
      }

      else
      {
        v36 = [(NSMutableSet *)v34 isEqual:?];

        if ((v36 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      masterEntityId = self->_masterEntityId;
      if (masterEntityId == [v4 masterEntityId])
      {
        state = self->_state;
        v17 = state == [v4 state];
LABEL_43:

        goto LABEL_28;
      }
    }

LABEL_42:
    v17 = 0;
    goto LABEL_43;
  }

LABEL_28:

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(SGEntity *)self isEqualToEntity:v5];
  }

  return v6;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_tagsLock);
  v3.receiver = self;
  v3.super_class = SGEntity;
  [(SGEntity *)&v3 dealloc];
}

- (SGEntity)initWithEntity:(id)a3
{
  v4 = a3;
  v5 = [(SGEntity *)self init];
  if (v5)
  {
    v6 = [v4 recordId];
    recordId = v5->_recordId;
    v5->_recordId = v6;

    v8 = [v4 duplicateKey];
    duplicateKey = v5->_duplicateKey;
    v5->_duplicateKey = v8;

    v10 = [v4 extractionInfo];
    extractionInfo = v5->_extractionInfo;
    v5->_extractionInfo = v10;

    v12 = [v4 sourceKey];
    sourceKey = v5->_sourceKey;
    v5->_sourceKey = v12;

    v14 = [v4 content];
    content = v5->_content;
    v5->_content = v14;

    v5->_contentRangeOfInterest.location = [v4 contentRangeOfInterest];
    v5->_contentRangeOfInterest.length = v16;
    v17 = [v4 title];
    title = v5->_title;
    v5->_title = v17;

    v19 = [v4 author];
    author = v5->_author;
    v5->_author = v19;

    [v4 creationTimestamp];
    v5->_creationTimestamp.secondsFromUnixEpoch = v21;
    [v4 lastModifiedTimestamp];
    v5->_lastModifiedTimestamp.secondsFromUnixEpoch = v22;
    v23 = [v4 timeRange];
    timeRange = v5->_timeRange;
    v5->_timeRange = v23;

    v25 = [v4 structuredData];
    structuredData = v5->_structuredData;
    v5->_structuredData = v25;

    [v4 quality];
    v5->_quality = v27;
    v28 = [v4 locations];
    locations = v5->_locations;
    v5->_locations = v28;

    v5->_masterEntityId = [v4 masterEntityId];
    v5->_groupId = [v4 groupId];
    v5->_state = [v4 state];
  }

  return v5;
}

- (SGEntity)init
{
  v12.receiver = self;
  v12.super_class = SGEntity;
  v2 = [(SGEntity *)&v12 init];
  v3 = v2;
  if (v2)
  {
    recordId = v2->_recordId;
    v2->_recordId = 0;

    v3->_state = 1;
    v5 = objc_opt_new();
    tags = v3->_tags;
    v3->_tags = v5;

    v7 = objc_opt_new();
    locations = v3->_locations;
    v3->_locations = v7;

    v3->_quality = 1.0;
    v3->_contentRangeOfInterest = xmmword_232106CE0;
    pthread_mutex_init(&v3->_tagsLock, 0);
    v9 = [MEMORY[0x277D01FD8] extractionInfoWithExtractionType:0 modelVersion:0 confidence:0];
    extractionInfo = v3->_extractionInfo;
    v3->_extractionInfo = v9;
  }

  return v3;
}

@end