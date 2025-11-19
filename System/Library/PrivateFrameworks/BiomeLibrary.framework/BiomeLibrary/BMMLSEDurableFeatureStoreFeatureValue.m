@interface BMMLSEDurableFeatureStoreFeatureValue
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMLSEDurableFeatureStoreFeatureValue)initWithIntValue:(id)a3 doubleValue:(id)a4 stringValue:(id)a5 BOOLValue:(id)a6 histogramValue:(id)a7 missingReason:(int)a8;
- (BMMLSEDurableFeatureStoreFeatureValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMLSEDurableFeatureStoreFeatureValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

      v6 = [(BMMLSEDurableFeatureStoreFeatureValue *)self intValue];
      if (v6 != [v5 intValue])
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

    v10 = [(BMMLSEDurableFeatureStoreFeatureValue *)self stringValue];
    v11 = [v5 stringValue];
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      v13 = [(BMMLSEDurableFeatureStoreFeatureValue *)self stringValue];
      v14 = [v5 stringValue];
      v15 = [v13 isEqual:v14];

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

      v17 = [(BMMLSEDurableFeatureStoreFeatureValue *)self BOOLValue];
      if (v17 != [v5 BOOLValue])
      {
        goto LABEL_24;
      }
    }

    v18 = [(BMMLSEDurableFeatureStoreFeatureValue *)self histogramValue];
    v19 = [v5 histogramValue];
    v20 = v19;
    if (v18 == v19)
    {
    }

    else
    {
      v21 = [(BMMLSEDurableFeatureStoreFeatureValue *)self histogramValue];
      v22 = [v5 histogramValue];
      v23 = [v21 isEqual:v22];

      if (!v23)
      {
LABEL_24:
        v16 = 0;
LABEL_25:

        goto LABEL_26;
      }
    }

    v25 = [(BMMLSEDurableFeatureStoreFeatureValue *)self missingReason];
    v16 = v25 == [v5 missingReason];
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

  v7 = [(BMMLSEDurableFeatureStoreFeatureValue *)self stringValue];
  if ([(BMMLSEDurableFeatureStoreFeatureValue *)self hasBoolValue])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEDurableFeatureStoreFeatureValue BOOLValue](self, "BOOLValue")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMMLSEDurableFeatureStoreFeatureValue *)self histogramValue];
  v10 = [v9 jsonDictionary];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEDurableFeatureStoreFeatureValue missingReason](self, "missingReason")}];
  v25[0] = @"intValue";
  v12 = v3;
  if (!v3)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = v12;
  v24 = v3;
  v26[0] = v12;
  v25[1] = @"doubleValue";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v13;
  v26[1] = v13;
  v25[2] = @"stringValue";
  v14 = v7;
  if (!v7)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v26[2] = v14;
  v25[3] = @"BOOLValue";
  v15 = v8;
  if (!v8)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v26[3] = v15;
  v25[4] = @"histogramValue";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v16;
  v25[5] = @"missingReason";
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v11)
  {
    if (v10)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (v10)
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
    if (v7)
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

  if (!v7)
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

- (BMMLSEDurableFeatureStoreFeatureValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v66[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"intValue"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"doubleValue"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v21 = 0;
          goto LABEL_53;
        }

        v24 = objc_alloc(MEMORY[0x1E696ABC0]);
        v44 = a4;
        v25 = v8;
        v26 = *MEMORY[0x1E698F240];
        v63 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"doubleValue"];
        v64 = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v27 = v26;
        v8 = v25;
        v21 = 0;
        a4 = 0;
        *v44 = [v24 initWithDomain:v27 code:2 userInfo:v10];
        goto LABEL_52;
      }

      v52 = v9;
    }

    else
    {
      v52 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"stringValue"];
    v53 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v21 = v52;
          goto LABEL_52;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = a4;
        v30 = v8;
        v31 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stringValue"];
        v62 = v51;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v32 = v31;
        v8 = v30;
        v11 = 0;
        a4 = 0;
        *v45 = [v29 initWithDomain:v32 code:2 userInfo:v12];
        goto LABEL_59;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"BOOLValue"];
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
      v13 = [v6 objectForKeyedSubscript:@"histogramValue"];
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
          if (a4)
          {
            v18 = v18;
            *a4 = v18;
          }

          a4 = 0;
          v13 = v17;
          goto LABEL_49;
        }

LABEL_16:
        v15 = [v6 objectForKeyedSubscript:@"missingReason"];
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
              if (a4)
              {
                v48 = objc_alloc(MEMORY[0x1E696ABC0]);
                v43 = *MEMORY[0x1E698F240];
                v55 = *MEMORY[0x1E696A578];
                v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"missingReason"];
                v56 = v42;
                [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
                v41 = v40 = a4;
                *v40 = [v48 initWithDomain:v43 code:2 userInfo:v41];

                v16 = 0;
                a4 = 0;
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

        a4 = -[BMMLSEDurableFeatureStoreFeatureValue initWithIntValue:doubleValue:stringValue:BOOLValue:histogramValue:missingReason:](v53, "initWithIntValue:doubleValue:stringValue:BOOLValue:histogramValue:missingReason:", v49, v52, v50, v51, v14, [v16 intValue]);
        v53 = a4;
LABEL_48:

        goto LABEL_49;
      }

      if (!a4)
      {
LABEL_50:
        v21 = v52;

        v11 = v50;
LABEL_51:

        self = v53;
LABEL_52:

        goto LABEL_53;
      }

      v47 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v57 = *MEMORY[0x1E696A578];
      v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"histogramValue"];
      v58 = v14;
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *a4 = [v47 initWithDomain:v36 code:2 userInfo:v37];

      a4 = 0;
LABEL_49:

      v8 = v49;
      goto LABEL_50;
    }

    if (a4)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v46 = a4;
      v34 = *MEMORY[0x1E698F240];
      v59 = *MEMORY[0x1E696A578];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"BOOLValue"];
      v60 = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v35 = [v33 initWithDomain:v34 code:2 userInfo:v14];
      v51 = 0;
      a4 = 0;
      *v46 = v35;
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

  if (!a4)
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
  v23 = a4;
  a4 = 0;
  *v23 = v22;
LABEL_53:

LABEL_54:
  v38 = *MEMORY[0x1E69E9840];
  return a4;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEDurableFeatureStoreFeatureValue *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
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
    [(BMMLSEDurableFeatureStoreFeatureValueHistogram *)self->_histogramValue writeTo:v4];
    PBDataWriterRecallMark();
  }

  missingReason = self->_missingReason;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = BMMLSEDurableFeatureStoreFeatureValue;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_76;
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
        LOBYTE(v48[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v48 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
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
              v35 = [v4 position] + 1;
              if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
              {
                v37 = [v4 data];
                [v37 getBytes:v48 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            v38 = (v34 != 0) & ~[v4 hasError];
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

            v41 = [[BMMLSEDurableFeatureStoreFeatureValueHistogram alloc] initByReadFrom:v4];
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
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:v48 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if (([v4 hasError] & 1) != 0 || v20 > 1)
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
              v28 = [v4 position] + 1;
              if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
              {
                v30 = [v4 data];
                [v30 getBytes:v48 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
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

            if ([v4 hasError])
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
            v39 = [v4 position] + 8;
            if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 8, v40 <= objc_msgSend(v4, "length")))
            {
              v43 = [v4 data];
              [v43 getBytes:v48 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
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

      v44 = [v4 position];
    }

    while (v44 < [v4 length]);
  }

  if ([v4 hasError])
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
  v7 = [(BMMLSEDurableFeatureStoreFeatureValue *)self stringValue];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEDurableFeatureStoreFeatureValue BOOLValue](self, "BOOLValue")}];
  v9 = [(BMMLSEDurableFeatureStoreFeatureValue *)self histogramValue];
  v10 = BMMLSEDurableFeatureStoreFeatureValueMissingReasonAsString([(BMMLSEDurableFeatureStoreFeatureValue *)self missingReason]);
  v11 = [v3 initWithFormat:@"BMMLSEDurableFeatureStoreFeatureValue with intValue: %@, doubleValue: %@, stringValue: %@, BOOLValue: %@, histogramValue: %@, missingReason: %@", v4, v6, v7, v8, v9, v10];

  return v11;
}

- (BMMLSEDurableFeatureStoreFeatureValue)initWithIntValue:(id)a3 doubleValue:(id)a4 stringValue:(id)a5 BOOLValue:(id)a6 histogramValue:(id)a7 missingReason:(int)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v23.receiver = self;
  v23.super_class = BMMLSEDurableFeatureStoreFeatureValue;
  v19 = [(BMEventBase *)&v23 init];
  if (v19)
  {
    v19->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v19->_hasIntValue = 1;
      v20 = [v14 unsignedIntValue];
    }

    else
    {
      v20 = 0;
      v19->_hasIntValue = 0;
    }

    v19->_intValue = v20;
    if (v15)
    {
      v19->_hasDoubleValue = 1;
      [v15 doubleValue];
    }

    else
    {
      v19->_hasDoubleValue = 0;
      v21 = -1.0;
    }

    v19->_doubleValue = v21;
    objc_storeStrong(&v19->_stringValue, a5);
    if (v17)
    {
      v19->_hasBoolValue = 1;
      v19->_BOOLValue = [v17 BOOLValue];
    }

    else
    {
      v19->_hasBoolValue = 0;
      v19->_BOOLValue = 0;
    }

    objc_storeStrong(&v19->_histogramValue, a7);
    v19->_missingReason = a8;
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