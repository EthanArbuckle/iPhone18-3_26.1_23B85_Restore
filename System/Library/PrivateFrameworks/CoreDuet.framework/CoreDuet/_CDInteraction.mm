@interface _CDInteraction
+ (id)_internPool;
+ (id)conversationIdPercentEscapes;
+ (id)generateConversationIdFromHandle:(id)a3;
+ (id)generateConversationIdFromObjectsWithIdentifiers:(id)a3;
+ (id)inverseConversationIdPercentEscapes;
+ (id)recipientIdentifiersFromMobileMailConversationId:(id)a3;
+ (id)shareSheetInteractionFromINInteraction:(id)a3 bundleID:(id)a4 nsUserName:(id)a5 knowledgeStore:(id)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isGroupChat;
- (BOOL)isValidInteraction;
- (NSArray)peopleIdentifiers;
- (NSArray)recipients;
- (NSString)title;
- (_CDInteraction)init;
- (_CDInteraction)initWithCoder:(id)a3;
- (_CDInteraction)initWithINInteraction:(id)a3 bundleID:(id)a4 nsUserName:(id)a5;
- (id)dateInterval;
- (id)metadataFromFeedbackEvent:(id)a3;
- (unint64_t)hash;
- (unint64_t)recipientsCount;
- (void)encodeWithCoder:(id)a3;
- (void)fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:(id)a3;
- (void)isValidInteraction;
- (void)setAccount:(id)a3;
- (void)setBundleId:(id)a3;
- (void)setContentURL:(id)a3;
- (void)setDerivedIntentIdentifier:(id)a3;
- (void)setDomainIdentifier:(id)a3;
- (void)setGroupName:(id)a3;
- (void)setNsUserName:(id)a3;
- (void)setRecipients:(id)a3;
- (void)setSender:(id)a3;
- (void)setTargetBundleId:(id)a3;
@end

@implementation _CDInteraction

+ (id)conversationIdPercentEscapes
{
  if (initPercentEscapes_onceToken != -1)
  {
    +[_CDInteraction conversationIdPercentEscapes];
  }

  v3 = percentEscapes;

  return v3;
}

+ (id)_internPool
{
  if (_internPool__pasOnceToken20 != -1)
  {
    +[_CDInteraction _internPool];
  }

  v3 = _internPool__pasExprOnceResult;

  return v3;
}

- (_CDInteraction)init
{
  v9.receiver = self;
  v9.super_class = _CDInteraction;
  v2 = [(_CDInteraction *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF00] date];
    v4 = *(v2 + 12);
    *(v2 + 12) = v3;

    objc_storeStrong(v2 + 13, *(v2 + 12));
    objc_storeStrong(v2 + 14, *(v2 + 12));
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v7 = *(v2 + 15);
    *(v2 + 15) = v6;

    *(v2 + 136) = xmmword_19190EBE0;
    v2[88] = 0;
    v2[90] = 0;
  }

  return v2;
}

- (NSArray)recipients
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (self->_recipients)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = self->_recipients;
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      v7[0] = self->_recipients;
      v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
      objc_autoreleasePoolPop(v4);
    }
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

- (_CDInteraction)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = _CDInteraction;
  v5 = [(_CDInteraction *)&v32 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    startDate = v5->_startDate;
    v5->_startDate = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateDate"];
    updateDate = v5->_updateDate;
    v5->_updateDate = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
    endDate = v5->_endDate;
    v5->_endDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationUUID"];
    locationUUID = v5->_locationUUID;
    v5->_locationUUID = v14;

    v5->_mechanism = [v4 decodeInt64ForKey:@"mechanism"];
    v5->_direction = [v4 decodeInt64ForKey:@"direction"];
    v5->_isResponse = [v4 decodeBoolForKey:@"isResponse"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
    [(_CDInteraction *)v5 setBundleId:v16];

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetBundleId"];
    [(_CDInteraction *)v5 setTargetBundleId:v17];

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"groupName"];
    [(_CDInteraction *)v5 setGroupName:v18];

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"contentURL"];
    [(_CDInteraction *)v5 setContentURL:v19];

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"derivedIntentIdentifier"];
    [(_CDInteraction *)v5 setDerivedIntentIdentifier:v20];

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
    [(_CDInteraction *)v5 setDomainIdentifier:v21];

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    [(_CDInteraction *)v5 setAccount:v22];

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sender"];
    [(_CDInteraction *)v5 setSender:v23];

    v24 = [v4 decodeObjectForKey:@"recipients"];
    [(_CDInteraction *)v5 setRecipients:v24];

    v25 = [v4 decodeObjectForKey:@"keywords"];
    keywords = v5->_keywords;
    v5->_keywords = v25;

    v27 = [v4 decodeObjectForKey:@"attachments"];
    attachments = v5->_attachments;
    v5->_attachments = v27;

    v5->_selfParticipantStatus = [v4 decodeInt64ForKey:@"selfParticipantStatus"];
    v5->_forcePersistInteraction = [v4 decodeBoolForKey:@"forcePersistInteraction"];
    v5->_mailShareSheetDeletionCandidate = [v4 decodeBoolForKey:@"mailShareSheetDeletionCandidate"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nsUserName"];
    [(_CDInteraction *)v5 setNsUserName:v29];

    v30 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  startDate = self->_startDate;
  v6 = a3;
  [v6 encodeObject:startDate forKey:@"startDate"];
  [v6 encodeObject:self->_updateDate forKey:@"updateDate"];
  [v6 encodeObject:self->_endDate forKey:@"endDate"];
  [v6 encodeObject:self->_uuid forKey:@"uuid"];
  [v6 encodeObject:self->_locationUUID forKey:@"locationUUID"];
  [v6 encodeInt64:self->_mechanism forKey:@"mechanism"];
  [v6 encodeInt64:self->_direction forKey:@"direction"];
  [v6 encodeBool:self->_isResponse forKey:@"isResponse"];
  [v6 encodeObject:self->_bundleId forKey:@"bundleId"];
  [v6 encodeObject:self->_targetBundleId forKey:@"targetBundleId"];
  [v6 encodeObject:self->_groupName forKey:@"groupName"];
  [v6 encodeObject:self->_contentURL forKey:@"contentURL"];
  [v6 encodeObject:self->_derivedIntentIdentifier forKey:@"derivedIntentIdentifier"];
  [v6 encodeObject:self->_domainIdentifier forKey:@"domainIdentifier"];
  [v6 encodeObject:self->_account forKey:@"account"];
  v5 = [(_CDInteraction *)self recipients];
  [v6 encodeObject:v5 forKey:@"recipients"];

  [v6 encodeObject:self->_sender forKey:@"sender"];
  [v6 encodeObject:self->_keywords forKey:@"keywords"];
  [v6 encodeObject:self->_attachments forKey:@"attachments"];
  [v6 encodeBool:self->_forcePersistInteraction forKey:@"forcePersistInteraction"];
  [v6 encodeBool:self->_mailShareSheetDeletionCandidate forKey:@"mailShareSheetDeletionCandidate"];
  [v6 encodeInt64:self->_selfParticipantStatus forKey:@"selfParticipantStatus"];
  [v6 encodeObject:self->_nsUserName forKey:@"nsUserName"];
}

- (void)setRecipients:(id)a3
{
  v4 = a3;
  if ([v4 count] == 1)
  {
    v5 = [v4 objectAtIndexedSubscript:0];
    recipients = self->_recipients;
    self->_recipients = v5;
    obj = v4;
    goto LABEL_19;
  }

  obj = [v4 copy];

  v7 = +[_CDInteraction _internPool];
  recipients = [v7 intern:obj];

  if (recipients == obj)
  {
    v21 = obj;
    v14 = self->_recipients;
    self->_recipients = v21;
  }

  else
  {
    objc_storeStrong(&self->_recipients, recipients);
    if (![obj count])
    {
      goto LABEL_19;
    }

    v8 = 0;
    v9 = obj;
    while (1)
    {
      v10 = [v9 objectAtIndexedSubscript:v8];
      v11 = [v10 displayName];
      v12 = v11;
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = [MEMORY[0x1E695DFB0] null];
      }

      v14 = v13;

      v15 = [recipients objectAtIndexedSubscript:v8];
      v16 = [v15 displayName];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = [MEMORY[0x1E695DFB0] null];
      }

      v19 = v18;

      if (([v14 isEqual:v19] & 1) == 0)
      {
        break;
      }

      v20 = ++v8 >= [obj count];
      v9 = obj;
      if (v20)
      {
        goto LABEL_19;
      }
    }

    objc_storeStrong(&self->_recipients, obj);
  }

LABEL_19:
}

- (unint64_t)recipientsCount
{
  recipients = self->_recipients;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 1;
  }

  v4 = self->_recipients;

  return [v4 count];
}

- (void)setBundleId:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setBundleId:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [v4 copy];
    v7 = [v5 intern:v6];
    bundleId = self->_bundleId;
    self->_bundleId = v7;
  }
}

- (void)setTargetBundleId:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setTargetBundleId:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [v4 copy];
    v7 = [v5 intern:v6];
    targetBundleId = self->_targetBundleId;
    self->_targetBundleId = v7;
  }
}

- (void)setAccount:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setAccount:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [v4 copy];
    v7 = [v5 intern:v6];
    account = self->_account;
    self->_account = v7;
  }
}

- (void)setDerivedIntentIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setDerivedIntentIdentifier:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [v4 copy];
    v7 = [v5 intern:v6];
    derivedIntentIdentifier = self->_derivedIntentIdentifier;
    self->_derivedIntentIdentifier = v7;
  }
}

- (void)setDomainIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setDomainIdentifier:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [v4 copy];
    v7 = [v5 intern:v6];
    domainIdentifier = self->_domainIdentifier;
    self->_domainIdentifier = v7;
  }
}

- (void)setGroupName:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setGroupName:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [v4 copy];
    v7 = [v5 intern:v6];
    groupName = self->_groupName;
    self->_groupName = v7;
  }
}

- (void)setSender:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setSender:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [v4 copy];
    v7 = [v5 intern:v6];
    sender = self->_sender;
    self->_sender = v7;
  }
}

- (void)setContentURL:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setContentURL:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [v4 copy];
    v7 = [v5 intern:v6];
    contentURL = self->_contentURL;
    self->_contentURL = v7;
  }
}

- (void)setNsUserName:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = +[_CDLogging interactionChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [_CDInteraction setNsUserName:];
    }
  }

  else
  {
    v5 = +[_CDInteraction _internPool];
    v6 = [v4 copy];
    v7 = [v5 intern:v6];
    nsUserName = self->_nsUserName;
    self->_nsUserName = v7;
  }
}

- (unint64_t)hash
{
  v2 = [(_CDInteraction *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(_CDInteraction *)v5 uuid];
    v7 = [(_CDInteraction *)self uuid];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isValidInteraction
{
  v3 = objc_autoreleasePoolPush();
  v13 = 0;
  v4 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:+[_CDInteraction supportsSecureCoding](_CDInteraction error:{"supportsSecureCoding"), &v13}];
  v5 = v13;
  if (v5)
  {
    v6 = v5;

    objc_autoreleasePoolPop(v3);
  }

  else
  {
    v7 = MEMORY[0x1E696ACD0];
    v8 = +[_CDXPCCodecs supportedClassesToUnarchive];
    v12 = 0;
    v9 = [v7 unarchivedObjectOfClasses:v8 fromData:v4 error:&v12];
    v6 = v12;

    objc_autoreleasePoolPop(v3);
    if (!v6)
    {
      return 1;
    }
  }

  v10 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [_CDInteraction isValidInteraction];
  }

  return 0;
}

- (BOOL)isGroupChat
{
  if ([(_CDInteraction *)self direction]== 1 && [(_CDInteraction *)self recipientsCount]> 1)
  {
    return 1;
  }

  if ([(_CDInteraction *)self direction])
  {
    return 0;
  }

  return [(_CDInteraction *)self recipientsCount]!= 0;
}

- (id)dateInterval
{
  v3 = [(NSDate *)self->_startDate earlierDate:self->_endDate];
  v4 = [(NSDate *)self->_startDate laterDate:self->_endDate];
  v5 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v3 endDate:v4];

  return v5;
}

+ (id)inverseConversationIdPercentEscapes
{
  if (initPercentEscapes_onceToken != -1)
  {
    +[_CDInteraction conversationIdPercentEscapes];
  }

  v3 = inversePercentEscapes;

  return v3;
}

+ (id)generateConversationIdFromObjectsWithIdentifiers:(id)a3
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 count];
  v5 = v4 - 1;
  if (v4 == 1)
  {
    v26 = [v3 objectAtIndexedSubscript:0];
    v27 = [v26 identifier];
    v25 = [_CDInteraction generateConversationIdFromHandle:v27];

    goto LABEL_29;
  }

  v6 = v4;
  if (!v4)
  {
    v25 = &stru_1F05B9908;
    goto LABEL_29;
  }

  v36 = 0;
  v37 = 0;
  v32 = (8 * v4) | 7;
  v33 = objc_autoreleasePoolPush();
  if (((8 * v6) | 7) > 0x400)
  {
    [(_CDInteraction *)&v36 generateConversationIdFromObjectsWithIdentifiers:v38];
    v8 = v38[0];
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v8, v7);
  }

  v34 = v3;
  [v3 getObjects:v8 range:{0, v6}];
  qsort_b(v8, v6, 8uLL, &__block_literal_global_757);
  v9 = 0;
  v10 = 0;
  do
  {
    v11 = v5;
    v12 = [*&v8[8 * v10] identifier];
    v13 = [_CDInteraction generateConversationIdFromHandle:v12];
    v14 = v13;
    if (v12 != v13)
    {
      v9 = 1;
    }

    v15 = [v13 length];
    v5 += v15;

    ++v10;
  }

  while (v6 != v10);
  v35 = v6;
  v36 = 0;
  v37 = 0;
  v30 = 2 * v5;
  if (((2 * v5) | 1uLL) >= 0x401)
  {
    [(_CDInteraction *)&v36 generateConversationIdFromObjectsWithIdentifiers:v38];
    v17 = v38[0];
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v17, v16);
    v36 = v17;
    LOBYTE(v37) = 1;
  }

  v18 = 0;
  v19 = 0;
  v31 = v37;
  do
  {
    if (v18)
    {
      *&v17[2 * v19++] = 10;
    }

    if (v9)
    {
      [(_CDInteraction *)v8 generateConversationIdFromObjectsWithIdentifiers:v18, &v36];
      v20 = v36;
    }

    else
    {
      v20 = [*&v8[8 * v18] identifier];
    }

    v21 = [v20 length];
    [v20 getCharacters:&v17[2 * v19] range:{0, v21}];
    v19 += v21;

    ++v18;
  }

  while (v35 != v18);
  if (v32 >= 0x401)
  {
    free(v8);
    if (v5)
    {
LABEL_21:
      v22 = v15 + v11;
      v23 = v17;
      do
      {
        v24 = *v23;
        v23 += 2;
        if (v24 >= 0x80)
        {
          v25 = [MEMORY[0x1E696AEC0] _pas_stringWithConsumedAllocaDescrNoCopy:v17 bufferSize:v31 encoding:v30 nullTerminated:2483028224 isExternalRepresentation:{0, 0}];
          goto LABEL_27;
        }

        --v22;
      }

      while (v22);
      do
      {
        v17[v22] = *&v17[2 * v22];
        ++v22;
      }

      while (v15 + v11 != v22);
    }
  }

  else if (v5)
  {
    goto LABEL_21;
  }

  v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v17 length:v5 encoding:1];
  if ((v31 & 1) == 0)
  {
    free(v17);
  }

LABEL_27:
  v3 = v34;
  objc_autoreleasePoolPop(v33);
LABEL_29:

  v28 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)generateConversationIdFromHandle:(id)a3
{
  v3 = a3;
  v4 = +[_CDInteraction conversationIdPercentEscapes];
  v5 = [v3 rangeOfCharacterFromSet:v4 options:2];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = v3;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = +[_CDInteraction inverseConversationIdPercentEscapes];
    v9 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v8];
    v10 = v9;
    v11 = &stru_1F05B9908;
    if (v9)
    {
      v11 = v9;
    }

    v6 = v11;

    objc_autoreleasePoolPop(v7);
  }

  return v6;
}

+ (id)recipientIdentifiersFromMobileMailConversationId:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67___CDInteraction_recipientIdentifiersFromMobileMailConversationId___block_invoke;
  v7[3] = &unk_1E7368148;
  v5 = v4;
  v8 = v5;
  [v3 enumerateLinesUsingBlock:v7];

  return v5;
}

- (id)metadataFromFeedbackEvent:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [v3 derivedIntentIdentifier];

  if (v5)
  {
    v6 = [v3 derivedIntentIdentifier];
    v7 = +[_DKShareSheetFeedbackMetadataKey derivedIntentIdentifier];
    [v4 setObject:v6 forKeyedSubscript:v7];
  }

  v8 = [v3 targetBundleID];

  if (v8)
  {
    v9 = [v3 targetBundleID];
    v10 = +[_DKShareSheetFeedbackMetadataKey targetBundleID];
    [v4 setObject:v9 forKeyedSubscript:v10];
  }

  v11 = [v3 extensionContextUUID];

  if (v11)
  {
    v12 = [v3 extensionContextUUID];
    v13 = +[_DKShareSheetFeedbackMetadataKey extensionContextUUID];
    [v4 setObject:v12 forKeyedSubscript:v13];
  }

  v14 = [v3 attachments];

  if (v14)
  {
    v15 = [v3 attachments];
    v16 = +[_DKShareSheetFeedbackMetadataKey attachments];
    [v4 setObject:v15 forKeyedSubscript:v16];
  }

  v17 = [v3 locationUUIDs];

  if (v17)
  {
    v18 = [v3 locationUUIDs];
    v19 = +[_DKShareSheetFeedbackMetadataKey locationUUIDs];
    [v4 setObject:v18 forKeyedSubscript:v19];
  }

  v20 = [v3 photoSuggestedContacts];

  if (v20)
  {
    v21 = [v3 photoSuggestedContacts];
    v22 = +[_DKShareSheetFeedbackMetadataKey photoSuggestedContacts];
    [v4 setObject:v21 forKeyedSubscript:v22];
  }

  v23 = [v3 sourceBundleID];

  if (v23)
  {
    v24 = [v3 sourceBundleID];
    v25 = +[_DKShareSheetFeedbackMetadataKey sourceBundleID];
    [v4 setObject:v24 forKeyedSubscript:v25];
  }

  v26 = [v3 modelSuggestionProxies];

  if (v26)
  {
    v27 = [v3 modelSuggestionProxies];
    v28 = +[_DKShareSheetFeedbackMetadataKey modelSuggestionProxies];
    [v4 setObject:v27 forKeyedSubscript:v28];
  }

  v29 = [v3 adaptedModelRecipeID];

  if (v29)
  {
    v30 = [v3 adaptedModelRecipeID];
    v31 = +[_DKShareSheetFeedbackMetadataKey adaptedModelRecipeID];
    [v4 setObject:v30 forKeyedSubscript:v31];
  }

  v32 = [v3 supportedBundleIDs];

  if (v32)
  {
    v33 = [v3 supportedBundleIDs];
    v34 = +[_DKShareSheetFeedbackMetadataKey supportedBundleIDs];
    [v4 setObject:v33 forKeyedSubscript:v34];
  }

  v35 = [v3 reasonType];

  if (v35)
  {
    v36 = [v3 reasonType];
    v37 = +[_DKShareSheetFeedbackMetadataKey reasonType];
    [v4 setObject:v36 forKeyedSubscript:v37];
  }

  v38 = [v3 reason];

  if (v38)
  {
    v39 = [v3 reason];
    v40 = +[_DKShareSheetFeedbackMetadataKey reason];
    [v4 setObject:v39 forKeyedSubscript:v40];
  }

  v41 = [v3 transportBundleID];

  if (v41)
  {
    v42 = [v3 transportBundleID];
    v43 = +[_DKShareSheetFeedbackMetadataKey transportBundleID];
    [v4 setObject:v42 forKeyedSubscript:v43];
  }

  v44 = [v3 trackingID];

  if (v44)
  {
    v45 = [v3 trackingID];
    v46 = +[_DKShareSheetFeedbackMetadataKey trackingID];
    [v4 setObject:v45 forKeyedSubscript:v46];
  }

  v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isAdaptedModelUsed")}];
  v48 = +[_DKShareSheetFeedbackMetadataKey isAdaptedModelUsed];
  [v4 setObject:v47 forKeyedSubscript:v48];

  v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isAdaptedModelCreated")}];
  v50 = +[_DKShareSheetFeedbackMetadataKey isAdaptedModelCreated];
  [v4 setObject:v49 forKeyedSubscript:v50];

  v51 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "indexSelected")}];
  v52 = +[_DKShareSheetFeedbackMetadataKey indexSelected];
  [v4 setObject:v51 forKeyedSubscript:v52];

  v53 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "engagementType")}];
  v54 = +[_DKShareSheetFeedbackMetadataKey engagementType];
  [v4 setObject:v53 forKeyedSubscript:v54];

  v55 = MEMORY[0x1E696AD98];
  [v3 numberOfVisibleSuggestions];
  v56 = [v55 numberWithDouble:?];
  v57 = +[_DKShareSheetFeedbackMetadataKey numberOfVisibleSuggestions];
  [v4 setObject:v56 forKeyedSubscript:v57];

  v58 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "iCloudFamilyInvocation")}];
  v59 = +[_DKShareSheetFeedbackMetadataKey iCloudFamilyInvocation];
  [v4 setObject:v58 forKeyedSubscript:v59];

  v60 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v3, "peopleSuggestionsDisabled")}];
  v61 = +[_DKShareSheetFeedbackMetadataKey peopleSuggestionsDisabled];
  [v4 setObject:v60 forKeyedSubscript:v61];

  return v4;
}

- (void)fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:(id)a3
{
  v147 = *MEMORY[0x1E69E9840];
  v101 = a3;
  v110 = self;
  if (self->_mechanism == 13)
  {
    targetBundleId = self->_targetBundleId;
    v5 = +[_CDConstants shareSheetTargetBundleIdMessages];
    LODWORD(targetBundleId) = [(NSString *)targetBundleId isEqualToString:v5];

    v6 = v110->_bundleId;
    if (targetBundleId)
    {
      v7 = +[_CDConstants mobileMessagesBundleId];

      v98 = 1;
      v6 = v7;
      goto LABEL_6;
    }
  }

  else
  {
    v6 = self->_bundleId;
  }

  v98 = 0;
LABEL_6:
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v6, 0}];
  v108 = v6;
  v109 = [MEMORY[0x1E6963618] bundleProxyForIdentifier:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v141 = 0u;
    v142 = 0u;
    v139 = 0u;
    v140 = 0u;
    v9 = [v109 plugInKitPlugins];
    v10 = [v9 countByEnumeratingWithState:&v139 objects:v146 count:16];
    if (v10)
    {
      v11 = *v140;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v140 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v139 + 1) + 8 * i);
          v14 = [v13 bundleIdentifier];
          if (v14)
          {
            v15 = [v13 protocol];
            v16 = [v15 isEqualToString:@"com.apple.share-services"];

            if (v16)
            {
              [v8 addObject:v14];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v139 objects:v146 count:16];
      }

      while (v10);
    }
  }

  v17 = +[_CDConstants mobileMessagesBundleId];
  v18 = [(NSString *)v108 isEqualToString:v17];

  if (v18)
  {
    v19 = +[_CDConstants shareSheetTargetBundleIdMessages];
    [v8 addObject:v19];
  }

  v20 = BiomeLibrary();
  v21 = [v20 ShareSheet];
  v107 = [v21 Feedback];

  v22 = objc_alloc(MEMORY[0x1E698F2D0]);
  v23 = [(_CDInteraction *)v110 startDate];
  v24 = [(_CDInteraction *)v110 startDate];
  v25 = [v24 dateByAddingTimeInterval:-60.0];
  v26 = [v22 initWithStartDate:v23 endDate:v25 maxEvents:0 lastN:0 reversed:1];

  v106 = [v107 publisherWithUseCase:@"ShareSheetFeedback" options:v26];

  v133 = 0;
  v134 = &v133;
  v135 = 0x3032000000;
  v136 = __Block_byref_object_copy__6;
  v137 = __Block_byref_object_dispose__6;
  v138 = 0;
  v129[0] = MEMORY[0x1E69E9820];
  v129[1] = 3221225472;
  v129[2] = __78___CDInteraction_fetchAndAddShareSheetContentToInteractionWithKnowledgeStore___block_invoke_780;
  v129[3] = &unk_1E7368190;
  v100 = v8;
  v130 = v100;
  v131 = v110;
  v132 = &v133;
  v27 = [v106 sinkWithCompletion:&__block_literal_global_779 shouldContinue:v129];
  v28 = v134[5];
  if (v28)
  {
    v29 = [v28 source];
    v103 = [v29 bundleID];

    v30 = [v134[5] metadata];
    v31 = +[_DKShareSheetFeedbackMetadataKey targetBundleID];
    v102 = [v30 objectForKeyedSubscript:v31];

    if (!v102 || ![v102 length] || !v103 || !-[NSObject length](v103, "length"))
    {
      v99 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
      {
        [_CDInteraction fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:];
      }

      goto LABEL_44;
    }

    v32 = [v134[5] metadata];
    v33 = +[_DKShareSheetFeedbackMetadataKey attachments];
    v99 = [v32 objectForKeyedSubscript:v33];

    if (v99)
    {
      get_PSAttachmentClass();
      v34 = objc_opt_class();
      if (!v34)
      {
        v37 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [_CDInteraction fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:v37];
        }

        goto LABEL_42;
      }

      [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), v34, 0}];
      v94 = v128 = 0;
      v35 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v94 fromData:v99 error:&v128];
      v36 = v128;
      if (v36)
      {
        v37 = v36;
        v38 = +[_CDLogging interactionChannel];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [_CDInteraction fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:];
        }

LABEL_42:
        v114 = 0;
LABEL_43:

LABEL_44:
        goto LABEL_45;
      }

      v114 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v35, "count")}];
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      obj = v35;
      v97 = [obj countByEnumeratingWithState:&v124 objects:v145 count:16];
      if (v97)
      {
        v96 = *v125;
        do
        {
          for (j = 0; j != v97; ++j)
          {
            if (*v125 != v96)
            {
              objc_enumerationMutation(obj);
            }

            v45 = *(*(&v124 + 1) + 8 * j);
            v46 = [_CDAttachment alloc];
            v47 = [v45 identifier];
            v48 = [v45 cloudIdentifier];
            v49 = [v45 photoLocalIdentifier];
            v50 = [v45 UTI];
            v51 = [v45 creationDate];
            v52 = [v45 contentURL];
            v53 = [v45 contentText];
            v104 = [(_CDAttachment *)v46 initWithIdentifier:v47 cloudIdentifier:v48 photoLocalIdentifier:v49 type:v50 sizeInBytes:0 creationDate:v51 contentURL:v52 contentText:v53 photoSceneDescriptor:0 personInPhoto:0];
            v115 = v45;

            [v114 addObject:v104];
            v54 = [v45 peopleInPhoto];

            if (v54)
            {
              v122 = 0u;
              v123 = 0u;
              v120 = 0u;
              v121 = 0u;
              v55 = [v45 peopleInPhoto];
              v56 = [v55 countByEnumeratingWithState:&v120 objects:v144 count:16];
              if (v56)
              {
                v57 = *v121;
                do
                {
                  for (k = 0; k != v56; ++k)
                  {
                    if (*v121 != v57)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v59 = *(*(&v120 + 1) + 8 * k);
                    v60 = [_CDAttachment alloc];
                    v61 = [v115 identifier];
                    v62 = [v115 cloudIdentifier];
                    v63 = [v115 photoLocalIdentifier];
                    v64 = [v115 UTI];
                    v65 = [(_CDAttachment *)v60 initWithIdentifier:v61 cloudIdentifier:v62 photoLocalIdentifier:v63 type:v64 sizeInBytes:0 creationDate:0 contentURL:0 contentText:0 photoSceneDescriptor:0 personInPhoto:v59];

                    [v114 addObject:v65];
                  }

                  v56 = [v55 countByEnumeratingWithState:&v120 objects:v144 count:16];
                }

                while (v56);
              }
            }

            v66 = [v115 photoSceneDescriptors];

            if (v66)
            {
              v118 = 0u;
              v119 = 0u;
              v116 = 0u;
              v117 = 0u;
              v67 = [v115 photoSceneDescriptors];
              v68 = [v67 countByEnumeratingWithState:&v116 objects:v143 count:16];
              if (v68)
              {
                v111 = v67;
                v112 = *v117;
                do
                {
                  v113 = v68;
                  for (m = 0; m != v113; ++m)
                  {
                    if (*v117 != v112)
                    {
                      objc_enumerationMutation(v111);
                    }

                    v70 = *(*(&v116 + 1) + 8 * m);
                    v71 = [_CDAttachment alloc];
                    v72 = [v115 identifier];
                    v73 = [v115 cloudIdentifier];
                    v74 = [v115 photoLocalIdentifier];
                    v75 = [v115 UTI];
                    v76 = [v115 creationDate];
                    v77 = [v115 contentURL];
                    v78 = [v115 contentText];
                    v79 = [(_CDAttachment *)v71 initWithIdentifier:v72 cloudIdentifier:v73 photoLocalIdentifier:v74 type:v75 sizeInBytes:0 creationDate:v76 contentURL:v77 contentText:v78 photoSceneDescriptor:v70 personInPhoto:0];

                    [v114 addObject:v79];
                  }

                  v67 = v111;
                  v68 = [v111 countByEnumeratingWithState:&v116 objects:v143 count:16];
                }

                while (v68);
              }
            }

            v80 = [v115 contentURL];
            v81 = [v80 host];

            v82 = [v115 contentURL];
            if (v82)
            {
              v83 = v81 == 0;
            }

            else
            {
              v83 = 1;
            }

            v84 = !v83;

            if (v84)
            {
              v85 = [_CDAttachment alloc];
              v86 = [v115 identifier];
              v87 = [v115 cloudIdentifier];
              v88 = [v115 photoLocalIdentifier];
              v89 = [v115 UTI];
              v90 = [v115 creationDate];
              v91 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v81];
              v92 = [v115 contentText];
              v93 = [(_CDAttachment *)v85 initWithIdentifier:v86 cloudIdentifier:v87 photoLocalIdentifier:v88 type:v89 sizeInBytes:0 creationDate:v90 contentURL:v91 contentText:v92];

              [v114 addObject:v93];
            }
          }

          v97 = [obj countByEnumeratingWithState:&v124 objects:v145 count:16];
        }

        while (v97);
      }
    }

    else
    {
      v114 = 0;
    }

    v39 = +[_CDConstants shareSheetTargetBundleIdMessages];
    v40 = [v39 isEqualToString:v102];

    if (v40)
    {
      [(_CDInteraction *)v110 setDerivedIntentIdentifier:0];
    }

    v41 = [v114 copy];
    [(_CDInteraction *)v110 setAttachments:v41];

    v42 = [v134[5] source];
    v43 = [v42 bundleID];
    [(_CDInteraction *)v110 setBundleId:v43];

    if ((v98 & 1) == 0)
    {
      [(_CDInteraction *)v110 setTargetBundleId:v102];
    }

    goto LABEL_43;
  }

  v103 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
  {
    [_CDInteraction fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:];
  }

LABEL_45:

  _Block_object_dispose(&v133, 8);
  v44 = *MEMORY[0x1E69E9840];
}

- (NSArray)peopleIdentifiers
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DF70];
  v4 = [(_CDInteraction *)self recipients];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count") + 1}];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = [(_CDInteraction *)self recipients];
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 identifier];
        v13 = [v12 length];

        if (v13)
        {
          v14 = [v11 identifier];
          [v5 addObject:v14];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v15 = [(_CDInteraction *)self sender];
  v16 = [v15 identifier];
  if ([v16 length])
  {
    v17 = [(_CDInteraction *)self direction];

    if (v17)
    {
      goto LABEL_14;
    }

    v15 = [(_CDInteraction *)self sender];
    v16 = [v15 identifier];
    [v5 addObject:v16];
  }

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSString)title
{
  v2 = [(_CDInteraction *)self keywords];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

- (_CDInteraction)initWithINInteraction:(id)a3 bundleID:(id)a4 nsUserName:(id)a5
{
  v82 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[_CDLogging interactionChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_CDInteraction(INInteraction) initWithINInteraction:v8 bundleID:v9 nsUserName:v11];
  }

  if (v8)
  {
    self = [(_CDInteraction *)self init];
    v12 = [v8 intent];
    v13 = +[_CDConstants mobileMessagesBundleId];
    if ([v9 isEqualToString:v13])
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_10;
      }

      v13 = [v12 donationMetadata];
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v13 isBusinessChat])
      {
        v15 = 0;

LABEL_50:
        goto LABEL_51;
      }
    }

LABEL_10:
    -[_CDInteraction setMechanism:](self, "setMechanism:", [v12 cd_interactionMechanism]);
    v16 = [v8 identifier];
    if (!v16)
    {
      v17 = v9;
      v18 = +[_CDLogging interactionChannel];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [_CDInteraction(INInteraction) initWithINInteraction:v18 bundleID:? nsUserName:?];
      }

      v19 = [MEMORY[0x1E696AFB0] UUID];
      v16 = [v19 UUIDString];

      v9 = v17;
    }

    if ([(_CDInteraction *)self mechanism]== 11 || [(_CDInteraction *)self mechanism]== 17)
    {
      v20 = +[_CDConstants facetimeBundleId];
      [(_CDInteraction *)self setBundleId:v20];
    }

    else
    {
      [(_CDInteraction *)self setBundleId:v9];
    }

    v21 = [(_CDInteraction *)self bundleId];
    v22 = [_CDSpotlightItemUtils interactionUUIDForSearchableItemWithUID:v16 bundleID:v21];
    [(_CDInteraction *)self setUuid:v22];

    v23 = [v8 dateInterval];
    v24 = [v23 startDate];
    [(_CDInteraction *)self setStartDate:v24];

    v25 = [v8 dateInterval];
    v26 = [v25 endDate];
    [(_CDInteraction *)self setEndDate:v26];

    v27 = [v12 imageForParameterNamed:@"speakableGroupName"];
    v28 = [v27 _uri];

    v76 = v16;
    v74 = v27;
    if (v28)
    {
      v29 = [v27 _uri];
      [(_CDInteraction *)self setContentURL:v29];
      goto LABEL_26;
    }

    v30 = [v27 _identifier];

    if (v30)
    {
      v31 = MEMORY[0x1E695DFF8];
      v29 = [v27 _identifier];
      v32 = [v31 URLWithString:v29];
    }

    else
    {
      v33 = [v12 _keyImage];
      v34 = [v33 _uri];

      v35 = [v12 _keyImage];
      v29 = v35;
      if (!v34)
      {
        v68 = [v35 _identifier];

        if (!v68)
        {
          goto LABEL_27;
        }

        v69 = MEMORY[0x1E695DFF8];
        v29 = [v12 _keyImage];
        v70 = [v29 _identifier];
        v71 = [v69 URLWithString:v70];
        [(_CDInteraction *)self setContentURL:v71];

LABEL_26:
LABEL_27:
        v75 = v10;
        v37 = [v8 groupIdentifier];
        [(_CDInteraction *)self setDomainIdentifier:v37];

        v38 = [v12 cd_groupName];
        [(_CDInteraction *)self setGroupName:v38];

        v39 = [v12 cd_derivedIntentIdentifier];
        [(_CDInteraction *)self setDerivedIntentIdentifier:v39];

        v40 = [MEMORY[0x1E695E0F0] mutableCopy];
        v41 = [v12 _className];
        v42 = 0x1E696E000uLL;
        v43 = objc_opt_class();
        v44 = NSStringFromClass(v43);
        if ([v41 isEqualToString:v44] && objc_msgSend(v8, "direction") == 2)
        {
          v45 = [v12 cd_recipients];
          v46 = [v45 count];

          v42 = 0x1E696E000;
          if (v46 == 1)
          {
            v47 = [_CDContact alloc];
            v48 = [v12 cd_sender];
            v49 = [(_CDContact *)v47 initWithINPerson:v48];
            [(_CDInteraction *)self setSender:v49];

LABEL_42:
            v55 = [v12 _className];
            v56 = *(v42 + 2656);
            v57 = objc_opt_class();
            v58 = NSStringFromClass(v57);
            v59 = [v55 isEqualToString:v58];

            v10 = v75;
            if ((v59 & 1) == 0)
            {
              v60 = [_CDContact alloc];
              v61 = [v12 cd_sender];
              v62 = [(_CDContact *)v60 initWithINPerson:v61];
              [(_CDInteraction *)self setSender:v62];
            }

            [(_CDInteraction *)self setRecipients:v40];
            v63 = [v8 direction];
            v64 = 3;
            if (v63 == 1)
            {
              v64 = 1;
            }

            if (v63 == 2)
            {
              v65 = 0;
            }

            else
            {
              v65 = v64;
            }

            [(_CDInteraction *)self setDirection:v65];
            [(_CDInteraction *)self setNsUserName:v75];
            v15 = self;

            goto LABEL_50;
          }
        }

        else
        {
        }

        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v48 = [v12 cd_recipients];
        v50 = [v48 countByEnumeratingWithState:&v77 objects:v81 count:16];
        if (v50)
        {
          v51 = v50;
          v72 = v9;
          v73 = v8;
          v52 = *v78;
          do
          {
            for (i = 0; i != v51; ++i)
            {
              if (*v78 != v52)
              {
                objc_enumerationMutation(v48);
              }

              v54 = [[_CDContact alloc] initWithINPerson:*(*(&v77 + 1) + 8 * i)];
              if (v54)
              {
                [v40 addObject:v54];
              }
            }

            v51 = [v48 countByEnumeratingWithState:&v77 objects:v81 count:16];
          }

          while (v51);
          v9 = v72;
          v8 = v73;
          v42 = 0x1E696E000uLL;
        }

        goto LABEL_42;
      }

      v32 = [v35 _uri];
    }

    v36 = v32;
    [(_CDInteraction *)self setContentURL:v32];

    goto LABEL_26;
  }

  v15 = 0;
LABEL_51:

  v66 = *MEMORY[0x1E69E9840];
  return v15;
}

+ (id)shareSheetInteractionFromINInteraction:(id)a3 bundleID:(id)a4 nsUserName:(id)a5 knowledgeStore:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = v12;
  v14 = 0;
  if (v9 && v10 && v12)
  {
    v15 = [v9 _contextExtensionUUID];
    v16 = [v15 UUIDString];

    if (v16)
    {
      v14 = [[_CDInteraction alloc] initWithINInteraction:v9 bundleID:v10 nsUserName:v11];
      [(_CDInteraction *)v14 setMechanism:13];
      [(_CDInteraction *)v14 fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:v13];
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (void)setBundleId:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setTargetBundleId:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setAccount:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDerivedIntentIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setDomainIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setGroupName:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setSender:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setContentURL:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setNsUserName:.cold.1()
{
  OUTLINED_FUNCTION_6();
  v9 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  OUTLINED_FUNCTION_1_7();
  v1 = OUTLINED_FUNCTION_0_7(v0);
  OUTLINED_FUNCTION_2_1(&dword_191750000, v2, v3, "%{public}s expected %{public}s, got %{public}@, ignoring assignment: %{sensitive}@", v4, v5, v6, v7, 3u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)isValidInteraction
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v4 = 2112;
  v5 = v0;
  _os_log_fault_impl(&dword_191750000, v1, OS_LOG_TYPE_FAULT, "Not recording %{sensitive}@ as it is not a valid interaction, error: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

+ (uint64_t)generateConversationIdFromObjectsWithIdentifiers:(void *)a3 .cold.1(uint64_t a1, size_t size, void *a3)
{
  result = malloc_type_posix_memalign(a1, 8uLL, size, 0x80040B8603338uLL);
  *(a1 + 8) = 0;
  if (result)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v6);
  }

  *a3 = *a1;
  return result;
}

+ (uint64_t)generateConversationIdFromObjectsWithIdentifiers:(void *)a3 .cold.2(uint64_t a1, size_t size, void *a3)
{
  result = malloc_type_posix_memalign(a1, 8uLL, size, 0x318E99F0uLL);
  *(a1 + 8) = 0;
  if (result)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"malloc failed" userInfo:0];
    objc_exception_throw(v6);
  }

  *a3 = *a1;
  return result;
}

+ (void)generateConversationIdFromObjectsWithIdentifiers:(uint64_t *)a3 .cold.3(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = [*(a1 + 8 * a2) identifier];
  *a3 = [_CDInteraction generateConversationIdFromHandle:v4];
}

- (void)fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Error unarchiving share sheet attachments: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "Missing sharingSourceBundleID or targetBundleID on share sheet feedback for interaction %{sensitive}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)fetchAndAddShareSheetContentToInteractionWithKnowledgeStore:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "No corresponding share sheet feedback for interaction %{sensitive}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end