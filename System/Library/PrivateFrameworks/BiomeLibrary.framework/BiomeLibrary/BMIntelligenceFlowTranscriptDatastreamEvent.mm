@interface BMIntelligenceFlowTranscriptDatastreamEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligenceFlowTranscriptDatastreamEvent)initWithAbsoluteTimestamp:(id)timestamp monotonicTimestamp:(id)monotonicTimestamp identifiers:(id)identifiers eventId:(id)id eventType:(id)type data:(id)data;
- (BMIntelligenceFlowTranscriptDatastreamEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligenceFlowTranscriptDatastreamEvent

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceFlowTranscriptDatastreamEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:1];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"monotonicTimestamp_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_87542];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"identifiers_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_57_87543];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventId" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventType" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"data" dataType:4 requestOnly:0 fieldNumber:6 protoDataType:14 convertedType:0];
  v11[0] = v2;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

id __54__BMIntelligenceFlowTranscriptDatastreamEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 identifiers];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __54__BMIntelligenceFlowTranscriptDatastreamEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 monotonicTimestamp];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    absoluteTimestamp = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self absoluteTimestamp];
    absoluteTimestamp2 = [v5 absoluteTimestamp];
    v8 = absoluteTimestamp2;
    if (absoluteTimestamp == absoluteTimestamp2)
    {
    }

    else
    {
      absoluteTimestamp3 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self absoluteTimestamp];
      absoluteTimestamp4 = [v5 absoluteTimestamp];
      v11 = [absoluteTimestamp3 isEqual:absoluteTimestamp4];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    monotonicTimestamp = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self monotonicTimestamp];
    monotonicTimestamp2 = [v5 monotonicTimestamp];
    v15 = monotonicTimestamp2;
    if (monotonicTimestamp == monotonicTimestamp2)
    {
    }

    else
    {
      monotonicTimestamp3 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self monotonicTimestamp];
      monotonicTimestamp4 = [v5 monotonicTimestamp];
      v18 = [monotonicTimestamp3 isEqual:monotonicTimestamp4];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    identifiers = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self identifiers];
    identifiers2 = [v5 identifiers];
    v21 = identifiers2;
    if (identifiers == identifiers2)
    {
    }

    else
    {
      identifiers3 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self identifiers];
      identifiers4 = [v5 identifiers];
      v24 = [identifiers3 isEqual:identifiers4];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    eventId = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventId];
    eventId2 = [v5 eventId];
    v27 = eventId2;
    if (eventId == eventId2)
    {
    }

    else
    {
      eventId3 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventId];
      eventId4 = [v5 eventId];
      v30 = [eventId3 isEqual:eventId4];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    eventType = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventType];
    eventType2 = [v5 eventType];
    v33 = eventType2;
    if (eventType == eventType2)
    {
    }

    else
    {
      eventType3 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventType];
      eventType4 = [v5 eventType];
      v36 = [eventType3 isEqual:eventType4];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    data = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self data];
    data2 = [v5 data];
    if (data == data2)
    {
      v12 = 1;
    }

    else
    {
      data3 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self data];
      data4 = [v5 data];
      v12 = [data3 isEqual:data4];
    }

    goto LABEL_22;
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
    v4 = [v2 convertValue:v3 toType:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v29[6] = *MEMORY[0x1E69E9840];
  absoluteTimestamp = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self absoluteTimestamp];
  if (absoluteTimestamp)
  {
    v4 = MEMORY[0x1E696AD98];
    absoluteTimestamp2 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self absoluteTimestamp];
    [absoluteTimestamp2 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  monotonicTimestamp = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self monotonicTimestamp];
  jsonDictionary = [monotonicTimestamp jsonDictionary];

  identifiers = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self identifiers];
  jsonDictionary2 = [identifiers jsonDictionary];

  eventId = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventId];
  eventType = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventType];
  data = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self data];
  v14 = [data base64EncodedStringWithOptions:0];

  v28[0] = @"absoluteTimestamp";
  null = v6;
  if (!v6)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null;
  v27 = v6;
  v29[0] = null;
  v28[1] = @"monotonicTimestamp";
  null2 = jsonDictionary;
  if (!jsonDictionary)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v29[1] = null2;
  v28[2] = @"identifiers";
  null3 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v29[2] = null3;
  v28[3] = @"eventId";
  null4 = eventId;
  if (!eventId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v29[3] = null4;
  v28[4] = @"eventType";
  null5 = eventType;
  if (!eventType)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = null5;
  v28[5] = @"data";
  null6 = v14;
  if (!v14)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = null6;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:{6, v24}];
  if (v14)
  {
    if (eventType)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (eventType)
    {
LABEL_18:
      if (eventId)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (eventId)
  {
LABEL_19:
    if (jsonDictionary2)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (jsonDictionary)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!jsonDictionary2)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (jsonDictionary)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v27)
  {
  }

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BMIntelligenceFlowTranscriptDatastreamEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v84[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"absoluteTimestamp"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = MEMORY[0x1E695DF00];
      v10 = v7;
      v11 = [v9 alloc];
      [v10 doubleValue];
      v13 = v12;

      v14 = [v11 initWithTimeIntervalSinceReferenceDate:v13];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v8 = [v15 dateFromString:v7];

        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          goto LABEL_33;
        }

        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v83 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 2001 (CFAbsoluteTime)), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
        v84[0] = v24;
        v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v84 forKeys:&v83 count:1];
        v48 = [v46 initWithDomain:v47 code:2 userInfo:?];
        v8 = 0;
        errorCopy = error;
        error = 0;
        *errorCopy = v48;
        goto LABEL_31;
      }

      v14 = v7;
    }

    v8 = v14;
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"monotonicTimestamp"];
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        goto LABEL_32;
      }

      v66 = objc_alloc(MEMORY[0x1E696ABC0]);
      v29 = *MEMORY[0x1E698F240];
      v81 = *MEMORY[0x1E696A578];
      errorCopy2 = error;
      v31 = v8;
      v32 = objc_alloc(MEMORY[0x1E696AEC0]);
      v52 = objc_opt_class();
      v33 = v32;
      v8 = v31;
      v68 = [v33 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v52, @"monotonicTimestamp"];
      v82 = v68;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      *errorCopy2 = [v66 initWithDomain:v29 code:2 userInfo:v34];

      error = 0;
      goto LABEL_30;
    }

    v24 = v16;
    v70 = 0;
    v68 = [[BMMonotonicTimestamp alloc] initWithJSONDictionary:v24 error:&v70];
    v27 = v70;
    if (v27)
    {
      if (error)
      {
        v27 = v27;
        *error = v27;
      }

      error = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v68 = 0;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"identifiers"];
  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v64 = 0;
    errorCopy5 = self;
    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v17;
    v69 = 0;
    v64 = [[BMIntelligenceFlowIdentifiers alloc] initWithJSONDictionary:v23 error:&v69];
    v28 = v69;
    if (v28)
    {
      if (error)
      {
        v28 = v28;
        *error = v28;
      }

      error = 0;
      goto LABEL_28;
    }

    errorCopy5 = self;

LABEL_15:
    v18 = [dictionaryCopy objectForKeyedSubscript:@"eventId"];
    v63 = v8;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v23 = 0;
          goto LABEL_27;
        }

        v39 = objc_alloc(MEMORY[0x1E696ABC0]);
        v40 = *MEMORY[0x1E698F240];
        v77 = *MEMORY[0x1E696A578];
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventId"];
        v78 = v20;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
        v41 = [v39 initWithDomain:v40 code:2 userInfo:v19];
        v61 = 0;
        errorCopy3 = error;
        error = 0;
        *errorCopy3 = v41;
LABEL_26:

        v23 = v61;
        v8 = v63;
LABEL_27:

        self = errorCopy5;
        goto LABEL_28;
      }

      v61 = v18;
    }

    else
    {
      v61 = 0;
    }

    v19 = [dictionaryCopy objectForKeyedSubscript:@"eventType"];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v20 = 0;
          goto LABEL_26;
        }

        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy4 = error;
        v43 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventType"];
        v76 = v22;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        v44 = [v55 initWithDomain:v43 code:2 userInfo:v21];
        v20 = 0;
        error = 0;
        *errorCopy4 = v44;
        goto LABEL_25;
      }

      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [dictionaryCopy objectForKeyedSubscript:@"data"];
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = 0;
LABEL_24:
      error = [(BMIntelligenceFlowTranscriptDatastreamEvent *)errorCopy5 initWithAbsoluteTimestamp:v63 monotonicTimestamp:v68 identifiers:v64 eventId:v61 eventType:v20 data:v22];
      errorCopy5 = error;
LABEL_25:

      goto LABEL_26;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
      goto LABEL_24;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v21 options:0];
      if (v22)
      {
        goto LABEL_24;
      }

      if (error)
      {
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"data"];
        v74 = v54;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        *error = [v59 initWithDomain:v56 code:2 userInfo:v45];

LABEL_72:
        v22 = 0;
        error = 0;
        goto LABEL_25;
      }
    }

    else if (error)
    {
      v60 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E698F240];
      v71 = *MEMORY[0x1E696A578];
      v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"data"];
      v72 = v54;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v51 = v50 = error;
      *v50 = [v60 initWithDomain:v57 code:2 userInfo:v51];

      goto LABEL_72;
    }

    v22 = 0;
    goto LABEL_25;
  }

  if (!error)
  {
    error = 0;
    goto LABEL_29;
  }

  errorCopy6 = error;
  v67 = objc_alloc(MEMORY[0x1E696ABC0]);
  v62 = *MEMORY[0x1E698F240];
  v79 = *MEMORY[0x1E696A578];
  v36 = v8;
  v37 = objc_alloc(MEMORY[0x1E696AEC0]);
  v53 = objc_opt_class();
  v38 = v37;
  v8 = v36;
  v64 = [v38 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v53, @"identifiers"];
  v80 = v64;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  error = 0;
  *errorCopy6 = [v67 initWithDomain:v62 code:2 userInfo:v23];
LABEL_28:

LABEL_29:
LABEL_30:
  v24 = v16;
LABEL_31:

  v16 = v24;
LABEL_32:

LABEL_33:
  v25 = *MEMORY[0x1E69E9840];
  return error;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_monotonicTimestamp)
  {
    PBDataWriterPlaceMark();
    [(BMMonotonicTimestamp *)self->_monotonicTimestamp writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_identifiers)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceFlowIdentifiers *)self->_identifiers writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_eventId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_eventType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_data)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v28.receiver = self;
  v28.super_class = BMIntelligenceFlowTranscriptDatastreamEvent;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_46;
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
        LOBYTE(v29) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v29) & 0x7F) << v7;
        if ((LOBYTE(v29) & 0x80) == 0)
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
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v18 = PBReaderReadString();
            v19 = 56;
            break;
          case 5:
            v18 = PBReaderReadString();
            v19 = 64;
            break;
          case 6:
            v18 = PBReaderReadData();
            v19 = 72;
            break;
          default:
LABEL_33:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_43;
        }

        v23 = *(&v5->super.super.isa + v19);
        *(&v5->super.super.isa + v19) = v18;
      }

      else if (v15 == 1)
      {
        v5->_hasRaw_absoluteTimestamp = 1;
        v29 = 0.0;
        v20 = [fromCopy position] + 8;
        if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 8, v21 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_absoluteTimestamp = v29;
      }

      else
      {
        if (v15 == 2)
        {
          v29 = 0.0;
          v30 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_45;
          }

          v16 = [[BMMonotonicTimestamp alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_45;
          }

          v17 = 40;
        }

        else
        {
          if (v15 != 3)
          {
            goto LABEL_33;
          }

          v29 = 0.0;
          v30 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_45;
          }

          v16 = [[BMIntelligenceFlowIdentifiers alloc] initByReadFrom:fromCopy];
          if (!v16)
          {
            goto LABEL_45;
          }

          v17 = 48;
        }

        v22 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        PBReaderRecallMark();
      }

LABEL_43:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_45:
    v26 = 0;
  }

  else
  {
LABEL_46:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  absoluteTimestamp = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self absoluteTimestamp];
  monotonicTimestamp = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self monotonicTimestamp];
  identifiers = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self identifiers];
  eventId = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventId];
  eventType = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventType];
  data = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self data];
  v10 = [v3 initWithFormat:@"BMIntelligenceFlowTranscriptDatastreamEvent with absoluteTimestamp: %@, monotonicTimestamp: %@, identifiers: %@, eventId: %@, eventType: %@, data: %@", absoluteTimestamp, monotonicTimestamp, identifiers, eventId, eventType, data];

  return v10;
}

- (BMIntelligenceFlowTranscriptDatastreamEvent)initWithAbsoluteTimestamp:(id)timestamp monotonicTimestamp:(id)monotonicTimestamp identifiers:(id)identifiers eventId:(id)id eventType:(id)type data:(id)data
{
  timestampCopy = timestamp;
  monotonicTimestampCopy = monotonicTimestamp;
  identifiersCopy = identifiers;
  idCopy = id;
  typeCopy = type;
  dataCopy = data;
  v23.receiver = self;
  v23.super_class = BMIntelligenceFlowTranscriptDatastreamEvent;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (timestampCopy)
    {
      v18->_hasRaw_absoluteTimestamp = 1;
      [timestampCopy timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_absoluteTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_absoluteTimestamp = v19;
    objc_storeStrong(&v18->_monotonicTimestamp, monotonicTimestamp);
    objc_storeStrong(&v18->_identifiers, identifiers);
    objc_storeStrong(&v18->_eventId, id);
    objc_storeStrong(&v18->_eventType, type);
    objc_storeStrong(&v18->_data, data);
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"monotonicTimestamp" number:2 type:14 subMessageClass:objc_opt_class()];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifiers" number:3 type:14 subMessageClass:objc_opt_class()];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventId" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventType" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"data" number:6 type:14 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
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

    v8 = [[BMIntelligenceFlowTranscriptDatastreamEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end