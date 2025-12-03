@interface BMUserFocusComputedModeEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BMUserFocusComputedModeEvent)initWithMode:(id)mode semanticModeIdentifier:(id)identifier starting:(BOOL)starting modeUpdateReason:(unint64_t)reason modeSemanticType:(int64_t)type modeUpdateSource:(int64_t)source;
- (BMUserFocusComputedModeEvent)initWithProto:(id)proto;
- (BMUserFocusComputedModeEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMUserFocusComputedModeEvent

- (BMUserFocusComputedModeEvent)initWithMode:(id)mode semanticModeIdentifier:(id)identifier starting:(BOOL)starting modeUpdateReason:(unint64_t)reason modeSemanticType:(int64_t)type modeUpdateSource:(int64_t)source
{
  modeCopy = mode;
  identifierCopy = identifier;
  v20.receiver = self;
  v20.super_class = BMUserFocusComputedModeEvent;
  v17 = [(BMEventBase *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_mode, mode);
    objc_storeStrong(&v18->_semanticModeIdentifier, identifier);
    v18->_starting = starting;
    v18->_modeUpdateReason = reason;
    v18->_modeSemanticType = type;
    v18->_modeUpdateSource = source;
  }

  return v18;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  mode = self->_mode;
  semanticModeIdentifier = self->_semanticModeIdentifier;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_modeUpdateReason];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_modeSemanticType];
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->_modeUpdateSource];
  v10 = [v3 initWithFormat:@"User mode event, currentMode: %@, semanticModeIdentifier: %@, starting: %@, modeUpdateReason: %@, modeSemanticType: %@, modeUpdateSource: %@", mode, semanticModeIdentifier, v6, v7, v8, v9];

  return v10;
}

- (id)jsonDict
{
  v15[6] = *MEMORY[0x1E69E9840];
  v14[0] = @"mode";
  mode = [(BMUserFocusComputedModeEvent *)self mode];
  null = mode;
  if (!mode)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"semanticModeIdentifier";
  semanticModeIdentifier = [(BMUserFocusComputedModeEvent *)self semanticModeIdentifier];
  null2 = semanticModeIdentifier;
  if (!semanticModeIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"starting";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusComputedModeEvent isStarting](self, "isStarting")}];
  v15[2] = v7;
  v14[3] = @"modeUpdateReason";
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMUserFocusComputedModeEvent modeUpdateReason](self, "modeUpdateReason")}];
  v15[3] = v8;
  v14[4] = @"modeSemanticType";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BMUserFocusComputedModeEvent modeSemanticType](self, "modeSemanticType")}];
  v15[4] = v9;
  v14[5] = @"modeUpdateSource";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BMUserFocusComputedModeEvent modeUpdateSource](self, "modeUpdateSource")}];
  v15[5] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];

  if (!semanticModeIdentifier)
  {
  }

  if (!mode)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(BMUserFocusComputedModeEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:jsonDict options:3 error:&v8];
  v5 = v8;

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(BMPOICategoryEvent *)v6 json];
    }
  }

  return v4;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version == 2)
  {
    selfCopy = BMUserFocusComputedModeEvent_v2;
  }

  else
  {
    selfCopy = self;
  }

  dataCopy = data;
  v6 = [[selfCopy alloc] initWithProtoData:dataCopy];

  return v6;
}

- (unint64_t)hash
{
  mode = [(BMUserFocusComputedModeEvent *)self mode];
  v4 = [mode hash];
  semanticModeIdentifier = [(BMUserFocusComputedModeEvent *)self semanticModeIdentifier];
  v6 = [semanticModeIdentifier hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMUserFocusComputedModeEvent isStarting](self, "isStarting")}];
  v8 = v6 ^ [v7 hash];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[BMUserFocusComputedModeEvent modeUpdateReason](self, "modeUpdateReason")}];
  v10 = [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BMUserFocusComputedModeEvent modeSemanticType](self, "modeSemanticType")}];
  v12 = v8 ^ v10 ^ [v11 hash];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BMUserFocusComputedModeEvent modeUpdateSource](self, "modeUpdateSource")}];
  v14 = [v13 hash];

  return v12 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = equalCopy;
    mode = [(BMUserFocusComputedModeEvent *)self mode];
    mode2 = [v7 mode];
    if (![mode isEqual:mode2])
    {
      v12 = 0;
LABEL_21:

      goto LABEL_22;
    }

    semanticModeIdentifier = [(BMUserFocusComputedModeEvent *)self semanticModeIdentifier];
    if (semanticModeIdentifier || ([v7 semanticModeIdentifier], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      semanticModeIdentifier2 = [(BMUserFocusComputedModeEvent *)self semanticModeIdentifier];
      semanticModeIdentifier3 = [v7 semanticModeIdentifier];
      if (![semanticModeIdentifier2 isEqualToString:semanticModeIdentifier3])
      {
        v12 = 0;
        goto LABEL_17;
      }

      v11 = 1;
    }

    else
    {
      v18 = 0;
      v11 = 0;
    }

    isStarting = [(BMUserFocusComputedModeEvent *)self isStarting];
    if (isStarting == [v7 isStarting] && (v14 = -[BMUserFocusComputedModeEvent modeSemanticType](self, "modeSemanticType"), v14 == objc_msgSend(v7, "modeSemanticType")) && (v15 = -[BMUserFocusComputedModeEvent modeUpdateReason](self, "modeUpdateReason"), v15 == objc_msgSend(v7, "modeUpdateReason")))
    {
      modeUpdateSource = [(BMUserFocusComputedModeEvent *)self modeUpdateSource];
      v12 = modeUpdateSource == [v7 modeUpdateSource];
      if ((v11 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v12 = 0;
      if (!v11)
      {
LABEL_18:
        if (!semanticModeIdentifier)
        {
        }

        goto LABEL_21;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  v12 = 0;
LABEL_22:

  return v12;
}

- (id)encodeAsProto
{
  proto = [(BMUserFocusComputedModeEvent *)self proto];
  data = [proto data];

  return data;
}

- (BMUserFocusComputedModeEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = protoCopy;
      mode = [v5 mode];
      semanticModeIdentifier = [v5 semanticModeIdentifier];
      starting = [v5 starting];
      updated = BMUserFocusComputedModeUpdateReasonFromReason([v5 modeUpdateReason]);
      modeSemanticType = [v5 modeSemanticType];
      if (modeSemanticType >= 0xA)
      {
        v13 = __biome_log_for_category();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [BMUserFocusComputedModeEvent initWithProto:];
        }

        v11 = 0;
      }

      else
      {
        v11 = modeSemanticType - 1;
      }

      self = [(BMUserFocusComputedModeEvent *)self initWithMode:mode semanticModeIdentifier:semanticModeIdentifier starting:starting modeUpdateReason:updated modeSemanticType:v11 modeUpdateSource:BMUserFocusComputedModeUpdateSourceFromSource([v5 modeUpdateSource])];

      selfCopy = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMUserFocusComputedModeEvent initWithProto:];
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

- (BMUserFocusComputedModeEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBUserFocusComputedModeEvent alloc] initWithData:dataCopy];

    self = [(BMUserFocusComputedModeEvent *)self initWithProto:v5];
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
  mode = [(BMUserFocusComputedModeEvent *)self mode];
  [v3 setMode:mode];

  semanticModeIdentifier = [(BMUserFocusComputedModeEvent *)self semanticModeIdentifier];
  [v3 setSemanticModeIdentifier:semanticModeIdentifier];

  [v3 setStarting:{-[BMUserFocusComputedModeEvent isStarting](self, "isStarting")}];
  modeUpdateReason = [(BMUserFocusComputedModeEvent *)self modeUpdateReason];
  v7 = modeUpdateReason;
  if (modeUpdateReason > 1)
  {
    if (modeUpdateReason != 2 && modeUpdateReason != 3)
    {
      goto LABEL_22;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (modeUpdateReason < 2)
  {
    goto LABEL_6;
  }

LABEL_22:
  v12 = __biome_log_for_category();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [(BMUserFocusComputedModeEvent *)v7 proto];
  }

  v7 = 0xFFFFFFFFLL;
  v8 = 1;
LABEL_7:
  modeSemanticType = [(BMUserFocusComputedModeEvent *)self modeSemanticType];
  v10 = modeSemanticType;
  if (modeSemanticType > 3)
  {
    if (modeSemanticType <= 5)
    {
      if (modeSemanticType == 4)
      {
        v11 = 5;
      }

      else
      {
        v11 = 6;
      }

      goto LABEL_34;
    }

    switch(modeSemanticType)
    {
      case 6:
        v11 = 7;
        goto LABEL_34;
      case 7:
        v11 = 8;
        goto LABEL_34;
      case 8:
        v11 = 9;
        goto LABEL_34;
    }
  }

  else
  {
    if (modeSemanticType > 0)
    {
      if (modeSemanticType == 1)
      {
        v11 = 2;
      }

      else if (modeSemanticType == 2)
      {
        v11 = 3;
      }

      else
      {
        v11 = 4;
      }

      goto LABEL_34;
    }

    if (modeSemanticType == -1)
    {
      v11 = 0;
      goto LABEL_34;
    }

    if (!modeSemanticType)
    {
      v11 = 1;
      goto LABEL_34;
    }
  }

  v13 = __biome_log_for_category();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [(BMUserFocusComputedModeEvent *)v10 proto];
  }

  v11 = 0xFFFFFFFFLL;
  v8 = 1;
LABEL_34:
  modeUpdateSource = [(BMUserFocusComputedModeEvent *)self modeUpdateSource];
  if (modeUpdateSource >= 4)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(BMUserFocusComputedModeEvent *)modeUpdateSource proto];
    }
  }

  else if ((v8 & 1) == 0)
  {
    [v3 setModeUpdateReason:v7];
    [v3 setModeSemanticType:v11];
    [v3 setModeUpdateSource:modeUpdateSource];
    v15 = v3;
    goto LABEL_41;
  }

  v15 = 0;
LABEL_41:

  return v15;
}

@end