@interface BMMLSEConversationUserInteraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEConversationUserInteraction)initWithBundleID:(id)d conversationId:(id)id eventType:(int)type timestamp:(id)timestamp;
- (BMMLSEConversationUserInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEConversationUserInteraction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    bundleID = [(BMMLSEConversationUserInteraction *)self bundleID];
    bundleID2 = [v5 bundleID];
    v8 = bundleID2;
    if (bundleID == bundleID2)
    {
    }

    else
    {
      bundleID3 = [(BMMLSEConversationUserInteraction *)self bundleID];
      bundleID4 = [v5 bundleID];
      v11 = [bundleID3 isEqual:bundleID4];

      if (!v11)
      {
        goto LABEL_14;
      }
    }

    conversationId = [(BMMLSEConversationUserInteraction *)self conversationId];
    conversationId2 = [v5 conversationId];
    v15 = conversationId2;
    if (conversationId == conversationId2)
    {
    }

    else
    {
      conversationId3 = [(BMMLSEConversationUserInteraction *)self conversationId];
      conversationId4 = [v5 conversationId];
      v18 = [conversationId3 isEqual:conversationId4];

      if (!v18)
      {
        goto LABEL_14;
      }
    }

    eventType = [(BMMLSEConversationUserInteraction *)self eventType];
    if (eventType == [v5 eventType])
    {
      timestamp = [(BMMLSEConversationUserInteraction *)self timestamp];
      timestamp2 = [v5 timestamp];
      if (timestamp == timestamp2)
      {
        v12 = 1;
      }

      else
      {
        timestamp3 = [(BMMLSEConversationUserInteraction *)self timestamp];
        timestamp4 = [v5 timestamp];
        v12 = [timestamp3 isEqual:timestamp4];
      }

      goto LABEL_17;
    }

LABEL_14:
    v12 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:

  return v12;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
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
  v18[4] = *MEMORY[0x1E69E9840];
  bundleID = [(BMMLSEConversationUserInteraction *)self bundleID];
  conversationId = [(BMMLSEConversationUserInteraction *)self conversationId];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEConversationUserInteraction eventType](self, "eventType")}];
  timestamp = [(BMMLSEConversationUserInteraction *)self timestamp];
  if (timestamp)
  {
    v7 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMMLSEConversationUserInteraction *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v17[0] = @"bundleID";
  null = bundleID;
  if (!bundleID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"conversationId";
  null2 = conversationId;
  if (!conversationId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"eventType";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null3;
  v17[3] = @"timestamp";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = null4;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v9)
  {
    if (v5)
    {
      goto LABEL_14;
    }
  }

  else
  {

    if (v5)
    {
LABEL_14:
      if (conversationId)
      {
        goto LABEL_15;
      }

LABEL_21:

      if (bundleID)
      {
        goto LABEL_16;
      }

      goto LABEL_22;
    }
  }

  if (!conversationId)
  {
    goto LABEL_21;
  }

LABEL_15:
  if (bundleID)
  {
    goto LABEL_16;
  }

LABEL_22:

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMMLSEConversationUserInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v48[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"bundleID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v40 = 0;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"conversationId"];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v16 = 0;
          selfCopy = 0;
          goto LABEL_34;
        }

        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"conversationId"];
        v46 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v20 = [v18 initWithDomain:v19 code:2 userInfo:v10];
        v16 = 0;
        selfCopy = 0;
        *error = v20;
        goto LABEL_33;
      }

      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
    v39 = v9;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      errorCopy2 = error;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v12 = 0;
            selfCopy = 0;
            v16 = v39;
            goto LABEL_33;
          }

          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v43 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"eventType"];
          v44 = v22;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          v33 = [v37 initWithDomain:v32 code:2 userInfo:v21];
          v12 = 0;
          selfCopy = 0;
          *errorCopy2 = v33;
          goto LABEL_45;
        }

        v13 = [MEMORY[0x1E696AD98] numberWithInt:BMConversationUserInteractionEventTypeFromString(v10)];
      }

      v12 = v13;
    }

    else
    {
      errorCopy2 = error;
      v12 = 0;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = 0;
LABEL_31:
      v16 = v39;
      self = -[BMMLSEConversationUserInteraction initWithBundleID:conversationId:eventType:timestamp:](self, "initWithBundleID:conversationId:eventType:timestamp:", v40, v39, [v12 intValue], v22);
      selfCopy = self;
LABEL_32:

LABEL_33:
      goto LABEL_34;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = MEMORY[0x1E695DF00];
      v24 = v21;
      v25 = [v23 alloc];
      [v24 doubleValue];
      v27 = v26;

      v28 = [v25 initWithTimeIntervalSince1970:v27];
LABEL_28:
      v22 = v28;
      goto LABEL_31;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = objc_alloc_init(MEMORY[0x1E696AC80]);
      v22 = [v29 dateFromString:v21];

      goto LABEL_31;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v21;
      goto LABEL_28;
    }

    if (errorCopy2)
    {
      v38 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v41 = *MEMORY[0x1E696A578];
      v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
      v42 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      *errorCopy2 = [v38 initWithDomain:v36 code:2 userInfo:v35];
    }

    v22 = 0;
    selfCopy = 0;
LABEL_45:
    v16 = v39;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v40 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v40 = 0;
    selfCopy = 0;
    goto LABEL_35;
  }

  v14 = objc_alloc(MEMORY[0x1E696ABC0]);
  v15 = *MEMORY[0x1E698F240];
  v47 = *MEMORY[0x1E696A578];
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleID"];
  v48[0] = v16;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:&v47 count:1];
  v40 = 0;
  selfCopy = 0;
  *error = [v14 initWithDomain:v15 code:2 userInfo:v8];
LABEL_34:

LABEL_35:
  v30 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEConversationUserInteraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  eventType = self->_eventType;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMMLSEConversationUserInteraction;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v33) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v33) & 0x7F) << v7;
        if ((LOBYTE(v33) & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
        {
          v14 = 0;
          goto LABEL_16;
        }
      }

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 9)
      {
        if (v15 == 11)
        {
          v5->_hasRaw_timestamp = 1;
          v33 = 0.0;
          v26 = [fromCopy position] + 8;
          if (v26 >= [fromCopy position] && (v27 = objc_msgSend(fromCopy, "position") + 8, v27 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_raw_timestamp = v33;
        }

        else
        {
          if (v15 != 10)
          {
LABEL_33:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_48;
            }

            goto LABEL_46;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v33) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (LOBYTE(v33) & 0x7F) << v18;
            if ((LOBYTE(v33) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            if (v19++ > 8)
            {
              goto LABEL_42;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 2)
          {
LABEL_42:
            LODWORD(v20) = 0;
          }

          v5->_eventType = v20;
        }
      }

      else
      {
        if (v15 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 40;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_33;
          }

          v16 = PBReaderReadString();
          v17 = 48;
        }

        v25 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_46:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_48:
    v30 = 0;
  }

  else
  {
LABEL_49:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  bundleID = [(BMMLSEConversationUserInteraction *)self bundleID];
  conversationId = [(BMMLSEConversationUserInteraction *)self conversationId];
  v6 = BMConversationUserInteractionEventTypeAsString([(BMMLSEConversationUserInteraction *)self eventType]);
  timestamp = [(BMMLSEConversationUserInteraction *)self timestamp];
  v8 = [v3 initWithFormat:@"BMMLSEConversationUserInteraction with bundleID: %@, conversationId: %@, eventType: %@, timestamp: %@", bundleID, conversationId, v6, timestamp];

  return v8;
}

- (BMMLSEConversationUserInteraction)initWithBundleID:(id)d conversationId:(id)id eventType:(int)type timestamp:(id)timestamp
{
  dCopy = d;
  idCopy = id;
  timestampCopy = timestamp;
  v17.receiver = self;
  v17.super_class = BMMLSEConversationUserInteraction;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_bundleID, d);
    objc_storeStrong(&v14->_conversationId, id);
    v14->_eventType = type;
    if (timestampCopy)
    {
      v14->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v14->_hasRaw_timestamp = 0;
      v15 = -1.0;
    }

    v14->_raw_timestamp = v15;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleID" number:1 type:13 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"conversationId" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:10 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:11 type:0 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"conversationId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:11 protoDataType:0 convertedType:2];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMMLSEConversationUserInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end