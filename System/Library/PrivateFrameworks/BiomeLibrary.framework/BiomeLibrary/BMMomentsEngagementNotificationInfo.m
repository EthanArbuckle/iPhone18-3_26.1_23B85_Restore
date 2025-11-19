@interface BMMomentsEngagementNotificationInfo
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEngagementNotificationInfo)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMMomentsEngagementNotificationInfo)initWithNotificationEventTimestamp:(id)a3 notificationPostingTimestamp:(id)a4 notificationSuggestionCount:(id)a5;
- (BOOL)isEqual:(id)a3;
- (NSDate)notificationEventTimestamp;
- (NSDate)notificationPostingTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEngagementNotificationInfo

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsEngagementNotificationInfo *)self notificationEventTimestamp];
    v7 = [v5 notificationEventTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMMomentsEngagementNotificationInfo *)self notificationEventTimestamp];
      v10 = [v5 notificationEventTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_16;
      }
    }

    v13 = [(BMMomentsEngagementNotificationInfo *)self notificationPostingTimestamp];
    v14 = [v5 notificationPostingTimestamp];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMMomentsEngagementNotificationInfo *)self notificationPostingTimestamp];
      v17 = [v5 notificationPostingTimestamp];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_16;
      }
    }

    if (!-[BMMomentsEngagementNotificationInfo hasNotificationSuggestionCount](self, "hasNotificationSuggestionCount") && ![v5 hasNotificationSuggestionCount])
    {
      v12 = 1;
      goto LABEL_17;
    }

    if (-[BMMomentsEngagementNotificationInfo hasNotificationSuggestionCount](self, "hasNotificationSuggestionCount") && [v5 hasNotificationSuggestionCount])
    {
      v19 = [(BMMomentsEngagementNotificationInfo *)self notificationSuggestionCount];
      v12 = v19 == [v5 notificationSuggestionCount];
LABEL_17:

      goto LABEL_18;
    }

LABEL_16:
    v12 = 0;
    goto LABEL_17;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (NSDate)notificationPostingTimestamp
{
  if (self->_hasRaw_notificationPostingTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_notificationPostingTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)notificationEventTimestamp
{
  if (self->_hasRaw_notificationEventTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_notificationEventTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v19[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMMomentsEngagementNotificationInfo *)self notificationEventTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMMomentsEngagementNotificationInfo *)self notificationEventTimestamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMMomentsEngagementNotificationInfo *)self notificationPostingTimestamp];
  if (v7)
  {
    v8 = MEMORY[0x1E696AD98];
    v9 = [(BMMomentsEngagementNotificationInfo *)self notificationPostingTimestamp];
    [v9 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMMomentsEngagementNotificationInfo *)self hasNotificationSuggestionCount])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementNotificationInfo notificationSuggestionCount](self, "notificationSuggestionCount")}];
  }

  else
  {
    v11 = 0;
  }

  v18[0] = @"notificationEventTimestamp";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v12;
  v18[1] = @"notificationPostingTimestamp";
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v13;
  v18[2] = @"notificationSuggestionCount";
  v14 = v11;
  if (!v11)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_18;
    }

LABEL_23:

    if (v6)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (!v10)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_24:

LABEL_19:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMMomentsEngagementNotificationInfo)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v47[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"notificationEventTimestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v16 = [v6 objectForKeyedSubscript:@"notificationPostingTimestamp"];
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = MEMORY[0x1E695DF00];
        v19 = v16;
        v20 = [v18 alloc];
        [v19 doubleValue];
        v22 = v21;

        v23 = [v20 initWithTimeIntervalSince1970:v22];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v17 = [v24 dateFromString:v16];

          goto LABEL_17;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!p_isa)
          {
            v17 = 0;
            goto LABEL_22;
          }

          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = p_isa;
          v37 = *MEMORY[0x1E698F240];
          v44 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"notificationPostingTimestamp"];
          v45 = v26;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          v38 = [v41 initWithDomain:v37 code:2 userInfo:v25];
          v17 = 0;
          p_isa = 0;
          *v36 = v38;
          goto LABEL_21;
        }

        v23 = v16;
      }

      v17 = v23;
    }

    else
    {
      v17 = 0;
    }

LABEL_17:
    v25 = [v6 objectForKeyedSubscript:@"notificationSuggestionCount"];
    if (v25 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (p_isa)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v42 = *MEMORY[0x1E696A578];
          v39 = p_isa;
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"notificationSuggestionCount"];
          v43 = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          *v39 = [v40 initWithDomain:v29 code:2 userInfo:v31];

          v26 = 0;
          p_isa = 0;
        }

        else
        {
          v26 = 0;
        }

        goto LABEL_21;
      }

      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    self = [(BMMomentsEngagementNotificationInfo *)self initWithNotificationEventTimestamp:v8 notificationPostingTimestamp:v17 notificationSuggestionCount:v26];
    p_isa = &self->super.super.isa;
LABEL_21:

    goto LABEL_22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x1E695DF00];
    v10 = v7;
    v11 = [v9 alloc];
    [v10 doubleValue];
    v13 = v12;

    v14 = [v11 initWithTimeIntervalSince1970:v13];
LABEL_6:
    v8 = v14;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v8 = [v15 dateFromString:v7];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v7;
    goto LABEL_6;
  }

  if (!p_isa)
  {
    v8 = 0;
    goto LABEL_23;
  }

  v32 = objc_alloc(MEMORY[0x1E696ABC0]);
  v33 = *MEMORY[0x1E698F240];
  v46 = *MEMORY[0x1E696A578];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"notificationEventTimestamp"];
  v47[0] = v17;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  v34 = [v32 initWithDomain:v33 code:2 userInfo:v16];
  v8 = 0;
  v35 = p_isa;
  p_isa = 0;
  *v35 = v34;
LABEL_22:

LABEL_23:
  v27 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementNotificationInfo *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_hasRaw_notificationEventTimestamp)
  {
    raw_notificationEventTimestamp = self->_raw_notificationEventTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_hasRaw_notificationPostingTimestamp)
  {
    raw_notificationPostingTimestamp = self->_raw_notificationPostingTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_hasNotificationSuggestionCount)
  {
    notificationSuggestionCount = self->_notificationSuggestionCount;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v34.receiver = self;
  v34.super_class = BMMomentsEngagementNotificationInfo;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_50;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    do
    {
      if ([v4 hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v35) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v35 & 0x7F) << v7;
        if ((v35 & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) == 3)
      {
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v5->_hasNotificationSuggestionCount = 1;
        while (1)
        {
          LOBYTE(v35) = 0;
          v23 = [v4 position] + 1;
          if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
          {
            v25 = [v4 data];
            [v25 getBytes:&v35 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v22 |= (v35 & 0x7F) << v20;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v20 += 7;
          v13 = v21++ >= 9;
          if (v13)
          {
            v26 = 0;
            goto LABEL_41;
          }
        }

        if ([v4 hasError])
        {
          v26 = 0;
        }

        else
        {
          v26 = v22;
        }

LABEL_41:
        v5->_notificationSuggestionCount = v26;
      }

      else
      {
        if (v15 == 2)
        {
          v5->_hasRaw_notificationPostingTimestamp = 1;
          v35 = 0;
          v18 = [v4 position] + 8;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
          {
            v27 = [v4 data];
            [v27 getBytes:&v35 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v28 = v35;
          v29 = 40;
        }

        else
        {
          if (v15 != 1)
          {
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_49;
            }

            goto LABEL_47;
          }

          v5->_hasRaw_notificationEventTimestamp = 1;
          v35 = 0;
          v16 = [v4 position] + 8;
          if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v35 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v28 = v35;
          v29 = 24;
        }

        *(&v5->super.super.isa + v29) = v28;
      }

LABEL_47:
      v31 = [v4 position];
    }

    while (v31 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_49:
    v32 = 0;
  }

  else
  {
LABEL_50:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMMomentsEngagementNotificationInfo *)self notificationEventTimestamp];
  v5 = [(BMMomentsEngagementNotificationInfo *)self notificationPostingTimestamp];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementNotificationInfo notificationSuggestionCount](self, "notificationSuggestionCount")}];
  v7 = [v3 initWithFormat:@"BMMomentsEngagementNotificationInfo with notificationEventTimestamp: %@, notificationPostingTimestamp: %@, notificationSuggestionCount: %@", v4, v5, v6];

  return v7;
}

- (BMMomentsEngagementNotificationInfo)initWithNotificationEventTimestamp:(id)a3 notificationPostingTimestamp:(id)a4 notificationSuggestionCount:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = BMMomentsEngagementNotificationInfo;
  v11 = [(BMEventBase *)&v16 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v8)
    {
      v11->_hasRaw_notificationEventTimestamp = 1;
      [v8 timeIntervalSince1970];
    }

    else
    {
      v11->_hasRaw_notificationEventTimestamp = 0;
      v12 = -1.0;
    }

    v11->_raw_notificationEventTimestamp = v12;
    if (v9)
    {
      v11->_hasRaw_notificationPostingTimestamp = 1;
      [v9 timeIntervalSince1970];
    }

    else
    {
      v11->_hasRaw_notificationPostingTimestamp = 0;
      v13 = -1.0;
    }

    v11->_raw_notificationPostingTimestamp = v13;
    if (v10)
    {
      v11->_hasNotificationSuggestionCount = 1;
      v14 = [v10 intValue];
    }

    else
    {
      v11->_hasNotificationSuggestionCount = 0;
      v14 = -1;
    }

    v11->_notificationSuggestionCount = v14;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notificationEventTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notificationPostingTimestamp" number:2 type:0 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"notificationSuggestionCount" number:3 type:2 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"notificationEventTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"notificationPostingTimestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"notificationSuggestionCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  if (a4)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    v6 = a3;
    v7 = [[v5 alloc] initWithData:v6];

    v8 = [[BMMomentsEngagementNotificationInfo alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[13] = 0;
    }
  }

  return v4;
}

@end