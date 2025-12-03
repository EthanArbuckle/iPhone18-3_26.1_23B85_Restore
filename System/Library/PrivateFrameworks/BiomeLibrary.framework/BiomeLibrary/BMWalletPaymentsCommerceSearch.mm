@interface BMWalletPaymentsCommerceSearch
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMWalletPaymentsCommerceSearch)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMWalletPaymentsCommerceSearch)initWithTagSource:(int)source tagType:(int)type passType:(int)passType tagClickDate:(id)date;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMWalletPaymentsCommerceSearch

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    tagSource = [(BMWalletPaymentsCommerceSearch *)self tagSource];
    if (tagSource != [v5 tagSource])
    {
      goto LABEL_11;
    }

    tagType = [(BMWalletPaymentsCommerceSearch *)self tagType];
    if (tagType != [v5 tagType])
    {
      goto LABEL_11;
    }

    passType = [(BMWalletPaymentsCommerceSearch *)self passType];
    if (passType != [v5 passType])
    {
      goto LABEL_11;
    }

    if (!-[BMWalletPaymentsCommerceSearch hasTagClickDate](self, "hasTagClickDate") && ![v5 hasTagClickDate])
    {
      v12 = 1;
      goto LABEL_12;
    }

    if (-[BMWalletPaymentsCommerceSearch hasTagClickDate](self, "hasTagClickDate") && [v5 hasTagClickDate])
    {
      [(BMWalletPaymentsCommerceSearch *)self tagClickDate];
      v10 = v9;
      [v5 tagClickDate];
      v12 = v10 == v11;
    }

    else
    {
LABEL_11:
      v12 = 0;
    }

LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceSearch tagSource](self, "tagSource")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceSearch tagType](self, "tagType")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMWalletPaymentsCommerceSearch passType](self, "passType")}];
  if (![(BMWalletPaymentsCommerceSearch *)self hasTagClickDate]|| ([(BMWalletPaymentsCommerceSearch *)self tagClickDate], fabs(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMWalletPaymentsCommerceSearch *)self tagClickDate];
    v7 = MEMORY[0x1E696AD98];
    [(BMWalletPaymentsCommerceSearch *)self tagClickDate];
    v8 = [v7 numberWithDouble:?];
  }

  v16[0] = @"tagSource";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = null;
  v16[1] = @"tagType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = null2;
  v16[2] = @"passType";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = null3;
  v16[3] = @"tagClickDate";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = null4;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v8)
  {
    if (v5)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (v5)
    {
LABEL_15:
      if (v4)
      {
        goto LABEL_16;
      }

LABEL_22:

      if (v3)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_23:

LABEL_17:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMWalletPaymentsCommerceSearch)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v41[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"tagSource"];
  selfCopy = self;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v33 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v33 = 0;
          selfCopy2 = 0;
          goto LABEL_31;
        }

        v20 = objc_alloc(MEMORY[0x1E696ABC0]);
        v21 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"tagSource"];
        v41[0] = v22;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
        v33 = 0;
        selfCopy2 = 0;
        *error = [v20 initWithDomain:v21 code:2 userInfo:v8];
        error = v22;
        goto LABEL_45;
      }

      v33 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceSearchTagSourceFromString(v7)];
    }
  }

  else
  {
    v33 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"tagType"];
  if (v8)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
LABEL_15:
        v30 = v9;
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceSearchTagTypeFromString(v8)];
        goto LABEL_15;
      }

      if (error)
      {
        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v24 = *MEMORY[0x1E698F240];
        v38 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"tagType"];
        v39 = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
        selfCopy2 = 0;
        *error = [v23 initWithDomain:v24 code:2 userInfo:v10];
        error = 0;
        self = selfCopy;
        goto LABEL_29;
      }

      selfCopy2 = 0;
LABEL_45:
      self = selfCopy;
      goto LABEL_30;
    }
  }

  v30 = 0;
LABEL_16:
  v10 = [dictionaryCopy objectForKeyedSubscript:@"passType"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v10;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          selfCopy2 = 0;
          error = v30;
          goto LABEL_29;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v27 = *MEMORY[0x1E698F240];
        v36 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"passType"];
        v37 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v28 = [v25 initWithDomain:v27 code:2 userInfo:v13];
        v11 = 0;
        selfCopy2 = 0;
        *errorCopy = v28;
        error = v30;
        self = selfCopy;
        goto LABEL_28;
      }

      v12 = [MEMORY[0x1E696AD98] numberWithInt:BMWalletPaymentsCommerceSearchPassTypeFromString(v10)];
    }

    v11 = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"tagClickDate"];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = *MEMORY[0x1E698F240];
        v34 = *MEMORY[0x1E696A578];
        v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"tagClickDate"];
        v35 = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
        *error = [v32 initWithDomain:v29 code:2 userInfo:v19];
      }

      v14 = 0;
      selfCopy2 = 0;
      error = v30;
      goto LABEL_28;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  error = v30;
  self = -[BMWalletPaymentsCommerceSearch initWithTagSource:tagType:passType:tagClickDate:](self, "initWithTagSource:tagType:passType:tagClickDate:", [v33 intValue], objc_msgSend(v30, "intValue"), objc_msgSend(v11, "intValue"), v14);
  selfCopy2 = self;
LABEL_28:

LABEL_29:
LABEL_30:

LABEL_31:
  v16 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMWalletPaymentsCommerceSearch *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  tagSource = self->_tagSource;
  PBDataWriterWriteUint32Field();
  tagType = self->_tagType;
  PBDataWriterWriteUint32Field();
  passType = self->_passType;
  PBDataWriterWriteUint32Field();
  if (self->_hasTagClickDate)
  {
    tagClickDate = self->_tagClickDate;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v40.receiver = self;
  v40.super_class = BMWalletPaymentsCommerceSearch;
  v5 = [(BMEventBase *)&v40 init];
  if (!v5)
  {
    goto LABEL_73;
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
        LOBYTE(v41) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v41) & 0x7F) << v7;
        if ((LOBYTE(v41) & 0x80) == 0)
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
        if (v15 == 4)
        {
          v5->_hasTagClickDate = 1;
          v41 = 0.0;
          v33 = [fromCopy position] + 8;
          if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 8, v34 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v5->_tagClickDate = v41;
          goto LABEL_70;
        }

        if (v15 != 3)
        {
LABEL_41:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_72;
          }

          goto LABEL_70;
        }

        v23 = 0;
        v24 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v41) = 0;
          v25 = [fromCopy position] + 1;
          if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v41) & 0x7F) << v23;
          if ((LOBYTE(v41) & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            goto LABEL_61;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 2)
        {
LABEL_61:
          LODWORD(v18) = 0;
        }

        v35 = 32;
      }

      else if (v15 == 1)
      {
        v28 = 0;
        v29 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v41) = 0;
          v30 = [fromCopy position] + 1;
          if (v30 >= [fromCopy position] && (v31 = objc_msgSend(fromCopy, "position") + 1, v31 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v41) & 0x7F) << v28;
          if ((LOBYTE(v41) & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v22 = v29++ > 8;
          if (v22)
          {
            goto LABEL_65;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 2)
        {
LABEL_65:
          LODWORD(v18) = 0;
        }

        v35 = 24;
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_41;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v41) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v41 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (LOBYTE(v41) & 0x7F) << v16;
          if ((LOBYTE(v41) & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v22 = v17++ > 8;
          if (v22)
          {
            goto LABEL_57;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 0x11)
        {
LABEL_57:
          LODWORD(v18) = 0;
        }

        v35 = 28;
      }

      *(&v5->super.super.isa + v35) = v18;
LABEL_70:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_72:
    v38 = 0;
  }

  else
  {
LABEL_73:
    v38 = v5;
  }

  return v38;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMWalletPaymentsCommerceSearchTagSourceAsString([(BMWalletPaymentsCommerceSearch *)self tagSource]);
  v5 = BMWalletPaymentsCommerceSearchTagTypeAsString([(BMWalletPaymentsCommerceSearch *)self tagType]);
  v6 = BMWalletPaymentsCommerceSearchPassTypeAsString([(BMWalletPaymentsCommerceSearch *)self passType]);
  v7 = MEMORY[0x1E696AD98];
  [(BMWalletPaymentsCommerceSearch *)self tagClickDate];
  v8 = [v7 numberWithDouble:?];
  v9 = [v3 initWithFormat:@"BMWalletPaymentsCommerceSearch with tagSource: %@, tagType: %@, passType: %@, tagClickDate: %@", v4, v5, v6, v8];

  return v9;
}

- (BMWalletPaymentsCommerceSearch)initWithTagSource:(int)source tagType:(int)type passType:(int)passType tagClickDate:(id)date
{
  dateCopy = date;
  v14.receiver = self;
  v14.super_class = BMWalletPaymentsCommerceSearch;
  v11 = [(BMEventBase *)&v14 init];
  if (v11)
  {
    v11->_dataVersion = [objc_opt_class() latestDataVersion];
    v11->_tagSource = source;
    v11->_tagType = type;
    v11->_passType = passType;
    if (dateCopy)
    {
      v11->_hasTagClickDate = 1;
      [dateCopy doubleValue];
    }

    else
    {
      v11->_hasTagClickDate = 0;
      v12 = -1.0;
    }

    v11->_tagClickDate = v12;
  }

  return v11;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tagSource" number:1 type:4 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tagType" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"passType" number:3 type:4 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"tagClickDate" number:4 type:0 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tagSource" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tagType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"passType" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"tagClickDate" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMWalletPaymentsCommerceSearch alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end