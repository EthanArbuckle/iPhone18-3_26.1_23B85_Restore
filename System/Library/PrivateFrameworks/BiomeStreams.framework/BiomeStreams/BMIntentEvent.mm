@interface BMIntentEvent
+ (id)eventWithDKEvent:(id)event;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMIntentEvent)initWithAbsoluteTime:(double)time bundleId:(id)id sourceId:(id)sourceId intentClass:(id)class intentVerb:(id)verb intentType:(int64_t)type intentHandlingStatus:(int64_t)status interaction:(id)self0 itemID:(id)self1 donatedBySiri:(BOOL)self2 interactionDirection:(int64_t)self3 groupIdentifier:(id)self4;
- (BMIntentEvent)initWithCoder:(id)coder;
- (BMIntentEvent)initWithProto:(id)proto;
- (BMIntentEvent)initWithProtoData:(id)data;
- (BOOL)checkAndReportDecodingFailureIfNeededForCFAbsoluteTime:(double)time key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)checkAndReportDecodingFailureIfNeededForuint32_t:(unsigned int)foruint32_t key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BMIntentEvent

+ (id)eventWithDKEvent:(id)event
{
  v54 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  metadata = [eventCopy metadata];
  serializedInteraction = [get_DKIntentMetadataKeyClass() serializedInteraction];
  v6 = [metadata objectForKeyedSubscript:serializedInteraction];

  if (v6)
  {
    metadata2 = [eventCopy metadata];
    v31 = [BMIntentEvent alloc];
    startDate = [eventCopy startDate];
    [startDate timeIntervalSinceReferenceDate];
    v9 = v8;
    source = [eventCopy source];
    bundleID = [source bundleID];
    source2 = [eventCopy source];
    sourceID = [source2 sourceID];
    intentClass = [get_DKIntentMetadataKeyClass() intentClass];
    v41 = [metadata2 objectForKeyedSubscript:?];
    intentVerb = [get_DKIntentMetadataKeyClass() intentVerb];
    v39 = [metadata2 objectForKeyedSubscript:?];
    intentType = [get_DKIntentMetadataKeyClass() intentType];
    v37 = [metadata2 objectForKeyedSubscript:?];
    integerValue = [v37 integerValue];
    metadata3 = [eventCopy metadata];
    intentHandlingStatus = [get_DKIntentMetadataKeyClass() intentHandlingStatus];
    v36 = metadata3;
    v34 = [metadata3 objectForKeyedSubscript:?];
    integerValue2 = [v34 integerValue];
    serializedInteraction2 = [get_DKIntentMetadataKeyClass() serializedInteraction];
    v11 = [metadata2 objectForKeyedSubscript:?];
    source3 = [eventCopy source];
    itemID = [source3 itemID];
    donatedBySiri = [get_DKIntentMetadataKeyClass() donatedBySiri];
    v28 = [metadata2 objectForKeyedSubscript:?];
    bOOLValue = [v28 BOOLValue];
    direction = [get_DKIntentMetadataKeyClass() direction];
    v15 = [metadata2 objectForKeyedSubscript:direction];
    integerValue3 = [v15 integerValue];
    if (integerValue3 >= 4)
    {
      v22 = __biome_log_for_category();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        +[BMIntentEvent eventWithDKEvent:];
      }

      v17 = 0;
    }

    else
    {
      v17 = qword_184D27580[integerValue3];
    }

    source4 = [eventCopy source];
    groupID = [source4 groupID];
    LOBYTE(v27) = bOOLValue;
    v49 = [(BMIntentEvent *)v31 initWithAbsoluteTime:bundleID bundleId:sourceID sourceId:v41 intentClass:v39 intentVerb:integerValue intentType:integerValue2 intentHandlingStatus:v9 interaction:v11 itemID:itemID donatedBySiri:v27 interactionDirection:v17 groupIdentifier:groupID];
  }

  else
  {
    metadata2 = __biome_log_for_category();
    if (os_log_type_enabled(metadata2, OS_LOG_TYPE_INFO))
    {
      source5 = [eventCopy source];
      bundleID2 = [source5 bundleID];
      source6 = [eventCopy source];
      sourceID2 = [source6 sourceID];
      *buf = 138543618;
      v51 = bundleID2;
      v52 = 2112;
      v53 = sourceID2;
      _os_log_impl(&dword_1848EE000, metadata2, OS_LOG_TYPE_INFO, "nil interaction found on event bundle:%{public}@ source:%{}@", buf, 0x16u);
    }

    v49 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v49;
}

- (BMIntentEvent)initWithAbsoluteTime:(double)time bundleId:(id)id sourceId:(id)sourceId intentClass:(id)class intentVerb:(id)verb intentType:(int64_t)type intentHandlingStatus:(int64_t)status interaction:(id)self0 itemID:(id)self1 donatedBySiri:(BOOL)self2 interactionDirection:(int64_t)self3 groupIdentifier:(id)self4
{
  idCopy = id;
  sourceIdCopy = sourceId;
  classCopy = class;
  verbCopy = verb;
  interactionCopy = interaction;
  dCopy = d;
  identifierCopy = identifier;
  if (!interactionCopy)
  {
    [BMIntentEvent initWithAbsoluteTime:a2 bundleId:self sourceId:? intentClass:? intentVerb:? intentType:? intentHandlingStatus:? interaction:? itemID:? donatedBySiri:? interactionDirection:? groupIdentifier:?];
  }

  v33.receiver = self;
  v33.super_class = BMIntentEvent;
  v27 = [(BMEventBase *)&v33 init];
  v28 = v27;
  if (v27)
  {
    [(BMIntentEvent *)v27 setAbsoluteTimestamp:time];
    [(BMIntentEvent *)v28 setBundleID:idCopy];
    [(BMIntentEvent *)v28 setSourceId:sourceIdCopy];
    [(BMIntentEvent *)v28 setIntentClass:classCopy];
    [(BMIntentEvent *)v28 setIntentVerb:verbCopy];
    [(BMIntentEvent *)v28 setIntentType:v31];
    [(BMIntentEvent *)v28 setIntentHandlingStatus:status];
    [(BMIntentEvent *)v28 setInteraction:interactionCopy];
    [(BMIntentEvent *)v28 setItemID:dCopy];
    [(BMIntentEvent *)v28 setDonatedBySiri:siri];
    [(BMIntentEvent *)v28 setInteractionDirection:direction];
    [(BMIntentEvent *)v28 setGroupIdentifier:identifierCopy];
  }

  return v28;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 12)
  {
    selfCopy = BMIntentEvent_v12;
LABEL_10:
    v10 = [[selfCopy alloc] initWithProtoData:dataCopy];
    goto LABEL_16;
  }

  if (version == 9)
  {
    v14 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v14];
    v8 = v7;
    if (v14)
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[BMIntentEvent eventWithData:dataVersion:];
      }

      v10 = 0;
    }

    else
    {
      v10 = v7;
    }

    goto LABEL_16;
  }

  if ((version & 0xFFFFFFFE) == 0xA)
  {
    selfCopy = self;
    goto LABEL_10;
  }

  v12 = __biome_log_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    +[BMIntentEvent eventWithData:dataVersion:];
  }

  v10 = 0;
LABEL_16:

  return v10;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForCFAbsoluteTime:(double)time key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (time == 0.0)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", keyCopy, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", keyCopy, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForuint32_t:(unsigned int)foruint32_t key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!foruint32_t)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", keyCopy, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(BMIntentEvent *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protoData"];
}

- (BMIntentEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protoData"];
  if (v5)
  {
    self = [(BMIntentEvent *)self initWithProtoData:v5];
    selfCopy2 = self;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [coderCopy decodeDoubleForKey:@"absoluteTime"];
    v10 = v9;
    if ([(BMIntentEvent *)self checkAndReportDecodingFailureIfNeededForCFAbsoluteTime:@"absoluteTime" key:coderCopy coder:v8 errorDomain:-1 errorCode:?])
    {
      selfCopy2 = 0;
    }

    else
    {
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceId"];
      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentClass"];
      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentVerb"];
      v19 = [coderCopy decodeIntegerForKey:@"intentType"];
      v18 = [coderCopy decodeIntegerForKey:@"intentHandlingStatus"];
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
      v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
      LOBYTE(v17) = 0;
      self = [(BMIntentEvent *)self initWithAbsoluteTime:v11 bundleId:v12 sourceId:v20 intentClass:v13 intentVerb:v19 intentType:v18 intentHandlingStatus:v10 interaction:v14 itemID:v15 donatedBySiri:v17 interactionDirection:0 groupIdentifier:0];

      selfCopy2 = self;
    }
  }

  return selfCopy2;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(BMIntentEvent *)self absoluteTimestamp];
  v26 = [v3 numberWithDouble:?];
  v4 = [v26 hash];
  bundleID = [(BMIntentEvent *)self bundleID];
  v5 = [bundleID hash];
  sourceId = [(BMIntentEvent *)self sourceId];
  v6 = v5 ^ [sourceId hash];
  intentClass = [(BMIntentEvent *)self intentClass];
  v7 = v6 ^ [intentClass hash];
  intentVerb = [(BMIntentEvent *)self intentVerb];
  v9 = v7 ^ [intentVerb hash] ^ v4;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BMIntentEvent intentType](self, "intentType")}];
  v11 = [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BMIntentEvent intentHandlingStatus](self, "intentHandlingStatus")}];
  v13 = v9 ^ v11 ^ [v12 hash];
  interaction = [(BMIntentEvent *)self interaction];
  v15 = [interaction hash];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMIntentEvent donatedBySiri](self, "donatedBySiri")}];
  v17 = v15 ^ [v16 hash];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BMIntentEvent interactionDirection](self, "interactionDirection")}];
  v19 = v13 ^ v17 ^ [v18 hash];
  groupIdentifier = [(BMIntentEvent *)self groupIdentifier];
  v21 = [groupIdentifier hash];

  return v19 ^ v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = equalCopy;
    [(BMIntentEvent *)self absoluteTimestamp];
    v10 = v9;
    [v8 absoluteTimestamp];
    if (v10 != v11)
    {
      v14 = 0;
LABEL_44:

      goto LABEL_45;
    }

    bundleID = [(BMIntentEvent *)self bundleID];
    if (bundleID || ([v8 bundleID], (v57 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      bundleID2 = [(BMIntentEvent *)self bundleID];
      bundleID3 = [v8 bundleID];
      if (([bundleID2 isEqual:bundleID3] & 1) == 0)
      {

        v14 = 0;
LABEL_41:
        if (!bundleID)
        {
        }

        goto LABEL_44;
      }

      v54 = bundleID2;
      v13 = 1;
    }

    else
    {
      v57 = 0;
      v13 = 0;
    }

    intentClass = [(BMIntentEvent *)self intentClass];
    if (intentClass || ([v8 intentClass], (v52 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      intentClass2 = [(BMIntentEvent *)self intentClass];
      intentClass3 = [v8 intentClass];
      v56 = intentClass2;
      if (![intentClass2 isEqual:intentClass3])
      {
        v14 = 0;
        goto LABEL_36;
      }

      v53 = 1;
    }

    else
    {
      v52 = 0;
      v53 = 0;
    }

    intentVerb = [(BMIntentEvent *)self intentVerb];
    if (!intentVerb)
    {
      intentVerb2 = [v8 intentVerb];
      if (!intentVerb2)
      {
        v49 = intentClass3;
        v17 = v13;
        v19 = v57;
        intentVerb2 = 0;
        v51 = 0;
LABEL_26:
        intentHandlingStatus = [(BMIntentEvent *)self intentHandlingStatus];
        v57 = v19;
        if (intentHandlingStatus != [v8 intentHandlingStatus])
        {
          v14 = 0;
          v13 = v17;
          v23 = v48;
          intentClass3 = v49;
          if ((v51 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        interaction = [(BMIntentEvent *)self interaction];
        if (interaction || ([v8 interaction], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          interaction2 = [(BMIntentEvent *)self interaction];
          interaction3 = [v8 interaction];
          v44 = interaction2;
          v13 = v17;
          if (![interaction2 isEqual:?])
          {
            v14 = 0;
            v23 = v48;
            intentClass3 = v49;
            v26 = interaction;
LABEL_69:

            goto LABEL_70;
          }

          v42 = 1;
        }

        else
        {
          v40 = 0;
          v42 = 0;
          v13 = v17;
        }

        itemID = [(BMIntentEvent *)self itemID];
        if (itemID || ([v8 itemID], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          itemID2 = [(BMIntentEvent *)self itemID];
          bundleID2 = [v8 itemID];
          intentClass3 = v49;
          if (([itemID2 isEqual:bundleID2] & 1) == 0)
          {

            v28 = itemID;
            if (!itemID)
            {
              v28 = v38;
            }

            v14 = 0;
            v23 = v48;
            v26 = interaction;
            if (v42)
            {
              goto LABEL_69;
            }

            goto LABEL_70;
          }

          v37 = itemID2;
          v39 = 1;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          intentClass3 = v49;
        }

        donatedBySiri = [(BMIntentEvent *)self donatedBySiri];
        if (donatedBySiri != [v8 donatedBySiri] || (v30 = -[BMIntentEvent interactionDirection](self, "interactionDirection"), v30 != objc_msgSend(v8, "interactionDirection")))
        {
          v14 = 0;
          if (!v39)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        groupIdentifier = [(BMIntentEvent *)self groupIdentifier];
        if (groupIdentifier || ([v8 groupIdentifier], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v50 = bundleID2;
          groupIdentifier2 = [(BMIntentEvent *)self groupIdentifier];
          [v8 groupIdentifier];
          v33 = v32 = groupIdentifier;
          v14 = [groupIdentifier2 isEqual:v33];

          if (v32)
          {

            bundleID2 = v50;
            if ((v39 & 1) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

          v34 = v35;
          bundleID2 = v50;
        }

        else
        {
          v34 = 0;
          v14 = 1;
        }

        if ((v39 & 1) == 0)
        {
LABEL_66:
          if (!itemID)
          {
          }

          v23 = v48;
          v26 = interaction;
          if (v42)
          {
            goto LABEL_69;
          }

LABEL_70:
          if (!v26)
          {
          }

          if (!v51)
          {
LABEL_33:
            v24 = intentVerb;
            if (!intentVerb)
            {

              v24 = 0;
            }

            if (!v53)
            {
              goto LABEL_37;
            }

            goto LABEL_36;
          }

LABEL_32:

          goto LABEL_33;
        }

LABEL_65:

        goto LABEL_66;
      }
    }

    v17 = v13;
    intentVerb3 = [(BMIntentEvent *)self intentVerb];
    bundleID2 = [v8 intentVerb];
    if ([intentVerb3 isEqual:bundleID2])
    {
      v48 = bundleID2;
      v49 = intentClass3;
      v46 = intentVerb3;
      v19 = v57;
      v51 = 1;
      goto LABEL_26;
    }

    v20 = intentVerb;
    if (!intentVerb)
    {
      v20 = intentVerb2;
    }

    v14 = 0;
    v13 = v17;
    if ((v53 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_36:

LABEL_37:
    if (!intentClass)
    {
    }

    if (v13)
    {
    }

    goto LABEL_41;
  }

  v14 = 0;
LABEL_45:

  return v14;
}

- (id)encodeAsProto
{
  proto = [(BMIntentEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMIntentEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      v23 = typeWithBMPBIntentType([v5 intentType]);
      intentHandlingStatus = [v5 intentHandlingStatus];
      if (intentHandlingStatus >= 7)
      {
        v8 = __biome_log_for_category();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [BMIntentEvent initWithProto:];
        }

        v22 = 0;
      }

      else
      {
        v22 = intentHandlingStatus;
      }

      v21 = interactionDirectionWithPB([v5 interactionDirection]);
      [v5 absoluteTimestamp];
      v10 = v9;
      bundleID = [v5 bundleID];
      sourceId = [v5 sourceId];
      intentClass = [v5 intentClass];
      intentVerb = [v5 intentVerb];
      interaction = [v5 interaction];
      itemID = [v5 itemID];
      donatedBySiri = [v5 donatedBySiri];
      groupIdentifier = [v5 groupIdentifier];
      LOBYTE(v19) = donatedBySiri;
      self = [(BMIntentEvent *)self initWithAbsoluteTime:bundleID bundleId:sourceId sourceId:intentClass intentClass:intentVerb intentVerb:v23 intentType:v22 intentHandlingStatus:v10 interaction:interaction itemID:itemID donatedBySiri:v19 interactionDirection:v21 groupIdentifier:groupIdentifier];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMIntentEvent initWithProto:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BMIntentEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBIntentEvent alloc] initWithData:dataCopy];

    self = [(BMIntentEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  [(BMIntentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  bundleID = [(BMIntentEvent *)self bundleID];
  [v3 setBundleID:bundleID];

  sourceId = [(BMIntentEvent *)self sourceId];
  [v3 setSourceId:sourceId];

  intentClass = [(BMIntentEvent *)self intentClass];
  [v3 setIntentClass:intentClass];

  intentVerb = [(BMIntentEvent *)self intentVerb];
  [v3 setIntentVerb:intentVerb];

  intentType = [(BMIntentEvent *)self intentType];
  v9 = intentType;
  if (intentType > 1)
  {
    if (intentType != 2 && intentType != 3)
    {
      goto LABEL_18;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if (intentType < 2)
  {
    goto LABEL_6;
  }

LABEL_18:
  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [BMIntentEvent proto];
  }

  v9 = 0;
  v10 = 1;
LABEL_7:
  intentHandlingStatus = [(BMIntentEvent *)self intentHandlingStatus];
  if (intentHandlingStatus <= 2)
  {
    switch(intentHandlingStatus)
    {
      case 0:
        v12 = 0;
        goto LABEL_28;
      case 1:
        v12 = 1;
        goto LABEL_28;
      case 2:
        v12 = 2;
        goto LABEL_28;
    }
  }

  else
  {
    if (intentHandlingStatus <= 4)
    {
      if (intentHandlingStatus == 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = 4;
      }

      goto LABEL_28;
    }

    if (intentHandlingStatus == 5)
    {
      v12 = 5;
      goto LABEL_28;
    }

    if (intentHandlingStatus == 6)
    {
      v12 = 6;
      goto LABEL_28;
    }
  }

  v14 = __biome_log_for_category();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [BMIntentEvent proto];
  }

  v12 = 0;
  v10 = 1;
LABEL_28:
  interactionDirection = [(BMIntentEvent *)self interactionDirection];
  if (interactionDirection >= 4)
  {
    v20 = __biome_log_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [BMIntentEvent proto];
    }
  }

  else if ((v10 & 1) == 0)
  {
    [v3 setIntentType:v9];
    [v3 setIntentHandlingStatus:v12];
    interaction = [(BMIntentEvent *)self interaction];
    [v3 setInteraction:interaction];

    itemID = [(BMIntentEvent *)self itemID];
    [v3 setItemID:itemID];

    [v3 setDonatedBySiri:{-[BMIntentEvent donatedBySiri](self, "donatedBySiri")}];
    [v3 setInteractionDirection:interactionDirection];
    groupIdentifier = [(BMIntentEvent *)self groupIdentifier];
    [v3 setGroupIdentifier:groupIdentifier];

    v19 = v3;
    goto LABEL_35;
  }

  v19 = 0;
LABEL_35:

  return v19;
}

@end