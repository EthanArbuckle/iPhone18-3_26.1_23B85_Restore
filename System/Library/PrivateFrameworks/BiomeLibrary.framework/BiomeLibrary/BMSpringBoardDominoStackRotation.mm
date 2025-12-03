@interface BMSpringBoardDominoStackRotation
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSpringBoardDominoStackRotation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSpringBoardDominoStackRotation)initWithWidget:(id)widget stackId:(id)id reason:(int)reason newWidgetSuggestion:(id)suggestion source:(id)source;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSpringBoardDominoStackRotation

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"widget_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_79];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stackId" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"reason" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"newWidgetSuggestion" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"source" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    widget = [(BMSpringBoardDominoStackRotation *)self widget];
    widget2 = [v5 widget];
    v8 = widget2;
    if (widget == widget2)
    {
    }

    else
    {
      widget3 = [(BMSpringBoardDominoStackRotation *)self widget];
      widget4 = [v5 widget];
      v11 = [widget3 isEqual:widget4];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    stackId = [(BMSpringBoardDominoStackRotation *)self stackId];
    stackId2 = [v5 stackId];
    v15 = stackId2;
    if (stackId == stackId2)
    {
    }

    else
    {
      stackId3 = [(BMSpringBoardDominoStackRotation *)self stackId];
      stackId4 = [v5 stackId];
      v18 = [stackId3 isEqual:stackId4];

      if (!v18)
      {
        goto LABEL_17;
      }
    }

    reason = [(BMSpringBoardDominoStackRotation *)self reason];
    if (reason == [v5 reason])
    {
      if (!-[BMSpringBoardDominoStackRotation hasNewWidgetSuggestion](self, "hasNewWidgetSuggestion") && ![v5 hasNewWidgetSuggestion] || -[BMSpringBoardDominoStackRotation hasNewWidgetSuggestion](self, "hasNewWidgetSuggestion") && objc_msgSend(v5, "hasNewWidgetSuggestion") && (v20 = -[BMSpringBoardDominoStackRotation newWidgetSuggestion](self, "newWidgetSuggestion"), v20 == objc_msgSend(v5, "newWidgetSuggestion")))
      {
        source = [(BMSpringBoardDominoStackRotation *)self source];
        source2 = [v5 source];
        if (source == source2)
        {
          v12 = 1;
        }

        else
        {
          source3 = [(BMSpringBoardDominoStackRotation *)self source];
          source4 = [v5 source];
          v12 = [source3 isEqual:source4];
        }

        goto LABEL_18;
      }
    }

LABEL_17:
    v12 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)jsonDictionary
{
  v24[5] = *MEMORY[0x1E69E9840];
  widget = [(BMSpringBoardDominoStackRotation *)self widget];
  jsonDictionary = [widget jsonDictionary];

  stackId = [(BMSpringBoardDominoStackRotation *)self stackId];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSpringBoardDominoStackRotation reason](self, "reason")}];
  if ([(BMSpringBoardDominoStackRotation *)self hasNewWidgetSuggestion])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardDominoStackRotation newWidgetSuggestion](self, "newWidgetSuggestion")}];
  }

  else
  {
    v7 = 0;
  }

  source = [(BMSpringBoardDominoStackRotation *)self source];
  v19 = @"widget";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17 = null;
  v24[0] = null;
  v20 = @"stackId";
  null2 = stackId;
  if (!stackId)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v24[1] = null2;
  v21 = @"reason";
  null3 = v6;
  if (!v6)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v24[2] = null3;
  v22 = @"newWidgetSuggestion";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v24[3] = null4;
  v23 = @"source";
  null5 = source;
  if (!source)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v24[4] = null5;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v19 count:{5, v17}];
  if (source)
  {
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v7)
    {
LABEL_16:
      if (v6)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (v6)
  {
LABEL_17:
    if (stackId)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (jsonDictionary)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!stackId)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (jsonDictionary)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMSpringBoardDominoStackRotation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v56[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"widget"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v7;
    v46 = 0;
    v8 = [[BMSpringBoardDominoWidget alloc] initWithJSONDictionary:v11 error:&v46];
    v12 = v46;
    if (v12)
    {
      v13 = v11;
      if (error)
      {
        v12 = v12;
        *error = v12;
      }

      v14 = 0;
      error = v13;
      goto LABEL_37;
    }

LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"stackId"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v14 = 0;
          goto LABEL_36;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v22 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stackId"];
        v54 = v43;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v23 = [v21 initWithDomain:v22 code:2 userInfo:v10];
        error = 0;
        v14 = 0;
        *errorCopy = v23;
LABEL_35:

LABEL_36:
        goto LABEL_37;
      }

      v41 = v9;
    }

    else
    {
      v41 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"reason"];
    v42 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v10;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v43 = 0;
            v14 = 0;
            error = v41;
            goto LABEL_35;
          }

          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = *MEMORY[0x1E698F240];
          v51 = *MEMORY[0x1E696A578];
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"reason"];
          v52 = v25;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          v36 = [v44 initWithDomain:v35 code:2 userInfo:v24];
          v43 = 0;
          v14 = 0;
          *error = v36;
          goto LABEL_54;
        }

        v15 = [MEMORY[0x1E696AD98] numberWithInt:BMSpringBoardDominoStackRotationReasonFromString(v10)];
      }

      v43 = v15;
    }

    else
    {
      v43 = 0;
    }

    v24 = [dictionaryCopy objectForKeyedSubscript:@"newWidgetSuggestion"];
    if (!v24 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v25 = 0;
      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
LABEL_29:
      v26 = [dictionaryCopy objectForKeyedSubscript:@"source"];
      if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v40 = objc_alloc(MEMORY[0x1E696ABC0]);
            v37 = *MEMORY[0x1E698F240];
            v47 = *MEMORY[0x1E696A578];
            v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"source"];
            v48 = v33;
            v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
            *error = [v40 initWithDomain:v37 code:2 userInfo:v34];
          }

          v27 = 0;
          v14 = 0;
          error = v41;
          goto LABEL_33;
        }

        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      error = v41;
      v14 = -[BMSpringBoardDominoStackRotation initWithWidget:stackId:reason:newWidgetSuggestion:source:](selfCopy, "initWithWidget:stackId:reason:newWidgetSuggestion:source:", v42, v41, [v43 intValue], v25, v27);
      selfCopy = v14;
LABEL_33:

LABEL_34:
      self = selfCopy;
      v8 = v42;
      goto LABEL_35;
    }

    if (error)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v31 = *MEMORY[0x1E698F240];
      v49 = *MEMORY[0x1E696A578];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"newWidgetSuggestion"];
      v50 = v27;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v32 = [v30 initWithDomain:v31 code:2 userInfo:v26];
      v25 = 0;
      v14 = 0;
      error = v41;
      *errorCopy2 = v32;
      goto LABEL_33;
    }

    v25 = 0;
    v14 = 0;
LABEL_54:
    error = v41;
    goto LABEL_34;
  }

  if (!error)
  {
    v14 = 0;
    goto LABEL_38;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy3 = error;
  v18 = *MEMORY[0x1E698F240];
  v55 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"widget"];
  v56[0] = v8;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:&v55 count:1];
  v20 = v18;
  error = v19;
  v14 = 0;
  *errorCopy3 = [v16 initWithDomain:v20 code:2 userInfo:v19];
LABEL_37:

LABEL_38:
  v28 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSpringBoardDominoStackRotation *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_widget)
  {
    PBDataWriterPlaceMark();
    [(BMSpringBoardDominoWidget *)self->_widget writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_stackId)
  {
    PBDataWriterWriteStringField();
  }

  reason = self->_reason;
  PBDataWriterWriteUint32Field();
  if (self->_hasNewWidgetSuggestion)
  {
    newWidgetSuggestion = self->_newWidgetSuggestion;
    PBDataWriterWriteBOOLField();
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v38.receiver = self;
  v38.super_class = BMSpringBoardDominoStackRotation;
  v5 = [(BMEventBase *)&v38 init];
  if (!v5)
  {
    goto LABEL_59;
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
        LOBYTE(v39[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v39[0] & 0x7F) << v7;
        if ((v39[0] & 0x80) == 0)
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 != 1)
        {
          if (v15 != 2)
          {
LABEL_48:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_58;
            }

            goto LABEL_56;
          }

          v23 = PBReaderReadString();
          v24 = 40;
          goto LABEL_35;
        }

        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_58;
        }

        v33 = [[BMSpringBoardDominoWidget alloc] initByReadFrom:fromCopy];
        if (!v33)
        {
          goto LABEL_58;
        }

        widget = v5->_widget;
        v5->_widget = v33;

        PBReaderRecallMark();
      }

      else
      {
        switch(v15)
        {
          case 5:
            v23 = PBReaderReadString();
            v24 = 48;
LABEL_35:
            v25 = *(&v5->super.super.isa + v24);
            *(&v5->super.super.isa + v24) = v23;

            break;
          case 4:
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v5->_hasNewWidgetSuggestion = 1;
            while (1)
            {
              LOBYTE(v39[0]) = 0;
              v29 = [fromCopy position] + 1;
              if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v28 |= (v39[0] & 0x7F) << v26;
              if ((v39[0] & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              v13 = v27++ >= 9;
              if (v13)
              {
                LOBYTE(v32) = 0;
                goto LABEL_51;
              }
            }

            v32 = (v28 != 0) & ~[fromCopy hasError];
LABEL_51:
            v5->_newWidgetSuggestion = v32;
            break;
          case 3:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            while (1)
            {
              LOBYTE(v39[0]) = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:v39 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v39[0] & 0x7F) << v16;
              if ((v39[0] & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              if (v17++ > 8)
              {
                goto LABEL_54;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v18 > 0xA)
            {
LABEL_54:
              LODWORD(v18) = 0;
            }

            v5->_reason = v18;
            break;
          default:
            goto LABEL_48;
        }
      }

LABEL_56:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_58:
    v36 = 0;
  }

  else
  {
LABEL_59:
    v36 = v5;
  }

  return v36;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  widget = [(BMSpringBoardDominoStackRotation *)self widget];
  stackId = [(BMSpringBoardDominoStackRotation *)self stackId];
  v6 = BMSpringBoardDominoStackRotationReasonAsString([(BMSpringBoardDominoStackRotation *)self reason]);
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSpringBoardDominoStackRotation newWidgetSuggestion](self, "newWidgetSuggestion")}];
  source = [(BMSpringBoardDominoStackRotation *)self source];
  v9 = [v3 initWithFormat:@"BMSpringBoardDominoStackRotation with widget: %@, stackId: %@, reason: %@, newWidgetSuggestion: %@, source: %@", widget, stackId, v6, v7, source];

  return v9;
}

- (BMSpringBoardDominoStackRotation)initWithWidget:(id)widget stackId:(id)id reason:(int)reason newWidgetSuggestion:(id)suggestion source:(id)source
{
  widgetCopy = widget;
  idCopy = id;
  suggestionCopy = suggestion;
  sourceCopy = source;
  v19.receiver = self;
  v19.super_class = BMSpringBoardDominoStackRotation;
  v17 = [(BMEventBase *)&v19 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v17->_widget, widget);
    objc_storeStrong(&v17->_stackId, id);
    v17->_reason = reason;
    if (suggestionCopy)
    {
      v17->_hasNewWidgetSuggestion = 1;
      v17->_newWidgetSuggestion = [suggestionCopy BOOLValue];
    }

    else
    {
      v17->_hasNewWidgetSuggestion = 0;
      v17->_newWidgetSuggestion = 0;
    }

    objc_storeStrong(&v17->_source, source);
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"widget" number:1 type:14 subMessageClass:objc_opt_class()];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stackId" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"reason" number:3 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"newWidgetSuggestion" number:4 type:12 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"source" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

id __43__BMSpringBoardDominoStackRotation_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 widget];
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

    v8 = [[BMSpringBoardDominoStackRotation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end