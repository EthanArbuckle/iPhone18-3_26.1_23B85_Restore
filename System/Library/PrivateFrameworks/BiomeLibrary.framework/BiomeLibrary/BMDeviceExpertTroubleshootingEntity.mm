@interface BMDeviceExpertTroubleshootingEntity
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDeviceExpertTroubleshootingEntity)initWithAction:(id)action article:(id)article setting:(id)setting selection:(id)selection;
- (BMDeviceExpertTroubleshootingEntity)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDeviceExpertTroubleshootingEntity

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    action = [(BMDeviceExpertTroubleshootingEntity *)self action];
    action2 = [v5 action];
    v8 = action2;
    if (action == action2)
    {
    }

    else
    {
      action3 = [(BMDeviceExpertTroubleshootingEntity *)self action];
      action4 = [v5 action];
      v11 = [action3 isEqual:action4];

      if (!v11)
      {
        goto LABEL_13;
      }
    }

    article = [(BMDeviceExpertTroubleshootingEntity *)self article];
    article2 = [v5 article];
    v15 = article2;
    if (article == article2)
    {
    }

    else
    {
      article3 = [(BMDeviceExpertTroubleshootingEntity *)self article];
      article4 = [v5 article];
      v18 = [article3 isEqual:article4];

      if (!v18)
      {
        goto LABEL_13;
      }
    }

    setting = [(BMDeviceExpertTroubleshootingEntity *)self setting];
    setting2 = [v5 setting];
    v21 = setting2;
    if (setting == setting2)
    {
    }

    else
    {
      setting3 = [(BMDeviceExpertTroubleshootingEntity *)self setting];
      setting4 = [v5 setting];
      v24 = [setting3 isEqual:setting4];

      if (!v24)
      {
LABEL_13:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    selection = [(BMDeviceExpertTroubleshootingEntity *)self selection];
    selection2 = [v5 selection];
    if (selection == selection2)
    {
      v12 = 1;
    }

    else
    {
      selection3 = [(BMDeviceExpertTroubleshootingEntity *)self selection];
      selection4 = [v5 selection];
      v12 = [selection3 isEqual:selection4];
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
  action = [(BMDeviceExpertTroubleshootingEntity *)self action];
  jsonDictionary = [action jsonDictionary];

  article = [(BMDeviceExpertTroubleshootingEntity *)self article];
  jsonDictionary2 = [article jsonDictionary];

  setting = [(BMDeviceExpertTroubleshootingEntity *)self setting];
  jsonDictionary3 = [setting jsonDictionary];

  selection = [(BMDeviceExpertTroubleshootingEntity *)self selection];
  jsonDictionary4 = [selection jsonDictionary];

  v18[0] = @"action";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"article";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"setting";
  null3 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = null3;
  v18[3] = @"selection";
  null4 = jsonDictionary4;
  if (!jsonDictionary4)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v19[3] = null4;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];
  if (jsonDictionary4)
  {
    if (jsonDictionary3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (jsonDictionary3)
    {
LABEL_11:
      if (jsonDictionary2)
      {
        goto LABEL_12;
      }

LABEL_18:

      if (jsonDictionary)
      {
        goto LABEL_13;
      }

      goto LABEL_19;
    }
  }

  if (!jsonDictionary2)
  {
    goto LABEL_18;
  }

LABEL_12:
  if (jsonDictionary)
  {
    goto LABEL_13;
  }

LABEL_19:

LABEL_13:
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMDeviceExpertTroubleshootingEntity)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"action"];
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
      if (error)
      {
        v16 = v16;
        *error = v16;
      }

LABEL_38:
      selfCopy = 0;
      goto LABEL_47;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"article"];
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
        if (error)
        {
          v17 = v17;
          *error = v17;
        }

        selfCopy = 0;
        v14 = v36;
        goto LABEL_46;
      }

LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"setting"];
      v37 = v8;
      if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            selfCopy = 0;
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
          selfCopy = 0;
          errorCopy = error;
          v14 = v36;
          *errorCopy = v28;
          goto LABEL_45;
        }

        v12 = v10;
        v39 = 0;
        v11 = [[BMDeviceExpertTroubleshootingSetting alloc] initWithJSONDictionary:v12 error:&v39];
        v18 = v39;
        if (v18)
        {
          if (error)
          {
            v18 = v18;
            *error = v18;
          }

          goto LABEL_49;
        }
      }

      else
      {
        v11 = 0;
      }

      v12 = [dictionaryCopy objectForKeyedSubscript:@"selection"];
      if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v13 = 0;
LABEL_13:
        v14 = v36;
        self = [(BMDeviceExpertTroubleshootingEntity *)self initWithAction:v37 article:v36 setting:v11 selection:v13];
        selfCopy = self;
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

        if (error)
        {
          v22 = v22;
          *error = v22;
        }

LABEL_43:
        selfCopy = 0;
        v14 = v36;
        goto LABEL_44;
      }

      if (error)
      {
        v35 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"selection"];
        v43 = v13;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        *error = [v35 initWithDomain:v33 code:2 userInfo:v21];
        goto LABEL_43;
      }

LABEL_49:
      selfCopy = 0;
      v14 = v36;
      goto LABEL_45;
    }

    if (error)
    {
      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v24 = *MEMORY[0x1E698F240];
      v46 = *MEMORY[0x1E696A578];
      v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"article"];
      v47 = v25;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v26 = v24;
      v14 = v25;
      selfCopy = 0;
      *errorCopy2 = [v23 initWithDomain:v26 code:2 userInfo:v10];
LABEL_46:

      goto LABEL_47;
    }

    goto LABEL_38;
  }

  if (!error)
  {
    selfCopy = 0;
    goto LABEL_48;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"action"];
  v49[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  selfCopy = 0;
  *error = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_47:

LABEL_48:
  v30 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDeviceExpertTroubleshootingEntity *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_action)
  {
    PBDataWriterPlaceMark();
    [(BMDeviceExpertTroubleshootingAction *)self->_action writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_article)
  {
    PBDataWriterPlaceMark();
    [(BMDeviceExpertTroubleshootingArticle *)self->_article writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_setting)
  {
    PBDataWriterPlaceMark();
    [(BMDeviceExpertTroubleshootingSetting *)self->_setting writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_selection)
  {
    PBDataWriterPlaceMark();
    [(BMDeviceExpertTroubleshootingUserSelection *)self->_selection writeTo:toCopy];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v22.receiver = self;
  v22.super_class = BMDeviceExpertTroubleshootingEntity;
  v5 = [(BMEventBase *)&v22 init];
  if (!v5)
  {
    goto LABEL_41;
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
        LOBYTE(v23) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v23 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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

          v16 = [[BMDeviceExpertTroubleshootingSetting alloc] initByReadFrom:fromCopy];
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

          v16 = [[BMDeviceExpertTroubleshootingUserSelection alloc] initByReadFrom:fromCopy];
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

        v16 = [[BMDeviceExpertTroubleshootingAction alloc] initByReadFrom:fromCopy];
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

        v16 = [[BMDeviceExpertTroubleshootingArticle alloc] initByReadFrom:fromCopy];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  action = [(BMDeviceExpertTroubleshootingEntity *)self action];
  article = [(BMDeviceExpertTroubleshootingEntity *)self article];
  setting = [(BMDeviceExpertTroubleshootingEntity *)self setting];
  selection = [(BMDeviceExpertTroubleshootingEntity *)self selection];
  v8 = [v3 initWithFormat:@"BMDeviceExpertTroubleshootingEntity with action: %@, article: %@, setting: %@, selection: %@", action, article, setting, selection];

  return v8;
}

- (BMDeviceExpertTroubleshootingEntity)initWithAction:(id)action article:(id)article setting:(id)setting selection:(id)selection
{
  actionCopy = action;
  articleCopy = article;
  settingCopy = setting;
  selectionCopy = selection;
  v17.receiver = self;
  v17.super_class = BMDeviceExpertTroubleshootingEntity;
  v15 = [(BMEventBase *)&v17 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v15->_action, action);
    objc_storeStrong(&v15->_article, article);
    objc_storeStrong(&v15->_setting, setting);
    objc_storeStrong(&v15->_selection, selection);
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