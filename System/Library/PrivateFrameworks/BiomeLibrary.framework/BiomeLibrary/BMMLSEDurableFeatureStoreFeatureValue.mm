@interface BMMLSEDurableFeatureStoreFeatureValue
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMLSEDurableFeatureStoreFeatureValue)initWithIntValue:(id)value doubleValue:(id)doubleValue stringValue:(id)stringValue BOOLValue:(id)lValue histogramValue:(id)histogramValue missingReason:(int)reason;
- (BMMLSEDurableFeatureStoreFeatureValue)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMLSEDurableFeatureStoreFeatureValue

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (-[BMMLSEDurableFeatureStoreFeatureValue hasIntValue](self, "hasIntValue") || [v5 hasIntValue])
    {
      if (![(BMMLSEDurableFeatureStoreFeatureValue *)self hasIntValue])
      {
        goto LABEL_24;
      }

      if (![v5 hasIntValue])
      {
        goto LABEL_24;
      }

      intValue = [(BMMLSEDurableFeatureStoreFeatureValue *)self intValue];
      if (intValue != [v5 intValue])
      {
        goto LABEL_24;
      }
    }

    if (-[BMMLSEDurableFeatureStoreFeatureValue hasDoubleValue](self, "hasDoubleValue") || [v5 hasDoubleValue])
    {
      if (![(BMMLSEDurableFeatureStoreFeatureValue *)self hasDoubleValue])
      {
        goto LABEL_24;
      }

      if (![v5 hasDoubleValue])
      {
        goto LABEL_24;
      }

      [(BMMLSEDurableFeatureStoreFeatureValue *)self doubleValue];
      v8 = v7;
      [v5 doubleValue];
      if (v8 != v9)
      {
        goto LABEL_24;
      }
    }

    stringValue = [(BMMLSEDurableFeatureStoreFeatureValue *)self stringValue];
    stringValue2 = [v5 stringValue];
    v12 = stringValue2;
    if (stringValue == stringValue2)
    {
    }

    else
    {
      stringValue3 = [(BMMLSEDurableFeatureStoreFeatureValue *)self stringValue];
      stringValue4 = [v5 stringValue];
      v15 = [stringValue3 isEqual:stringValue4];

      if (!v15)
      {
        goto LABEL_24;
      }
    }

    if (-[BMMLSEDurableFeatureStoreFeatureValue hasBoolValue](self, "hasBoolValue") || [v5 hasBoolValue])
    {
      if (![(BMMLSEDurableFeatureStoreFeatureValue *)self hasBoolValue])
      {
        goto LABEL_24;
      }

      if (![v5 hasBoolValue])
      {
        goto LABEL_24;
      }

      bOOLValue = [(BMMLSEDurableFeatureStoreFeatureValue *)self BOOLValue];
      if (bOOLValue != [v5 BOOLValue])
      {
        goto LABEL_24;
      }
    }

    histogramValue = [(BMMLSEDurableFeatureStoreFeatureValue *)self histogramValue];
    histogramValue2 = [v5 histogramValue];
    v20 = histogramValue2;
    if (histogramValue == histogramValue2)
    {
    }

    else
    {
      histogramValue3 = [(BMMLSEDurableFeatureStoreFeatureValue *)self histogramValue];
      histogramValue4 = [v5 histogramValue];
      v23 = [histogramValue3 isEqual:histogramValue4];

      if (!v23)
      {
LABEL_24:
        v16 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    missingReason = [(BMMLSEDurableFeatureStoreFeatureValue *)self missingReason];
    v16 = missingReason == [v5 missingReason];
    goto LABEL_25;
  }

  v16 = 0;
LABEL_26:

  return v16;
}

- (id)jsonDictionary
{
  v26[6] = *MEMORY[0x1E69E9840];
  if ([(BMMLSEDurableFeatureStoreFeatureValue *)self hasIntValue])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEDurableFeatureStoreFeatureValue intValue](self, "intValue")}];
  }

  else
  {
    v3 = 0;
  }

  if (![(BMMLSEDurableFeatureStoreFeatureValue *)self hasDoubleValue]|| ([(BMMLSEDurableFeatureStoreFeatureValue *)self doubleValue], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMMLSEDurableFeatureStoreFeatureValue *)self doubleValue];
    v5 = MEMORY[0x1E696AD98];
    [(BMMLSEDurableFeatureStoreFeatureValue *)self doubleValue];
    v6 = [v5 numberWithDouble:?];
  }

  stringValue = [(BMMLSEDurableFeatureStoreFeatureValue *)self stringValue];
  if ([(BMMLSEDurableFeatureStoreFeatureValue *)self hasBoolValue])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEDurableFeatureStoreFeatureValue BOOLValue](self, "BOOLValue")}];
  }

  else
  {
    v8 = 0;
  }

  histogramValue = [(BMMLSEDurableFeatureStoreFeatureValue *)self histogramValue];
  jsonDictionary = [histogramValue jsonDictionary];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEDurableFeatureStoreFeatureValue missingReason](self, "missingReason")}];
  v25[0] = @"intValue";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null;
  v24 = v3;
  v26[0] = null;
  v25[1] = @"doubleValue";
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = null2;
  v26[1] = null2;
  v25[2] = @"stringValue";
  null3 = stringValue;
  if (!stringValue)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = null3;
  v25[3] = @"BOOLValue";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = null4;
  v25[4] = @"histogramValue";
  null5 = jsonDictionary;
  if (!jsonDictionary)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = null5;
  v25[5] = @"missingReason";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = null6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v11)
  {
    if (jsonDictionary)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (jsonDictionary)
    {
LABEL_25:
      if (v8)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }
  }

  if (v8)
  {
LABEL_26:
    if (stringValue)
    {
      goto LABEL_27;
    }

LABEL_36:

    if (v6)
    {
      goto LABEL_28;
    }

    goto LABEL_37;
  }

LABEL_35:

  if (!stringValue)
  {
    goto LABEL_36;
  }

LABEL_27:
  if (v6)
  {
    goto LABEL_28;
  }

LABEL_37:

LABEL_28:
  if (!v24)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMMLSEDurableFeatureStoreFeatureValue)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v66[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"intValue"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"doubleValue"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v21 = 0;
          goto LABEL_53;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy = error;
        v25 = v8;
        v26 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"doubleValue"];
        v64 = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v27 = v26;
        v8 = v25;
        v21 = 0;
        error = 0;
        *errorCopy = [v24 initWithDomain:v27 code:2 userInfo:v10];
        goto LABEL_52;
      }

      v52 = v9;
    }

    else
    {
      v52 = 0;
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"stringValue"];
    errorCopy3 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v11 = 0;
          v21 = v52;
          goto LABEL_52;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy2 = error;
        v30 = v8;
        v31 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stringValue"];
        v62 = v51;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v32 = v31;
        v8 = v30;
        v11 = 0;
        error = 0;
        *errorCopy2 = [v29 initWithDomain:v32 code:2 userInfo:v12];
        goto LABEL_59;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"BOOLValue"];
    v49 = v8;
    v50 = v11;
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v51 = 0;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v51 = v12;
LABEL_13:
      v13 = [dictionaryCopy objectForKeyedSubscript:@"histogramValue"];
      if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v14 = 0;
        goto LABEL_16;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = v13;
        v54 = 0;
        v14 = [[BMMLSEDurableFeatureStoreFeatureValueHistogram alloc] initWithJSONDictionary:v17 error:&v54];
        v18 = v54;
        if (v18)
        {
          if (error)
          {
            v18 = v18;
            *error = v18;
          }

          error = 0;
          v13 = v17;
          goto LABEL_49;
        }

LABEL_16:
        v15 = [dictionaryCopy objectForKeyedSubscript:@"missingReason"];
        if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v28 = v15;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (error)
              {
                v48 = objc_alloc(MEMORY[0x1E696ABC0]);
                v43 = *MEMORY[0x1E698F240];
                v55 = *MEMORY[0x1E696A578];
                v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"missingReason"];
                v56 = v42;
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
                v41 = v40 = error;
                *v40 = [v48 initWithDomain:v43 code:2 userInfo:v41];

                v16 = 0;
                error = 0;
              }

              else
              {
                v16 = 0;
              }

              goto LABEL_48;
            }

            v28 = [MEMORY[0x1E696AD98] numberWithInt:{bsearch_b(v15, BMMLSEDurableFeatureStoreFeatureValueMissingReasonFromString_sortedStrings, 1uLL, 8uLL, &__block_literal_global_24_37777) != 0}];
          }

          v16 = v28;
        }

        else
        {
          v16 = 0;
        }

        error = -[BMMLSEDurableFeatureStoreFeatureValue initWithIntValue:doubleValue:stringValue:BOOLValue:histogramValue:missingReason:](errorCopy3, "initWithIntValue:doubleValue:stringValue:BOOLValue:histogramValue:missingReason:", v49, v52, v50, v51, v14, [v16 intValue]);
        errorCopy3 = error;
LABEL_48:

        goto LABEL_49;
      }

      if (!error)
      {
LABEL_50:
        v21 = v52;

        v11 = v50;
LABEL_51:

        self = errorCopy3;
LABEL_52:

        goto LABEL_53;
      }

      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v57 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"histogramValue"];
      v58 = v14;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *error = [v47 initWithDomain:v36 code:2 userInfo:v37];

      error = 0;
LABEL_49:

      v8 = v49;
      goto LABEL_50;
    }

    if (error)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy4 = error;
      v34 = *MEMORY[0x1E698F240];
      v59 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"BOOLValue"];
      v60 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v35 = [v33 initWithDomain:v34 code:2 userInfo:v14];
      v51 = 0;
      error = 0;
      *errorCopy4 = v35;
      goto LABEL_49;
    }

    v51 = 0;
LABEL_59:
    v21 = v52;
    goto LABEL_51;
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
    goto LABEL_54;
  }

  v19 = objc_alloc(MEMORY[0x1E696ABC0]);
  v20 = *MEMORY[0x1E698F240];
  v65 = *MEMORY[0x1E696A578];
  v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"intValue"];
  v66[0] = v21;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:&v65 count:1];
  v22 = [v19 initWithDomain:v20 code:2 userInfo:v9];
  v8 = 0;
  errorCopy5 = error;
  error = 0;
  *errorCopy5 = v22;
LABEL_53:

LABEL_54:
  v38 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEDurableFeatureStoreFeatureValue *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_hasIntValue)
  {
    intValue = self->_intValue;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasDoubleValue)
  {
    doubleValue = self->_doubleValue;
    PBDataWriterWriteDoubleField();
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasBoolValue)
  {
    BOOLValue = self->_BOOLValue;
    PBDataWriterWriteBOOLField();
  }

  if (self->_histogramValue)
  {
    PBDataWriterPlaceMark();
    [(BMMLSEDurableFeatureStoreFeatureValueHistogram *)self->_histogramValue writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  missingReason = self->_missingReason;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMMLSEDurableFeatureStoreFeatureValue;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_76;
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
        LOBYTE(v48[0]) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v48[0] & 0x7F) << v7;
        if ((v48[0] & 0x80) == 0)
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
      if ((v14 >> 3) > 3)
      {
        switch(v15)
        {
          case 4:
            v32 = 0;
            v33 = 0;
            v34 = 0;
            v5->_hasBoolValue = 1;
            while (1)
            {
              LOBYTE(v48[0]) = 0;
              v35 = [fromCopy position] + 1;
              if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v34 |= (v48[0] & 0x7F) << v32;
              if ((v48[0] & 0x80) == 0)
              {
                break;
              }

              v32 += 7;
              v13 = v33++ >= 9;
              if (v13)
              {
                LOBYTE(v38) = 0;
                goto LABEL_66;
              }
            }

            v38 = (v34 != 0) & ~[fromCopy hasError];
LABEL_66:
            v5->_BOOLValue = v38;
            break;
          case 5:
            v48[0] = 0;
            v48[1] = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_75;
            }

            v41 = [[BMMLSEDurableFeatureStoreFeatureValueHistogram alloc] initByReadFrom:fromCopy];
            if (!v41)
            {
              goto LABEL_75;
            }

            histogramValue = v5->_histogramValue;
            v5->_histogramValue = v41;

            PBReaderRecallMark();
            break;
          case 6:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v48[0]) = 0;
              v21 = [fromCopy position] + 1;
              if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v20 |= (v48[0] & 0x7F) << v18;
              if ((v48[0] & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              if (v19++ > 8)
              {
                goto LABEL_69;
              }
            }

            if (([fromCopy hasError] & 1) != 0 || v20 > 1)
            {
LABEL_69:
              LODWORD(v20) = 0;
            }

            v5->_missingReason = v20;
            break;
          default:
LABEL_53:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_75;
            }

            break;
        }
      }

      else
      {
        switch(v15)
        {
          case 1:
            v25 = 0;
            v26 = 0;
            v27 = 0;
            v5->_hasIntValue = 1;
            while (1)
            {
              LOBYTE(v48[0]) = 0;
              v28 = [fromCopy position] + 1;
              if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
              {
                data4 = [fromCopy data];
                [data4 getBytes:v48 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v27 |= (v48[0] & 0x7F) << v25;
              if ((v48[0] & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v13 = v26++ >= 9;
              if (v13)
              {
                v31 = 0;
                goto LABEL_64;
              }
            }

            if ([fromCopy hasError])
            {
              v31 = 0;
            }

            else
            {
              v31 = v27;
            }

LABEL_64:
            v5->_intValue = v31;
            break;
          case 2:
            v5->_hasDoubleValue = 1;
            v48[0] = 0;
            v39 = [fromCopy position] + 8;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 8, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:v48 range:{objc_msgSend(fromCopy, "position"), 8}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
            }

            else
            {
              [fromCopy _setError];
            }

            *&v5->_doubleValue = v48[0];
            break;
          case 3:
            v16 = PBReaderReadString();
            stringValue = v5->_stringValue;
            v5->_stringValue = v16;

            break;
          default:
            goto LABEL_53;
        }
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_75:
    v45 = 0;
  }

  else
  {
LABEL_76:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEDurableFeatureStoreFeatureValue intValue](self, "intValue")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMMLSEDurableFeatureStoreFeatureValue *)self doubleValue];
  v6 = [v5 numberWithDouble:?];
  stringValue = [(BMMLSEDurableFeatureStoreFeatureValue *)self stringValue];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEDurableFeatureStoreFeatureValue BOOLValue](self, "BOOLValue")}];
  histogramValue = [(BMMLSEDurableFeatureStoreFeatureValue *)self histogramValue];
  v10 = BMMLSEDurableFeatureStoreFeatureValueMissingReasonAsString([(BMMLSEDurableFeatureStoreFeatureValue *)self missingReason]);
  v11 = [v3 initWithFormat:@"BMMLSEDurableFeatureStoreFeatureValue with intValue: %@, doubleValue: %@, stringValue: %@, BOOLValue: %@, histogramValue: %@, missingReason: %@", v4, v6, stringValue, v8, histogramValue, v10];

  return v11;
}

- (BMMLSEDurableFeatureStoreFeatureValue)initWithIntValue:(id)value doubleValue:(id)doubleValue stringValue:(id)stringValue BOOLValue:(id)lValue histogramValue:(id)histogramValue missingReason:(int)reason
{
  valueCopy = value;
  doubleValueCopy = doubleValue;
  stringValueCopy = stringValue;
  lValueCopy = lValue;
  histogramValueCopy = histogramValue;
  v23.receiver = self;
  v23.super_class = BMMLSEDurableFeatureStoreFeatureValue;
  v19 = [(BMEventBase *)&v23 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (valueCopy)
    {
      v19->_hasIntValue = 1;
      unsignedIntValue = [valueCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v19->_hasIntValue = 0;
    }

    v19->_intValue = unsignedIntValue;
    if (doubleValueCopy)
    {
      v19->_hasDoubleValue = 1;
      [doubleValueCopy doubleValue];
    }

    else
    {
      v19->_hasDoubleValue = 0;
      v21 = -1.0;
    }

    v19->_doubleValue = v21;
    objc_storeStrong(&v19->_stringValue, stringValue);
    if (lValueCopy)
    {
      v19->_hasBoolValue = 1;
      v19->_BOOLValue = [lValueCopy BOOLValue];
    }

    else
    {
      v19->_hasBoolValue = 0;
      v19->_BOOLValue = 0;
    }

    objc_storeStrong(&v19->_histogramValue, histogramValue);
    v19->_missingReason = reason;
  }

  return v19;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"intValue" number:1 type:4 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"doubleValue" number:2 type:0 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"stringValue" number:3 type:13 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"BOOLValue" number:4 type:12 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"histogramValue" number:5 type:14 subMessageClass:objc_opt_class()];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"missingReason" number:6 type:4 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"intValue" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"doubleValue" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"stringValue" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"BOOLValue" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"histogramValue_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_1799];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"missingReason" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
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

id __48__BMMLSEDurableFeatureStoreFeatureValue_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 histogramValue];
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

    v8 = [[BMMLSEDurableFeatureStoreFeatureValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end