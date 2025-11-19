@interface BMIntentEvent
+ (id)eventWithDKEvent:(id)a3;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BMIntentEvent)initWithAbsoluteTime:(double)a3 bundleId:(id)a4 sourceId:(id)a5 intentClass:(id)a6 intentVerb:(id)a7 intentType:(int64_t)a8 intentHandlingStatus:(int64_t)a9 interaction:(id)a10 itemID:(id)a11 donatedBySiri:(BOOL)a12 interactionDirection:(int64_t)a13 groupIdentifier:(id)a14;
- (BMIntentEvent)initWithCoder:(id)a3;
- (BMIntentEvent)initWithProto:(id)a3;
- (BMIntentEvent)initWithProtoData:(id)a3;
- (BOOL)checkAndReportDecodingFailureIfNeededForCFAbsoluteTime:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)checkAndReportDecodingFailureIfNeededForuint32_t:(unsigned int)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BMIntentEvent

+ (id)eventWithDKEvent:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 metadata];
  v5 = [get_DKIntentMetadataKeyClass() serializedInteraction];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v3 metadata];
    v31 = [BMIntentEvent alloc];
    v47 = [v3 startDate];
    [v47 timeIntervalSinceReferenceDate];
    v9 = v8;
    v46 = [v3 source];
    v45 = [v46 bundleID];
    v44 = [v3 source];
    v43 = [v44 sourceID];
    v42 = [get_DKIntentMetadataKeyClass() intentClass];
    v41 = [v7 objectForKeyedSubscript:?];
    v40 = [get_DKIntentMetadataKeyClass() intentVerb];
    v39 = [v7 objectForKeyedSubscript:?];
    v38 = [get_DKIntentMetadataKeyClass() intentType];
    v37 = [v7 objectForKeyedSubscript:?];
    v48 = [v37 integerValue];
    v10 = [v3 metadata];
    v35 = [get_DKIntentMetadataKeyClass() intentHandlingStatus];
    v36 = v10;
    v34 = [v10 objectForKeyedSubscript:?];
    v30 = [v34 integerValue];
    v33 = [get_DKIntentMetadataKeyClass() serializedInteraction];
    v11 = [v7 objectForKeyedSubscript:?];
    v32 = [v3 source];
    v12 = [v32 itemID];
    v29 = [get_DKIntentMetadataKeyClass() donatedBySiri];
    v28 = [v7 objectForKeyedSubscript:?];
    v13 = [v28 BOOLValue];
    v14 = [get_DKIntentMetadataKeyClass() direction];
    v15 = [v7 objectForKeyedSubscript:v14];
    v16 = [v15 integerValue];
    if (v16 >= 4)
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
      v17 = qword_184D27580[v16];
    }

    v23 = [v3 source];
    v24 = [v23 groupID];
    LOBYTE(v27) = v13;
    v49 = [(BMIntentEvent *)v31 initWithAbsoluteTime:v45 bundleId:v43 sourceId:v41 intentClass:v39 intentVerb:v48 intentType:v30 intentHandlingStatus:v9 interaction:v11 itemID:v12 donatedBySiri:v27 interactionDirection:v17 groupIdentifier:v24];
  }

  else
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v18 = [v3 source];
      v19 = [v18 bundleID];
      v20 = [v3 source];
      v21 = [v20 sourceID];
      *buf = 138543618;
      v51 = v19;
      v52 = 2112;
      v53 = v21;
      _os_log_impl(&dword_1848EE000, v7, OS_LOG_TYPE_INFO, "nil interaction found on event bundle:%{public}@ source:%{}@", buf, 0x16u);
    }

    v49 = 0;
  }

  v25 = *MEMORY[0x1E69E9840];

  return v49;
}

- (BMIntentEvent)initWithAbsoluteTime:(double)a3 bundleId:(id)a4 sourceId:(id)a5 intentClass:(id)a6 intentVerb:(id)a7 intentType:(int64_t)a8 intentHandlingStatus:(int64_t)a9 interaction:(id)a10 itemID:(id)a11 donatedBySiri:(BOOL)a12 interactionDirection:(int64_t)a13 groupIdentifier:(id)a14
{
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a10;
  v25 = a11;
  v26 = a14;
  if (!v24)
  {
    [BMIntentEvent initWithAbsoluteTime:a2 bundleId:self sourceId:? intentClass:? intentVerb:? intentType:? intentHandlingStatus:? interaction:? itemID:? donatedBySiri:? interactionDirection:? groupIdentifier:?];
  }

  v33.receiver = self;
  v33.super_class = BMIntentEvent;
  v27 = [(BMEventBase *)&v33 init];
  v28 = v27;
  if (v27)
  {
    [(BMIntentEvent *)v27 setAbsoluteTimestamp:a3];
    [(BMIntentEvent *)v28 setBundleID:v20];
    [(BMIntentEvent *)v28 setSourceId:v21];
    [(BMIntentEvent *)v28 setIntentClass:v22];
    [(BMIntentEvent *)v28 setIntentVerb:v23];
    [(BMIntentEvent *)v28 setIntentType:v31];
    [(BMIntentEvent *)v28 setIntentHandlingStatus:a9];
    [(BMIntentEvent *)v28 setInteraction:v24];
    [(BMIntentEvent *)v28 setItemID:v25];
    [(BMIntentEvent *)v28 setDonatedBySiri:a12];
    [(BMIntentEvent *)v28 setInteractionDirection:a13];
    [(BMIntentEvent *)v28 setGroupIdentifier:v26];
  }

  return v28;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v6 = a3;
  if (a4 == 12)
  {
    v11 = BMIntentEvent_v12;
LABEL_10:
    v10 = [[v11 alloc] initWithProtoData:v6];
    goto LABEL_16;
  }

  if (a4 == 9)
  {
    v14 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v14];
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

  if ((a4 & 0xFFFFFFFE) == 0xA)
  {
    v11 = a1;
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

- (BOOL)checkAndReportDecodingFailureIfNeededForCFAbsoluteTime:(double)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3 == 0.0)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", v11, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", v11, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForuint32_t:(unsigned int)a3 key:(id)a4 coder:(id)a5 errorDomain:(id)a6 errorCode:(int64_t)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!a3)
  {
    v15 = [v12 error];

    if (v15)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([v12 containsValueForKey:v11] & 1) == 0)
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to decode key %@", v11, *MEMORY[0x1E696A578]];
      v23[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v16 errorWithDomain:v13 code:a7 userInfo:v18];

      [v12 failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  v20 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(BMIntentEvent *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protoData"];
}

- (BMIntentEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protoData"];
  if (v5)
  {
    self = [(BMIntentEvent *)self initWithProtoData:v5];
    v6 = self;
  }

  else
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    [v4 decodeDoubleForKey:@"absoluteTime"];
    v10 = v9;
    if ([(BMIntentEvent *)self checkAndReportDecodingFailureIfNeededForCFAbsoluteTime:@"absoluteTime" key:v4 coder:v8 errorDomain:-1 errorCode:?])
    {
      v6 = 0;
    }

    else
    {
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleId"];
      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sourceId"];
      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentClass"];
      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentVerb"];
      v19 = [v4 decodeIntegerForKey:@"intentType"];
      v18 = [v4 decodeIntegerForKey:@"intentHandlingStatus"];
      v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"interaction"];
      v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemID"];
      LOBYTE(v17) = 0;
      self = [(BMIntentEvent *)self initWithAbsoluteTime:v11 bundleId:v12 sourceId:v20 intentClass:v13 intentVerb:v19 intentType:v18 intentHandlingStatus:v10 interaction:v14 itemID:v15 donatedBySiri:v17 interactionDirection:0 groupIdentifier:0];

      v6 = self;
    }
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = MEMORY[0x1E696AD98];
  [(BMIntentEvent *)self absoluteTimestamp];
  v26 = [v3 numberWithDouble:?];
  v4 = [v26 hash];
  v25 = [(BMIntentEvent *)self bundleID];
  v5 = [v25 hash];
  v24 = [(BMIntentEvent *)self sourceId];
  v6 = v5 ^ [v24 hash];
  v23 = [(BMIntentEvent *)self intentClass];
  v7 = v6 ^ [v23 hash];
  v8 = [(BMIntentEvent *)self intentVerb];
  v9 = v7 ^ [v8 hash] ^ v4;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BMIntentEvent intentType](self, "intentType")}];
  v11 = [v10 hash];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BMIntentEvent intentHandlingStatus](self, "intentHandlingStatus")}];
  v13 = v9 ^ v11 ^ [v12 hash];
  v14 = [(BMIntentEvent *)self interaction];
  v15 = [v14 hash];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMIntentEvent donatedBySiri](self, "donatedBySiri")}];
  v17 = v15 ^ [v16 hash];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[BMIntentEvent interactionDirection](self, "interactionDirection")}];
  v19 = v13 ^ v17 ^ [v18 hash];
  v20 = [(BMIntentEvent *)self groupIdentifier];
  v21 = [v20 hash];

  return v19 ^ v21;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    [(BMIntentEvent *)self absoluteTimestamp];
    v10 = v9;
    [v8 absoluteTimestamp];
    if (v10 != v11)
    {
      v14 = 0;
LABEL_44:

      goto LABEL_45;
    }

    v12 = [(BMIntentEvent *)self bundleID];
    if (v12 || ([v8 bundleID], (v57 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = [(BMIntentEvent *)self bundleID];
      v4 = [v8 bundleID];
      if (([v3 isEqual:v4] & 1) == 0)
      {

        v14 = 0;
LABEL_41:
        if (!v12)
        {
        }

        goto LABEL_44;
      }

      v54 = v3;
      v13 = 1;
    }

    else
    {
      v57 = 0;
      v13 = 0;
    }

    v15 = [(BMIntentEvent *)self intentClass];
    if (v15 || ([v8 intentClass], (v52 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = [(BMIntentEvent *)self intentClass];
      v5 = [v8 intentClass];
      v56 = v16;
      if (![v16 isEqual:v5])
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

    v55 = [(BMIntentEvent *)self intentVerb];
    if (!v55)
    {
      v47 = [v8 intentVerb];
      if (!v47)
      {
        v49 = v5;
        v17 = v13;
        v19 = v57;
        v47 = 0;
        v51 = 0;
LABEL_26:
        v21 = [(BMIntentEvent *)self intentHandlingStatus];
        v57 = v19;
        if (v21 != [v8 intentHandlingStatus])
        {
          v14 = 0;
          v13 = v17;
          v23 = v48;
          v5 = v49;
          if ((v51 & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v45 = [(BMIntentEvent *)self interaction];
        if (v45 || ([v8 interaction], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v22 = [(BMIntentEvent *)self interaction];
          v43 = [v8 interaction];
          v44 = v22;
          v13 = v17;
          if (![v22 isEqual:?])
          {
            v14 = 0;
            v23 = v48;
            v5 = v49;
            v26 = v45;
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

        v41 = [(BMIntentEvent *)self itemID];
        if (v41 || ([v8 itemID], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v27 = [(BMIntentEvent *)self itemID];
          v3 = [v8 itemID];
          v5 = v49;
          if (([v27 isEqual:v3] & 1) == 0)
          {

            v28 = v41;
            if (!v41)
            {
              v28 = v38;
            }

            v14 = 0;
            v23 = v48;
            v26 = v45;
            if (v42)
            {
              goto LABEL_69;
            }

            goto LABEL_70;
          }

          v37 = v27;
          v39 = 1;
        }

        else
        {
          v38 = 0;
          v39 = 0;
          v5 = v49;
        }

        v29 = [(BMIntentEvent *)self donatedBySiri];
        if (v29 != [v8 donatedBySiri] || (v30 = -[BMIntentEvent interactionDirection](self, "interactionDirection"), v30 != objc_msgSend(v8, "interactionDirection")))
        {
          v14 = 0;
          if (!v39)
          {
            goto LABEL_66;
          }

          goto LABEL_65;
        }

        v31 = [(BMIntentEvent *)self groupIdentifier];
        if (v31 || ([v8 groupIdentifier], (v35 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v50 = v3;
          v36 = [(BMIntentEvent *)self groupIdentifier];
          [v8 groupIdentifier];
          v33 = v32 = v31;
          v14 = [v36 isEqual:v33];

          if (v32)
          {

            v3 = v50;
            if ((v39 & 1) == 0)
            {
              goto LABEL_66;
            }

            goto LABEL_65;
          }

          v34 = v35;
          v3 = v50;
        }

        else
        {
          v34 = 0;
          v14 = 1;
        }

        if ((v39 & 1) == 0)
        {
LABEL_66:
          if (!v41)
          {
          }

          v23 = v48;
          v26 = v45;
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
            v24 = v55;
            if (!v55)
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
    v18 = [(BMIntentEvent *)self intentVerb];
    v3 = [v8 intentVerb];
    if ([v18 isEqual:v3])
    {
      v48 = v3;
      v49 = v5;
      v46 = v18;
      v19 = v57;
      v51 = 1;
      goto LABEL_26;
    }

    v20 = v55;
    if (!v55)
    {
      v20 = v47;
    }

    v14 = 0;
    v13 = v17;
    if ((v53 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_36:

LABEL_37:
    if (!v15)
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
  v2 = [(BMIntentEvent *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMIntentEvent)initWithProto:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v23 = typeWithBMPBIntentType([v5 intentType]);
      v6 = [v5 intentHandlingStatus];
      if (v6 >= 7)
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
        v22 = v6;
      }

      v21 = interactionDirectionWithPB([v5 interactionDirection]);
      [v5 absoluteTimestamp];
      v10 = v9;
      v20 = [v5 bundleID];
      v11 = [v5 sourceId];
      v12 = [v5 intentClass];
      v13 = [v5 intentVerb];
      v14 = [v5 interaction];
      v15 = [v5 itemID];
      v16 = [v5 donatedBySiri];
      v17 = [v5 groupIdentifier];
      LOBYTE(v19) = v16;
      self = [(BMIntentEvent *)self initWithAbsoluteTime:v20 bundleId:v11 sourceId:v12 intentClass:v13 intentVerb:v23 intentType:v22 intentHandlingStatus:v10 interaction:v14 itemID:v15 donatedBySiri:v19 interactionDirection:v21 groupIdentifier:v17];

      v7 = self;
    }

    else
    {
      v5 = __biome_log_for_category();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [BMIntentEvent initWithProto:];
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BMIntentEvent)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBIntentEvent alloc] initWithData:v4];

    self = [(BMIntentEvent *)self initWithProto:v5];
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
  [(BMIntentEvent *)self absoluteTimestamp];
  [v3 setAbsoluteTimestamp:?];
  v4 = [(BMIntentEvent *)self bundleID];
  [v3 setBundleID:v4];

  v5 = [(BMIntentEvent *)self sourceId];
  [v3 setSourceId:v5];

  v6 = [(BMIntentEvent *)self intentClass];
  [v3 setIntentClass:v6];

  v7 = [(BMIntentEvent *)self intentVerb];
  [v3 setIntentVerb:v7];

  v8 = [(BMIntentEvent *)self intentType];
  v9 = v8;
  if (v8 > 1)
  {
    if (v8 != 2 && v8 != 3)
    {
      goto LABEL_18;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if (v8 < 2)
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
  v11 = [(BMIntentEvent *)self intentHandlingStatus];
  if (v11 <= 2)
  {
    switch(v11)
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
    if (v11 <= 4)
    {
      if (v11 == 3)
      {
        v12 = 3;
      }

      else
      {
        v12 = 4;
      }

      goto LABEL_28;
    }

    if (v11 == 5)
    {
      v12 = 5;
      goto LABEL_28;
    }

    if (v11 == 6)
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
  v15 = [(BMIntentEvent *)self interactionDirection];
  if (v15 >= 4)
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
    v16 = [(BMIntentEvent *)self interaction];
    [v3 setInteraction:v16];

    v17 = [(BMIntentEvent *)self itemID];
    [v3 setItemID:v17];

    [v3 setDonatedBySiri:{-[BMIntentEvent donatedBySiri](self, "donatedBySiri")}];
    [v3 setInteractionDirection:v15];
    v18 = [(BMIntentEvent *)self groupIdentifier];
    [v3 setGroupIdentifier:v18];

    v19 = v3;
    goto LABEL_35;
  }

  v19 = 0;
LABEL_35:

  return v19;
}

@end