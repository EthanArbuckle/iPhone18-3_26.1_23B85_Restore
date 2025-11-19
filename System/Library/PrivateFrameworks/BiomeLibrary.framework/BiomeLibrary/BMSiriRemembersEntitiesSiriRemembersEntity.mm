@interface BMSiriRemembersEntitiesSiriRemembersEntity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMSiriRemembersEntitiesSiriRemembersEntity)initWithIdentifier:(id)a3 type:(id)a4 fields:(id)a5 fieldsTokens:(id)a6 entityHashInfo:(id)a7;
- (BMSiriRemembersEntitiesSiriRemembersEntity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMSiriRemembersEntitiesSiriRemembersEntity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self identifier];
    v7 = [v5 identifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self identifier];
      v10 = [v5 identifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self type];
    v14 = [v5 type];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self type];
      v17 = [v5 type];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v19 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fields];
    v20 = [v5 fields];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fields];
      v23 = [v5 fields];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_17;
      }
    }

    v25 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fieldsTokens];
    v26 = [v5 fieldsTokens];
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      v28 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fieldsTokens];
      v29 = [v5 fieldsTokens];
      v30 = [v28 isEqual:v29];

      if (!v30)
      {
LABEL_17:
        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    v31 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self entityHashInfo];
    v32 = [v5 entityHashInfo];
    if (v31 == v32)
    {
      v12 = 1;
    }

    else
    {
      v33 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self entityHashInfo];
      v34 = [v5 entityHashInfo];
      v12 = [v33 isEqual:v34];
    }

    goto LABEL_23;
  }

  v12 = 0;
LABEL_24:

  return v12;
}

- (id)jsonDictionary
{
  v24[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self identifier];
  v4 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self type];
  v5 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fields];
  v6 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fieldsTokens];
  v7 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self entityHashInfo];
  v8 = [v7 jsonDictionary];

  v19 = @"identifier";
  v9 = v3;
  if (!v3)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = v9;
  v24[0] = v9;
  v20 = @"type";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = v10;
  v21 = @"fields";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = v11;
  v22 = @"fieldsTokens";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = v12;
  v23 = @"entityHashInfo";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v19 count:{5, v17}];
  if (v8)
  {
    if (v6)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (v6)
    {
LABEL_13:
      if (v5)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }
  }

  if (v5)
  {
LABEL_14:
    if (v4)
    {
      goto LABEL_15;
    }

LABEL_22:

    if (v3)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

LABEL_21:

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_15:
  if (v3)
  {
    goto LABEL_16;
  }

LABEL_23:

LABEL_16:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMSiriRemembersEntitiesSiriRemembersEntity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v52[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"type"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v41 = 0;
          v16 = 0;
          goto LABEL_46;
        }

        v38 = a4;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v49 = *MEMORY[0x1E696A578];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"type"];
        v50 = v24;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
        v41 = 0;
        v16 = 0;
        *v38 = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_45;
      }

      v41 = v9;
    }

    else
    {
      v41 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"fields"];
    v39 = v8;
    v40 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v24 = 0;
          v16 = 0;
          goto LABEL_45;
        }

        v25 = a4;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fields"];
        v48 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v28 = [v26 initWithDomain:v27 code:2 userInfo:v11];
        v24 = 0;
        v16 = 0;
        *v25 = v28;
LABEL_44:

        v8 = v39;
        self = v40;
LABEL_45:

        goto LABEL_46;
      }

      v37 = v10;
    }

    else
    {
      v37 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"fieldsTokens"];
    v12 = a4;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_43;
        }

        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v45 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"fieldsTokens"];
        v46 = v14;
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        v30 = [v35 initWithDomain:v29 code:2 userInfo:v15];
        v13 = 0;
        v16 = 0;
        *v12 = v30;
        goto LABEL_41;
      }

      v13 = v11;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"entityHashInfo"];
    if (!v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v15 = 0;
LABEL_16:
      v16 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)v40 initWithIdentifier:v39 type:v41 fields:v37 fieldsTokens:v13 entityHashInfo:v15];
      v40 = v16;
LABEL_41:

LABEL_42:
LABEL_43:
      v24 = v37;
      goto LABEL_44;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v14;
      v42 = 0;
      v15 = [[BMSiriEntityInfo alloc] initWithJSONDictionary:v17 error:&v42];
      v18 = v42;
      if (!v18)
      {

        goto LABEL_16;
      }

      if (v12)
      {
        v18 = v18;
        *v12 = v18;
      }

      v14 = v17;
    }

    else
    {
      if (!v12)
      {
        v16 = 0;
        goto LABEL_42;
      }

      v36 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = *MEMORY[0x1E698F240];
      v43 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"entityHashInfo"];
      v44 = v15;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      *v12 = [v36 initWithDomain:v34 code:2 userInfo:v31];
    }

    v16 = 0;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!a4)
  {
    v8 = 0;
    v16 = 0;
    goto LABEL_47;
  }

  v19 = a4;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
  v52[0] = v41;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v8 = 0;
  v16 = 0;
  *v19 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_46:

LABEL_47:
  v32 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSiriRemembersEntitiesSiriRemembersEntity *)self writeTo:v3];
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

  if (self->_type)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fields)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_fieldsTokens)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_entityHashInfo)
  {
    PBDataWriterPlaceMark();
    [(BMSiriEntityInfo *)self->_entityHashInfo writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = BMSiriRemembersEntitiesSiriRemembersEntity;
  v5 = [(BMEventBase *)&v24 init];
  if (!v5)
  {
    goto LABEL_38;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_36;
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
        goto LABEL_36;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      if (v15 == 4)
      {
        v18 = PBReaderReadString();
        v19 = 40;
        goto LABEL_31;
      }

      if (v15 == 5)
      {
        v18 = PBReaderReadString();
        v19 = 48;
        goto LABEL_31;
      }

      if (v15 != 6)
      {
        goto LABEL_34;
      }

      v25[0] = 0;
      v25[1] = 0;
      if (!PBReaderPlaceMark())
      {
        goto LABEL_37;
      }

      v16 = [[BMSiriEntityInfo alloc] initByReadFrom:v4];
      if (!v16)
      {
        goto LABEL_37;
      }

      entityHashInfo = v5->_entityHashInfo;
      v5->_entityHashInfo = v16;

      PBReaderRecallMark();
LABEL_32:
      v21 = [v4 position];
      if (v21 >= [v4 length])
      {
        goto LABEL_36;
      }
    }

    if (v15 == 1)
    {
      v18 = PBReaderReadString();
      v19 = 24;
      goto LABEL_31;
    }

    if (v15 == 2)
    {
      v18 = PBReaderReadString();
      v19 = 32;
LABEL_31:
      v20 = *(&v5->super.super.isa + v19);
      *(&v5->super.super.isa + v19) = v18;

      goto LABEL_32;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

LABEL_36:
  if ([v4 hasError])
  {
LABEL_37:
    v22 = 0;
  }

  else
  {
LABEL_38:
    v22 = v5;
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self identifier];
  v5 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self type];
  v6 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fields];
  v7 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self fieldsTokens];
  v8 = [(BMSiriRemembersEntitiesSiriRemembersEntity *)self entityHashInfo];
  v9 = [v3 initWithFormat:@"BMSiriRemembersEntitiesSiriRemembersEntity with identifier: %@, type: %@, fields: %@, fieldsTokens: %@, entityHashInfo: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMSiriRemembersEntitiesSiriRemembersEntity)initWithIdentifier:(id)a3 type:(id)a4 fields:(id)a5 fieldsTokens:(id)a6 entityHashInfo:(id)a7
{
  v19 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMSiriRemembersEntitiesSiriRemembersEntity;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_identifier, a3);
    objc_storeStrong(&v17->_type, a4);
    objc_storeStrong(&v17->_fields, a5);
    objc_storeStrong(&v17->_fieldsTokens, a6);
    objc_storeStrong(&v17->_entityHashInfo, a7);
  }

  return v17;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:2 type:13 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entityFields" number:3 type:14 subMessageClass:objc_opt_class()];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fields" number:4 type:13 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"fieldsTokens" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entityHashInfo" number:6 type:14 subMessageClass:objc_opt_class()];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entityFields_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_24209];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fields" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"fieldsTokens" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entityHashInfo_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_39_24210];
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

id __53__BMSiriRemembersEntitiesSiriRemembersEntity_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 entityHashInfo];
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

    v8 = [[BMSiriRemembersEntitiesSiriRemembersEntity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end