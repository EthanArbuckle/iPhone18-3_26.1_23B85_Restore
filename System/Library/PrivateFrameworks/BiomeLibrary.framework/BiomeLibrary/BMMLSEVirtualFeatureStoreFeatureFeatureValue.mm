@interface BMMLSEVirtualFeatureStoreFeatureFeatureValue
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMLSEVirtualFeatureStoreFeatureFeatureValue)initWithIntValue:(id)a3 doubleValue:(id)a4 stringValue:(id)a5 BOOLValue:(id)a6 timeBucketValue:(int)a7 missingReason:(int)a8;
- (BMMLSEVirtualFeatureStoreFeatureFeatureValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMLSEVirtualFeatureStoreFeatureFeatureValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMMLSEVirtualFeatureStoreFeatureFeatureValue hasIntValue](self, "hasIntValue") || [v5 hasIntValue])
    {
      if (![(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self hasIntValue])
      {
        goto LABEL_24;
      }

      if (![v5 hasIntValue])
      {
        goto LABEL_24;
      }

      v6 = [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self intValue];
      if (v6 != [v5 intValue])
      {
        goto LABEL_24;
      }
    }

    if (-[BMMLSEVirtualFeatureStoreFeatureFeatureValue hasDoubleValue](self, "hasDoubleValue") || [v5 hasDoubleValue])
    {
      if (![(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self hasDoubleValue])
      {
        goto LABEL_24;
      }

      if (![v5 hasDoubleValue])
      {
        goto LABEL_24;
      }

      [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self doubleValue];
      v8 = v7;
      [v5 doubleValue];
      if (v8 != v9)
      {
        goto LABEL_24;
      }
    }

    v10 = [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self stringValue];
    v11 = [v5 stringValue];
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      v13 = [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self stringValue];
      v14 = [v5 stringValue];
      v15 = [v13 isEqual:v14];

      if (!v15)
      {
        goto LABEL_24;
      }
    }

    if (!-[BMMLSEVirtualFeatureStoreFeatureFeatureValue hasBoolValue](self, "hasBoolValue") && ![v5 hasBoolValue] || -[BMMLSEVirtualFeatureStoreFeatureFeatureValue hasBoolValue](self, "hasBoolValue") && objc_msgSend(v5, "hasBoolValue") && (v17 = -[BMMLSEVirtualFeatureStoreFeatureFeatureValue BOOLValue](self, "BOOLValue"), v17 == objc_msgSend(v5, "BOOLValue")))
    {
      v18 = [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self timeBucketValue];
      if (v18 == [v5 timeBucketValue])
      {
        v19 = [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self missingReason];
        v16 = v19 == [v5 missingReason];
LABEL_25:

        goto LABEL_26;
      }
    }

LABEL_24:
    v16 = 0;
    goto LABEL_25;
  }

  v16 = 0;
LABEL_26:

  return v16;
}

- (id)jsonDictionary
{
  v25[6] = *MEMORY[0x1E69E9840];
  if ([(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self hasIntValue])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStoreFeatureFeatureValue intValue](self, "intValue")}];
  }

  else
  {
    v3 = 0;
  }

  if (![(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self hasDoubleValue]|| ([(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self doubleValue], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self doubleValue];
    v5 = MEMORY[0x1E696AD98];
    [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self doubleValue];
    v6 = [v5 numberWithDouble:?];
  }

  v7 = [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self stringValue];
  if ([(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self hasBoolValue])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEVirtualFeatureStoreFeatureFeatureValue BOOLValue](self, "BOOLValue")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEVirtualFeatureStoreFeatureFeatureValue timeBucketValue](self, "timeBucketValue")}];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSEVirtualFeatureStoreFeatureFeatureValue missingReason](self, "missingReason")}];
  v24[0] = @"intValue";
  v11 = v3;
  if (!v3)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v23 = v3;
  v25[0] = v11;
  v24[1] = @"doubleValue";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = v12;
  v25[1] = v12;
  v24[2] = @"stringValue";
  v13 = v7;
  if (!v7)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v25[2] = v13;
  v24[3] = @"BOOLValue";
  v14 = v8;
  if (!v8)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v25[3] = v14;
  v24[4] = @"timeBucketValue";
  v15 = v9;
  if (!v9)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v25[4] = v15;
  v24[5] = @"missingReason";
  v16 = v10;
  if (!v10)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v25[5] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:{6, v20}];
  if (v10)
  {
    if (v9)
    {
      goto LABEL_25;
    }
  }

  else
  {

    if (v9)
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
  if (!v23)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMMLSEVirtualFeatureStoreFeatureFeatureValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v64[1] = *MEMORY[0x1E69E9840];
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
          v18 = 0;
          v20 = 0;
          goto LABEL_50;
        }

        v21 = v8;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v46 = a4;
        v23 = *MEMORY[0x1E698F240];
        v61 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"doubleValue"];
        v62 = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
        v24 = v22;
        v8 = v21;
        v18 = 0;
        v20 = 0;
        *v46 = [v24 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_49;
      }

      v51 = v9;
    }

    else
    {
      v51 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"stringValue"];
    v52 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v11 = 0;
          v20 = 0;
          v18 = v51;
          goto LABEL_49;
        }

        v25 = v8;
        v26 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = a4;
        v27 = *MEMORY[0x1E698F240];
        v59 = *MEMORY[0x1E696A578];
        v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stringValue"];
        v60 = v50;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
        v28 = v26;
        v8 = v25;
        v11 = 0;
        v20 = 0;
        *v47 = [v28 initWithDomain:v27 code:2 userInfo:v12];
LABEL_48:
        v18 = v51;

        self = v52;
LABEL_49:

        goto LABEL_50;
      }

      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = [v6 objectForKeyedSubscript:@"BOOLValue"];
    v48 = v11;
    v49 = v8;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v50 = 0;
          v20 = 0;
          goto LABEL_48;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v31 = a4;
        a4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"BOOLValue"];
        v58 = a4;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v32 = [v29 initWithDomain:v30 code:2 userInfo:v13];
        v50 = 0;
        v20 = 0;
        *v31 = v32;
        goto LABEL_47;
      }

      v50 = v12;
    }

    else
    {
      v50 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"timeBucketValue"];
    v45 = a4;
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v13;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v20 = 0;
            goto LABEL_47;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v55 = *MEMORY[0x1E696A578];
          v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"timeBucketValue"];
          v56 = v34;
          v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v40 = [v38 initWithDomain:v39 code:2 userInfo:v33];
          a4 = 0;
          v20 = 0;
          *v45 = v40;
          goto LABEL_46;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketFromString(v13)];
      }

      a4 = v14;
    }

    else
    {
      a4 = 0;
    }

    v33 = [v6 objectForKeyedSubscript:@"missingReason"];
    if (v33 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v35 = v33;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v45)
          {
            v44 = objc_alloc(MEMORY[0x1E696ABC0]);
            v43 = *MEMORY[0x1E698F240];
            v53 = *MEMORY[0x1E696A578];
            v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"missingReason"];
            v54 = v41;
            v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
            *v45 = [v44 initWithDomain:v43 code:2 userInfo:v42];
          }

          v34 = 0;
          v20 = 0;
          goto LABEL_46;
        }

        v35 = [MEMORY[0x1E696AD98] numberWithInt:{bsearch_b(v33, BMMLSEVirtualFeatureStoreFeatureFeatureValueMissingReasonFromString_sortedStrings, 1uLL, 8uLL, &__block_literal_global_75) != 0}];
      }

      v34 = v35;
    }

    else
    {
      v34 = 0;
    }

    v20 = -[BMMLSEVirtualFeatureStoreFeatureFeatureValue initWithIntValue:doubleValue:stringValue:BOOLValue:timeBucketValue:missingReason:](v52, "initWithIntValue:doubleValue:stringValue:BOOLValue:timeBucketValue:missingReason:", v49, v51, v48, v50, [a4 intValue], objc_msgSend(v34, "intValue"));
    v52 = v20;
LABEL_46:

LABEL_47:
    v11 = v48;
    v8 = v49;
    goto LABEL_48;
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
    v20 = 0;
    goto LABEL_51;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = a4;
  v17 = *MEMORY[0x1E698F240];
  v63 = *MEMORY[0x1E696A578];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"intValue"];
  v64[0] = v18;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  v19 = [v15 initWithDomain:v17 code:2 userInfo:v9];
  v8 = 0;
  v20 = 0;
  *v16 = v19;
LABEL_50:

LABEL_51:
  v36 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
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

  timeBucketValue = self->_timeBucketValue;
  PBDataWriterWriteUint32Field();
  missingReason = self->_missingReason;
  PBDataWriterWriteUint32Field();
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v51.receiver = self;
  v51.super_class = BMMLSEVirtualFeatureStoreFeatureFeatureValue;
  v5 = [(BMEventBase *)&v51 init];
  if (!v5)
  {
    goto LABEL_87;
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
        LOBYTE(v52) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v52 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v52) & 0x7F) << v7;
        if ((LOBYTE(v52) & 0x80) == 0)
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
        if (v15 == 4)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasBoolValue = 1;
          while (1)
          {
            LOBYTE(v52) = 0;
            v35 = [v4 position] + 1;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
            {
              v37 = [v4 data];
              [v37 getBytes:&v52 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v34 |= (LOBYTE(v52) & 0x7F) << v32;
            if ((LOBYTE(v52) & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v13 = v33++ >= 9;
            if (v13)
            {
              LOBYTE(v38) = 0;
              goto LABEL_72;
            }
          }

          v38 = (v34 != 0) & ~[v4 hasError];
LABEL_72:
          v5->_BOOLValue = v38;
        }

        else
        {
          if (v15 == 5)
          {
            v41 = 0;
            v42 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v43 = [v4 position] + 1;
              if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
              {
                v45 = [v4 data];
                [v45 getBytes:&v52 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (LOBYTE(v52) & 0x7F) << v41;
              if ((LOBYTE(v52) & 0x80) == 0)
              {
                break;
              }

              v41 += 7;
              v24 = v42++ > 8;
              if (v24)
              {
                goto LABEL_79;
              }
            }

            if (([v4 hasError] & 1) != 0 || v20 > 0x16)
            {
LABEL_79:
              LODWORD(v20) = 0;
            }

            v46 = 28;
          }

          else
          {
            if (v15 != 6)
            {
LABEL_53:
              if (!PBReaderSkipValueWithTag())
              {
                goto LABEL_86;
              }

              goto LABEL_84;
            }

            v18 = 0;
            v19 = 0;
            v20 = 0;
            while (1)
            {
              LOBYTE(v52) = 0;
              v21 = [v4 position] + 1;
              if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
              {
                v23 = [v4 data];
                [v23 getBytes:&v52 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v20 |= (LOBYTE(v52) & 0x7F) << v18;
              if ((LOBYTE(v52) & 0x80) == 0)
              {
                break;
              }

              v18 += 7;
              v24 = v19++ > 8;
              if (v24)
              {
                goto LABEL_75;
              }
            }

            if (([v4 hasError] & 1) != 0 || v20 > 1)
            {
LABEL_75:
              LODWORD(v20) = 0;
            }

            v46 = 32;
          }

          *(&v5->super.super.isa + v46) = v20;
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
              LOBYTE(v52) = 0;
              v28 = [v4 position] + 1;
              if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
              {
                v30 = [v4 data];
                [v30 getBytes:&v52 range:{objc_msgSend(v4, "position"), 1}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
              }

              else
              {
                [v4 _setError];
              }

              v27 |= (LOBYTE(v52) & 0x7F) << v25;
              if ((LOBYTE(v52) & 0x80) == 0)
              {
                break;
              }

              v25 += 7;
              v13 = v26++ >= 9;
              if (v13)
              {
                v31 = 0;
                goto LABEL_70;
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

LABEL_70:
            v5->_intValue = v31;
            break;
          case 2:
            v5->_hasDoubleValue = 1;
            v52 = 0.0;
            v39 = [v4 position] + 8;
            if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 8, v40 <= objc_msgSend(v4, "length")))
            {
              v47 = [v4 data];
              [v47 getBytes:&v52 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v5->_doubleValue = v52;
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

LABEL_84:
      v48 = [v4 position];
    }

    while (v48 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_86:
    v49 = 0;
  }

  else
  {
LABEL_87:
    v49 = v5;
  }

  return v49;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSEVirtualFeatureStoreFeatureFeatureValue intValue](self, "intValue")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self doubleValue];
  v6 = [v5 numberWithDouble:?];
  v7 = [(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self stringValue];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSEVirtualFeatureStoreFeatureFeatureValue BOOLValue](self, "BOOLValue")}];
  v9 = BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketAsString([(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self timeBucketValue]);
  v10 = BMMLSEVirtualFeatureStoreFeatureFeatureValueMissingReasonAsString([(BMMLSEVirtualFeatureStoreFeatureFeatureValue *)self missingReason]);
  v11 = [v3 initWithFormat:@"BMMLSEVirtualFeatureStoreFeatureFeatureValue with intValue: %@, doubleValue: %@, stringValue: %@, BOOLValue: %@, timeBucketValue: %@, missingReason: %@", v4, v6, v7, v8, v9, v10];

  return v11;
}

- (BMMLSEVirtualFeatureStoreFeatureFeatureValue)initWithIntValue:(id)a3 doubleValue:(id)a4 stringValue:(id)a5 BOOLValue:(id)a6 timeBucketValue:(int)a7 missingReason:(int)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v22.receiver = self;
  v22.super_class = BMMLSEVirtualFeatureStoreFeatureFeatureValue;
  v18 = [(BMEventBase *)&v22 init];
  if (v18)
  {
    v18->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v14)
    {
      v18->_hasIntValue = 1;
      v19 = [v14 unsignedIntValue];
    }

    else
    {
      v19 = 0;
      v18->_hasIntValue = 0;
    }

    v18->_intValue = v19;
    if (v15)
    {
      v18->_hasDoubleValue = 1;
      [v15 doubleValue];
    }

    else
    {
      v18->_hasDoubleValue = 0;
      v20 = -1.0;
    }

    v18->_doubleValue = v20;
    objc_storeStrong(&v18->_stringValue, a5);
    if (v17)
    {
      v18->_hasBoolValue = 1;
      v18->_BOOLValue = [v17 BOOLValue];
    }

    else
    {
      v18->_hasBoolValue = 0;
      v18->_BOOLValue = 0;
    }

    v18->_timeBucketValue = a7;
    v18->_missingReason = a8;
  }

  return v18;
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
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeBucketValue" number:5 type:4 subMessageClass:0];
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
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeBucketValue" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
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

    v8 = [[BMMLSEVirtualFeatureStoreFeatureFeatureValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end