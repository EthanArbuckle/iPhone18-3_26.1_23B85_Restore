@interface BMIntelligenceEngineInteractionCandidateID
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligenceEngineInteractionCandidateID)initWithIdentifier:(id)a3 bundleId:(id)a4 type:(id)a5;
- (BMIntelligenceEngineInteractionCandidateID)initWithJSONDictionary:(id)a3 error:(id *)p_isa;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligenceEngineInteractionCandidateID

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMIntelligenceEngineInteractionCandidateID *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMIntelligenceEngineInteractionCandidateID *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v13 = [(BMIntelligenceEngineInteractionCandidateID *)self bundleId];
    v14 = [v5 bundleId];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMIntelligenceEngineInteractionCandidateID *)self bundleId];
      v17 = [v5 bundleId];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
LABEL_9:
        v12 = 0;
LABEL_15:

        goto LABEL_16;
      }
    }

    v19 = [(BMIntelligenceEngineInteractionCandidateID *)self type];
    v20 = [v5 type];
    if (v19 == v20)
    {
      v12 = 1;
    }

    else
    {
      v21 = [(BMIntelligenceEngineInteractionCandidateID *)self type];
      v22 = [v5 type];
      v12 = [v21 isEqual:v22];
    }

    goto LABEL_15;
  }

  v12 = 0;
LABEL_16:

  return v12;
}

- (id)jsonDictionary
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMIntelligenceEngineInteractionCandidateID *)self identifier];
  v4 = [(BMIntelligenceEngineInteractionCandidateID *)self bundleId];
  v5 = [(BMIntelligenceEngineInteractionCandidateID *)self type];
  v6 = [v5 jsonDictionary];

  v13[0] = @"identifier";
  v7 = v3;
  if (!v3)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v7;
  v13[1] = @"bundleId";
  v8 = v4;
  if (!v4)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v14[1] = v8;
  v13[2] = @"type";
  v9 = v6;
  if (!v6)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
  if (v6)
  {
    if (v4)
    {
      goto LABEL_9;
    }

LABEL_14:

    if (v3)
    {
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  if (!v4)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v3)
  {
    goto LABEL_10;
  }

LABEL_15:

LABEL_10:
  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BMIntelligenceEngineInteractionCandidateID)initWithJSONDictionary:(id)a3 error:(id *)p_isa
{
  v34[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"bundleId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          v10 = 0;
          goto LABEL_13;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = p_isa;
        v22 = *MEMORY[0x1E698F240];
        v31 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleId"];
        v32 = v11;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
        v23 = [v21 initWithDomain:v22 code:2 userInfo:v12];
        v10 = 0;
        p_isa = 0;
        *v26 = v23;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"type"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!p_isa)
        {
          goto LABEL_12;
        }

        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v25 = *MEMORY[0x1E698F240];
        v29 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"type"];
        v30 = v12;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        *p_isa = [v27 initWithDomain:v25 code:2 userInfo:v24];

        p_isa = 0;
LABEL_11:

LABEL_12:
        goto LABEL_13;
      }

      v15 = v11;
      v28 = 0;
      v12 = [[BMIntelligenceEngineInteractionCandidateType alloc] initWithJSONDictionary:v15 error:&v28];
      v16 = v28;
      if (v16)
      {
        if (p_isa)
        {
          v16 = v16;
          *p_isa = v16;
        }

        p_isa = 0;
        v11 = v15;
        goto LABEL_11;
      }
    }

    else
    {
      v12 = 0;
    }

    self = [(BMIntelligenceEngineInteractionCandidateID *)self initWithIdentifier:v8 bundleId:v10 type:v12];
    p_isa = &self->super.super.isa;
    goto LABEL_11;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!p_isa)
  {
    v8 = 0;
    goto LABEL_14;
  }

  v17 = objc_alloc(MEMORY[0x1E696ABC0]);
  v18 = *MEMORY[0x1E698F240];
  v33 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
  v34[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
  v19 = [v17 initWithDomain:v18 code:2 userInfo:v9];
  v8 = 0;
  v20 = p_isa;
  p_isa = 0;
  *v20 = v19;
LABEL_13:

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceEngineInteractionCandidateID *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_type)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionCandidateType *)self->_type writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMIntelligenceEngineInteractionCandidateID;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_31;
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
        LOBYTE(v25[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v25 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v25[0] & 0x7F) << v7;
        if ((v25[0] & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v25[0] = 0;
        v25[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_30;
        }

        v19 = [[BMIntelligenceEngineInteractionCandidateType alloc] initByReadFrom:v4];
        if (!v19)
        {
          goto LABEL_30;
        }

        type = v5->_type;
        v5->_type = v19;

        PBReaderRecallMark();
      }

      else
      {
        if (v15 == 2)
        {
          v16 = PBReaderReadString();
          v17 = 32;
        }

        else
        {
          if (v15 != 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_30;
            }

            goto LABEL_28;
          }

          v16 = PBReaderReadString();
          v17 = 24;
        }

        v18 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;
      }

LABEL_28:
      v21 = [v4 position];
    }

    while (v21 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_30:
    v22 = 0;
  }

  else
  {
LABEL_31:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMIntelligenceEngineInteractionCandidateID *)self identifier];
  v5 = [(BMIntelligenceEngineInteractionCandidateID *)self bundleId];
  v6 = [(BMIntelligenceEngineInteractionCandidateID *)self type];
  v7 = [v3 initWithFormat:@"BMIntelligenceEngineInteractionCandidateID with identifier: %@, bundleId: %@, type: %@", v4, v5, v6];

  return v7;
}

- (BMIntelligenceEngineInteractionCandidateID)initWithIdentifier:(id)a3 bundleId:(id)a4 type:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v14.receiver = self;
  v14.super_class = BMIntelligenceEngineInteractionCandidateID;
  v12 = [(BMEventBase *)&v14 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_identifier, a3);
    objc_storeStrong(&v12->_bundleId, a4);
    objc_storeStrong(&v12->_type, a5);
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleId" number:2 type:13 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:3 type:14 subMessageClass:objc_opt_class()];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"type_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_290];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

id __53__BMIntelligenceEngineInteractionCandidateID_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 type];
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

    v8 = [[BMIntelligenceEngineInteractionCandidateID alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end