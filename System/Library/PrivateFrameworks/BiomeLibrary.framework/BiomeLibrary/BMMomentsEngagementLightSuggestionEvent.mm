@interface BMMomentsEngagementLightSuggestionEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEngagementLightSuggestionEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMomentsEngagementLightSuggestionEvent)initWithType:(int)a3 timestamp:(id)a4 fullBundleOrderedSet:(id)a5 clientIdentifier:(id)a6 viewContainerName:(id)a7 deviceType:(int)a8;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)_fullBundleOrderedSetJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEngagementLightSuggestionEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsEngagementLightSuggestionEvent *)self type];
    if (v6 == [v5 type])
    {
      v7 = [(BMMomentsEngagementLightSuggestionEvent *)self timestamp];
      v8 = [v5 timestamp];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMMomentsEngagementLightSuggestionEvent *)self timestamp];
        v11 = [v5 timestamp];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_18;
        }
      }

      v14 = [(BMMomentsEngagementLightSuggestionEvent *)self fullBundleOrderedSet];
      v15 = [v5 fullBundleOrderedSet];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMMomentsEngagementLightSuggestionEvent *)self fullBundleOrderedSet];
        v18 = [v5 fullBundleOrderedSet];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_18;
        }
      }

      v20 = [(BMMomentsEngagementLightSuggestionEvent *)self clientIdentifier];
      v21 = [v5 clientIdentifier];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMMomentsEngagementLightSuggestionEvent *)self clientIdentifier];
        v24 = [v5 clientIdentifier];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_18;
        }
      }

      v26 = [(BMMomentsEngagementLightSuggestionEvent *)self viewContainerName];
      v27 = [v5 viewContainerName];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMMomentsEngagementLightSuggestionEvent *)self viewContainerName];
        v30 = [v5 viewContainerName];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_18;
        }
      }

      v33 = [(BMMomentsEngagementLightSuggestionEvent *)self deviceType];
      v13 = v33 == [v5 deviceType];
      goto LABEL_19;
    }

LABEL_18:
    v13 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v13 = 0;
LABEL_20:

  return v13;
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
  v26[6] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementLightSuggestionEvent type](self, "type")}];
  v4 = [(BMMomentsEngagementLightSuggestionEvent *)self timestamp];
  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    v6 = [(BMMomentsEngagementLightSuggestionEvent *)self timestamp];
    [v6 timeIntervalSince1970];
    v7 = [v5 numberWithDouble:?];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(BMMomentsEngagementLightSuggestionEvent *)self _fullBundleOrderedSetJSONArray];
  v9 = [(BMMomentsEngagementLightSuggestionEvent *)self clientIdentifier];
  v10 = [(BMMomentsEngagementLightSuggestionEvent *)self viewContainerName];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementLightSuggestionEvent deviceType](self, "deviceType")}];
  v25[0] = @"type";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v12;
  v24 = v3;
  v26[0] = v12;
  v25[1] = @"timestamp";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v13;
  v26[1] = v13;
  v25[2] = @"fullBundleOrderedSet";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v14;
  v25[3] = @"clientIdentifier";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v15;
  v25[4] = @"viewContainerName";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v16;
  v25[5] = @"deviceType";
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v10)
    {
LABEL_18:
      if (v9)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }
  }

  if (v9)
  {
LABEL_19:
    if (v8)
    {
      goto LABEL_20;
    }

LABEL_29:

    if (v7)
    {
      goto LABEL_21;
    }

    goto LABEL_30;
  }

LABEL_28:

  if (!v8)
  {
    goto LABEL_29;
  }

LABEL_20:
  if (v7)
  {
    goto LABEL_21;
  }

LABEL_30:

LABEL_21:
  if (!v24)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_fullBundleOrderedSetJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMomentsEngagementLightSuggestionEvent *)self fullBundleOrderedSet];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMomentsEngagementLightSuggestionEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v97[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
  v72 = a4;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a4 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v37 = 0;
          goto LABEL_82;
        }

        v47 = objc_alloc(MEMORY[0x1E696ABC0]);
        v48 = *MEMORY[0x1E698F240];
        v96 = *MEMORY[0x1E696A578];
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
        v97[0] = v10;
        v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];
        v50 = v48;
        v9 = v49;
        a4 = 0;
        v37 = 0;
        *v72 = [v47 initWithDomain:v50 code:2 userInfo:v49];
        goto LABEL_81;
      }

      a4 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementLightSuggestionTypeFromString(v7)];
    }
  }

  else
  {
    a4 = 0;
  }

  v8 = [v6 objectForKeyedSubscript:@"timestamp"];
  v73 = a4;
  v70 = v8;
  v71 = v7;
  if (!v8 || (v9 = v8, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v10 = 0;
LABEL_7:
    v11 = [v6 objectForKeyedSubscript:@"fullBundleOrderedSet"];
    v12 = [MEMORY[0x1E695DFB0] null];
    v13 = [v11 isEqual:v12];

    if (v13)
    {
      v68 = self;
      v69 = v10;

      v11 = 0;
LABEL_12:
      v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v11, "count")}];
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v80 = 0u;
      v11 = v11;
      v14 = [v11 countByEnumeratingWithState:&v77 objects:v91 count:16];
      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = v14;
      v16 = *v78;
      v67 = v6;
LABEL_14:
      v17 = 0;
      while (1)
      {
        if (*v78 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = *(*(&v77 + 1) + 8 * v17);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v29 = v72;
          if (v72)
          {
            v35 = objc_alloc(MEMORY[0x1E696ABC0]);
            v36 = *MEMORY[0x1E698F240];
            v87 = *MEMORY[0x1E696A578];
            v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"fullBundleOrderedSet"];
            v88 = v19;
            v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
            v33 = v35;
            v34 = v36;
            goto LABEL_35;
          }

          goto LABEL_44;
        }

        v19 = v18;
        v20 = [BMMomentsEngagementLightBundleSummary alloc];
        v76 = 0;
        v21 = [(BMMomentsEngagementLightBundleSummary *)v20 initWithJSONDictionary:v19 error:&v76];
        v22 = v76;
        if (v22)
        {
          v32 = v22;
          if (v72)
          {
            v38 = v22;
            *v72 = v32;
          }

          v37 = 0;
          goto LABEL_39;
        }

        [v74 addObject:v21];

        if (v15 == ++v17)
        {
          v15 = [v11 countByEnumeratingWithState:&v77 objects:v91 count:16];
          v6 = v67;
          if (v15)
          {
            goto LABEL_14;
          }

LABEL_22:

          v19 = [v6 objectForKeyedSubscript:@"clientIdentifier"];
          if (!v19)
          {
            v23 = 0;
            self = v68;
            goto LABEL_48;
          }

          objc_opt_class();
          self = v68;
          if (objc_opt_isKindOfClass())
          {
            v23 = 0;
LABEL_48:
            a4 = v73;
            v43 = [v6 objectForKeyedSubscript:@"viewContainerName"];
            v66 = v43;
            if (!v43 || (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v32 = 0;
LABEL_51:
              v45 = [v6 objectForKeyedSubscript:@"deviceType"];
              if (!v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v46 = 0;
                goto LABEL_73;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v46 = v45;
LABEL_72:
                a4 = v73;
LABEL_73:
                self = -[BMMomentsEngagementLightSuggestionEvent initWithType:timestamp:fullBundleOrderedSet:clientIdentifier:viewContainerName:deviceType:](self, "initWithType:timestamp:fullBundleOrderedSet:clientIdentifier:viewContainerName:deviceType:", [a4 intValue], v69, v74, v23, v32, objc_msgSend(v46, "intValue"));
                v37 = self;
LABEL_74:

                v44 = v66;
LABEL_75:

LABEL_76:
                v10 = v69;

LABEL_77:
LABEL_78:

                goto LABEL_80;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v46 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementLightDeviceTypeFromString(v45)];
                goto LABEL_72;
              }

              if (v72)
              {
                v65 = objc_alloc(MEMORY[0x1E696ABC0]);
                v64 = *MEMORY[0x1E698F240];
                v81 = *MEMORY[0x1E696A578];
                v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceType"];
                v82 = v62;
                v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
                *v72 = [v65 initWithDomain:v64 code:2 userInfo:v63];
              }

              v46 = 0;
              v37 = 0;
LABEL_88:
              a4 = v73;
              goto LABEL_74;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v32 = v44;
              a4 = v73;
              goto LABEL_51;
            }

            if (v72)
            {
              v55 = objc_alloc(MEMORY[0x1E696ABC0]);
              v56 = *MEMORY[0x1E698F240];
              v83 = *MEMORY[0x1E696A578];
              v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"viewContainerName"];
              v84 = v46;
              v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
              v57 = [v55 initWithDomain:v56 code:2 userInfo:v45];
              v32 = 0;
              v37 = 0;
              *v72 = v57;
              goto LABEL_88;
            }

            v32 = 0;
            v37 = 0;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v23 = v19;
              goto LABEL_48;
            }

            if (!v72)
            {
              v23 = 0;
              v37 = 0;
              a4 = v73;
              v10 = v69;
              goto LABEL_77;
            }

            v51 = objc_alloc(MEMORY[0x1E696ABC0]);
            v52 = *MEMORY[0x1E698F240];
            v85 = *MEMORY[0x1E696A578];
            v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
            v86 = v32;
            v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
            v54 = [v51 initWithDomain:v52 code:2 userInfo:v53];
            v23 = 0;
            v37 = 0;
            *v72 = v54;
            v44 = v53;
          }

          a4 = v73;
          goto LABEL_75;
        }
      }

      v29 = v72;
      if (v72)
      {
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v89 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"fullBundleOrderedSet"];
        v90 = v19;
        v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
        v33 = v30;
        v34 = v31;
LABEL_35:
        v37 = 0;
        *v29 = [v33 initWithDomain:v34 code:2 userInfo:v32];
LABEL_39:
        v23 = v11;
        v6 = v67;
        self = v68;
        a4 = v73;
        goto LABEL_76;
      }

LABEL_44:
      v37 = 0;
      v23 = v11;
      v6 = v67;
      self = v68;
      a4 = v73;
      v10 = v69;
      goto LABEL_78;
    }

    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v68 = self;
      v69 = v10;
      goto LABEL_12;
    }

    if (v72)
    {
      v41 = objc_alloc(MEMORY[0x1E696ABC0]);
      v42 = *MEMORY[0x1E698F240];
      v92 = *MEMORY[0x1E696A578];
      v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"fullBundleOrderedSet"];
      v93 = v74;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v37 = 0;
      *v72 = [v41 initWithDomain:v42 code:2 userInfo:v23];
      goto LABEL_78;
    }

    v37 = 0;
LABEL_80:
    v9 = v70;

    v7 = v71;
    goto LABEL_81;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = MEMORY[0x1E695DF00];
    v25 = v9;
    v26 = [v24 alloc];
    [v25 doubleValue];
    v28 = v27;

    v10 = [v26 initWithTimeIntervalSince1970:v28];
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v39 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v40 = [v39 dateFromString:v9];

    v10 = v40;
LABEL_60:
    a4 = v73;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
    goto LABEL_60;
  }

  if (v72)
  {
    v58 = objc_alloc(MEMORY[0x1E696ABC0]);
    v59 = *MEMORY[0x1E698F240];
    v94 = *MEMORY[0x1E696A578];
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
    v95 = v11;
    v75 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
    v10 = 0;
    v37 = 0;
    *v72 = [v58 initWithDomain:v59 code:2 userInfo:?];

    goto LABEL_80;
  }

  v10 = 0;
  v37 = 0;
LABEL_81:

LABEL_82:
  v60 = *MEMORY[0x1E69E9840];
  return v37;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementLightSuggestionEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_fullBundleOrderedSet;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v12 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_viewContainerName)
  {
    PBDataWriterWriteStringField();
  }

  deviceType = self->_deviceType;
  PBDataWriterWriteUint32Field();

  v14 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v46.receiver = self;
  v46.super_class = BMMomentsEngagementLightSuggestionEvent;
  v5 = [(BMEventBase *)&v46 init];
  if (!v5)
  {
    goto LABEL_73;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_71;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v47[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v47 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v47[0] & 0x7F) << v8;
        if ((v47[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_71;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) > 3)
      {
        break;
      }

      if (v16 == 1)
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v29 = [v4 position] + 1;
          if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
          {
            v31 = [v4 data];
            [v31 getBytes:v47 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v28 |= (v47[0] & 0x7F) << v26;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v25 = v27++ > 8;
          if (v25)
          {
            v32 = 0;
            goto LABEL_63;
          }
        }

        if ([v4 hasError])
        {
          v32 = 0;
        }

        else
        {
          v32 = v28;
        }

        if (v32 > 0x1E || ((1 << v32) & 0x70000243) == 0)
        {
          v32 = 0;
        }

LABEL_63:
        v5->_type = v32;
        goto LABEL_70;
      }

      if (v16 == 2)
      {
        v5->_hasRaw_timestamp = 1;
        v47[0] = 0;
        v35 = [v4 position] + 8;
        if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 8, v36 <= objc_msgSend(v4, "length")))
        {
          v39 = [v4 data];
          [v39 getBytes:v47 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_raw_timestamp = v47[0];
        goto LABEL_70;
      }

      if (v16 != 3)
      {
        goto LABEL_47;
      }

      v47[0] = 0;
      v47[1] = 0;
      if (!PBReaderPlaceMark() || (v17 = [[BMMomentsEngagementLightBundleSummary alloc] initByReadFrom:v4]) == 0)
      {
LABEL_75:

        goto LABEL_72;
      }

      v18 = v17;
      [v6 addObject:v17];
      PBReaderRecallMark();

LABEL_70:
      v40 = [v4 position];
      if (v40 >= [v4 length])
      {
        goto LABEL_71;
      }
    }

    switch(v16)
    {
      case 4:
        v33 = PBReaderReadString();
        v34 = 56;
LABEL_53:
        v37 = *(&v5->super.super.isa + v34);
        *(&v5->super.super.isa + v34) = v33;

        goto LABEL_70;
      case 5:
        v33 = PBReaderReadString();
        v34 = 64;
        goto LABEL_53;
      case 6:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v47[0]) = 0;
          v22 = [v4 position] + 1;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
          {
            v24 = [v4 data];
            [v24 getBytes:v47 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v21 |= (v47[0] & 0x7F) << v19;
          if ((v47[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v25 = v20++ > 8;
          if (v25)
          {
            goto LABEL_66;
          }
        }

        if (([v4 hasError] & 1) != 0 || v21 > 5)
        {
LABEL_66:
          LODWORD(v21) = 0;
        }

        v5->_deviceType = v21;
        goto LABEL_70;
    }

LABEL_47:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_70;
  }

LABEL_71:
  v41 = [v6 copy];
  fullBundleOrderedSet = v5->_fullBundleOrderedSet;
  v5->_fullBundleOrderedSet = v41;

  v43 = [v4 hasError];
  if (v43)
  {
LABEL_72:
    v44 = 0;
  }

  else
  {
LABEL_73:
    v44 = v5;
  }

  return v44;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMomentsEngagementLightSuggestionTypeAsString([(BMMomentsEngagementLightSuggestionEvent *)self type]);
  v5 = [(BMMomentsEngagementLightSuggestionEvent *)self timestamp];
  v6 = [(BMMomentsEngagementLightSuggestionEvent *)self fullBundleOrderedSet];
  v7 = [(BMMomentsEngagementLightSuggestionEvent *)self clientIdentifier];
  v8 = [(BMMomentsEngagementLightSuggestionEvent *)self viewContainerName];
  v9 = BMMomentsEngagementLightDeviceTypeAsString([(BMMomentsEngagementLightSuggestionEvent *)self deviceType]);
  v10 = [v3 initWithFormat:@"BMMomentsEngagementLightSuggestionEvent with type: %@, timestamp: %@, fullBundleOrderedSet: %@, clientIdentifier: %@, viewContainerName: %@, deviceType: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMMomentsEngagementLightSuggestionEvent)initWithType:(int)a3 timestamp:(id)a4 fullBundleOrderedSet:(id)a5 clientIdentifier:(id)a6 viewContainerName:(id)a7 deviceType:(int)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = BMMomentsEngagementLightSuggestionEvent;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    v18->_type = a3;
    if (v14)
    {
      v18->_hasRaw_timestamp = 1;
      [v14 timeIntervalSince1970];
    }

    else
    {
      v18->_hasRaw_timestamp = 0;
      v19 = -1.0;
    }

    v18->_raw_timestamp = v19;
    objc_storeStrong(&v18->_fullBundleOrderedSet, a5);
    objc_storeStrong(&v18->_clientIdentifier, a6);
    objc_storeStrong(&v18->_viewContainerName, a7);
    v18->_deviceType = a8;
  }

  return v18;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:2 type:0 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fullBundleOrderedSet" number:3 type:14 subMessageClass:objc_opt_class()];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewContainerName" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"fullBundleOrderedSet_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_269_107169];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewContainerName" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
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

id __50__BMMomentsEngagementLightSuggestionEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _fullBundleOrderedSetJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMMomentsEngagementLightSuggestionEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[8] = 0;
    }
  }

  return v4;
}

@end