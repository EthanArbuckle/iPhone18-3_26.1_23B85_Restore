@interface BMMomentsEventDataEventBundleOutlierMetadata
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEventDataEventBundleOutlierMetadata)initWithIsSignificant:(id)significant outlierScore:(id)score updatedDate:(id)date;
- (BMMomentsEventDataEventBundleOutlierMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)updatedDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEventDataEventBundleOutlierMetadata

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if ((!-[BMMomentsEventDataEventBundleOutlierMetadata hasIsSignificant](self, "hasIsSignificant") && ![v5 hasIsSignificant] || -[BMMomentsEventDataEventBundleOutlierMetadata hasIsSignificant](self, "hasIsSignificant") && objc_msgSend(v5, "hasIsSignificant") && (v6 = -[BMMomentsEventDataEventBundleOutlierMetadata isSignificant](self, "isSignificant"), v6 == objc_msgSend(v5, "isSignificant"))) && (!-[BMMomentsEventDataEventBundleOutlierMetadata hasOutlierScore](self, "hasOutlierScore") && !objc_msgSend(v5, "hasOutlierScore") || -[BMMomentsEventDataEventBundleOutlierMetadata hasOutlierScore](self, "hasOutlierScore") && objc_msgSend(v5, "hasOutlierScore") && (-[BMMomentsEventDataEventBundleOutlierMetadata outlierScore](self, "outlierScore"), v8 = v7, objc_msgSend(v5, "outlierScore"), v8 == v9)))
    {
      updatedDate = [(BMMomentsEventDataEventBundleOutlierMetadata *)self updatedDate];
      updatedDate2 = [v5 updatedDate];
      if (updatedDate == updatedDate2)
      {
        v14 = 1;
      }

      else
      {
        updatedDate3 = [(BMMomentsEventDataEventBundleOutlierMetadata *)self updatedDate];
        updatedDate4 = [v5 updatedDate];
        v14 = [updatedDate3 isEqual:updatedDate4];
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSDate)updatedDate
{
  if (self->_hasRaw_updatedDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_updatedDate];
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
  v18[3] = *MEMORY[0x1E69E9840];
  if ([(BMMomentsEventDataEventBundleOutlierMetadata *)self hasIsSignificant])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleOutlierMetadata isSignificant](self, "isSignificant")}];
  }

  else
  {
    v3 = 0;
  }

  if (![(BMMomentsEventDataEventBundleOutlierMetadata *)self hasOutlierScore]|| ([(BMMomentsEventDataEventBundleOutlierMetadata *)self outlierScore], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleOutlierMetadata *)self outlierScore];
    v5 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleOutlierMetadata *)self outlierScore];
    v6 = [v5 numberWithDouble:?];
  }

  updatedDate = [(BMMomentsEventDataEventBundleOutlierMetadata *)self updatedDate];
  if (updatedDate)
  {
    v8 = MEMORY[0x1E696AD98];
    updatedDate2 = [(BMMomentsEventDataEventBundleOutlierMetadata *)self updatedDate];
    [updatedDate2 timeIntervalSince1970];
    v10 = [v8 numberWithDouble:?];
  }

  else
  {
    v10 = 0;
  }

  v17[0] = @"isSignificant";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  v17[1] = @"outlierScore";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v17[2] = @"updatedDate";
  null3 = v10;
  if (!v10)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = null3;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
  if (v10)
  {
    if (v6)
    {
      goto LABEL_19;
    }

LABEL_24:

    if (v3)
    {
      goto LABEL_20;
    }

    goto LABEL_25;
  }

  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_19:
  if (v3)
  {
    goto LABEL_20;
  }

LABEL_25:

LABEL_20:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMMomentsEventDataEventBundleOutlierMetadata)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v37[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"isSignificant"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"outlierScore"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_25;
        }

        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"outlierScore"];
        v35 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        v23 = [v30 initWithDomain:v22 code:2 userInfo:v11];
        v10 = 0;
        selfCopy = 0;
        *error = v23;
        goto LABEL_24;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"updatedDate"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
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
          v24 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v12 = [v24 dateFromString:v11];

          goto LABEL_23;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (error)
          {
            v31 = objc_alloc(MEMORY[0x1E696ABC0]);
            v29 = *MEMORY[0x1E698F240];
            v32 = *MEMORY[0x1E696A578];
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"updatedDate"];
            v33 = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
            *error = [v31 initWithDomain:v29 code:2 userInfo:v28];
          }

          v12 = 0;
          selfCopy = 0;
          goto LABEL_24;
        }

        v18 = v11;
      }

      v12 = v18;
    }

    else
    {
      v12 = 0;
    }

LABEL_23:
    self = [(BMMomentsEventDataEventBundleOutlierMetadata *)self initWithIsSignificant:v8 outlierScore:v10 updatedDate:v12];
    selfCopy = self;
LABEL_24:

    goto LABEL_25;
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
    selfCopy = 0;
    goto LABEL_26;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v36 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isSignificant"];
  v37[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
  v8 = 0;
  selfCopy = 0;
  *error = [v19 initWithDomain:v20 code:2 userInfo:v9];
LABEL_25:

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEventBundleOutlierMetadata *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_hasIsSignificant)
  {
    isSignificant = self->_isSignificant;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }

  if (self->_hasOutlierScore)
  {
    outlierScore = self->_outlierScore;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }

  if (self->_hasRaw_updatedDate)
  {
    raw_updatedDate = self->_raw_updatedDate;
    PBDataWriterWriteDoubleField();
    toCopy = v8;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v34.receiver = self;
  v34.super_class = BMMomentsEventDataEventBundleOutlierMetadata;
  v5 = [(BMEventBase *)&v34 init];
  if (!v5)
  {
    goto LABEL_48;
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
        LOBYTE(v35) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v35 & 0x7F) << v7;
        if ((v35 & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v5->_hasRaw_updatedDate = 1;
        v35 = 0;
        v25 = [fromCopy position] + 8;
        if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 8, v26 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v28 = v35;
        v29 = 24;
      }

      else
      {
        if (v15 != 2)
        {
          if (v15 == 1)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            v5->_hasIsSignificant = 1;
            while (1)
            {
              LOBYTE(v35) = 0;
              v19 = [fromCopy position] + 1;
              if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v18 |= (v35 & 0x7F) << v16;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v13 = v17++ >= 9;
              if (v13)
              {
                LOBYTE(v22) = 0;
                goto LABEL_39;
              }
            }

            v22 = (v18 != 0) & ~[fromCopy hasError];
LABEL_39:
            v5->_isSignificant = v22;
          }

          else if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_47;
          }

          goto LABEL_45;
        }

        v5->_hasOutlierScore = 1;
        v35 = 0;
        v23 = [fromCopy position] + 8;
        if (v23 >= [fromCopy position] && (v24 = objc_msgSend(fromCopy, "position") + 8, v24 <= objc_msgSend(fromCopy, "length")))
        {
          data4 = [fromCopy data];
          [data4 getBytes:&v35 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v28 = v35;
        v29 = 40;
      }

      *(&v5->super.super.isa + v29) = v28;
LABEL_45:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_47:
    v32 = 0;
  }

  else
  {
LABEL_48:
    v32 = v5;
  }

  return v32;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventDataEventBundleOutlierMetadata isSignificant](self, "isSignificant")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleOutlierMetadata *)self outlierScore];
  v6 = [v5 numberWithDouble:?];
  updatedDate = [(BMMomentsEventDataEventBundleOutlierMetadata *)self updatedDate];
  v8 = [v3 initWithFormat:@"BMMomentsEventDataEventBundleOutlierMetadata with isSignificant: %@, outlierScore: %@, updatedDate: %@", v4, v6, updatedDate];

  return v8;
}

- (BMMomentsEventDataEventBundleOutlierMetadata)initWithIsSignificant:(id)significant outlierScore:(id)score updatedDate:(id)date
{
  significantCopy = significant;
  scoreCopy = score;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = BMMomentsEventDataEventBundleOutlierMetadata;
  v11 = [(BMEventBase *)&v15 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    if (significantCopy)
    {
      v11->_hasIsSignificant = 1;
      v11->_isSignificant = [significantCopy BOOLValue];
    }

    else
    {
      v11->_hasIsSignificant = 0;
      v11->_isSignificant = 0;
    }

    if (scoreCopy)
    {
      v11->_hasOutlierScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v11->_hasOutlierScore = 0;
      v12 = -1.0;
    }

    v11->_outlierScore = v12;
    if (dateCopy)
    {
      v11->_hasRaw_updatedDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v11->_hasRaw_updatedDate = 0;
      v13 = -1.0;
    }

    v11->_raw_updatedDate = v13;
  }

  return v11;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSignificant" number:1 type:12 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"outlierScore" number:2 type:0 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"updatedDate" number:3 type:0 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSignificant" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"outlierScore" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"updatedDate" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMMomentsEventDataEventBundleOutlierMetadata alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end