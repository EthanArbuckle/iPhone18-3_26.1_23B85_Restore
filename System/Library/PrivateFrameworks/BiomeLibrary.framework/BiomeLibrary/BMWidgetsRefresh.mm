@interface BMWidgetsRefresh
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWidgetsRefresh)initWithBudgetID:(id)d extensionBundleID:(id)iD isDASInitiated:(id)initiated refreshDate:(id)date refreshReason:(id)reason;
- (BMWidgetsRefresh)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)refreshDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWidgetsRefresh

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    budgetID = [(BMWidgetsRefresh *)self budgetID];
    budgetID2 = [v5 budgetID];
    v8 = budgetID2;
    if (budgetID == budgetID2)
    {
    }

    else
    {
      budgetID3 = [(BMWidgetsRefresh *)self budgetID];
      budgetID4 = [v5 budgetID];
      v11 = [budgetID3 isEqual:budgetID4];

      if (!v11)
      {
        goto LABEL_18;
      }
    }

    extensionBundleID = [(BMWidgetsRefresh *)self extensionBundleID];
    extensionBundleID2 = [v5 extensionBundleID];
    v15 = extensionBundleID2;
    if (extensionBundleID == extensionBundleID2)
    {
    }

    else
    {
      extensionBundleID3 = [(BMWidgetsRefresh *)self extensionBundleID];
      extensionBundleID4 = [v5 extensionBundleID];
      v18 = [extensionBundleID3 isEqual:extensionBundleID4];

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

      isDASInitiated = [(BMWidgetsRefresh *)self isDASInitiated];
      if (isDASInitiated != [v5 isDASInitiated])
      {
        goto LABEL_18;
      }
    }

    refreshDate = [(BMWidgetsRefresh *)self refreshDate];
    refreshDate2 = [v5 refreshDate];
    v22 = refreshDate2;
    if (refreshDate == refreshDate2)
    {
    }

    else
    {
      refreshDate3 = [(BMWidgetsRefresh *)self refreshDate];
      refreshDate4 = [v5 refreshDate];
      v25 = [refreshDate3 isEqual:refreshDate4];

      if (!v25)
      {
LABEL_18:
        v12 = 0;
LABEL_19:

        goto LABEL_20;
      }
    }

    refreshReason = [(BMWidgetsRefresh *)self refreshReason];
    refreshReason2 = [v5 refreshReason];
    if (refreshReason == refreshReason2)
    {
      v12 = 1;
    }

    else
    {
      refreshReason3 = [(BMWidgetsRefresh *)self refreshReason];
      refreshReason4 = [v5 refreshReason];
      v12 = [refreshReason3 isEqual:refreshReason4];
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
  budgetID = [(BMWidgetsRefresh *)self budgetID];
  extensionBundleID = [(BMWidgetsRefresh *)self extensionBundleID];
  if ([(BMWidgetsRefresh *)self hasIsDASInitiated])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWidgetsRefresh isDASInitiated](self, "isDASInitiated")}];
  }

  else
  {
    v5 = 0;
  }

  refreshDate = [(BMWidgetsRefresh *)self refreshDate];
  if (refreshDate)
  {
    v7 = MEMORY[0x1E696AD98];
    refreshDate2 = [(BMWidgetsRefresh *)self refreshDate];
    [refreshDate2 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  refreshReason = [(BMWidgetsRefresh *)self refreshReason];
  v21 = @"budgetID";
  null = budgetID;
  if (!budgetID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19 = null;
  v26[0] = null;
  v22 = @"extensionBundleID";
  null2 = extensionBundleID;
  if (!extensionBundleID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26[1] = null2;
  v23 = @"isDASInitiated";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v24 = @"refreshDate";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25 = @"refreshReason";
  null5 = refreshReason;
  if (!refreshReason)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v21 count:{5, v19}];
  if (refreshReason)
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
    if (extensionBundleID)
    {
      goto LABEL_21;
    }

LABEL_28:

    if (budgetID)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

LABEL_27:

  if (!extensionBundleID)
  {
    goto LABEL_28;
  }

LABEL_21:
  if (budgetID)
  {
    goto LABEL_22;
  }

LABEL_29:

LABEL_22:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (BMWidgetsRefresh)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v55[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"budgetID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"extensionBundleID"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v45 = 0;
          v22 = 0;
          goto LABEL_37;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v24 = *MEMORY[0x1E698F240];
        v52 = *MEMORY[0x1E696A578];
        v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"extensionBundleID"];
        v53 = v43;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
        v45 = 0;
        v22 = 0;
        *errorCopy = [v23 initWithDomain:v24 code:2 userInfo:v10];
        goto LABEL_36;
      }

      v45 = v9;
    }

    else
    {
      v45 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isDASInitiated"];
    v42 = v8;
    selfCopy = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v43 = 0;
          v22 = 0;
          goto LABEL_36;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v50 = *MEMORY[0x1E696A578];
        errorCopy2 = error;
        error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDASInitiated"];
        errorCopy3 = error;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy3 forKeys:&v50 count:1];
        v43 = 0;
        v22 = 0;
        *errorCopy2 = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_35:

        self = selfCopy;
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

    v11 = [dictionaryCopy objectForKeyedSubscript:@"refreshDate"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy8 = error;
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
          errorCopy8 = error;
          v28 = objc_alloc_init(MEMORY[0x1E696AC80]);
          error = [v28 dateFromString:v11];

          goto LABEL_30;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v22 = 0;
            goto LABEL_35;
          }

          v41 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy6 = error;
          v36 = *MEMORY[0x1E698F240];
          v48 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"refreshDate"];
          v49 = v30;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v37 = [v41 initWithDomain:v36 code:2 userInfo:v29];
          error = 0;
          v22 = 0;
          *errorCopy6 = v37;
          goto LABEL_34;
        }

        errorCopy8 = error;
        v18 = v11;
      }

      error = v18;
    }

    else
    {
      errorCopy8 = error;
      error = 0;
    }

LABEL_30:
    v29 = [dictionaryCopy objectForKeyedSubscript:@"refreshReason"];
    if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy8)
        {
          v40 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = *MEMORY[0x1E698F240];
          v46 = *MEMORY[0x1E696A578];
          v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"refreshReason"];
          v47 = v33;
          v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
          *errorCopy8 = [v40 initWithDomain:v38 code:2 userInfo:v34];
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

    v22 = [(BMWidgetsRefresh *)selfCopy initWithBudgetID:v42 extensionBundleID:v45 isDASInitiated:v43 refreshDate:error refreshReason:v30];
    selfCopy = v22;
LABEL_34:

    goto LABEL_35;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    goto LABEL_4;
  }

  if (!error)
  {
    v8 = 0;
    v22 = 0;
    goto LABEL_38;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy9 = error;
  v21 = *MEMORY[0x1E698F240];
  v54 = *MEMORY[0x1E696A578];
  v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"budgetID"];
  v55[0] = v45;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:&v54 count:1];
  v8 = 0;
  v22 = 0;
  *errorCopy9 = [v19 initWithDomain:v21 code:2 userInfo:v9];
LABEL_37:

LABEL_38:
  v31 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWidgetsRefresh *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_budgetID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_extensionBundleID)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_hasIsDASInitiated)
  {
    isDASInitiated = self->_isDASInitiated;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_hasRaw_refreshDate)
  {
    raw_refreshDate = self->_raw_refreshDate;
    PBDataWriterWriteDoubleField();
    toCopy = v7;
  }

  if (self->_refreshReason)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v32.receiver = self;
  v32.super_class = BMWidgetsRefresh;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
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
        LOBYTE(v33) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
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

      v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
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
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
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

          v24 = (v20 != 0) & ~[fromCopy hasError];
LABEL_43:
          v5->_isDASInitiated = v24;
          goto LABEL_46;
        }

        if (v15 == 4)
        {
          v5->_hasRaw_refreshDate = 1;
          v33 = 0.0;
          v25 = [fromCopy position] + 8;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v33 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
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
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
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
  budgetID = [(BMWidgetsRefresh *)self budgetID];
  extensionBundleID = [(BMWidgetsRefresh *)self extensionBundleID];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMWidgetsRefresh isDASInitiated](self, "isDASInitiated")}];
  refreshDate = [(BMWidgetsRefresh *)self refreshDate];
  refreshReason = [(BMWidgetsRefresh *)self refreshReason];
  v9 = [v3 initWithFormat:@"BMWidgetsRefresh with budgetID: %@, extensionBundleID: %@, isDASInitiated: %@, refreshDate: %@, refreshReason: %@", budgetID, extensionBundleID, v6, refreshDate, refreshReason];

  return v9;
}

- (BMWidgetsRefresh)initWithBudgetID:(id)d extensionBundleID:(id)iD isDASInitiated:(id)initiated refreshDate:(id)date refreshReason:(id)reason
{
  dCopy = d;
  iDCopy = iD;
  initiatedCopy = initiated;
  dateCopy = date;
  reasonCopy = reason;
  v21.receiver = self;
  v21.super_class = BMWidgetsRefresh;
  v18 = [(BMEventBase *)&v21 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v18->_budgetID, d);
    objc_storeStrong(&v18->_extensionBundleID, iD);
    if (initiatedCopy)
    {
      v18->_hasIsDASInitiated = 1;
      v18->_isDASInitiated = [initiatedCopy BOOLValue];
    }

    else
    {
      v18->_hasIsDASInitiated = 0;
      v18->_isDASInitiated = 0;
    }

    if (dateCopy)
    {
      v18->_hasRaw_refreshDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v18->_hasRaw_refreshDate = 0;
      v19 = -1.0;
    }

    v18->_raw_refreshDate = v19;
    objc_storeStrong(&v18->_refreshReason, reason);
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