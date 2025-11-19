@interface BMUserFocusComputedModeEvent
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMUserFocusComputedModeEvent)initWithMode:(id)a3 semanticModeIdentifier:(id)a4 starting:(BOOL)a5 modeUpdateReason:(unint64_t)a6 modeSemanticType:(int64_t)a7 modeUpdateSource:(int64_t)a8;
- (BMUserFocusComputedModeEvent)initWithProto:(id)a3;
- (BMUserFocusComputedModeEvent)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)encodeAsProto;
- (id)json;
- (id)jsonDict;
- (id)proto;
- (unint64_t)hash;
@end

@implementation BMUserFocusComputedModeEvent

- (BMUserFocusComputedModeEvent)initWithMode:(id)a3 semanticModeIdentifier:(id)a4 starting:(BOOL)a5 modeUpdateReason:(unint64_t)a6 modeSemanticType:(int64_t)a7 modeUpdateSource:(int64_t)a8
{
  v15 = a3;
  v16 = a4;
  v20.receiver = self;
  v20.super_class = BMUserFocusComputedModeEvent;
  v17 = [(BMEventBase *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_mode, a3);
    objc_storeStrong(&v18->_semanticModeIdentifier, a4);
    v18->_starting = a5;
    v18->_modeUpdateReason = a6;
    v18->_modeSemanticType = a7;
    v18->_modeUpdateSource = a8;
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
  v3 = [(BMUserFocusComputedModeEvent *)self mode];
  v4 = v3;
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v4;
  v14[1] = @"semanticModeIdentifier";
  v5 = [(BMUserFocusComputedModeEvent *)self semanticModeIdentifier];
  v6 = v5;
  if (!v5)
  {
    v6 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v6;
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

  if (!v5)
  {
  }

  if (!v3)
  {
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(BMUserFocusComputedModeEvent *)self jsonDict];
  v8 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:3 error:&v8];
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

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4 == 2)
  {
    v4 = BMUserFocusComputedModeEvent_v2;
  }

  else
  {
    v4 = a1;
  }

  v5 = a3;
  v6 = [[v4 alloc] initWithProtoData:v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(BMUserFocusComputedModeEvent *)self mode];
  v4 = [v3 hash];
  v5 = [(BMUserFocusComputedModeEvent *)self semanticModeIdentifier];
  v6 = [v5 hash] ^ v4;
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

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [(BMUserFocusComputedModeEvent *)self mode];
    v9 = [v7 mode];
    if (![v8 isEqual:v9])
    {
      v12 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v10 = [(BMUserFocusComputedModeEvent *)self semanticModeIdentifier];
    if (v10 || ([v7 semanticModeIdentifier], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(BMUserFocusComputedModeEvent *)self semanticModeIdentifier];
      v4 = [v7 semanticModeIdentifier];
      if (![v3 isEqualToString:v4])
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

    v13 = [(BMUserFocusComputedModeEvent *)self isStarting];
    if (v13 == [v7 isStarting] && (v14 = -[BMUserFocusComputedModeEvent modeSemanticType](self, "modeSemanticType"), v14 == objc_msgSend(v7, "modeSemanticType")) && (v15 = -[BMUserFocusComputedModeEvent modeUpdateReason](self, "modeUpdateReason"), v15 == objc_msgSend(v7, "modeUpdateReason")))
    {
      v16 = [(BMUserFocusComputedModeEvent *)self modeUpdateSource];
      v12 = v16 == [v7 modeUpdateSource];
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
        if (!v10)
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
  v2 = [(BMUserFocusComputedModeEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMUserFocusComputedModeEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [v5 mode];
      v7 = [v5 semanticModeIdentifier];
      v8 = [v5 starting];
      updated = BMUserFocusComputedModeUpdateReasonFromReason([v5 modeUpdateReason]);
      v10 = [v5 modeSemanticType];
      if (v10 >= 0xA)
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
        v11 = v10 - 1;
      }

      self = [(BMUserFocusComputedModeEvent *)self initWithMode:v6 semanticModeIdentifier:v7 starting:v8 modeUpdateReason:updated modeSemanticType:v11 modeUpdateSource:BMUserFocusComputedModeUpdateSourceFromSource([v5 modeUpdateSource])];

      v12 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMUserFocusComputedModeEvent initWithProto:];
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BMUserFocusComputedModeEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBUserFocusComputedModeEvent alloc] initWithData:v4];

    self = [(BMUserFocusComputedModeEvent *)self initWithProto:v5];
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
  v4 = [(BMUserFocusComputedModeEvent *)self mode];
  [v3 setMode:v4];

  v5 = [(BMUserFocusComputedModeEvent *)self semanticModeIdentifier];
  [v3 setSemanticModeIdentifier:v5];

  [v3 setStarting:{-[BMUserFocusComputedModeEvent isStarting](self, "isStarting")}];
  v6 = [(BMUserFocusComputedModeEvent *)self modeUpdateReason];
  v7 = v6;
  if (v6 > 1)
  {
    if (v6 != 2 && v6 != 3)
    {
      goto LABEL_22;
    }

LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  if (v6 < 2)
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
  v9 = [(BMUserFocusComputedModeEvent *)self modeSemanticType];
  v10 = v9;
  if (v9 > 3)
  {
    if (v9 <= 5)
    {
      if (v9 == 4)
      {
        v11 = 5;
      }

      else
      {
        v11 = 6;
      }

      goto LABEL_34;
    }

    switch(v9)
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
    if (v9 > 0)
    {
      if (v9 == 1)
      {
        v11 = 2;
      }

      else if (v9 == 2)
      {
        v11 = 3;
      }

      else
      {
        v11 = 4;
      }

      goto LABEL_34;
    }

    if (v9 == -1)
    {
      v11 = 0;
      goto LABEL_34;
    }

    if (!v9)
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
  v14 = [(BMUserFocusComputedModeEvent *)self modeUpdateSource];
  if (v14 >= 4)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(BMUserFocusComputedModeEvent *)v14 proto];
    }
  }

  else if ((v8 & 1) == 0)
  {
    [v3 setModeUpdateReason:v7];
    [v3 setModeSemanticType:v11];
    [v3 setModeUpdateSource:v14];
    v15 = v3;
    goto LABEL_41;
  }

  v15 = 0;
LABEL_41:

  return v15;
}

@end