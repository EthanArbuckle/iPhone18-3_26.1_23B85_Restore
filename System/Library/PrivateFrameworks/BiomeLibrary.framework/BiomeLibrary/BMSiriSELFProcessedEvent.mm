@interface BMSiriSELFProcessedEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSiriSELFProcessedEvent)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSiriSELFProcessedEvent)initWithLogicalTimestamp:(id)timestamp clusterRepresentativeId:(id)id componentId:(id)componentId anyEventType:(id)type innerType:(id)innerType messageUuid:(id)uuid eventData:(id)data;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSUUID)messageUuid;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSiriSELFProcessedEvent

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"logicalTimestamp_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_24694];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"clusterRepresentativeId_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_203];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"componentId_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_205_24695];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"anyEventType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"innerType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"messageUuid" dataType:6 requestOnly:0 fieldNumber:6 protoDataType:14 convertedType:3];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventData" dataType:4 requestOnly:0 fieldNumber:7 protoDataType:14 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    logicalTimestamp = [(BMSiriSELFProcessedEvent *)self logicalTimestamp];
    logicalTimestamp2 = [v5 logicalTimestamp];
    v8 = logicalTimestamp2;
    if (logicalTimestamp == logicalTimestamp2)
    {
    }

    else
    {
      logicalTimestamp3 = [(BMSiriSELFProcessedEvent *)self logicalTimestamp];
      logicalTimestamp4 = [v5 logicalTimestamp];
      v11 = [logicalTimestamp3 isEqual:logicalTimestamp4];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    clusterRepresentativeId = [(BMSiriSELFProcessedEvent *)self clusterRepresentativeId];
    clusterRepresentativeId2 = [v5 clusterRepresentativeId];
    v15 = clusterRepresentativeId2;
    if (clusterRepresentativeId == clusterRepresentativeId2)
    {
    }

    else
    {
      clusterRepresentativeId3 = [(BMSiriSELFProcessedEvent *)self clusterRepresentativeId];
      clusterRepresentativeId4 = [v5 clusterRepresentativeId];
      v18 = [clusterRepresentativeId3 isEqual:clusterRepresentativeId4];

      if (!v18)
      {
        goto LABEL_27;
      }
    }

    componentId = [(BMSiriSELFProcessedEvent *)self componentId];
    componentId2 = [v5 componentId];
    v21 = componentId2;
    if (componentId == componentId2)
    {
    }

    else
    {
      componentId3 = [(BMSiriSELFProcessedEvent *)self componentId];
      componentId4 = [v5 componentId];
      v24 = [componentId3 isEqual:componentId4];

      if (!v24)
      {
        goto LABEL_27;
      }
    }

    if (-[BMSiriSELFProcessedEvent hasAnyEventType](self, "hasAnyEventType") || [v5 hasAnyEventType])
    {
      if (![(BMSiriSELFProcessedEvent *)self hasAnyEventType])
      {
        goto LABEL_27;
      }

      if (![v5 hasAnyEventType])
      {
        goto LABEL_27;
      }

      anyEventType = [(BMSiriSELFProcessedEvent *)self anyEventType];
      if (anyEventType != [v5 anyEventType])
      {
        goto LABEL_27;
      }
    }

    if (-[BMSiriSELFProcessedEvent hasInnerType](self, "hasInnerType") || [v5 hasInnerType])
    {
      if (![(BMSiriSELFProcessedEvent *)self hasInnerType])
      {
        goto LABEL_27;
      }

      if (![v5 hasInnerType])
      {
        goto LABEL_27;
      }

      innerType = [(BMSiriSELFProcessedEvent *)self innerType];
      if (innerType != [v5 innerType])
      {
        goto LABEL_27;
      }
    }

    messageUuid = [(BMSiriSELFProcessedEvent *)self messageUuid];
    messageUuid2 = [v5 messageUuid];
    v29 = messageUuid2;
    if (messageUuid == messageUuid2)
    {
    }

    else
    {
      messageUuid3 = [(BMSiriSELFProcessedEvent *)self messageUuid];
      messageUuid4 = [v5 messageUuid];
      v32 = [messageUuid3 isEqual:messageUuid4];

      if (!v32)
      {
LABEL_27:
        v12 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    eventData = [(BMSiriSELFProcessedEvent *)self eventData];
    eventData2 = [v5 eventData];
    if (eventData == eventData2)
    {
      v12 = 1;
    }

    else
    {
      eventData3 = [(BMSiriSELFProcessedEvent *)self eventData];
      eventData4 = [v5 eventData];
      v12 = [eventData3 isEqual:eventData4];
    }

    goto LABEL_28;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (NSUUID)messageUuid
{
  raw_messageUuid = self->_raw_messageUuid;
  if (raw_messageUuid)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_messageUuid toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v30[7] = *MEMORY[0x1E69E9840];
  logicalTimestamp = [(BMSiriSELFProcessedEvent *)self logicalTimestamp];
  jsonDictionary = [logicalTimestamp jsonDictionary];

  clusterRepresentativeId = [(BMSiriSELFProcessedEvent *)self clusterRepresentativeId];
  jsonDictionary2 = [clusterRepresentativeId jsonDictionary];

  componentId = [(BMSiriSELFProcessedEvent *)self componentId];
  jsonDictionary3 = [componentId jsonDictionary];

  if ([(BMSiriSELFProcessedEvent *)self hasAnyEventType])
  {
    v28 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSELFProcessedEvent anyEventType](self, "anyEventType")}];
  }

  else
  {
    v28 = 0;
  }

  if ([(BMSiriSELFProcessedEvent *)self hasInnerType])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSELFProcessedEvent innerType](self, "innerType")}];
  }

  else
  {
    v9 = 0;
  }

  messageUuid = [(BMSiriSELFProcessedEvent *)self messageUuid];
  uUIDString = [messageUuid UUIDString];

  eventData = [(BMSiriSELFProcessedEvent *)self eventData];
  v13 = [eventData base64EncodedStringWithOptions:0];

  v29[0] = @"logicalTimestamp";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v25 = null;
  v30[0] = null;
  v29[1] = @"clusterRepresentativeId";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = null2;
  v30[1] = null2;
  v29[2] = @"componentId";
  null3 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = jsonDictionary;
  v30[2] = null3;
  v29[3] = @"anyEventType";
  null4 = v28;
  if (!v28)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = jsonDictionary2;
  v30[3] = null4;
  v29[4] = @"innerType";
  null5 = v9;
  if (!v9)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = null5;
  v29[5] = @"messageUuid";
  null6 = uUIDString;
  if (!uUIDString)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = null6;
  v29[6] = @"eventData";
  null7 = v13;
  if (!v13)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = null7;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:7];
  if (v13)
  {
    if (uUIDString)
    {
      goto LABEL_23;
    }

LABEL_33:

    if (v9)
    {
      goto LABEL_24;
    }

    goto LABEL_34;
  }

  if (!uUIDString)
  {
    goto LABEL_33;
  }

LABEL_23:
  if (v9)
  {
    goto LABEL_24;
  }

LABEL_34:

LABEL_24:
  if (!v28)
  {
  }

  if (jsonDictionary3)
  {
    if (v26)
    {
      goto LABEL_28;
    }

LABEL_36:

    if (v27)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if (!v26)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v27)
  {
    goto LABEL_29;
  }

LABEL_37:

LABEL_29:
  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BMSiriSELFProcessedEvent)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v106[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"logicalTimestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v88 = 0;
    v8 = [[BMSiriSELFProcessedEventLogicalTimestamp alloc] initWithJSONDictionary:v9 error:&v88];
    v19 = v88;
    if (v19)
    {
      if (error)
      {
        v19 = v19;
        *error = v19;
      }

      goto LABEL_55;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"clusterRepresentativeId"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v10 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v9;
      v87 = 0;
      v10 = [[BMSiriSELFProcessedEventComponentIdentifier alloc] initWithJSONDictionary:v11 error:&v87];
      v20 = v87;
      if (v20)
      {
        if (error)
        {
          v20 = v20;
          *error = v20;
        }

        v21 = 0;
        goto LABEL_48;
      }

LABEL_7:
      v11 = [dictionaryCopy objectForKeyedSubscript:@"componentId"];
      selfCopy = self;
      v85 = dictionaryCopy;
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v21 = 0;
            goto LABEL_48;
          }

          v43 = objc_alloc(MEMORY[0x1E696ABC0]);
          v83 = v8;
          v44 = *MEMORY[0x1E698F240];
          v101 = *MEMORY[0x1E696A578];
          v45 = v10;
          v46 = objc_alloc(MEMORY[0x1E696AEC0]);
          v70 = objc_opt_class();
          v47 = v46;
          v10 = v45;
          v23 = [v47 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v70, @"componentId"];
          v102 = v23;
          v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
          v48 = v44;
          v8 = v83;
          v21 = 0;
          *error = [v43 initWithDomain:v48 code:2 userInfo:v22];
          selfCopy2 = selfCopy;
          goto LABEL_47;
        }

        v22 = v11;
        v86 = 0;
        v23 = [[BMSiriSELFProcessedEventComponentIdentifier alloc] initWithJSONDictionary:v22 error:&v86];
        v24 = v86;
        if (v24)
        {
          selfCopy2 = selfCopy;
          if (error)
          {
            v24 = v24;
            *error = v24;
          }

          v21 = 0;
          goto LABEL_47;
        }

        v63 = v22;
        v13 = v9;
        v14 = v7;
        v15 = v11;
        v81 = v23;

        selfCopy2 = selfCopy;
      }

      else
      {
        selfCopy2 = self;
        v13 = v9;
        v14 = v7;
        v15 = v11;
        v81 = 0;
      }

      v16 = [v85 objectForKeyedSubscript:@"anyEventType"];
      v82 = v8;
      v78 = v16;
      if (v16 && (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v80 = 0;
            v21 = 0;
            v23 = v81;
            v11 = v15;
            v7 = v14;
            v9 = v13;
            goto LABEL_46;
          }

          errorCopy = error;
          v50 = objc_alloc(MEMORY[0x1E696ABC0]);
          v51 = v10;
          v52 = *MEMORY[0x1E698F240];
          v99 = *MEMORY[0x1E696A578];
          v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"anyEventType"];
          v100 = v79;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
          v53 = v52;
          v10 = v51;
          v80 = 0;
          v21 = 0;
          *errorCopy = [v50 initWithDomain:v53 code:2 userInfo:v18];
          v23 = v81;
          v11 = v15;
          v7 = v14;
          v9 = v13;
LABEL_45:

          v8 = v82;
LABEL_46:

          v22 = v80;
LABEL_47:

          self = selfCopy2;
          dictionaryCopy = v85;
LABEL_48:

          goto LABEL_49;
        }

        v80 = v17;
      }

      else
      {
        v80 = 0;
      }

      v18 = [v85 objectForKeyedSubscript:@"innerType"];
      v11 = v15;
      v77 = v10;
      if (v18)
      {
        objc_opt_class();
        v7 = v14;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          v9 = v13;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!error)
            {
              v79 = 0;
              v21 = 0;
              v23 = v81;
              goto LABEL_45;
            }

            v54 = objc_alloc(MEMORY[0x1E696ABC0]);
            v55 = *MEMORY[0x1E698F240];
            v97 = *MEMORY[0x1E696A578];
            errorCopy2 = error;
            v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"innerType"];
            v98 = v30;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
            v57 = [v54 initWithDomain:v55 code:2 userInfo:v31];
            v79 = 0;
            v21 = 0;
            *errorCopy2 = v57;
            goto LABEL_43;
          }

          errorCopy5 = error;
          v79 = v18;
LABEL_35:
          v30 = [v85 objectForKeyedSubscript:@"messageUuid"];
          if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v21 = errorCopy5;
              if (!errorCopy5)
              {
                goto LABEL_44;
              }

              v58 = objc_alloc(MEMORY[0x1E696ABC0]);
              v59 = *MEMORY[0x1E698F240];
              v93 = *MEMORY[0x1E696A578];
              v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messageUuid"];
              v94 = v31;
              v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
              *errorCopy5 = [v58 initWithDomain:v59 code:2 userInfo:v60];

              v21 = 0;
LABEL_43:

              selfCopy2 = selfCopy;
              v10 = v77;
LABEL_44:
              v23 = v81;

              goto LABEL_45;
            }

            v31 = v30;
            v41 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v31];
            v32 = v85;
            if (!v41)
            {
              if (errorCopy5)
              {
                v66 = objc_alloc(MEMORY[0x1E696ABC0]);
                v67 = *MEMORY[0x1E698F240];
                v95 = *MEMORY[0x1E696A578];
                v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"messageUuid"];
                v96 = v68;
                v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
                *errorCopy5 = [v66 initWithDomain:v67 code:2 userInfo:v69];
              }

              v21 = 0;
              v30 = v31;
              goto LABEL_43;
            }

            v42 = v41;

            v31 = v42;
          }

          else
          {
            v31 = 0;
            v32 = v85;
          }

          v33 = [v32 objectForKeyedSubscript:@"eventData"];
          if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v34 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v33 options:0];
                if (v34)
                {
                  goto LABEL_41;
                }

                if (errorCopy5)
                {
                  v73 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v71 = *MEMORY[0x1E698F240];
                  v91 = *MEMORY[0x1E696A578];
                  v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"eventData"];
                  v92 = v61;
                  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
                  *errorCopy5 = [v73 initWithDomain:v71 code:2 userInfo:v62];
                }
              }

              else if (errorCopy5)
              {
                v74 = objc_alloc(MEMORY[0x1E696ABC0]);
                v72 = *MEMORY[0x1E698F240];
                v89 = *MEMORY[0x1E696A578];
                v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"eventData"];
                v90 = v64;
                v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
                *errorCopy5 = [v74 initWithDomain:v72 code:2 userInfo:v65];
              }

              v34 = 0;
              v21 = 0;
              goto LABEL_42;
            }

            v34 = v33;
          }

          else
          {
            v34 = 0;
          }

LABEL_41:
          v21 = [(BMSiriSELFProcessedEvent *)selfCopy initWithLogicalTimestamp:v82 clusterRepresentativeId:v77 componentId:v81 anyEventType:v80 innerType:v79 messageUuid:v31 eventData:v34];
          selfCopy = v21;
LABEL_42:

          goto LABEL_43;
        }

        errorCopy5 = error;
        v79 = 0;
      }

      else
      {
        errorCopy5 = error;
        v79 = 0;
        v7 = v14;
      }

      v9 = v13;
      goto LABEL_35;
    }

    if (error)
    {
      errorCopy6 = error;
      v37 = objc_alloc(MEMORY[0x1E696ABC0]);
      v38 = v8;
      v39 = *MEMORY[0x1E698F240];
      v103 = *MEMORY[0x1E696A578];
      v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"clusterRepresentativeId"];
      v10 = v104;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v40 = v39;
      v8 = v38;
      v21 = 0;
      *errorCopy6 = [v37 initWithDomain:v40 code:2 userInfo:v11];
      goto LABEL_48;
    }

LABEL_55:
    v21 = 0;
    goto LABEL_49;
  }

  if (!error)
  {
    v21 = 0;
    goto LABEL_50;
  }

  errorCopy7 = error;
  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
  v27 = *MEMORY[0x1E698F240];
  v105 = *MEMORY[0x1E696A578];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"logicalTimestamp"];
  v106[0] = v28;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
  v29 = v27;
  v8 = v28;
  v21 = 0;
  *errorCopy7 = [v26 initWithDomain:v29 code:2 userInfo:v9];
LABEL_49:

LABEL_50:
  v35 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriSELFProcessedEvent *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_logicalTimestamp)
  {
    PBDataWriterPlaceMark();
    [(BMSiriSELFProcessedEventLogicalTimestamp *)self->_logicalTimestamp writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_clusterRepresentativeId)
  {
    PBDataWriterPlaceMark();
    [(BMSiriSELFProcessedEventComponentIdentifier *)self->_clusterRepresentativeId writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_componentId)
  {
    PBDataWriterPlaceMark();
    [(BMSiriSELFProcessedEventComponentIdentifier *)self->_componentId writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasAnyEventType)
  {
    anyEventType = self->_anyEventType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasInnerType)
  {
    innerType = self->_innerType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_raw_messageUuid)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_eventData)
  {
    PBDataWriterWriteDataField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v39.receiver = self;
  v39.super_class = BMSiriSELFProcessedEvent;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_73;
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
        LOBYTE(v40) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v40 & 0x7F) << v7;
        if ((v40 & 0x80) == 0)
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        switch(v15)
        {
          case 1:
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_72;
            }

            v23 = [[BMSiriSELFProcessedEventLogicalTimestamp alloc] initByReadFrom:fromCopy];
            if (!v23)
            {
              goto LABEL_72;
            }

            v24 = 40;
            break;
          case 2:
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_72;
            }

            v23 = [[BMSiriSELFProcessedEventComponentIdentifier alloc] initByReadFrom:fromCopy];
            if (!v23)
            {
              goto LABEL_72;
            }

            v24 = 48;
            break;
          case 3:
            v40 = 0;
            v41 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_72;
            }

            v23 = [[BMSiriSELFProcessedEventComponentIdentifier alloc] initByReadFrom:fromCopy];
            if (!v23)
            {
              goto LABEL_72;
            }

            v24 = 56;
            break;
          default:
            goto LABEL_43;
        }

        v34 = *(&v5->super.super.isa + v24);
        *(&v5->super.super.isa + v24) = v23;

        PBReaderRecallMark();
      }

      else if (v15 > 5)
      {
        if (v15 == 6)
        {
          v33 = PBReaderReadData();
          if ([(NSData *)v33 length]!= 16)
          {

            goto LABEL_72;
          }

          raw_messageUuid = v5->_raw_messageUuid;
          v5->_raw_messageUuid = v33;
        }

        else
        {
          if (v15 != 7)
          {
LABEL_43:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_72;
            }

            goto LABEL_70;
          }

          v25 = PBReaderReadData();
          raw_messageUuid = v5->_eventData;
          v5->_eventData = v25;
        }
      }

      else
      {
        if (v15 == 4)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v5->_hasAnyEventType = 1;
          while (1)
          {
            LOBYTE(v40) = 0;
            v30 = [fromCopy position] + 1;
            if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v29 |= (v40 & 0x7F) << v27;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v13 = v28++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_64;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v29;
          }

LABEL_64:
          v35 = 32;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_43;
          }

          v16 = 0;
          v17 = 0;
          v18 = 0;
          v5->_hasInnerType = 1;
          while (1)
          {
            LOBYTE(v40) = 0;
            v19 = [fromCopy position] + 1;
            if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v40 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v18 |= (v40 & 0x7F) << v16;
            if ((v40 & 0x80) == 0)
            {
              break;
            }

            v16 += 7;
            v13 = v17++ >= 9;
            if (v13)
            {
              v22 = 0;
              goto LABEL_68;
            }
          }

          if ([fromCopy hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v18;
          }

LABEL_68:
          v35 = 36;
        }

        *(&v5->super.super.isa + v35) = v22;
      }

LABEL_70:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_72:
    v37 = 0;
  }

  else
  {
LABEL_73:
    v37 = v5;
  }

  return v37;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  logicalTimestamp = [(BMSiriSELFProcessedEvent *)self logicalTimestamp];
  clusterRepresentativeId = [(BMSiriSELFProcessedEvent *)self clusterRepresentativeId];
  componentId = [(BMSiriSELFProcessedEvent *)self componentId];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSELFProcessedEvent anyEventType](self, "anyEventType")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSELFProcessedEvent innerType](self, "innerType")}];
  messageUuid = [(BMSiriSELFProcessedEvent *)self messageUuid];
  eventData = [(BMSiriSELFProcessedEvent *)self eventData];
  v11 = [v3 initWithFormat:@"BMSiriSELFProcessedEvent with logicalTimestamp: %@, clusterRepresentativeId: %@, componentId: %@, anyEventType: %@, innerType: %@, messageUuid: %@, eventData: %@", logicalTimestamp, clusterRepresentativeId, componentId, v7, v8, messageUuid, eventData];

  return v11;
}

- (BMSiriSELFProcessedEvent)initWithLogicalTimestamp:(id)timestamp clusterRepresentativeId:(id)id componentId:(id)componentId anyEventType:(id)type innerType:(id)innerType messageUuid:(id)uuid eventData:(id)data
{
  v31[2] = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  idCopy = id;
  componentIdCopy = componentId;
  typeCopy = type;
  innerTypeCopy = innerType;
  uuidCopy = uuid;
  dataCopy = data;
  v30.receiver = self;
  v30.super_class = BMSiriSELFProcessedEvent;
  v20 = [(BMEventBase *)&v30 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_logicalTimestamp, timestamp);
    objc_storeStrong(&v20->_clusterRepresentativeId, id);
    objc_storeStrong(&v20->_componentId, componentId);
    if (typeCopy)
    {
      v20->_hasAnyEventType = 1;
      intValue = [typeCopy intValue];
    }

    else
    {
      v20->_hasAnyEventType = 0;
      intValue = -1;
    }

    v20->_anyEventType = intValue;
    if (innerTypeCopy)
    {
      v20->_hasInnerType = 1;
      intValue2 = [innerTypeCopy intValue];
    }

    else
    {
      v20->_hasInnerType = 0;
      intValue2 = -1;
    }

    v20->_innerType = intValue2;
    if (uuidCopy)
    {
      v31[0] = 0;
      v31[1] = 0;
      [uuidCopy getUUIDBytes:v31];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v31 length:16];
      raw_messageUuid = v20->_raw_messageUuid;
      v20->_raw_messageUuid = v23;
    }

    else
    {
      raw_messageUuid = v20->_raw_messageUuid;
      v20->_raw_messageUuid = 0;
    }

    objc_storeStrong(&v20->_eventData, data);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"logicalTimestamp" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clusterRepresentativeId" number:2 type:14 subMessageClass:{objc_opt_class(), v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"componentId" number:3 type:14 subMessageClass:objc_opt_class()];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"anyEventType" number:4 type:2 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"innerType" number:5 type:2 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"messageUuid" number:6 type:14 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventData" number:7 type:14 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

id __35__BMSiriSELFProcessedEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 componentId];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __35__BMSiriSELFProcessedEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 clusterRepresentativeId];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __35__BMSiriSELFProcessedEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 logicalTimestamp];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMSiriSELFProcessedEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[7] = 0;
    }
  }

  return v4;
}

@end