@interface BMInferredModeEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMInferredModeEvent)initWithAbsoluteTimestamp:(double)a3 modeUUID:(id)a4 origin:(int64_t)a5 originBundleId:(id)a6 originAnchorType:(id)a7 isAutomationEnabled:(BOOL)a8 uiLocation:(unint64_t)a9 isStart:(BOOL)a10 confidenceScore:(double)a11 suggestionUUID:(id)a12 serializedTriggers:(id)a13 shouldSuggestTriggers:(BOOL)a14 modeType:(unint64_t)a15 userModeName:(id)a16;
- (BMInferredModeEvent)initWithProto:(id)a3;
- (BMInferredModeEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
@end

@implementation BMInferredModeEvent

- (BMInferredModeEvent)initWithAbsoluteTimestamp:(double)a3 modeUUID:(id)a4 origin:(int64_t)a5 originBundleId:(id)a6 originAnchorType:(id)a7 isAutomationEnabled:(BOOL)a8 uiLocation:(unint64_t)a9 isStart:(BOOL)a10 confidenceScore:(double)a11 suggestionUUID:(id)a12 serializedTriggers:(id)a13 shouldSuggestTriggers:(BOOL)a14 modeType:(unint64_t)a15 userModeName:(id)a16
{
  v23 = a4;
  v24 = a6;
  v25 = a7;
  v26 = a12;
  v27 = a13;
  v28 = a16;
  v45.receiver = self;
  v45.super_class = BMInferredModeEvent;
  v29 = [(BMInferredModeEvent *)&v45 init];
  v30 = v29;
  if (v29)
  {
    v29->_absoluteTimestamp = a3;
    v31 = [v23 copy];
    modeUUID = v30->_modeUUID;
    v30->_modeUUID = v31;

    v30->_origin = a5;
    v33 = [v24 copy];
    originBundleId = v30->_originBundleId;
    v30->_originBundleId = v33;

    v35 = [v25 copy];
    originAnchorType = v30->_originAnchorType;
    v30->_originAnchorType = v35;

    v30->_isAutomationEnabled = a8;
    v30->_uiLocation = a9;
    v30->_isStart = a10;
    v30->_confidenceScore = a11;
    v37 = [v26 copy];
    suggestionUUID = v30->_suggestionUUID;
    v30->_suggestionUUID = v37;

    v39 = [v27 copy];
    serializedTriggers = v30->_serializedTriggers;
    v30->_serializedTriggers = v39;

    v30->_shouldSuggestTriggers = a14;
    v30->_modeType = a15;
    v41 = [v28 copy];
    userModeName = v30->_userModeName;
    v30->_userModeName = v41;
  }

  return v30;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 1)
  {
    v7 = a1;
    goto LABEL_5;
  }

  if (a4 == 2)
  {
    v7 = BMInferredModeEvent_v2;
LABEL_5:
    v8 = [[v7 alloc] initWithProtoData:v6];
    goto LABEL_9;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [BMInferredModeEvent eventWithData:a4 dataVersion:v9];
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
  v3 = [(BMInferredModeEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:1 error:&v8];
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
  v2 = [(BMInferredModeEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMInferredModeEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      [v5 absoluteTimestamp];
      v7 = v6;
      v30 = [v5 modeIdentifier];
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
      v29 = [v5 originBundleId];
      v12 = [v5 originAnchorType];
      v27 = [v5 isAutomationEnabled];
      v26 = [v5 uiLocation];
      v13 = [v5 isStart];
      [v5 confidenceScore];
      v15 = v14;
      v16 = [v5 uuid];
      v17 = [v5 serializedTriggers];
      v18 = [v5 shouldSuggestTriggers];
      v19 = [v5 modeType];
      if (v19 >= 0x11)
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
        v20 = v19;
      }

      v22 = [v5 userModeName];
      LOBYTE(v25) = v18;
      LOBYTE(v24) = v13;
      self = [(BMInferredModeEvent *)self initWithAbsoluteTimestamp:v30 modeUUID:v28 origin:v29 originBundleId:v12 originAnchorType:v27 isAutomationEnabled:v26 uiLocation:v7 isStart:v15 confidenceScore:v24 suggestionUUID:v16 serializedTriggers:v17 shouldSuggestTriggers:v25 modeType:v20 userModeName:v22];

      v10 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMInferredModeEvent initWithProto:];
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BMInferredModeEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBInferredModeEvent alloc] initWithData:v4];

    self = [(BMInferredModeEvent *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
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

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
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
      v3 = [v8 modeUUID];
      if (!v3)
      {
        origin = self->_origin;
        v17 = [v8 origin];
        v14 = 0;
        v15 = 0;
        if (origin != v17)
        {
LABEL_50:

          goto LABEL_51;
        }

        goto LABEL_14;
      }

      v12 = self->_modeUUID;
    }

    v4 = [v8 modeUUID];
    if (![(NSString *)v12 isEqualToString:v4])
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
      v20 = [v8 originBundleId];
      if (!v20)
      {
        v46 = 0;
        v47 = 0;
        goto LABEL_21;
      }

      v46 = v20;
      v19 = self->_originBundleId;
    }

    v5 = [v8 originBundleId];
    if (![(NSString *)v19 isEqualToString:v5])
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
      v23 = [v8 originAnchorType];
      if (!v23)
      {
        v44 = 0;
        v45 = 0;
        goto LABEL_28;
      }

      v44 = v23;
      v22 = self->_originAnchorType;
    }

    v24 = [v8 originAnchorType];
    v25 = v22;
    v26 = v24;
    if (![(NSString *)v25 isEqualToString:v24])
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
      v34 = [v8 suggestionUUID];
      if (!v34)
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

      v40 = v34;
      suggestionUUID = self->_suggestionUUID;
    }

    v41 = [v8 suggestionUUID];
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