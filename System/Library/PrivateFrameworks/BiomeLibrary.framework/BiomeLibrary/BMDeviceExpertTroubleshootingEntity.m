@interface BMDeviceExpertTroubleshootingEntity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDeviceExpertTroubleshootingEntity)initWithAction:(id)a3 article:(id)a4 setting:(id)a5 selection:(id)a6;
- (BMDeviceExpertTroubleshootingEntity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDeviceExpertTroubleshootingEntity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMDeviceExpertTroubleshootingEntity *)self action];
    v7 = [v5 action];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMDeviceExpertTroubleshootingEntity *)self action];
      v10 = [v5 action];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    v13 = [(BMDeviceExpertTroubleshootingEntity *)self article];
    v14 = [v5 article];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMDeviceExpertTroubleshootingEntity *)self article];
      v17 = [v5 article];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    v19 = [(BMDeviceExpertTroubleshootingEntity *)self setting];
    v20 = [v5 setting];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMDeviceExpertTroubleshootingEntity *)self setting];
      v23 = [v5 setting];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v25 = [(BMDeviceExpertTroubleshootingEntity *)self selection];
    v26 = [v5 selection];
    if (v25 == v26)
    {
      v12 = 1;
    }

    else
    {
      v27 = [(BMDeviceExpertTroubleshootingEntity *)self selection];
      v28 = [v5 selection];
      v12 = [v27 isEqual:v28];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (id)jsonDictionary
{
  v19[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMDeviceExpertTroubleshootingEntity *)self action];
  v4 = [v3 jsonDictionary];

  v5 = [(BMDeviceExpertTroubleshootingEntity *)self article];
  v6 = [v5 jsonDictionary];

  v7 = [(BMDeviceExpertTroubleshootingEntity *)self setting];
  v8 = [v7 jsonDictionary];

  v9 = [(BMDeviceExpertTroubleshootingEntity *)self selection];
  v10 = [v9 jsonDictionary];

  v18[0] = @"action";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v11;
  v18[1] = @"article";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v12;
  v18[2] = @"setting";
  v13 = v8;
  if (!v8)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = v13;
  v18[3] = @"selection";
  v14 = v10;
  if (!v10)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (v10)
  {
    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v8)
    {
LABEL_11:
      if (v6)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (v4)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!v6)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMDeviceExpertTroubleshootingEntity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v49[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"action"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v7;
    v41 = 0;
    v8 = [[BMDeviceExpertTroubleshootingAction alloc] initWithJSONDictionary:v9 error:&v41];
    v16 = v41;
    if (v16)
    {
      if (a4)
      {
        v16 = v16;
        *a4 = v16;
      }

LABEL_38:
      v15 = 0;
      goto LABEL_47;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"article"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v36 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
      v40 = 0;
      v36 = [[BMDeviceExpertTroubleshootingArticle alloc] initWithJSONDictionary:v10 error:&v40];
      v17 = v40;
      if (v17)
      {
        if (a4)
        {
          v17 = v17;
          *a4 = v17;
        }

        v15 = 0;
        v14 = v36;
        goto LABEL_46;
      }

LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"setting"];
      v37 = v8;
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v15 = 0;
            v14 = v36;
            goto LABEL_46;
          }

          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          v27 = *MEMORY[0x1E698F240];
          v44 = *MEMORY[0x1E696A578];
          v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"setting"];
          v45 = v11;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
          v28 = [v32 initWithDomain:v27 code:2 userInfo:v12];
          v15 = 0;
          v29 = a4;
          v14 = v36;
          *v29 = v28;
          goto LABEL_45;
        }

        v12 = v10;
        v39 = 0;
        v11 = [[BMDeviceExpertTroubleshootingSetting alloc] initWithJSONDictionary:v12 error:&v39];
        v18 = v39;
        if (v18)
        {
          if (a4)
          {
            v18 = v18;
            *a4 = v18;
          }

          goto LABEL_49;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = [v6 objectForKeyedSubscript:@"selection"];
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = 0;
LABEL_13:
        v14 = v36;
        self = [(BMDeviceExpertTroubleshootingEntity *)self initWithAction:v37 article:v36 setting:v11 selection:v13];
        v15 = self;
LABEL_44:

LABEL_45:
        v8 = v37;
        goto LABEL_46;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v21 = v12;
        v38 = 0;
        v13 = [[BMDeviceExpertTroubleshootingUserSelection alloc] initWithJSONDictionary:v21 error:&v38];
        v22 = v38;
        if (!v22)
        {

          goto LABEL_13;
        }

        if (a4)
        {
          v22 = v22;
          *a4 = v22;
        }

LABEL_43:
        v15 = 0;
        v14 = v36;
        goto LABEL_44;
      }

      if (a4)
      {
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"selection"];
        v43 = v13;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        *a4 = [v35 initWithDomain:v33 code:2 userInfo:v21];
        goto LABEL_43;
      }

LABEL_49:
      v15 = 0;
      v14 = v36;
      goto LABEL_45;
    }

    if (a4)
    {
      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = a4;
      v24 = *MEMORY[0x1E698F240];
      v46 = *MEMORY[0x1E696A578];
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"article"];
      v47 = v25;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v26 = v24;
      v14 = v25;
      v15 = 0;
      *v34 = [v23 initWithDomain:v26 code:2 userInfo:v10];
LABEL_46:

      goto LABEL_47;
    }

    goto LABEL_38;
  }

  if (!a4)
  {
    v15 = 0;
    goto LABEL_48;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"action"];
  v49[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v15 = 0;
  *a4 = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_47:

LABEL_48:
  v30 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceExpertTroubleshootingEntity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_action)
  {
    PBDataWriterPlaceMark();
    [(BMDeviceExpertTroubleshootingAction *)self->_action writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_article)
  {
    PBDataWriterPlaceMark();
    [(BMDeviceExpertTroubleshootingArticle *)self->_article writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_setting)
  {
    PBDataWriterPlaceMark();
    [(BMDeviceExpertTroubleshootingSetting *)self->_setting writeTo:v4];
    PBDataWriterRecallMark();
  }

  if (self->_selection)
  {
    PBDataWriterPlaceMark();
    [(BMDeviceExpertTroubleshootingUserSelection *)self->_selection writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = BMDeviceExpertTroubleshootingEntity;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v23) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v23 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v23 & 0x7F) << v7;
        if ((v23 & 0x80) == 0)
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
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_40;
          }

          v16 = [[BMDeviceExpertTroubleshootingSetting alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_40;
          }

          v17 = 40;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_29:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_40;
            }

            goto LABEL_38;
          }

          v23 = 0;
          v24 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_40;
          }

          v16 = [[BMDeviceExpertTroubleshootingUserSelection alloc] initByReadFrom:v4];
          if (!v16)
          {
            goto LABEL_40;
          }

          v17 = 48;
        }
      }

      else if (v15 == 1)
      {
        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_40;
        }

        v16 = [[BMDeviceExpertTroubleshootingAction alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_40;
        }

        v17 = 24;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_29;
        }

        v23 = 0;
        v24 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_40;
        }

        v16 = [[BMDeviceExpertTroubleshootingArticle alloc] initByReadFrom:v4];
        if (!v16)
        {
          goto LABEL_40;
        }

        v17 = 32;
      }

      v18 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

      PBReaderRecallMark();
LABEL_38:
      v19 = [v4 position];
    }

    while (v19 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_40:
    v20 = 0;
  }

  else
  {
LABEL_41:
    v20 = v5;
  }

  return v20;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMDeviceExpertTroubleshootingEntity *)self action];
  v5 = [(BMDeviceExpertTroubleshootingEntity *)self article];
  v6 = [(BMDeviceExpertTroubleshootingEntity *)self setting];
  v7 = [(BMDeviceExpertTroubleshootingEntity *)self selection];
  v8 = [v3 initWithFormat:@"BMDeviceExpertTroubleshootingEntity with action: %@, article: %@, setting: %@, selection: %@", v4, v5, v6, v7];

  return v8;
}

- (BMDeviceExpertTroubleshootingEntity)initWithAction:(id)a3 article:(id)a4 setting:(id)a5 selection:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v17.receiver = self;
  v17.super_class = BMDeviceExpertTroubleshootingEntity;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_action, a3);
    objc_storeStrong(&v15->_article, a4);
    objc_storeStrong(&v15->_setting, a5);
    objc_storeStrong(&v15->_selection, a6);
  }

  return v15;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"action" number:1 type:14 subMessageClass:objc_opt_class()];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"article" number:2 type:14 subMessageClass:objc_opt_class()];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"setting" number:3 type:14 subMessageClass:objc_opt_class()];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"selection" number:4 type:14 subMessageClass:objc_opt_class()];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"action_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_54_107855];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"article_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_56_107856];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"setting_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_58];
  v5 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"selection_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_60];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __46__BMDeviceExpertTroubleshootingEntity_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 selection];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __46__BMDeviceExpertTroubleshootingEntity_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 setting];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __46__BMDeviceExpertTroubleshootingEntity_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 article];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __46__BMDeviceExpertTroubleshootingEntity_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 action];
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

    v8 = [[BMDeviceExpertTroubleshootingEntity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end