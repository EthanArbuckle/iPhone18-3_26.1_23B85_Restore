@interface BMMomentsEngagementLightAppEntryEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEngagementLightAppEntryEvent)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BMMomentsEngagementLightAppEntryEvent)initWithType:(int)a3 clientIdentifier:(id)a4 timestamp:(id)a5 identifier:(id)a6 deviceType:(int)a7 hasText:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSDate)timestamp;
- (NSString)description;
- (id)_identifierJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEngagementLightAppEntryEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsEngagementLightAppEntryEvent *)self type];
    if (v6 == [v5 type])
    {
      v7 = [(BMMomentsEngagementLightAppEntryEvent *)self clientIdentifier];
      v8 = [v5 clientIdentifier];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMMomentsEngagementLightAppEntryEvent *)self clientIdentifier];
        v11 = [v5 clientIdentifier];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      v14 = [(BMMomentsEngagementLightAppEntryEvent *)self timestamp];
      v15 = [v5 timestamp];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMMomentsEngagementLightAppEntryEvent *)self timestamp];
        v18 = [v5 timestamp];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_22;
        }
      }

      v20 = [(BMMomentsEngagementLightAppEntryEvent *)self identifier];
      v21 = [v5 identifier];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMMomentsEngagementLightAppEntryEvent *)self identifier];
        v24 = [v5 identifier];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_22;
        }
      }

      v26 = [(BMMomentsEngagementLightAppEntryEvent *)self deviceType];
      if (v26 == [v5 deviceType])
      {
        if (!-[BMMomentsEngagementLightAppEntryEvent hasHasText](self, "hasHasText") && ![v5 hasHasText])
        {
          LOBYTE(v13) = 1;
          goto LABEL_23;
        }

        if (-[BMMomentsEngagementLightAppEntryEvent hasHasText](self, "hasHasText") && [v5 hasHasText])
        {
          v27 = [(BMMomentsEngagementLightAppEntryEvent *)self hasText];
          v13 = v27 ^ [v5 hasText] ^ 1;
LABEL_23:

          goto LABEL_24;
        }
      }
    }

LABEL_22:
    LOBYTE(v13) = 0;
    goto LABEL_23;
  }

  LOBYTE(v13) = 0;
LABEL_24:

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
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementLightAppEntryEvent type](self, "type")}];
  v4 = [(BMMomentsEngagementLightAppEntryEvent *)self clientIdentifier];
  v5 = [(BMMomentsEngagementLightAppEntryEvent *)self timestamp];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMMomentsEngagementLightAppEntryEvent *)self timestamp];
    [v7 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMMomentsEngagementLightAppEntryEvent *)self _identifierJSONArray];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementLightAppEntryEvent deviceType](self, "deviceType")}];
  if ([(BMMomentsEngagementLightAppEntryEvent *)self hasHasText])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagementLightAppEntryEvent hasText](self, "hasText")}];
  }

  else
  {
    v11 = 0;
  }

  v24 = v3;
  v25[0] = @"type";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v12;
  v23 = v4;
  v26[0] = v12;
  v25[1] = @"clientIdentifier";
  v13 = v4;
  if (!v4)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v13;
  v25[2] = @"timestamp";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v14;
  v25[3] = @"identifier";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v15;
  v25[4] = @"deviceType";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v16;
  v25[5] = @"hasText";
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
      goto LABEL_21;
    }
  }

  else
  {

    if (v10)
    {
LABEL_21:
      if (v9)
      {
        goto LABEL_22;
      }

LABEL_32:

      if (v8)
      {
        goto LABEL_23;
      }

      goto LABEL_33;
    }
  }

  if (!v9)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (v8)
  {
    goto LABEL_23;
  }

LABEL_33:

LABEL_23:
  if (!v23)
  {
  }

  if (!v24)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (id)_identifierJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMomentsEngagementLightAppEntryEvent *)self identifier];
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

- (BMMomentsEngagementLightAppEntryEvent)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v104[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (p_isa)
        {
          v23 = objc_alloc(MEMORY[0x1E696ABC0]);
          v24 = *MEMORY[0x1E698F240];
          v103 = *MEMORY[0x1E696A578];
          v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v104[0] = v10;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:&v103 count:1];
          v26 = v24;
          v9 = v25;
          v27 = [v23 initWithDomain:v26 code:2 userInfo:v25];
          v8 = 0;
          v28 = p_isa;
          p_isa = 0;
          *v28 = v27;
          goto LABEL_77;
        }

        v8 = 0;
        goto LABEL_78;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementLightAppEntryEventTypeFromString(v7)];
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = [v6 objectForKeyedSubscript:@"clientIdentifier"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (p_isa)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v75 = p_isa;
        v18 = v9;
        v19 = *MEMORY[0x1E698F240];
        v101 = *MEMORY[0x1E696A578];
        v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientIdentifier"];
        v102 = v20;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v102 forKeys:&v101 count:1];
        v21 = v19;
        v9 = v18;
        v10 = 0;
        p_isa = 0;
        *v75 = [v17 initWithDomain:v21 code:2 userInfo:v11];
        goto LABEL_76;
      }

      v10 = 0;
      goto LABEL_77;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"timestamp"];
  v79 = v9;
  v80 = v7;
  v82 = v8;
  v78 = v11;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = MEMORY[0x1E695DF00];
      v13 = v11;
      v14 = [v12 alloc];
      [v13 doubleValue];
      v16 = v15;

      v81 = [v14 initWithTimeIntervalSince1970:v16];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v81 = [v22 dateFromString:v11];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (p_isa)
          {
            v63 = p_isa;
            v64 = objc_alloc(MEMORY[0x1E696ABC0]);
            v65 = *MEMORY[0x1E698F240];
            v99 = *MEMORY[0x1E696A578];
            v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"timestamp"];
            v100 = v29;
            v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
            v66 = [v64 initWithDomain:v65 code:2 userInfo:v33];
            v20 = 0;
            p_isa = 0;
            *v63 = v66;
            goto LABEL_74;
          }

          v20 = 0;
          goto LABEL_76;
        }

        v81 = v11;
      }
    }
  }

  else
  {
    v81 = 0;
  }

  v29 = [v6 objectForKeyedSubscript:@"identifier"];
  v30 = [MEMORY[0x1E695DFB0] null];
  v31 = [v29 isEqual:v30];

  if (v31)
  {
    v73 = self;
    v76 = p_isa;
    v70 = v6;
    v71 = v10;

    v29 = 0;
  }

  else
  {
    if (v29)
    {
      objc_opt_class();
      v32 = 0x1E695D000;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (p_isa)
        {
          v54 = objc_alloc(MEMORY[0x1E696ABC0]);
          v55 = *MEMORY[0x1E698F240];
          v97 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"identifier"];
          v98 = v33;
          v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v56 = [v54 initWithDomain:v55 code:2 userInfo:v44];
          v57 = p_isa;
          p_isa = 0;
          *v57 = v56;
          goto LABEL_73;
        }

        v20 = v81;
        goto LABEL_75;
      }

      v73 = self;
      v76 = p_isa;
      v70 = v6;
      v71 = v10;
      goto LABEL_33;
    }

    v73 = self;
    v76 = p_isa;
    v70 = v6;
    v71 = v10;
  }

  v32 = 0x1E695D000uLL;
LABEL_33:
  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v29, "count")}];
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v29 = v29;
  v34 = [v29 countByEnumeratingWithState:&v84 objects:v96 count:16];
  if (!v34)
  {
    goto LABEL_43;
  }

  v35 = v34;
  v36 = *v85;
  while (2)
  {
    for (i = 0; i != v35; ++i)
    {
      if (*v85 != v36)
      {
        objc_enumerationMutation(v29);
      }

      v38 = *(*(&v84 + 1) + 8 * i);
      v39 = *(v32 + 4016);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v45 = v76;
        if (v76)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"identifier"];
          v95 = v40;
          v48 = MEMORY[0x1E695DF20];
          v49 = &v95;
          v50 = &v94;
LABEL_50:
          v51 = [v48 dictionaryWithObjects:v49 forKeys:v50 count:1];
          v52 = [v46 initWithDomain:v47 code:2 userInfo:v51];
          p_isa = 0;
          *v45 = v52;
LABEL_54:
          v44 = v29;
          v6 = v70;
          v10 = v71;
          self = v73;
          goto LABEL_71;
        }

LABEL_57:
        p_isa = 0;
        v44 = v29;
        v6 = v70;
        v10 = v71;
        self = v73;
        goto LABEL_73;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v45 = v76;
        if (v76)
        {
          v46 = objc_alloc(MEMORY[0x1E696ABC0]);
          v47 = *MEMORY[0x1E698F240];
          v92 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"identifier"];
          v93 = v40;
          v48 = MEMORY[0x1E695DF20];
          v49 = &v93;
          v50 = &v92;
          goto LABEL_50;
        }

        goto LABEL_57;
      }

      v40 = v38;
      v41 = [BMMomentsEngagementLightSuggestionIdentifier alloc];
      v83 = 0;
      v42 = [(BMMomentsEngagementLightSuggestionIdentifier *)v41 initWithJSONDictionary:v40 error:&v83];
      v43 = v83;
      if (v43)
      {
        v51 = v43;
        if (v76)
        {
          v53 = v43;
          *v76 = v51;
        }

        p_isa = 0;
        goto LABEL_54;
      }

      [v33 addObject:v42];

      v32 = 0x1E695D000;
    }

    v35 = [v29 countByEnumeratingWithState:&v84 objects:v96 count:16];
    if (v35)
    {
      continue;
    }

    break;
  }

LABEL_43:

  v6 = v70;
  v40 = [v70 objectForKeyedSubscript:@"deviceType"];
  if (!v40)
  {
    v44 = 0;
    v10 = v71;
    self = v73;
    p_isa = v76;
    goto LABEL_66;
  }

  objc_opt_class();
  self = v73;
  p_isa = v76;
  if (objc_opt_isKindOfClass())
  {
    v44 = 0;
    goto LABEL_65;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = v40;
    goto LABEL_65;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementLightDeviceTypeFromString(v40)];
LABEL_65:
    v10 = v71;
LABEL_66:
    v58 = [v70 objectForKeyedSubscript:@"hasText"];
    if (!v58 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v51 = 0;
      goto LABEL_69;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = v58;
LABEL_69:
      self = -[BMMomentsEngagementLightAppEntryEvent initWithType:clientIdentifier:timestamp:identifier:deviceType:hasText:](self, "initWithType:clientIdentifier:timestamp:identifier:deviceType:hasText:", [v82 intValue], v10, v81, v33, objc_msgSend(v44, "intValue"), v51);
      p_isa = &self->super.super.isa;
    }

    else if (p_isa)
    {
      v74 = objc_alloc(MEMORY[0x1E696ABC0]);
      v72 = *MEMORY[0x1E698F240];
      v88 = *MEMORY[0x1E696A578];
      v77 = p_isa;
      v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"hasText"];
      v89 = v61;
      v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
      *v77 = [v74 initWithDomain:v72 code:2 userInfo:v62];

      v51 = 0;
      p_isa = 0;
    }

    else
    {
      v51 = 0;
    }

LABEL_70:

LABEL_71:
  }

  else
  {
    if (v76)
    {
      v67 = objc_alloc(MEMORY[0x1E696ABC0]);
      v68 = *MEMORY[0x1E698F240];
      v90 = *MEMORY[0x1E696A578];
      v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceType"];
      v91 = v51;
      v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v69 = [v67 initWithDomain:v68 code:2 userInfo:v58];
      v44 = 0;
      p_isa = 0;
      *v76 = v69;
      v10 = v71;
      goto LABEL_70;
    }

    v44 = 0;
    v10 = v71;
  }

LABEL_73:
  v20 = v81;
LABEL_74:

  v11 = v78;
  v9 = v79;
LABEL_75:

  v7 = v80;
  v8 = v82;
LABEL_76:

LABEL_77:
LABEL_78:

  v59 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementLightAppEntryEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_identifier;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v12 writeTo:v4];
        PBDataWriterRecallMark();
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  deviceType = self->_deviceType;
  PBDataWriterWriteUint32Field();
  if (self->_hasHasText)
  {
    hasText = self->_hasText;
    PBDataWriterWriteBOOLField();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BMMomentsEngagementLightAppEntryEvent;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = objc_opt_new();
  v7 = [v4 position];
  if (v7 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_75;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v51[0]) = 0;
        v11 = [v4 position] + 1;
        if (v11 >= [v4 position] && (v12 = objc_msgSend(v4, "position") + 1, v12 <= objc_msgSend(v4, "length")))
        {
          v13 = [v4 data];
          [v13 getBytes:v51 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v10 |= (v51[0] & 0x7F) << v8;
        if ((v51[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [v4 hasError] ? 0 : v10;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_75;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 3)
      {
        break;
      }

      if (v16 != 4)
      {
        if (v16 == 6)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v5->_hasHasText = 1;
          while (1)
          {
            LOBYTE(v51[0]) = 0;
            v38 = [v4 position] + 1;
            if (v38 >= [v4 position] && (v39 = objc_msgSend(v4, "position") + 1, v39 <= objc_msgSend(v4, "length")))
            {
              v40 = [v4 data];
              [v40 getBytes:v51 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v37 |= (v51[0] & 0x7F) << v35;
            if ((v51[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v14 = v36++ >= 9;
            if (v14)
            {
              LOBYTE(v41) = 0;
              goto LABEL_71;
            }
          }

          v41 = (v37 != 0) & ~[v4 hasError];
LABEL_71:
          v5->_hasText = v41;
          goto LABEL_74;
        }

        if (v16 == 5)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          while (1)
          {
            LOBYTE(v51[0]) = 0;
            v22 = [v4 position] + 1;
            if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
            {
              v24 = [v4 data];
              [v24 getBytes:v51 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v21 |= (v51[0] & 0x7F) << v19;
            if ((v51[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v25 = v20++ > 8;
            if (v25)
            {
              goto LABEL_67;
            }
          }

          if (([v4 hasError] & 1) != 0 || v21 > 5)
          {
LABEL_67:
            LODWORD(v21) = 0;
          }

          v42 = 44;
          goto LABEL_69;
        }

LABEL_49:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_79;
        }

        goto LABEL_74;
      }

      v51[0] = 0;
      v51[1] = 0;
      if (!PBReaderPlaceMark() || (v31 = [[BMMomentsEngagementLightSuggestionIdentifier alloc] initByReadFrom:v4]) == 0)
      {
LABEL_79:

        goto LABEL_76;
      }

      v32 = v31;
      [v6 addObject:v31];
      PBReaderRecallMark();

LABEL_74:
      v44 = [v4 position];
      if (v44 >= [v4 length])
      {
        goto LABEL_75;
      }
    }

    switch(v16)
    {
      case 1:
        v26 = 0;
        v27 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v51[0]) = 0;
          v28 = [v4 position] + 1;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:v51 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v21 |= (v51[0] & 0x7F) << v26;
          if ((v51[0] & 0x80) == 0)
          {
            break;
          }

          v26 += 7;
          v25 = v27++ > 8;
          if (v25)
          {
            goto LABEL_63;
          }
        }

        if (([v4 hasError] & 1) != 0 || v21 > 4)
        {
LABEL_63:
          LODWORD(v21) = 0;
        }

        v42 = 40;
LABEL_69:
        *(&v5->super.super.isa + v42) = v21;
        goto LABEL_74;
      case 2:
        v33 = PBReaderReadString();
        clientIdentifier = v5->_clientIdentifier;
        v5->_clientIdentifier = v33;

        goto LABEL_74;
      case 3:
        v5->_hasRaw_timestamp = 1;
        v51[0] = 0;
        v17 = [v4 position] + 8;
        if (v17 >= [v4 position] && (v18 = objc_msgSend(v4, "position") + 8, v18 <= objc_msgSend(v4, "length")))
        {
          v43 = [v4 data];
          [v43 getBytes:v51 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        *&v5->_raw_timestamp = v51[0];
        goto LABEL_74;
    }

    goto LABEL_49;
  }

LABEL_75:
  v45 = [v6 copy];
  identifier = v5->_identifier;
  v5->_identifier = v45;

  v47 = [v4 hasError];
  if (v47)
  {
LABEL_76:
    v48 = 0;
  }

  else
  {
LABEL_77:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMomentsEngagementLightAppEntryEventTypeAsString([(BMMomentsEngagementLightAppEntryEvent *)self type]);
  v5 = [(BMMomentsEngagementLightAppEntryEvent *)self clientIdentifier];
  v6 = [(BMMomentsEngagementLightAppEntryEvent *)self timestamp];
  v7 = [(BMMomentsEngagementLightAppEntryEvent *)self identifier];
  v8 = BMMomentsEngagementLightDeviceTypeAsString([(BMMomentsEngagementLightAppEntryEvent *)self deviceType]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagementLightAppEntryEvent hasText](self, "hasText")}];
  v10 = [v3 initWithFormat:@"BMMomentsEngagementLightAppEntryEvent with type: %@, clientIdentifier: %@, timestamp: %@, identifier: %@, deviceType: %@, hasText: %@", v4, v5, v6, v7, v8, v9];

  return v10;
}

- (BMMomentsEngagementLightAppEntryEvent)initWithType:(int)a3 clientIdentifier:(id)a4 timestamp:(id)a5 identifier:(id)a6 deviceType:(int)a7 hasText:(id)a8
{
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v22.receiver = self;
  v22.super_class = BMMomentsEngagementLightAppEntryEvent;
  v19 = [(BMEventBase *)&v22 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    v19->_type = a3;
    objc_storeStrong(&v19->_clientIdentifier, a4);
    if (v16)
    {
      v19->_hasRaw_timestamp = 1;
      [v16 timeIntervalSince1970];
    }

    else
    {
      v19->_hasRaw_timestamp = 0;
      v20 = -1.0;
    }

    v19->_raw_timestamp = v20;
    objc_storeStrong(&v19->_identifier, a6);
    v19->_deviceType = a7;
    if (v18)
    {
      v19->_hasHasText = 1;
      v19->_hasText = [v18 BOOLValue];
    }

    else
    {
      v19->_hasHasText = 0;
      v19->_hasText = 0;
    }
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:3 type:0 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:4 type:14 subMessageClass:objc_opt_class()];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"hasText" number:6 type:12 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"identifier_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_318_107202];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"hasText" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
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

id __48__BMMomentsEngagementLightAppEntryEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _identifierJSONArray];
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

    v8 = [[BMMomentsEngagementLightAppEntryEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end