@interface BMAppLanguageConsumption
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAppLanguageConsumption)initWithDataSource:(int)a3 adamID:(id)a4 contentLanguage:(id)a5 contentGenre:(id)a6 timeSpent:(id)a7;
- (BMAppLanguageConsumption)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAppLanguageConsumption

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"dataSource" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"adamID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentLanguage" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentGenre" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeSpent" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAppLanguageConsumption *)self dataSource];
    if (v6 == [v5 dataSource])
    {
      v7 = [(BMAppLanguageConsumption *)self adamID];
      v8 = [v5 adamID];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMAppLanguageConsumption *)self adamID];
        v11 = [v5 adamID];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_21;
        }
      }

      v14 = [(BMAppLanguageConsumption *)self contentLanguage];
      v15 = [v5 contentLanguage];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMAppLanguageConsumption *)self contentLanguage];
        v18 = [v5 contentLanguage];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_21;
        }
      }

      v20 = [(BMAppLanguageConsumption *)self contentGenre];
      v21 = [v5 contentGenre];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMAppLanguageConsumption *)self contentGenre];
        v24 = [v5 contentGenre];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_21;
        }
      }

      if (!-[BMAppLanguageConsumption hasTimeSpent](self, "hasTimeSpent") && ![v5 hasTimeSpent])
      {
        v13 = 1;
        goto LABEL_22;
      }

      if (-[BMAppLanguageConsumption hasTimeSpent](self, "hasTimeSpent") && [v5 hasTimeSpent])
      {
        v26 = [(BMAppLanguageConsumption *)self timeSpent];
        v13 = v26 == [v5 timeSpent];
LABEL_22:

        goto LABEL_23;
      }
    }

LABEL_21:
    v13 = 0;
    goto LABEL_22;
  }

  v13 = 0;
LABEL_23:

  return v13;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMAppLanguageConsumption dataSource](self, "dataSource")}];
  v4 = [(BMAppLanguageConsumption *)self adamID];
  v5 = [(BMAppLanguageConsumption *)self contentLanguage];
  v6 = [(BMAppLanguageConsumption *)self contentGenre];
  if ([(BMAppLanguageConsumption *)self hasTimeSpent])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAppLanguageConsumption timeSpent](self, "timeSpent")}];
  }

  else
  {
    v7 = 0;
  }

  v18 = @"dataSource";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16 = v8;
  v23[0] = v8;
  v19 = @"adamID";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = v9;
  v20 = @"contentLanguage";
  v10 = v5;
  if (!v5)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = v10;
  v21 = @"contentGenre";
  v11 = v6;
  if (!v6)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = v11;
  v22 = @"timeSpent";
  v12 = v7;
  if (!v7)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v18 count:{5, v16}];
  if (v7)
  {
    if (v6)
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (v6)
    {
LABEL_16:
      if (v5)
      {
        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  if (v5)
  {
LABEL_17:
    if (v4)
    {
      goto LABEL_18;
    }

LABEL_25:

    if (v3)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

LABEL_24:

  if (!v4)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_26:

LABEL_19:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMAppLanguageConsumption)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"dataSource"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v35 = 0;
LABEL_9:
    v9 = [v6 objectForKeyedSubscript:@"adamID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          goto LABEL_43;
        }

        v16 = objc_alloc(MEMORY[0x1E696ABC0]);
        v17 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"adamID"];
        v43 = v34;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v15 = 0;
        *a4 = [v16 initWithDomain:v17 code:2 userInfo:v10];
        a4 = 0;
        goto LABEL_42;
      }

      v33 = v9;
    }

    else
    {
      v33 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"contentLanguage"];
    v32 = v7;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v34 = 0;
          v15 = 0;
          a4 = v33;
          goto LABEL_42;
        }

        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentLanguage"];
        v41 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v34 = 0;
        v15 = 0;
        *a4 = [v18 initWithDomain:v19 code:2 userInfo:v11];
        goto LABEL_50;
      }

      v34 = v10;
    }

    else
    {
      v34 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"contentGenre"];
    if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v12 = 0;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
LABEL_18:
      v13 = [v6 objectForKeyedSubscript:@"timeSpent"];
      if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v14 = 0;
LABEL_21:
        a4 = v33;
        v15 = -[BMAppLanguageConsumption initWithDataSource:adamID:contentLanguage:contentGenre:timeSpent:](self, "initWithDataSource:adamID:contentLanguage:contentGenre:timeSpent:", [v35 intValue], v33, v34, v12, v14);
        self = v15;
LABEL_40:

LABEL_41:
        v7 = v32;
LABEL_42:

        goto LABEL_43;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
        goto LABEL_21;
      }

      if (a4)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeSpent"];
        v37 = v22;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        *a4 = [v31 initWithDomain:v29 code:2 userInfo:v23];
      }

      v14 = 0;
      v15 = 0;
LABEL_39:
      a4 = v33;
      goto LABEL_40;
    }

    if (a4)
    {
      v30 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v38 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentGenre"];
      v39 = v14;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v21 = [v30 initWithDomain:v20 code:2 userInfo:v13];
      v12 = 0;
      v15 = 0;
      *a4 = v21;
      goto LABEL_39;
    }

    v12 = 0;
    v15 = 0;
LABEL_50:
    a4 = v33;
    goto LABEL_41;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_8:
    v35 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMAppLanguageConsumptionDataSourceFromString(v7)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v35 = 0;
    v15 = 0;
    goto LABEL_44;
  }

  v26 = objc_alloc(MEMORY[0x1E696ABC0]);
  v27 = *MEMORY[0x1E698F240];
  v44 = *MEMORY[0x1E696A578];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"dataSource"];
  v45[0] = v28;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v35 = 0;
  v15 = 0;
  *a4 = [v26 initWithDomain:v27 code:2 userInfo:v9];
  a4 = v28;
LABEL_43:

LABEL_44:
  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAppLanguageConsumption *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  dataSource = self->_dataSource;
  v8 = v4;
  PBDataWriterWriteUint32Field();
  if (self->_adamID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentLanguage)
  {
    PBDataWriterWriteStringField();
  }

  v6 = v8;
  if (self->_contentGenre)
  {
    PBDataWriterWriteStringField();
    v6 = v8;
  }

  if (self->_hasTimeSpent)
  {
    timeSpent = self->_timeSpent;
    PBDataWriterWriteUint32Field();
    v6 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = BMAppLanguageConsumption;
  v5 = [(BMEventBase *)&v36 init];
  if (!v5)
  {
    goto LABEL_59;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_57;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v37 = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v37 & 0x7F) << v7;
        if ((v37 & 0x80) == 0)
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
        goto LABEL_57;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          while (1)
          {
            v37 = 0;
            v29 = [v4 position] + 1;
            if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 1, v30 <= objc_msgSend(v4, "length")))
            {
              v31 = [v4 data];
              [v31 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v28 |= (v37 & 0x7F) << v26;
            if ((v37 & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            if (v27++ > 8)
            {
              goto LABEL_50;
            }
          }

          if (([v4 hasError] & 1) != 0 || v28 > 7)
          {
LABEL_50:
            LODWORD(v28) = 0;
          }

          v5->_dataSource = v28;
          goto LABEL_56;
        }

        if (v15 != 2)
        {
LABEL_46:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_58;
          }

          goto LABEL_56;
        }

        v23 = PBReaderReadString();
        v24 = 32;
        goto LABEL_36;
      }

      if (v15 == 3)
      {
        break;
      }

      if (v15 == 4)
      {
        v23 = PBReaderReadString();
        v24 = 48;
        goto LABEL_36;
      }

      if (v15 != 6)
      {
        goto LABEL_46;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      v5->_hasTimeSpent = 1;
      while (1)
      {
        v37 = 0;
        v19 = [v4 position] + 1;
        if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
        {
          v21 = [v4 data];
          [v21 getBytes:&v37 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v18 |= (v37 & 0x7F) << v16;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v13 = v17++ >= 9;
        if (v13)
        {
          v22 = 0;
          goto LABEL_55;
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

LABEL_55:
      v5->_timeSpent = v22;
LABEL_56:
      v33 = [v4 position];
      if (v33 >= [v4 length])
      {
        goto LABEL_57;
      }
    }

    v23 = PBReaderReadString();
    v24 = 40;
LABEL_36:
    v25 = *(&v5->super.super.isa + v24);
    *(&v5->super.super.isa + v24) = v23;

    goto LABEL_56;
  }

LABEL_57:
  if ([v4 hasError])
  {
LABEL_58:
    v34 = 0;
  }

  else
  {
LABEL_59:
    v34 = v5;
  }

  return v34;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMAppLanguageConsumptionDataSourceAsString([(BMAppLanguageConsumption *)self dataSource]);
  v5 = [(BMAppLanguageConsumption *)self adamID];
  v6 = [(BMAppLanguageConsumption *)self contentLanguage];
  v7 = [(BMAppLanguageConsumption *)self contentGenre];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAppLanguageConsumption timeSpent](self, "timeSpent")}];
  v9 = [v3 initWithFormat:@"BMAppLanguageConsumption with dataSource: %@, adamID: %@, contentLanguage: %@, contentGenre: %@, timeSpent: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMAppLanguageConsumption)initWithDataSource:(int)a3 adamID:(id)a4 contentLanguage:(id)a5 contentGenre:(id)a6 timeSpent:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = BMAppLanguageConsumption;
  v17 = [(BMEventBase *)&v20 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    v17->_dataSource = a3;
    objc_storeStrong(&v17->_adamID, a4);
    objc_storeStrong(&v17->_contentLanguage, a5);
    objc_storeStrong(&v17->_contentGenre, a6);
    if (v16)
    {
      v17->_hasTimeSpent = 1;
      v18 = [v16 unsignedIntValue];
    }

    else
    {
      v18 = 0;
      v17->_hasTimeSpent = 0;
    }

    v17->_timeSpent = v18;
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"dataSource" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"adamID" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentLanguage" number:3 type:13 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentGenre" number:4 type:13 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeSpent" number:6 type:4 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
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

    v8 = [[BMAppLanguageConsumption alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end