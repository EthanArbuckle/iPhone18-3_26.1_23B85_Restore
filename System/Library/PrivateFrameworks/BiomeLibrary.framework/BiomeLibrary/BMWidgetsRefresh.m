@interface BMWidgetsRefresh
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMWidgetsRefresh)initWithBudgetID:(id)a3 extensionBundleID:(id)a4 isDASInitiated:(id)a5 refreshDate:(id)a6 refreshReason:(id)a7;
- (BMWidgetsRefresh)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)refreshDate;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMWidgetsRefresh

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMWidgetsRefresh *)self budgetID];
    v7 = [v5 budgetID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMWidgetsRefresh *)self budgetID];
      v10 = [v5 budgetID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    v13 = [(BMWidgetsRefresh *)self extensionBundleID];
    v14 = [v5 extensionBundleID];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMWidgetsRefresh *)self extensionBundleID];
      v17 = [v5 extensionBundleID];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_18;
      }
    }

    if (-[BMWidgetsRefresh hasIsDASInitiated](self, "hasIsDASInitiated") || [v5 hasIsDASInitiated])
    {
      if (![(BMWidgetsRefresh *)self hasIsDASInitiated])
      {
        goto LABEL_18;
      }

      if (![v5 hasIsDASInitiated])
      {
        goto LABEL_18;
      }

      v19 = [(BMWidgetsRefresh *)self isDASInitiated];
      if (v19 != [v5 isDASInitiated])
      {
        goto LABEL_18;
      }
    }

    v20 = [(BMWidgetsRefresh *)self refreshDate];
    v21 = [v5 refreshDate];
    v22 = v21;
    if (v20 == v21)
    {
    }

    else
    {
      v23 = [(BMWidgetsRefresh *)self refreshDate];
      v24 = [v5 refreshDate];
      v25 = [v23 isEqual:v24];

      if (!v25)
      {
LABEL_18:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    v27 = [(BMWidgetsRefresh *)self refreshReason];
    v28 = [v5 refreshReason];
    if (v27 == v28)
    {
      v12 = 1;
    }

    else
    {
      v29 = [(BMWidgetsRefresh *)self refreshReason];
      v30 = [v5 refreshReason];
      v12 = [v29 isEqual:v30];
    }

    goto LABEL_19;
  }

  v12 = 0;
LABEL_20:

  return v12;
}

- (NSDate)refreshDate
{
  if (self->_hasRaw_refreshDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_refreshDate];
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
  v26[5] = *MEMORY[0x1E69E9840];
  v3 = [(BMWidgetsRefresh *)self budgetID];
  v4 = [(BMWidgetsRefresh *)self extensionBundleID];
  if ([(BMWidgetsRefresh *)self hasIsDASInitiated])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWidgetsRefresh isDASInitiated](self, "isDASInitiated")}];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(BMWidgetsRefresh *)self refreshDate];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMWidgetsRefresh *)self refreshDate];
    [v8 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  v10 = [(BMWidgetsRefresh *)self refreshReason];
  v21 = @"budgetID";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v19 = v11;
  v26[0] = v11;
  v22 = @"extensionBundleID";
  v12 = v4;
  if (!v4)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = v12;
  v23 = @"isDASInitiated";
  v13 = v5;
  if (!v5)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v13;
  v24 = @"refreshDate";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v14;
  v25 = @"refreshReason";
  v15 = v10;
  if (!v10)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (v9)
    {
LABEL_19:
      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_27;
    }
  }

  if (v5)
  {
LABEL_20:
    if (v4)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (v3)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!v4)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (v3)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMWidgetsRefresh)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v55[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"budgetID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"extensionBundleID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v45 = 0;
          v22 = 0;
          goto LABEL_37;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v39 = a4;
        v24 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"extensionBundleID"];
        v53 = v43;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v45 = 0;
        v22 = 0;
        *v39 = [v23 initWithDomain:v24 code:2 userInfo:v10];
        goto LABEL_36;
      }

      v45 = v9;
    }

    else
    {
      v45 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"isDASInitiated"];
    v42 = v8;
    v44 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v43 = 0;
          v22 = 0;
          goto LABEL_36;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        v27 = a4;
        a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDASInitiated"];
        v51 = a4;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v43 = 0;
        v22 = 0;
        *v27 = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_35:

        self = v44;
        v8 = v42;
LABEL_36:

        goto LABEL_37;
      }

      v43 = v10;
    }

    else
    {
      v43 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"refreshDate"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = a4;
        v13 = MEMORY[0x1E695DF00];
        v14 = v11;
        v15 = [v13 alloc];
        [v14 doubleValue];
        v17 = v16;

        v18 = [v15 initWithTimeIntervalSince1970:v17];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = a4;
          v28 = objc_alloc_init(MEMORY[0x1E696AC80]);
          a4 = [v28 dateFromString:v11];

          goto LABEL_30;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v22 = 0;
            goto LABEL_35;
          }

          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          v35 = a4;
          v36 = *MEMORY[0x1E698F240];
          v48 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"refreshDate"];
          v49 = v30;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v37 = [v41 initWithDomain:v36 code:2 userInfo:v29];
          a4 = 0;
          v22 = 0;
          *v35 = v37;
          goto LABEL_34;
        }

        v12 = a4;
        v18 = v11;
      }

      a4 = v18;
    }

    else
    {
      v12 = a4;
      a4 = 0;
    }

LABEL_30:
    v29 = [v6 objectForKeyedSubscript:@"refreshReason"];
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v12)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v46 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"refreshReason"];
          v47 = v33;
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          *v12 = [v40 initWithDomain:v38 code:2 userInfo:v34];
        }

        v30 = 0;
        v22 = 0;
        goto LABEL_34;
      }

      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v22 = [(BMWidgetsRefresh *)v44 initWithBudgetID:v42 extensionBundleID:v45 isDASInitiated:v43 refreshDate:a4 refreshReason:v30];
    v44 = v22;
LABEL_34:

    goto LABEL_35;
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
    v22 = 0;
    goto LABEL_38;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = a4;
  v21 = *MEMORY[0x1E698F240];
  v54 = *MEMORY[0x1E696A578];
  v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"budgetID"];
  v55[0] = v45;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v8 = 0;
  v22 = 0;
  *v20 = [v19 initWithDomain:v21 code:2 userInfo:v9];
LABEL_37:

LABEL_38:
  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWidgetsRefresh *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_budgetID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_extensionBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasIsDASInitiated)
  {
    isDASInitiated = self->_isDASInitiated;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }

  if (self->_hasRaw_refreshDate)
  {
    raw_refreshDate = self->_raw_refreshDate;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }

  if (self->_refreshReason)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMWidgetsRefresh;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
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
        LOBYTE(v33) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v33) & 0x7F) << v7;
        if ((LOBYTE(v33) & 0x80) == 0)
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
      if ((v14 >> 3) <= 2)
      {
        if (v15 == 1)
        {
          v16 = PBReaderReadString();
          v17 = 40;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_40:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_48;
            }

            goto LABEL_46;
          }

          v16 = PBReaderReadString();
          v17 = 48;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v5->_hasIsDASInitiated = 1;
          while (1)
          {
            LOBYTE(v33) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v33 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (LOBYTE(v33) & 0x7F) << v18;
            if ((LOBYTE(v33) & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v13 = v19++ >= 9;
            if (v13)
            {
              LOBYTE(v24) = 0;
              goto LABEL_43;
            }
          }

          v24 = (v20 != 0) & ~[v4 hasError];
LABEL_43:
          v5->_isDASInitiated = v24;
          goto LABEL_46;
        }

        if (v15 == 4)
        {
          v5->_hasRaw_refreshDate = 1;
          v33 = 0.0;
          v25 = [v4 position] + 8;
          if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
          {
            v28 = [v4 data];
            [v28 getBytes:&v33 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_refreshDate = v33;
          goto LABEL_46;
        }

        if (v15 != 5)
        {
          goto LABEL_40;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      v27 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_46:
      v29 = [v4 position];
    }

    while (v29 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_48:
    v30 = 0;
  }

  else
  {
LABEL_49:
    v30 = v5;
  }

  return v30;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMWidgetsRefresh *)self budgetID];
  v5 = [(BMWidgetsRefresh *)self extensionBundleID];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWidgetsRefresh isDASInitiated](self, "isDASInitiated")}];
  v7 = [(BMWidgetsRefresh *)self refreshDate];
  v8 = [(BMWidgetsRefresh *)self refreshReason];
  v9 = [v3 initWithFormat:@"BMWidgetsRefresh with budgetID: %@, extensionBundleID: %@, isDASInitiated: %@, refreshDate: %@, refreshReason: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (BMWidgetsRefresh)initWithBudgetID:(id)a3 extensionBundleID:(id)a4 isDASInitiated:(id)a5 refreshDate:(id)a6 refreshReason:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v21.receiver = self;
  v21.super_class = BMWidgetsRefresh;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_budgetID, a3);
    objc_storeStrong(&v18->_extensionBundleID, a4);
    if (v15)
    {
      v18->_hasIsDASInitiated = 1;
      v18->_isDASInitiated = [v15 BOOLValue];
    }

    else
    {
      v18->_hasIsDASInitiated = 0;
      v18->_isDASInitiated = 0;
    }

    if (v16)
    {
      v18->_hasRaw_refreshDate = 1;
      [v16 timeIntervalSince1970];
    }

    else
    {
      v18->_hasRaw_refreshDate = 0;
      v19 = -1.0;
    }

    v18->_raw_refreshDate = v19;
    objc_storeStrong(&v18->_refreshReason, a7);
  }

  return v18;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"budgetID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"extensionBundleID" number:2 type:13 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDASInitiated" number:3 type:12 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"refreshDate" number:4 type:0 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"refreshReason" number:5 type:13 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"budgetID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"extensionBundleID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDASInitiated" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"refreshDate" dataType:3 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:2];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"refreshReason" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v10[0] = v2;
  v10[1] = v3;
  v10[2] = v4;
  v10[3] = v5;
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

    v8 = [[BMWidgetsRefresh alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end