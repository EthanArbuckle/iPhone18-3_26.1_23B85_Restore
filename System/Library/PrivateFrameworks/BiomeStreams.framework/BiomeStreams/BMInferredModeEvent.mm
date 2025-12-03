@interface BMInferredModeEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMInferredModeEvent)initWithAbsoluteTimestamp:(double)timestamp modeUUID:(id)d origin:(int64_t)origin originBundleId:(id)id originAnchorType:(id)type isAutomationEnabled:(BOOL)enabled uiLocation:(unint64_t)location isStart:(BOOL)self0 confidenceScore:(double)self1 suggestionUUID:(id)self2 serializedTriggers:(id)self3 shouldSuggestTriggers:(BOOL)self4 modeType:(unint64_t)self5 userModeName:(id)self6;
- (BMInferredModeEvent)initWithProto:(id)proto;
- (BMInferredModeEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMInferredModeEvent

- (BMInferredModeEvent)initWithAbsoluteTimestamp:(double)timestamp modeUUID:(id)d origin:(int64_t)origin originBundleId:(id)id originAnchorType:(id)type isAutomationEnabled:(BOOL)enabled uiLocation:(unint64_t)location isStart:(BOOL)self0 confidenceScore:(double)self1 suggestionUUID:(id)self2 serializedTriggers:(id)self3 shouldSuggestTriggers:(BOOL)self4 modeType:(unint64_t)self5 userModeName:(id)self6
{
  dCopy = d;
  idCopy = id;
  typeCopy = type;
  iDCopy = iD;
  triggersCopy = triggers;
  nameCopy = name;
  v45.receiver = self;
  v45.super_class = BMInferredModeEvent;
  v29 = [(BMInferredModeEvent *)&v45 init];
  v30 = v29;
  if (v29)
  {
    v29->_absoluteTimestamp = timestamp;
    v31 = [dCopy copy];
    modeUUID = v30->_modeUUID;
    v30->_modeUUID = v31;

    v30->_origin = origin;
    v33 = [idCopy copy];
    originBundleId = v30->_originBundleId;
    v30->_originBundleId = v33;

    v35 = [typeCopy copy];
    originAnchorType = v30->_originAnchorType;
    v30->_originAnchorType = v35;

    v30->_isAutomationEnabled = enabled;
    v30->_uiLocation = location;
    v30->_isStart = start;
    v30->_confidenceScore = score;
    v37 = [iDCopy copy];
    suggestionUUID = v30->_suggestionUUID;
    v30->_suggestionUUID = v37;

    v39 = [triggersCopy copy];
    serializedTriggers = v30->_serializedTriggers;
    v30->_serializedTriggers = v39;

    v30->_shouldSuggestTriggers = suggestTriggers;
    v30->_modeType = modeType;
    v41 = [nameCopy copy];
    userModeName = v30->_userModeName;
    v30->_userModeName = v41;
  }

  return v30;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  if (version == 1)
  {
    selfCopy = self;
    goto LABEL_5;
  }

  if (version == 2)
  {
    selfCopy = BMInferredModeEvent_v2;
LABEL_5:
    v8 = [[selfCopy alloc] initWithProtoData:dataCopy];
    goto LABEL_9;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BMInferredModeEvent eventWithData:version dataVersion:v9];
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (id)jsonDict
{
  v24[14] = *MEMORY[0x1E69E9840];
  v23[0] = @"absoluteTimeStamp";
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  v22 = v3;
  modeUUID = self->_modeUUID;
  if (!modeUUID)
  {
    modeUUID = @"nil";
  }

  v24[0] = v3;
  v24[1] = modeUUID;
  v23[1] = @"modeUUID";
  v23[2] = @"origin";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_origin];
  v6 = v5;
  originBundleId = self->_originBundleId;
  if (!originBundleId)
  {
    originBundleId = @"nil";
  }

  v24[2] = v5;
  v24[3] = originBundleId;
  v23[3] = @"originBundleId";
  v23[4] = @"originAnchorType";
  originAnchorType = self->_originAnchorType;
  if (!originAnchorType)
  {
    originAnchorType = @"nil";
  }

  v24[4] = originAnchorType;
  v23[5] = @"isAutomationEnabled";
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_isAutomationEnabled];
  v24[5] = v9;
  v23[6] = @"uiLocation";
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_uiLocation];
  v24[6] = v10;
  v23[7] = @"isStart";
  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_isStart];
  v24[7] = v11;
  v23[8] = @"confidenceScore";
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_confidenceScore];
  suggestionUUID = self->_suggestionUUID;
  v24[8] = v12;
  v24[9] = suggestionUUID;
  v23[9] = @"suggestionUUID";
  v23[10] = @"serializedTriggersCount";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSArray count](self->_serializedTriggers, "count")}];
  v24[10] = v14;
  v23[11] = @"shouldSuggestTriggers";
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldSuggestTriggers];
  v24[11] = v15;
  v23[12] = @"modeType";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_modeType];
  v17 = v16;
  v23[13] = @"userModeName";
  userModeName = self->_userModeName;
  if (!userModeName)
  {
    userModeName = @"nil";
  }

  v24[12] = v16;
  v24[13] = userModeName;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:v23 count:14];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMInferredModeEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMDeviceMetadataEvent *)v6 json];
    }
  }

  return v4;
}

- (id)encodeAsProto
{
  proto = [(BMInferredModeEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMInferredModeEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      [v5 absoluteTimestamp];
      v7 = v6;
      modeIdentifier = [v5 modeIdentifier];
      v8 = [v5 origin]+ 1;
      if (v8 >= 0x12)
      {
        v11 = __biome_log_for_category();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [BMInferredModeEvent initWithProto:];
        }

        v9 = -1;
      }

      else
      {
        v9 = v8 - 1;
      }

      v28 = v9;
      originBundleId = [v5 originBundleId];
      originAnchorType = [v5 originAnchorType];
      isAutomationEnabled = [v5 isAutomationEnabled];
      uiLocation = [v5 uiLocation];
      isStart = [v5 isStart];
      [v5 confidenceScore];
      v15 = v14;
      uuid = [v5 uuid];
      serializedTriggers = [v5 serializedTriggers];
      shouldSuggestTriggers = [v5 shouldSuggestTriggers];
      modeType = [v5 modeType];
      if (modeType >= 0x11)
      {
        v21 = __biome_log_for_category();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [BMInferredModeEvent initWithProto:];
        }

        v20 = 1;
      }

      else
      {
        v20 = modeType;
      }

      userModeName = [v5 userModeName];
      LOBYTE(v25) = shouldSuggestTriggers;
      LOBYTE(v24) = isStart;
      self = [(BMInferredModeEvent *)self initWithAbsoluteTimestamp:modeIdentifier modeUUID:v28 origin:originBundleId originBundleId:originAnchorType originAnchorType:isAutomationEnabled isAutomationEnabled:uiLocation uiLocation:v7 isStart:v15 confidenceScore:v24 suggestionUUID:uuid serializedTriggers:serializedTriggers shouldSuggestTriggers:v25 modeType:v20 userModeName:userModeName];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMInferredModeEvent initWithProto:];
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

- (BMInferredModeEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBInferredModeEvent alloc] initWithData:dataCopy];

    self = [(BMInferredModeEvent *)self initWithProto:v5];
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
  [v3 setAbsoluteTimestamp:self->_absoluteTimestamp];
  [v3 setModeIdentifier:self->_modeUUID];
  origin = self->_origin;
  v5 = 0;
  v6 = 0xFFFFFFFFLL;
  switch(origin)
  {
    case -1:
      break;
    case 0:
      v5 = 0;
      v6 = 0;
      break;
    case 1:
      v5 = 0;
      v6 = 1;
      break;
    case 2:
      v5 = 0;
      v6 = 2;
      break;
    case 3:
      v5 = 0;
      v6 = 3;
      break;
    case 4:
      v5 = 0;
      v6 = 4;
      break;
    case 5:
      v5 = 0;
      v6 = 5;
      break;
    case 6:
      v5 = 0;
      v6 = 6;
      break;
    case 7:
      v5 = 0;
      v6 = 7;
      break;
    case 8:
      v5 = 0;
      v6 = 8;
      break;
    case 9:
      v5 = 0;
      v6 = 9;
      break;
    case 10:
      v5 = 0;
      v6 = 10;
      break;
    case 11:
      v5 = 0;
      v6 = 11;
      break;
    case 12:
      v5 = 0;
      v6 = 12;
      break;
    case 13:
      v5 = 0;
      v6 = 13;
      break;
    case 14:
      v5 = 0;
      v6 = 14;
      break;
    case 15:
      v5 = 0;
      v6 = 15;
      break;
    case 16:
      v5 = 0;
      v6 = 16;
      break;
    default:
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(BMInferredModeEvent *)origin proto];
      }

      v6 = 0xFFFFFFFFLL;
      v5 = 1;
      break;
  }

  modeType = self->_modeType;
  if (modeType >= 0x11)
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(BMInferredModeEvent *)modeType proto];
    }
  }

  else if ((v5 & 1) == 0)
  {
    [v3 setOrigin:v6];
    [v3 setOriginBundleId:self->_originBundleId];
    [v3 setOriginAnchorType:self->_originAnchorType];
    [v3 setIsAutomationEnabled:self->_isAutomationEnabled];
    [v3 setUiLocation:self->_uiLocation];
    [v3 setIsStart:self->_isStart];
    [v3 setConfidenceScore:self->_confidenceScore];
    [v3 setUuid:self->_suggestionUUID];
    v9 = [(NSArray *)self->_serializedTriggers mutableCopy];
    [v3 setSerializedTriggers:v9];

    [v3 setShouldSuggestTriggers:self->_shouldSuggestTriggers];
    [v3 setModeType:modeType];
    [v3 setUserModeName:self->_userModeName];
    v10 = v3;
    goto LABEL_29;
  }

  v10 = 0;
LABEL_29:

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = equalCopy;
    absoluteTimestamp = self->_absoluteTimestamp;
    [v8 absoluteTimestamp];
    if (vabdd_f64(absoluteTimestamp, v10) >= 0.01)
    {
      v15 = 0;
      goto LABEL_51;
    }

    modeUUID = self->_modeUUID;
    v12 = modeUUID;
    if (!modeUUID)
    {
      modeUUID = [v8 modeUUID];
      if (!modeUUID)
      {
        origin = self->_origin;
        origin = [v8 origin];
        v14 = 0;
        v15 = 0;
        if (origin != origin)
        {
LABEL_50:

          goto LABEL_51;
        }

        goto LABEL_14;
      }

      v12 = self->_modeUUID;
    }

    modeUUID2 = [v8 modeUUID];
    if (![(NSString *)v12 isEqualToString:modeUUID2])
    {

      v15 = 0;
      goto LABEL_49;
    }

    v13 = self->_origin;
    if (v13 != [v8 origin])
    {
      v15 = 0;
      goto LABEL_48;
    }

    v14 = 1;
LABEL_14:
    v48 = v14;
    originBundleId = self->_originBundleId;
    v19 = originBundleId;
    if (!originBundleId)
    {
      originBundleId = [v8 originBundleId];
      if (!originBundleId)
      {
        v46 = 0;
        v47 = 0;
        goto LABEL_21;
      }

      v46 = originBundleId;
      v19 = self->_originBundleId;
    }

    originBundleId2 = [v8 originBundleId];
    if (![(NSString *)v19 isEqualToString:originBundleId2])
    {
      v15 = 0;
      goto LABEL_45;
    }

    v47 = 1;
LABEL_21:
    originAnchorType = self->_originAnchorType;
    v22 = originAnchorType;
    if (!originAnchorType)
    {
      originAnchorType = [v8 originAnchorType];
      if (!originAnchorType)
      {
        v44 = 0;
        v45 = 0;
        goto LABEL_28;
      }

      v44 = originAnchorType;
      v22 = self->_originAnchorType;
    }

    originAnchorType2 = [v8 originAnchorType];
    v25 = v22;
    v26 = originAnchorType2;
    if (![(NSString *)v25 isEqualToString:originAnchorType2])
    {

      v15 = 0;
      goto LABEL_43;
    }

    v43 = v26;
    v45 = 1;
LABEL_28:
    isAutomationEnabled = self->_isAutomationEnabled;
    if (isAutomationEnabled != [v8 isAutomationEnabled])
    {
      goto LABEL_40;
    }

    uiLocation = self->_uiLocation;
    if (uiLocation != [v8 uiLocation])
    {
      goto LABEL_40;
    }

    isStart = self->_isStart;
    if (isStart != [v8 isStart])
    {
      goto LABEL_40;
    }

    confidenceScore = self->_confidenceScore;
    [v8 confidenceScore];
    v32 = confidenceScore - v31;
    if (v32 < 0.0)
    {
      v32 = -v32;
    }

    if (v32 >= 2.22044605e-16)
    {
LABEL_40:
      v15 = 0;
      goto LABEL_41;
    }

    suggestionUUID = self->_suggestionUUID;
    v42 = suggestionUUID;
    if (!suggestionUUID)
    {
      suggestionUUID = [v8 suggestionUUID];
      if (!suggestionUUID)
      {
        modeType = self->_modeType;
        v39 = 0;
        v40 = 0;
        v15 = 0;
        if (modeType != [v8 modeType])
        {
LABEL_65:

LABEL_41:
          if ((v45 & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        goto LABEL_63;
      }

      v40 = suggestionUUID;
      suggestionUUID = self->_suggestionUUID;
    }

    suggestionUUID2 = [v8 suggestionUUID];
    if (!-[NSString isEqualToString:](suggestionUUID, "isEqualToString:") || (v35 = self->_modeType, v35 != [v8 modeType]))
    {
      v15 = 0;
      goto LABEL_58;
    }

    v39 = 1;
LABEL_63:
    shouldSuggestTriggers = self->_shouldSuggestTriggers;
    v15 = shouldSuggestTriggers == [v8 shouldSuggestTriggers];
    if ((v39 & 1) == 0)
    {
LABEL_59:
      if (v42)
      {
        if (!v45)
        {
LABEL_43:
          if (originAnchorType)
          {
            if (!v47)
            {
              goto LABEL_46;
            }
          }

          else
          {

            if ((v47 & 1) == 0)
            {
LABEL_46:
              if (originBundleId)
              {
                if (!v48)
                {
                  goto LABEL_49;
                }
              }

              else
              {

                if ((v48 & 1) == 0)
                {
LABEL_49:
                  if (!modeUUID)
                  {
                    goto LABEL_50;
                  }

LABEL_51:

                  goto LABEL_52;
                }
              }

LABEL_48:

              goto LABEL_49;
            }
          }

LABEL_45:

          goto LABEL_46;
        }

LABEL_42:

        goto LABEL_43;
      }

      goto LABEL_65;
    }

LABEL_58:

    goto LABEL_59;
  }

  v15 = 0;
LABEL_52:

  return v15;
}

@end