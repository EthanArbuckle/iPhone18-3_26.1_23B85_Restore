@interface BMSiriSELFProcessedEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriSELFProcessedEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMSiriSELFProcessedEvent)initWithLogicalTimestamp:(id)a3 clusterRepresentativeId:(id)a4 componentId:(id)a5 anyEventType:(id)a6 innerType:(id)a7 messageUuid:(id)a8 eventData:(id)a9;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (NSUUID)messageUuid;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriSELFProcessedEvent *)self logicalTimestamp];
    v7 = [v5 logicalTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriSELFProcessedEvent *)self logicalTimestamp];
      v10 = [v5 logicalTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    v13 = [(BMSiriSELFProcessedEvent *)self clusterRepresentativeId];
    v14 = [v5 clusterRepresentativeId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriSELFProcessedEvent *)self clusterRepresentativeId];
      v17 = [v5 clusterRepresentativeId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_27;
      }
    }

    v19 = [(BMSiriSELFProcessedEvent *)self componentId];
    v20 = [v5 componentId];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriSELFProcessedEvent *)self componentId];
      v23 = [v5 componentId];
      v24 = [v22 isEqual:v23];

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

      v25 = [(BMSiriSELFProcessedEvent *)self anyEventType];
      if (v25 != [v5 anyEventType])
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

      v26 = [(BMSiriSELFProcessedEvent *)self innerType];
      if (v26 != [v5 innerType])
      {
        goto LABEL_27;
      }
    }

    v27 = [(BMSiriSELFProcessedEvent *)self messageUuid];
    v28 = [v5 messageUuid];
    v29 = v28;
    if (v27 == v28)
    {
    }

    else
    {
      v30 = [(BMSiriSELFProcessedEvent *)self messageUuid];
      v31 = [v5 messageUuid];
      v32 = [v30 isEqual:v31];

      if (!v32)
      {
LABEL_27:
        v12 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    v34 = [(BMSiriSELFProcessedEvent *)self eventData];
    v35 = [v5 eventData];
    if (v34 == v35)
    {
      v12 = 1;
    }

    else
    {
      v36 = [(BMSiriSELFProcessedEvent *)self eventData];
      v37 = [v5 eventData];
      v12 = [v36 isEqual:v37];
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
  v3 = [(BMSiriSELFProcessedEvent *)self logicalTimestamp];
  v4 = [v3 jsonDictionary];

  v5 = [(BMSiriSELFProcessedEvent *)self clusterRepresentativeId];
  v6 = [v5 jsonDictionary];

  v7 = [(BMSiriSELFProcessedEvent *)self componentId];
  v8 = [v7 jsonDictionary];

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

  v10 = [(BMSiriSELFProcessedEvent *)self messageUuid];
  v11 = [v10 UUIDString];

  v12 = [(BMSiriSELFProcessedEvent *)self eventData];
  v13 = [v12 base64EncodedStringWithOptions:0];

  v29[0] = @"logicalTimestamp";
  v14 = v4;
  if (!v4)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25 = v14;
  v30[0] = v14;
  v29[1] = @"clusterRepresentativeId";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v15;
  v30[1] = v15;
  v29[2] = @"componentId";
  v16 = v8;
  if (!v8)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v4;
  v30[2] = v16;
  v29[3] = @"anyEventType";
  v17 = v28;
  if (!v28)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v6;
  v30[3] = v17;
  v29[4] = @"innerType";
  v18 = v9;
  if (!v9)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v30[4] = v18;
  v29[5] = @"messageUuid";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v30[5] = v19;
  v29[6] = @"eventData";
  v20 = v13;
  if (!v13)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v30[6] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:7];
  if (v13)
  {
    if (v11)
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

  if (!v11)
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

  if (v8)
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

- (BMSiriSELFProcessedEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v106[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"logicalTimestamp"];
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
      if (a4)
      {
        v19 = v19;
        *a4 = v19;
      }

      goto LABEL_55;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"clusterRepresentativeId"];
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
        if (a4)
        {
          v20 = v20;
          *a4 = v20;
        }

        v21 = 0;
        goto LABEL_48;
      }

LABEL_7:
      v11 = [v6 objectForKeyedSubscript:@"componentId"];
      v84 = self;
      v85 = v6;
      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
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
          *a4 = [v43 initWithDomain:v48 code:2 userInfo:v22];
          v12 = v84;
          goto LABEL_47;
        }

        v22 = v11;
        v86 = 0;
        v23 = [[BMSiriSELFProcessedEventComponentIdentifier alloc] initWithJSONDictionary:v22 error:&v86];
        v24 = v86;
        if (v24)
        {
          v12 = v84;
          if (a4)
          {
            v24 = v24;
            *a4 = v24;
          }

          v21 = 0;
          goto LABEL_47;
        }

        v63 = v22;
        v13 = v9;
        v14 = v7;
        v15 = v11;
        v81 = v23;

        v12 = v84;
      }

      else
      {
        v12 = self;
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
          if (!a4)
          {
            v80 = 0;
            v21 = 0;
            v23 = v81;
            v11 = v15;
            v7 = v14;
            v9 = v13;
            goto LABEL_46;
          }

          v49 = a4;
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
          *v49 = [v50 initWithDomain:v53 code:2 userInfo:v18];
          v23 = v81;
          v11 = v15;
          v7 = v14;
          v9 = v13;
LABEL_45:

          v8 = v82;
LABEL_46:

          v22 = v80;
LABEL_47:

          self = v12;
          v6 = v85;
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
            if (!a4)
            {
              v79 = 0;
              v21 = 0;
              v23 = v81;
              goto LABEL_45;
            }

            v54 = objc_alloc(MEMORY[0x1E696ABC0]);
            v55 = *MEMORY[0x1E698F240];
            v97 = *MEMORY[0x1E696A578];
            v56 = a4;
            v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"innerType"];
            v98 = v30;
            v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
            v57 = [v54 initWithDomain:v55 code:2 userInfo:v31];
            v79 = 0;
            v21 = 0;
            *v56 = v57;
            goto LABEL_43;
          }

          v75 = a4;
          v79 = v18;
LABEL_35:
          v30 = [v85 objectForKeyedSubscript:@"messageUuid"];
          if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v21 = v75;
              if (!v75)
              {
                goto LABEL_44;
              }

              v58 = objc_alloc(MEMORY[0x1E696ABC0]);
              v59 = *MEMORY[0x1E698F240];
              v93 = *MEMORY[0x1E696A578];
              v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"messageUuid"];
              v94 = v31;
              v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
              *v75 = [v58 initWithDomain:v59 code:2 userInfo:v60];

              v21 = 0;
LABEL_43:

              v12 = v84;
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
              if (v75)
              {
                v66 = objc_alloc(MEMORY[0x1E696ABC0]);
                v67 = *MEMORY[0x1E698F240];
                v95 = *MEMORY[0x1E696A578];
                v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"messageUuid"];
                v96 = v68;
                v69 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
                *v75 = [v66 initWithDomain:v67 code:2 userInfo:v69];
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

                if (v75)
                {
                  v73 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v71 = *MEMORY[0x1E698F240];
                  v91 = *MEMORY[0x1E696A578];
                  v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"eventData"];
                  v92 = v61;
                  v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
                  *v75 = [v73 initWithDomain:v71 code:2 userInfo:v62];
                }
              }

              else if (v75)
              {
                v74 = objc_alloc(MEMORY[0x1E696ABC0]);
                v72 = *MEMORY[0x1E698F240];
                v89 = *MEMORY[0x1E696A578];
                v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", objc_opt_class(), @"eventData"];
                v90 = v64;
                v65 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
                *v75 = [v74 initWithDomain:v72 code:2 userInfo:v65];
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
          v21 = [(BMSiriSELFProcessedEvent *)v84 initWithLogicalTimestamp:v82 clusterRepresentativeId:v77 componentId:v81 anyEventType:v80 innerType:v79 messageUuid:v31 eventData:v34];
          v84 = v21;
LABEL_42:

          goto LABEL_43;
        }

        v75 = a4;
        v79 = 0;
      }

      else
      {
        v75 = a4;
        v79 = 0;
        v7 = v14;
      }

      v9 = v13;
      goto LABEL_35;
    }

    if (a4)
    {
      v76 = a4;
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
      *v76 = [v37 initWithDomain:v40 code:2 userInfo:v11];
      goto LABEL_48;
    }

LABEL_55:
    v21 = 0;
    goto LABEL_49;
  }

  if (!a4)
  {
    v21 = 0;
    goto LABEL_50;
  }

  v25 = a4;
  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
  v27 = *MEMORY[0x1E698F240];
  v105 = *MEMORY[0x1E696A578];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"logicalTimestamp"];
  v106[0] = v28;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:&v105 count:1];
  v29 = v27;
  v8 = v28;
  v21 = 0;
  *v25 = [v26 initWithDomain:v29 code:2 userInfo:v9];
LABEL_49:

LABEL_50:
  v35 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriSELFProcessedEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_logicalTimestamp)
  {
    PBDataWriterPlaceMark();
    [(BMSiriSELFProcessedEventLogicalTimestamp *)self->_logicalTimestamp writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_clusterRepresentativeId)
  {
    PBDataWriterPlaceMark();
    [(BMSiriSELFProcessedEventComponentIdentifier *)self->_clusterRepresentativeId writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_componentId)
  {
    PBDataWriterPlaceMark();
    [(BMSiriSELFProcessedEventComponentIdentifier *)self->_componentId writeTo:v4];
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

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v39.receiver = self;
  v39.super_class = BMSiriSELFProcessedEvent;
  v5 = [(BMEventBase *)&v39 init];
  if (!v5)
  {
    goto LABEL_73;
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
        LOBYTE(v40) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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

            v23 = [[BMSiriSELFProcessedEventLogicalTimestamp alloc] initByReadFrom:v4];
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

            v23 = [[BMSiriSELFProcessedEventComponentIdentifier alloc] initByReadFrom:v4];
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

            v23 = [[BMSiriSELFProcessedEventComponentIdentifier alloc] initByReadFrom:v4];
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
            v30 = [v4 position] + 1;
            if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
            {
              v32 = [v4 data];
              [v32 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
            v19 = [v4 position] + 1;
            if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
            {
              v21 = [v4 data];
              [v21 getBytes:&v40 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
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

          if ([v4 hasError])
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
      v36 = [v4 position];
    }

    while (v36 < [v4 length]);
  }

  if ([v4 hasError])
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
  v4 = [(BMSiriSELFProcessedEvent *)self logicalTimestamp];
  v5 = [(BMSiriSELFProcessedEvent *)self clusterRepresentativeId];
  v6 = [(BMSiriSELFProcessedEvent *)self componentId];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSELFProcessedEvent anyEventType](self, "anyEventType")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSiriSELFProcessedEvent innerType](self, "innerType")}];
  v9 = [(BMSiriSELFProcessedEvent *)self messageUuid];
  v10 = [(BMSiriSELFProcessedEvent *)self eventData];
  v11 = [v3 initWithFormat:@"BMSiriSELFProcessedEvent with logicalTimestamp: %@, clusterRepresentativeId: %@, componentId: %@, anyEventType: %@, innerType: %@, messageUuid: %@, eventData: %@", v4, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (BMSiriSELFProcessedEvent)initWithLogicalTimestamp:(id)a3 clusterRepresentativeId:(id)a4 componentId:(id)a5 anyEventType:(id)a6 innerType:(id)a7 messageUuid:(id)a8 eventData:(id)a9
{
  v31[2] = *MEMORY[0x1E69E9840];
  v29 = a3;
  v28 = a4;
  v27 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v30.receiver = self;
  v30.super_class = BMSiriSELFProcessedEvent;
  v20 = [(BMEventBase *)&v30 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_logicalTimestamp, a3);
    objc_storeStrong(&v20->_clusterRepresentativeId, a4);
    objc_storeStrong(&v20->_componentId, a5);
    if (v16)
    {
      v20->_hasAnyEventType = 1;
      v21 = [v16 intValue];
    }

    else
    {
      v20->_hasAnyEventType = 0;
      v21 = -1;
    }

    v20->_anyEventType = v21;
    if (v17)
    {
      v20->_hasInnerType = 1;
      v22 = [v17 intValue];
    }

    else
    {
      v20->_hasInnerType = 0;
      v22 = -1;
    }

    v20->_innerType = v22;
    if (v18)
    {
      v31[0] = 0;
      v31[1] = 0;
      [v18 getUUIDBytes:v31];
      v23 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v31 length:16];
      raw_messageUuid = v20->_raw_messageUuid;
      v20->_raw_messageUuid = v23;
    }

    else
    {
      raw_messageUuid = v20->_raw_messageUuid;
      v20->_raw_messageUuid = 0;
    }

    objc_storeStrong(&v20->_eventData, a9);
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