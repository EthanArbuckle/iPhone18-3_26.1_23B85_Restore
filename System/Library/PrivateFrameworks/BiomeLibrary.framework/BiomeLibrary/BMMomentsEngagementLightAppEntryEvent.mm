@interface BMMomentsEngagementLightAppEntryEvent
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEngagementLightAppEntryEvent)initWithJSONDictionary:(id)dictionary error:(id *)p_isa;
- (BMMomentsEngagementLightAppEntryEvent)initWithType:(int)type clientIdentifier:(id)identifier timestamp:(id)timestamp identifier:(id)a6 deviceType:(int)deviceType hasText:(id)text;
- (BOOL)isEqual:(id)equal;
- (NSDate)timestamp;
- (NSString)description;
- (id)_identifierJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEngagementLightAppEntryEvent

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMMomentsEngagementLightAppEntryEvent *)self type];
    if (type == [v5 type])
    {
      clientIdentifier = [(BMMomentsEngagementLightAppEntryEvent *)self clientIdentifier];
      clientIdentifier2 = [v5 clientIdentifier];
      v9 = clientIdentifier2;
      if (clientIdentifier == clientIdentifier2)
      {
      }

      else
      {
        clientIdentifier3 = [(BMMomentsEngagementLightAppEntryEvent *)self clientIdentifier];
        clientIdentifier4 = [v5 clientIdentifier];
        v12 = [clientIdentifier3 isEqual:clientIdentifier4];

        if (!v12)
        {
          goto LABEL_22;
        }
      }

      timestamp = [(BMMomentsEngagementLightAppEntryEvent *)self timestamp];
      timestamp2 = [v5 timestamp];
      v16 = timestamp2;
      if (timestamp == timestamp2)
      {
      }

      else
      {
        timestamp3 = [(BMMomentsEngagementLightAppEntryEvent *)self timestamp];
        timestamp4 = [v5 timestamp];
        v19 = [timestamp3 isEqual:timestamp4];

        if (!v19)
        {
          goto LABEL_22;
        }
      }

      identifier = [(BMMomentsEngagementLightAppEntryEvent *)self identifier];
      identifier2 = [v5 identifier];
      v22 = identifier2;
      if (identifier == identifier2)
      {
      }

      else
      {
        identifier3 = [(BMMomentsEngagementLightAppEntryEvent *)self identifier];
        identifier4 = [v5 identifier];
        v25 = [identifier3 isEqual:identifier4];

        if (!v25)
        {
          goto LABEL_22;
        }
      }

      deviceType = [(BMMomentsEngagementLightAppEntryEvent *)self deviceType];
      if (deviceType == [v5 deviceType])
      {
        if (!-[BMMomentsEngagementLightAppEntryEvent hasHasText](self, "hasHasText") && ![v5 hasHasText])
        {
          LOBYTE(v13) = 1;
          goto LABEL_23;
        }

        if (-[BMMomentsEngagementLightAppEntryEvent hasHasText](self, "hasHasText") && [v5 hasHasText])
        {
          hasText = [(BMMomentsEngagementLightAppEntryEvent *)self hasText];
          v13 = hasText ^ [v5 hasText] ^ 1;
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
  clientIdentifier = [(BMMomentsEngagementLightAppEntryEvent *)self clientIdentifier];
  timestamp = [(BMMomentsEngagementLightAppEntryEvent *)self timestamp];
  if (timestamp)
  {
    v6 = MEMORY[0x1E696AD98];
    timestamp2 = [(BMMomentsEngagementLightAppEntryEvent *)self timestamp];
    [timestamp2 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  _identifierJSONArray = [(BMMomentsEngagementLightAppEntryEvent *)self _identifierJSONArray];
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
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null;
  v23 = clientIdentifier;
  v26[0] = null;
  v25[1] = @"clientIdentifier";
  null2 = clientIdentifier;
  if (!clientIdentifier)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v25[2] = @"timestamp";
  null3 = v8;
  if (!v8)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v25[3] = @"identifier";
  null4 = _identifierJSONArray;
  if (!_identifierJSONArray)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"deviceType";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"hasText";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
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
      if (_identifierJSONArray)
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

  if (!_identifierJSONArray)
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
  identifier = [(BMMomentsEngagementLightAppEntryEvent *)self identifier];
  v5 = [identifier countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(identifier);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [identifier countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMMomentsEngagementLightAppEntryEvent)initWithJSONDictionary:(id)dictionary error:(id *)p_isa
{
  v104[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"type"];
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

  v9 = [dictionaryCopy objectForKeyedSubscript:@"clientIdentifier"];
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

  v11 = [dictionaryCopy objectForKeyedSubscript:@"timestamp"];
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

  v29 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  null = [MEMORY[0x1E695DFB0] null];
  v31 = [v29 isEqual:null];

  if (v31)
  {
    selfCopy3 = self;
    v76 = p_isa;
    v70 = dictionaryCopy;
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

      selfCopy3 = self;
      v76 = p_isa;
      v70 = dictionaryCopy;
      v71 = v10;
      goto LABEL_33;
    }

    selfCopy3 = self;
    v76 = p_isa;
    v70 = dictionaryCopy;
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
          dictionaryCopy = v70;
          v10 = v71;
          self = selfCopy3;
          goto LABEL_71;
        }

LABEL_57:
        p_isa = 0;
        v44 = v29;
        dictionaryCopy = v70;
        v10 = v71;
        self = selfCopy3;
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

  dictionaryCopy = v70;
  v40 = [v70 objectForKeyedSubscript:@"deviceType"];
  if (!v40)
  {
    v44 = 0;
    v10 = v71;
    self = selfCopy3;
    p_isa = v76;
    goto LABEL_66;
  }

  objc_opt_class();
  self = selfCopy3;
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
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
        [v12 writeTo:toCopy];
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

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v50.receiver = self;
  v50.super_class = BMMomentsEngagementLightAppEntryEvent;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_77;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_75;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v51[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v51 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
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
            v38 = [fromCopy position] + 1;
            if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v51 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v41 = (v37 != 0) & ~[fromCopy hasError];
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
            v22 = [fromCopy position] + 1;
            if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:v51 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          if (([fromCopy hasError] & 1) != 0 || v21 > 5)
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
      if (!PBReaderPlaceMark() || (v31 = [[BMMomentsEngagementLightSuggestionIdentifier alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_79:

        goto LABEL_76;
      }

      v32 = v31;
      [v6 addObject:v31];
      PBReaderRecallMark();

LABEL_74:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
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
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v51 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
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

        if (([fromCopy hasError] & 1) != 0 || v21 > 4)
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
        v17 = [fromCopy position] + 8;
        if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 8, v18 <= objc_msgSend(fromCopy, "length")))
        {
          data5 = [fromCopy data];
          [data5 getBytes:v51 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
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

  hasError = [fromCopy hasError];
  if (hasError)
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
  clientIdentifier = [(BMMomentsEngagementLightAppEntryEvent *)self clientIdentifier];
  timestamp = [(BMMomentsEngagementLightAppEntryEvent *)self timestamp];
  identifier = [(BMMomentsEngagementLightAppEntryEvent *)self identifier];
  v8 = BMMomentsEngagementLightDeviceTypeAsString([(BMMomentsEngagementLightAppEntryEvent *)self deviceType]);
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagementLightAppEntryEvent hasText](self, "hasText")}];
  v10 = [v3 initWithFormat:@"BMMomentsEngagementLightAppEntryEvent with type: %@, clientIdentifier: %@, timestamp: %@, identifier: %@, deviceType: %@, hasText: %@", v4, clientIdentifier, timestamp, identifier, v8, v9];

  return v10;
}

- (BMMomentsEngagementLightAppEntryEvent)initWithType:(int)type clientIdentifier:(id)identifier timestamp:(id)timestamp identifier:(id)a6 deviceType:(int)deviceType hasText:(id)text
{
  identifierCopy = identifier;
  timestampCopy = timestamp;
  v17 = a6;
  textCopy = text;
  v22.receiver = self;
  v22.super_class = BMMomentsEngagementLightAppEntryEvent;
  v19 = [(BMEventBase *)&v22 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    v19->_type = type;
    objc_storeStrong(&v19->_clientIdentifier, identifier);
    if (timestampCopy)
    {
      v19->_hasRaw_timestamp = 1;
      [timestampCopy timeIntervalSince1970];
    }

    else
    {
      v19->_hasRaw_timestamp = 0;
      v20 = -1.0;
    }

    v19->_raw_timestamp = v20;
    objc_storeStrong(&v19->_identifier, a6);
    v19->_deviceType = deviceType;
    if (textCopy)
    {
      v19->_hasHasText = 1;
      v19->_hasText = [textCopy BOOLValue];
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