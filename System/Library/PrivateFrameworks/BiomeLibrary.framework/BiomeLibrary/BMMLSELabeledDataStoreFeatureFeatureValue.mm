@interface BMMLSELabeledDataStoreFeatureFeatureValue
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMLSELabeledDataStoreFeatureFeatureValue)initWithIntValue:(id)a3 doubleValue:(id)a4 stringValue:(id)a5 BOOLValue:(id)a6 timeBucketValue:(int)a7 doubleValuedVectorValue:(id)a8;
- (BMMLSELabeledDataStoreFeatureFeatureValue)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMLSELabeledDataStoreFeatureFeatureValue

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMMLSELabeledDataStoreFeatureFeatureValue hasIntValue](self, "hasIntValue") || [v5 hasIntValue])
    {
      if (![(BMMLSELabeledDataStoreFeatureFeatureValue *)self hasIntValue])
      {
        goto LABEL_25;
      }

      if (![v5 hasIntValue])
      {
        goto LABEL_25;
      }

      v6 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self intValue];
      if (v6 != [v5 intValue])
      {
        goto LABEL_25;
      }
    }

    if (-[BMMLSELabeledDataStoreFeatureFeatureValue hasDoubleValue](self, "hasDoubleValue") || [v5 hasDoubleValue])
    {
      if (![(BMMLSELabeledDataStoreFeatureFeatureValue *)self hasDoubleValue])
      {
        goto LABEL_25;
      }

      if (![v5 hasDoubleValue])
      {
        goto LABEL_25;
      }

      [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValue];
      v8 = v7;
      [v5 doubleValue];
      if (v8 != v9)
      {
        goto LABEL_25;
      }
    }

    v10 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self stringValue];
    v11 = [v5 stringValue];
    v12 = v11;
    if (v10 == v11)
    {
    }

    else
    {
      v13 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self stringValue];
      v14 = [v5 stringValue];
      v15 = [v13 isEqual:v14];

      if (!v15)
      {
        goto LABEL_25;
      }
    }

    if (!-[BMMLSELabeledDataStoreFeatureFeatureValue hasBoolValue](self, "hasBoolValue") && ![v5 hasBoolValue] || -[BMMLSELabeledDataStoreFeatureFeatureValue hasBoolValue](self, "hasBoolValue") && objc_msgSend(v5, "hasBoolValue") && (v17 = -[BMMLSELabeledDataStoreFeatureFeatureValue BOOLValue](self, "BOOLValue"), v17 == objc_msgSend(v5, "BOOLValue")))
    {
      v18 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self timeBucketValue];
      if (v18 == [v5 timeBucketValue])
      {
        v19 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValuedVectorValue];
        v20 = [v5 doubleValuedVectorValue];
        if (v19 == v20)
        {
          v16 = 1;
        }

        else
        {
          v21 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValuedVectorValue];
          v22 = [v5 doubleValuedVectorValue];
          v16 = [v21 isEqual:v22];
        }

        goto LABEL_26;
      }
    }

LABEL_25:
    v16 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v16 = 0;
LABEL_27:

  return v16;
}

- (id)jsonDictionary
{
  v26[6] = *MEMORY[0x1E69E9840];
  if ([(BMMLSELabeledDataStoreFeatureFeatureValue *)self hasIntValue])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStoreFeatureFeatureValue intValue](self, "intValue")}];
  }

  else
  {
    v3 = 0;
  }

  if (![(BMMLSELabeledDataStoreFeatureFeatureValue *)self hasDoubleValue]|| ([(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValue], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValue];
    v5 = MEMORY[0x1E696AD98];
    [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValue];
    v6 = [v5 numberWithDouble:?];
  }

  v7 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self stringValue];
  if ([(BMMLSELabeledDataStoreFeatureFeatureValue *)self hasBoolValue])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSELabeledDataStoreFeatureFeatureValue BOOLValue](self, "BOOLValue")}];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMLSELabeledDataStoreFeatureFeatureValue timeBucketValue](self, "timeBucketValue")}];
  v10 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValuedVectorValue];
  v11 = [v10 jsonDictionary];

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
  v25[4] = @"timeBucketValue";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26[4] = v16;
  v25[5] = @"doubleValuedVectorValue";
  v17 = v11;
  if (!v11)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v26[5] = v17;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:{6, v21}];
  if (v11)
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
  if (!v24)
  {
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (BMMLSELabeledDataStoreFeatureFeatureValue)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v69[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"intValue"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"doubleValue"];
    v53 = v7;
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v55 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = v9;
LABEL_7:
      v10 = [v6 objectForKeyedSubscript:@"stringValue"];
      v56 = self;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v11 = 0;
LABEL_10:
        v12 = [v6 objectForKeyedSubscript:@"BOOLValue"];
        v51 = v11;
        v52 = v8;
        if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (!a4)
            {
              v54 = 0;
              v22 = 0;
              goto LABEL_58;
            }

            v34 = objc_alloc(MEMORY[0x1E696ABC0]);
            v35 = *MEMORY[0x1E698F240];
            v62 = *MEMORY[0x1E696A578];
            v36 = a4;
            v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"BOOLValue"];
            v63 = v15;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
            v37 = v34;
            v8 = v52;
            v38 = [v37 initWithDomain:v35 code:2 userInfo:v13];
            v54 = 0;
            v22 = 0;
            *v36 = v38;
            v11 = v51;
            goto LABEL_57;
          }

          v54 = v12;
        }

        else
        {
          v54 = 0;
        }

        v13 = [v6 objectForKeyedSubscript:@"timeBucketValue"];
        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v14 = a4;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = v13;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
              {
                v15 = 0;
                v22 = 0;
                v11 = v51;
                goto LABEL_57;
              }

              v50 = objc_alloc(MEMORY[0x1E696ABC0]);
              v44 = *MEMORY[0x1E698F240];
              v60 = *MEMORY[0x1E696A578];
              v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"timeBucketValue"];
              v61 = v39;
              v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
              v45 = [v50 initWithDomain:v44 code:2 userInfo:v40];
              v15 = 0;
              v22 = 0;
              *v14 = v45;
              goto LABEL_54;
            }

            v16 = [MEMORY[0x1E696AD98] numberWithInt:BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketFromString(v13)];
          }

          v15 = v16;
        }

        else
        {
          v14 = a4;
          v15 = 0;
        }

        v39 = [v6 objectForKeyedSubscript:@"doubleValuedVectorValue"];
        if (!v39 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v40 = 0;
LABEL_40:
          v11 = v51;
          v22 = -[BMMLSELabeledDataStoreFeatureFeatureValue initWithIntValue:doubleValue:stringValue:BOOLValue:timeBucketValue:doubleValuedVectorValue:](v56, "initWithIntValue:doubleValue:stringValue:BOOLValue:timeBucketValue:doubleValuedVectorValue:", v52, v55, v51, v54, [v15 intValue], v40);
          v56 = v22;
LABEL_55:

LABEL_56:
          v8 = v52;
LABEL_57:

          goto LABEL_58;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v41 = v39;
          v57 = 0;
          v40 = [[BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector alloc] initWithJSONDictionary:v41 error:&v57];
          v42 = v57;
          if (!v42)
          {

            goto LABEL_40;
          }

          if (v14)
          {
            v42 = v42;
            *v14 = v42;
          }

          v39 = v41;
        }

        else
        {
          if (!v14)
          {
            v22 = 0;
            v11 = v51;
            goto LABEL_56;
          }

          v49 = objc_alloc(MEMORY[0x1E696ABC0]);
          v48 = *MEMORY[0x1E698F240];
          v58 = *MEMORY[0x1E696A578];
          v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"doubleValuedVectorValue"];
          v59 = v40;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          *v14 = [v49 initWithDomain:v48 code:2 userInfo:v43];
        }

        v22 = 0;
LABEL_54:
        v11 = v51;
        goto LABEL_55;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
        goto LABEL_10;
      }

      if (a4)
      {
        v29 = v8;
        v30 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = a4;
        v32 = *MEMORY[0x1E698F240];
        v64 = *MEMORY[0x1E696A578];
        v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"stringValue"];
        v65 = v54;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
        v33 = v30;
        v8 = v29;
        v22 = 0;
        *v31 = [v33 initWithDomain:v32 code:2 userInfo:v12];
        v11 = 0;
LABEL_58:
        v20 = v55;

        self = v56;
        goto LABEL_59;
      }

      v11 = 0;
      v22 = 0;
      v20 = v55;
LABEL_59:

      v7 = v53;
      goto LABEL_60;
    }

    if (a4)
    {
      v23 = v8;
      v24 = objc_alloc(MEMORY[0x1E696ABC0]);
      v25 = a4;
      v26 = *MEMORY[0x1E698F240];
      v66 = *MEMORY[0x1E696A578];
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"doubleValue"];
      v67 = v27;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
      v28 = v24;
      v8 = v23;
      v20 = 0;
      v22 = 0;
      *v25 = [v28 initWithDomain:v26 code:2 userInfo:v10];
      v11 = v27;
      goto LABEL_59;
    }

    v20 = 0;
    v22 = 0;
LABEL_60:

    goto LABEL_61;
  }

  if (a4)
  {
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = a4;
    v19 = *MEMORY[0x1E698F240];
    v68 = *MEMORY[0x1E696A578];
    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"intValue"];
    v69[0] = v20;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v69 forKeys:&v68 count:1];
    v21 = [v17 initWithDomain:v19 code:2 userInfo:v9];
    v8 = 0;
    v22 = 0;
    *v18 = v21;
    goto LABEL_60;
  }

  v8 = 0;
  v22 = 0;
LABEL_61:

  v46 = *MEMORY[0x1E69E9840];
  return v22;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMLSELabeledDataStoreFeatureFeatureValue *)self writeTo:v3];
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

  timeBucketValue = self->_timeBucketValue;
  PBDataWriterWriteUint32Field();
  if (self->_doubleValuedVectorValue)
  {
    PBDataWriterPlaceMark();
    [(BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector *)self->_doubleValuedVectorValue writeTo:v4];
    PBDataWriterRecallMark();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v47.receiver = self;
  v47.super_class = BMMLSELabeledDataStoreFeatureFeatureValue;
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
          case 6:
            v48[0] = 0;
            v48[1] = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_75;
            }

            v41 = [[BMMLSELabeledDataStoreFeatureFeatureValueDoubleValuedVector alloc] initByReadFrom:v4];
            if (!v41)
            {
              goto LABEL_75;
            }

            doubleValuedVectorValue = v5->_doubleValuedVectorValue;
            v5->_doubleValuedVectorValue = v41;

            PBReaderRecallMark();
            break;
          case 5:
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

            if (([v4 hasError] & 1) != 0 || v20 > 0x16)
            {
LABEL_69:
              LODWORD(v20) = 0;
            }

            v5->_timeBucketValue = v20;
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
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMMLSELabeledDataStoreFeatureFeatureValue intValue](self, "intValue")}];
  v5 = MEMORY[0x1E696AD98];
  [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValue];
  v6 = [v5 numberWithDouble:?];
  v7 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self stringValue];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMLSELabeledDataStoreFeatureFeatureValue BOOLValue](self, "BOOLValue")}];
  v9 = BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketAsString([(BMMLSELabeledDataStoreFeatureFeatureValue *)self timeBucketValue]);
  v10 = [(BMMLSELabeledDataStoreFeatureFeatureValue *)self doubleValuedVectorValue];
  v11 = [v3 initWithFormat:@"BMMLSELabeledDataStoreFeatureFeatureValue with intValue: %@, doubleValue: %@, stringValue: %@, BOOLValue: %@, timeBucketValue: %@, doubleValuedVectorValue: %@", v4, v6, v7, v8, v9, v10];

  return v11;
}

- (BMMLSELabeledDataStoreFeatureFeatureValue)initWithIntValue:(id)a3 doubleValue:(id)a4 stringValue:(id)a5 BOOLValue:(id)a6 timeBucketValue:(int)a7 doubleValuedVectorValue:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  v23.receiver = self;
  v23.super_class = BMMLSELabeledDataStoreFeatureFeatureValue;
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

    v19->_timeBucketValue = a7;
    objc_storeStrong(&v19->_doubleValuedVectorValue, a8);
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
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeBucketValue" number:5 type:4 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"doubleValuedVectorValue" number:6 type:14 subMessageClass:objc_opt_class()];
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
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"doubleValuedVectorValue_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_163];
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

id __52__BMMLSELabeledDataStoreFeatureFeatureValue_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 doubleValuedVectorValue];
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

    v8 = [[BMMLSELabeledDataStoreFeatureFeatureValue alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end