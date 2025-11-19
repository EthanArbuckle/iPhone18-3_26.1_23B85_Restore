@interface BMIntelligenceFlowTranscriptDatastreamEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligenceFlowTranscriptDatastreamEvent)initWithAbsoluteTimestamp:(id)a3 monotonicTimestamp:(id)a4 identifiers:(id)a5 eventId:(id)a6 eventType:(id)a7 data:(id)a8;
- (BMIntelligenceFlowTranscriptDatastreamEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligenceFlowTranscriptDatastreamEvent

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceFlowTranscriptDatastreamEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self absoluteTimestamp];
    v7 = [v5 absoluteTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self absoluteTimestamp];
      v10 = [v5 absoluteTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_21;
      }
    }

    v13 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self monotonicTimestamp];
    v14 = [v5 monotonicTimestamp];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self monotonicTimestamp];
      v17 = [v5 monotonicTimestamp];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_21;
      }
    }

    v19 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self identifiers];
    v20 = [v5 identifiers];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self identifiers];
      v23 = [v5 identifiers];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_21;
      }
    }

    v25 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventId];
    v26 = [v5 eventId];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventId];
      v29 = [v5 eventId];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
        goto LABEL_21;
      }
    }

    v31 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventType];
    v32 = [v5 eventType];
    v33 = v32;
    if (v31 == v32)
    {
    }

    else
    {
      v34 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventType];
      v35 = [v5 eventType];
      v36 = [v34 isEqual:v35];

      if (!v36)
      {
LABEL_21:
        v12 = 0;
LABEL_22:

        goto LABEL_23;
      }
    }

    v38 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self data];
    v39 = [v5 data];
    if (v38 == v39)
    {
      v12 = 1;
    }

    else
    {
      v40 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self data];
      v41 = [v5 data];
      v12 = [v40 isEqual:v41];
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
  v3 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self absoluteTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self absoluteTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self monotonicTimestamp];
  v8 = [v7 jsonDictionary];

  v9 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self identifiers];
  v10 = [v9 jsonDictionary];

  v11 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventId];
  v12 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventType];
  v13 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self data];
  v14 = [v13 base64EncodedStringWithOptions:0];

  v28[0] = @"absoluteTimestamp";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v15;
  v27 = v6;
  v29[0] = v15;
  v28[1] = @"monotonicTimestamp";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v16;
  v29[1] = v16;
  v28[2] = @"identifiers";
  v17 = v10;
  if (!v10)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29[2] = v17;
  v28[3] = @"eventId";
  v18 = v11;
  if (!v11)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v29[3] = v18;
  v28[4] = @"eventType";
  v19 = v12;
  if (!v12)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = v19;
  v28[5] = @"data";
  v20 = v14;
  if (!v14)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v29[5] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:{6, v24}];
  if (v14)
  {
    if (v12)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v12)
    {
LABEL_18:
      if (v11)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (v11)
  {
LABEL_19:
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (v8)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!v10)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v8)
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

- (BMIntelligenceFlowTranscriptDatastreamEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v84[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
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
        if (!a4)
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
        v49 = a4;
        a4 = 0;
        *v49 = v48;
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
  v16 = [v6 objectForKeyedSubscript:@"monotonicTimestamp"];
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!a4)
      {
        goto LABEL_32;
      }

      v66 = objc_alloc(MEMORY[0x1E696ABC0]);
      v29 = *MEMORY[0x1E698F240];
      v81 = *MEMORY[0x1E696A578];
      v30 = a4;
      v31 = v8;
      v32 = objc_alloc(MEMORY[0x1E696AEC0]);
      v52 = objc_opt_class();
      v33 = v32;
      v8 = v31;
      v68 = [v33 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v52, @"monotonicTimestamp"];
      v82 = v68;
      v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
      *v30 = [v66 initWithDomain:v29 code:2 userInfo:v34];

      a4 = 0;
      goto LABEL_30;
    }

    v24 = v16;
    v70 = 0;
    v68 = [[BMMonotonicTimestamp alloc] initWithJSONDictionary:v24 error:&v70];
    v27 = v70;
    if (v27)
    {
      if (a4)
      {
        v27 = v27;
        *a4 = v27;
      }

      a4 = 0;
      goto LABEL_31;
    }
  }

  else
  {
    v68 = 0;
  }

  v17 = [v6 objectForKeyedSubscript:@"identifiers"];
  if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v64 = 0;
    v65 = self;
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
      if (a4)
      {
        v28 = v28;
        *a4 = v28;
      }

      a4 = 0;
      goto LABEL_28;
    }

    v65 = self;

LABEL_15:
    v18 = [v6 objectForKeyedSubscript:@"eventId"];
    v63 = v8;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
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
        v42 = a4;
        a4 = 0;
        *v42 = v41;
LABEL_26:

        v23 = v61;
        v8 = v63;
LABEL_27:

        self = v65;
        goto LABEL_28;
      }

      v61 = v18;
    }

    else
    {
      v61 = 0;
    }

    v19 = [v6 objectForKeyedSubscript:@"eventType"];
    if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v20 = 0;
          goto LABEL_26;
        }

        v55 = objc_alloc(MEMORY[0x1E696ABC0]);
        v58 = a4;
        v43 = *MEMORY[0x1E698F240];
        v75 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventType"];
        v76 = v22;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
        v44 = [v55 initWithDomain:v43 code:2 userInfo:v21];
        v20 = 0;
        a4 = 0;
        *v58 = v44;
        goto LABEL_25;
      }

      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v6 objectForKeyedSubscript:@"data"];
    if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v22 = 0;
LABEL_24:
      a4 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)v65 initWithAbsoluteTimestamp:v63 monotonicTimestamp:v68 identifiers:v64 eventId:v61 eventType:v20 data:v22];
      v65 = a4;
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

      if (a4)
      {
        v59 = objc_alloc(MEMORY[0x1E696ABC0]);
        v56 = *MEMORY[0x1E698F240];
        v73 = *MEMORY[0x1E696A578];
        v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"data"];
        v74 = v54;
        v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
        *a4 = [v59 initWithDomain:v56 code:2 userInfo:v45];

LABEL_72:
        v22 = 0;
        a4 = 0;
        goto LABEL_25;
      }
    }

    else if (a4)
    {
      v60 = objc_alloc(MEMORY[0x1E696ABC0]);
      v57 = *MEMORY[0x1E698F240];
      v71 = *MEMORY[0x1E696A578];
      v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"data"];
      v72 = v54;
      [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
      v51 = v50 = a4;
      *v50 = [v60 initWithDomain:v57 code:2 userInfo:v51];

      goto LABEL_72;
    }

    v22 = 0;
    goto LABEL_25;
  }

  if (!a4)
  {
    a4 = 0;
    goto LABEL_29;
  }

  v35 = a4;
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
  a4 = 0;
  *v35 = [v67 initWithDomain:v62 code:2 userInfo:v23];
LABEL_28:

LABEL_29:
LABEL_30:
  v24 = v16;
LABEL_31:

  v16 = v24;
LABEL_32:

LABEL_33:
  v25 = *MEMORY[0x1E69E9840];
  return a4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_monotonicTimestamp)
  {
    PBDataWriterPlaceMark();
    [(BMMonotonicTimestamp *)self->_monotonicTimestamp writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_identifiers)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceFlowIdentifiers *)self->_identifiers writeTo:v4];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = BMIntelligenceFlowTranscriptDatastreamEvent;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_46;
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
        LOBYTE(v29) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v29 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
        v20 = [v4 position] + 8;
        if (v20 >= [v4 position] && (v21 = objc_msgSend(v4, "position") + 8, v21 <= objc_msgSend(v4, "length")))
        {
          v24 = [v4 data];
          [v24 getBytes:&v29 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
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

          v16 = [[BMMonotonicTimestamp alloc] initByReadFrom:v4];
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

          v16 = [[BMIntelligenceFlowIdentifiers alloc] initByReadFrom:v4];
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
      v25 = [v4 position];
    }

    while (v25 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self absoluteTimestamp];
  v5 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self monotonicTimestamp];
  v6 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self identifiers];
  v7 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventId];
  v8 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self eventType];
  v9 = [(BMIntelligenceFlowTranscriptDatastreamEvent *)self data];
  v10 = [v3 initWithFormat:@"BMIntelligenceFlowTranscriptDatastreamEvent with absoluteTimestamp: %@, monotonicTimestamp: %@, identifiers: %@, eventId: %@, eventType: %@, data: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMIntelligenceFlowTranscriptDatastreamEvent)initWithAbsoluteTimestamp:(id)a3 monotonicTimestamp:(id)a4 identifiers:(id)a5 eventId:(id)a6 eventType:(id)a7 data:(id)a8
{
  v14 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v23.receiver = self;
  v23.super_class = BMIntelligenceFlowTranscriptDatastreamEvent;
  v18 = [(BMEventBase *)&v23 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v18->_hasRaw_absoluteTimestamp = 1;
      [v14 timeIntervalSinceReferenceDate];
    }

    else
    {
      v18->_hasRaw_absoluteTimestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_absoluteTimestamp = v19;
    objc_storeStrong(&v18->_monotonicTimestamp, a4);
    objc_storeStrong(&v18->_identifiers, a5);
    objc_storeStrong(&v18->_eventId, a6);
    objc_storeStrong(&v18->_eventType, a7);
    objc_storeStrong(&v18->_data, a8);
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