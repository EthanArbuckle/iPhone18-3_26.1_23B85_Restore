@interface BMHomeKitBase
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMHomeKitBase)initWithAbsoluteTimestamp:(id)a3 duration:(id)a4 homeUniqueIdentifier:(id)a5 homeOccupancy:(id)a6 source:(id)a7 clientName:(id)a8 eventCorrelationIdentifier:(id)a9;
- (BMHomeKitBase)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)absoluteTimestamp;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMHomeKitBase

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMHomeKitBase *)self absoluteTimestamp];
    v7 = [v5 absoluteTimestamp];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMHomeKitBase *)self absoluteTimestamp];
      v10 = [v5 absoluteTimestamp];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    if (-[BMHomeKitBase hasDuration](self, "hasDuration") || [v5 hasDuration])
    {
      if (![(BMHomeKitBase *)self hasDuration])
      {
        goto LABEL_27;
      }

      if (![v5 hasDuration])
      {
        goto LABEL_27;
      }

      [(BMHomeKitBase *)self duration];
      v14 = v13;
      [v5 duration];
      if (v14 != v15)
      {
        goto LABEL_27;
      }
    }

    v16 = [(BMHomeKitBase *)self homeUniqueIdentifier];
    v17 = [v5 homeUniqueIdentifier];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(BMHomeKitBase *)self homeUniqueIdentifier];
      v20 = [v5 homeUniqueIdentifier];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_27;
      }
    }

    if (-[BMHomeKitBase hasHomeOccupancy](self, "hasHomeOccupancy") || [v5 hasHomeOccupancy])
    {
      if (![(BMHomeKitBase *)self hasHomeOccupancy])
      {
        goto LABEL_27;
      }

      if (![v5 hasHomeOccupancy])
      {
        goto LABEL_27;
      }

      v22 = [(BMHomeKitBase *)self homeOccupancy];
      if (v22 != [v5 homeOccupancy])
      {
        goto LABEL_27;
      }
    }

    v23 = [(BMHomeKitBase *)self source];
    v24 = [v5 source];
    v25 = v24;
    if (v23 == v24)
    {
    }

    else
    {
      v26 = [(BMHomeKitBase *)self source];
      v27 = [v5 source];
      v28 = [v26 isEqual:v27];

      if (!v28)
      {
        goto LABEL_27;
      }
    }

    v29 = [(BMHomeKitBase *)self clientName];
    v30 = [v5 clientName];
    v31 = v30;
    if (v29 == v30)
    {
    }

    else
    {
      v32 = [(BMHomeKitBase *)self clientName];
      v33 = [v5 clientName];
      v34 = [v32 isEqual:v33];

      if (!v34)
      {
LABEL_27:
        v12 = 0;
LABEL_28:

        goto LABEL_29;
      }
    }

    v36 = [(BMHomeKitBase *)self eventCorrelationIdentifier];
    v37 = [v5 eventCorrelationIdentifier];
    if (v36 == v37)
    {
      v12 = 1;
    }

    else
    {
      v38 = [(BMHomeKitBase *)self eventCorrelationIdentifier];
      v39 = [v5 eventCorrelationIdentifier];
      v12 = [v38 isEqual:v39];
    }

    goto LABEL_28;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (NSDate)absoluteTimestamp
{
  if (self->_hasRaw_absoluteTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_absoluteTimestamp];
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
  v31[7] = *MEMORY[0x1E69E9840];
  v3 = [(BMHomeKitBase *)self absoluteTimestamp];
  if (v3)
  {
    v4 = MEMORY[0x1E696AD98];
    v5 = [(BMHomeKitBase *)self absoluteTimestamp];
    [v5 timeIntervalSince1970];
    v6 = [v4 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMHomeKitBase *)self hasDuration]|| ([(BMHomeKitBase *)self duration], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMHomeKitBase *)self duration];
    v8 = MEMORY[0x1E696AD98];
    [(BMHomeKitBase *)self duration];
    v9 = [v8 numberWithDouble:?];
  }

  v10 = [(BMHomeKitBase *)self homeUniqueIdentifier];
  if ([(BMHomeKitBase *)self hasHomeOccupancy])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMHomeKitBase homeOccupancy](self, "homeOccupancy")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [(BMHomeKitBase *)self source];
  v13 = [(BMHomeKitBase *)self clientName];
  v14 = [(BMHomeKitBase *)self eventCorrelationIdentifier];
  v30[0] = @"absoluteTimestamp";
  v15 = v6;
  if (!v6)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v15;
  v31[0] = v15;
  v30[1] = @"duration";
  v16 = v9;
  if (!v9)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v16;
  v31[1] = v16;
  v30[2] = @"homeUniqueIdentifier";
  v17 = v10;
  if (!v10)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v6;
  v25 = v17;
  v31[2] = v17;
  v30[3] = @"homeOccupancy";
  v18 = v11;
  if (!v11)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = v9;
  v31[3] = v18;
  v30[4] = @"source";
  v19 = v12;
  if (!v12)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v31[4] = v19;
  v30[5] = @"clientName";
  v20 = v13;
  if (!v13)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v31[5] = v20;
  v30[6] = @"eventCorrelationIdentifier";
  v21 = v14;
  if (!v14)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v31[6] = v21;
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:7];
  if (v14)
  {
    if (v13)
    {
      goto LABEL_27;
    }

LABEL_37:

    if (v12)
    {
      goto LABEL_28;
    }

    goto LABEL_38;
  }

  if (!v13)
  {
    goto LABEL_37;
  }

LABEL_27:
  if (v12)
  {
    goto LABEL_28;
  }

LABEL_38:

LABEL_28:
  if (!v11)
  {
  }

  if (v10)
  {
    if (v28)
    {
      goto LABEL_32;
    }

LABEL_40:

    if (v29)
    {
      goto LABEL_33;
    }

    goto LABEL_41;
  }

  if (!v28)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (v29)
  {
    goto LABEL_33;
  }

LABEL_41:

LABEL_33:
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (BMHomeKitBase)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v71[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"absoluteTimestamp"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_9:
    v16 = [v6 objectForKeyedSubscript:@"duration"];
    v50 = a4;
    if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v26 = 0;
          v25 = 0;
          goto LABEL_34;
        }

        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = *MEMORY[0x1E698F240];
        v68 = *MEMORY[0x1E696A578];
        v56 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"duration"];
        v69 = v56;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
        v26 = 0;
        v25 = 0;
        *v50 = [v29 initWithDomain:v30 code:2 userInfo:v17];
        goto LABEL_33;
      }

      v55 = v16;
    }

    else
    {
      v55 = 0;
    }

    v17 = [v6 objectForKeyedSubscript:@"homeUniqueIdentifier"];
    v51 = v7;
    if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v56 = 0;
          v25 = 0;
          v26 = v55;
          goto LABEL_33;
        }

        v57 = objc_alloc(MEMORY[0x1E696ABC0]);
        v31 = *MEMORY[0x1E698F240];
        v66 = *MEMORY[0x1E696A578];
        v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"homeUniqueIdentifier"];
        v67 = v54;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
        v32 = [v57 initWithDomain:v31 code:2 userInfo:v18];
        v56 = 0;
        v25 = 0;
        *v50 = v32;
        goto LABEL_66;
      }

      v56 = v17;
    }

    else
    {
      v56 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"homeOccupancy"];
    if (!v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v54 = 0;
LABEL_18:
      v19 = [v6 objectForKeyedSubscript:@"source"];
      v48 = v16;
      v49 = v8;
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v50)
          {
            v52 = 0;
            v25 = 0;
            goto LABEL_30;
          }

          v21 = self;
          v53 = objc_alloc(MEMORY[0x1E696ABC0]);
          v36 = *MEMORY[0x1E698F240];
          v62 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"source"];
          v63 = v22;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          v37 = [v53 initWithDomain:v36 code:2 userInfo:v20];
          v52 = 0;
          v25 = 0;
          *v50 = v37;
LABEL_29:

          self = v21;
          v8 = v49;
LABEL_30:
          v16 = v48;
LABEL_31:
          v26 = v55;

LABEL_32:
          v7 = v51;
LABEL_33:

          goto LABEL_34;
        }

        v52 = v19;
      }

      else
      {
        v52 = 0;
      }

      v20 = [v6 objectForKeyedSubscript:@"clientName"];
      if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        v21 = self;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v50)
          {
            v22 = 0;
            v25 = 0;
            goto LABEL_29;
          }

          v38 = objc_alloc(MEMORY[0x1E696ABC0]);
          v39 = *MEMORY[0x1E698F240];
          v60 = *MEMORY[0x1E696A578];
          v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"clientName"];
          v61 = v24;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
          v40 = [v38 initWithDomain:v39 code:2 userInfo:v23];
          v22 = 0;
          v25 = 0;
          *v50 = v40;
          goto LABEL_28;
        }

        v22 = v20;
      }

      else
      {
        v21 = self;
        v22 = 0;
      }

      v23 = [v6 objectForKeyedSubscript:@"eventCorrelationIdentifier"];
      if (v23 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v50)
          {
            v47 = objc_alloc(MEMORY[0x1E696ABC0]);
            v46 = *MEMORY[0x1E698F240];
            v58 = *MEMORY[0x1E696A578];
            v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"eventCorrelationIdentifier"];
            v59 = v41;
            v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
            *v50 = [v47 initWithDomain:v46 code:2 userInfo:v42];
          }

          v24 = 0;
          v25 = 0;
          goto LABEL_28;
        }

        v24 = v23;
      }

      else
      {
        v24 = 0;
      }

      v25 = [(BMHomeKitBase *)v21 initWithAbsoluteTimestamp:v49 duration:v55 homeUniqueIdentifier:v56 homeOccupancy:v54 source:v52 clientName:v22 eventCorrelationIdentifier:v24];
      v21 = v25;
LABEL_28:

      goto LABEL_29;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v54 = v18;
      goto LABEL_18;
    }

    if (a4)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v34 = *MEMORY[0x1E698F240];
      v64 = *MEMORY[0x1E696A578];
      v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"homeOccupancy"];
      v65 = v52;
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v35 = [v33 initWithDomain:v34 code:2 userInfo:v19];
      v54 = 0;
      v25 = 0;
      *v50 = v35;
      goto LABEL_31;
    }

    v54 = 0;
    v25 = 0;
LABEL_66:
    v26 = v55;
    goto LABEL_32;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = MEMORY[0x1E695DF00];
    v10 = v7;
    v11 = [v9 alloc];
    [v10 doubleValue];
    v13 = v12;

    v14 = [v11 initWithTimeIntervalSince1970:v13];
LABEL_6:
    v8 = v14;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = objc_alloc_init(MEMORY[0x1E696AC80]);
    v8 = [v15 dateFromString:v7];

    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v7;
    goto LABEL_6;
  }

  if (!a4)
  {
    v8 = 0;
    v25 = 0;
    goto LABEL_35;
  }

  v43 = objc_alloc(MEMORY[0x1E696ABC0]);
  v44 = a4;
  v45 = *MEMORY[0x1E698F240];
  v70 = *MEMORY[0x1E696A578];
  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"absoluteTimestamp"];
  v71[0] = v26;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
  v8 = 0;
  v25 = 0;
  *v44 = [v43 initWithDomain:v45 code:2 userInfo:v16];
LABEL_34:

LABEL_35:
  v27 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMHomeKitBase *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_hasRaw_absoluteTimestamp)
  {
    raw_absoluteTimestamp = self->_raw_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_hasDuration)
  {
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    v4 = v8;
  }

  if (self->_homeUniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_hasHomeOccupancy)
  {
    homeOccupancy = self->_homeOccupancy;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }

  if (self->_source)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_clientName)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_eventCorrelationIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = BMHomeKitBase;
  v5 = [(BMEventBase *)&v37 init];
  if (!v5)
  {
    goto LABEL_61;
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
        LOBYTE(v38) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v38 & 0x7F) << v7;
        if ((v38 & 0x80) == 0)
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
      if ((v14 >> 3) <= 3)
      {
        if (v15 == 1)
        {
          v5->_hasRaw_absoluteTimestamp = 1;
          v38 = 0;
          v18 = [v4 position] + 8;
          if (v18 >= [v4 position] && (v19 = objc_msgSend(v4, "position") + 8, v19 <= objc_msgSend(v4, "length")))
          {
            v30 = [v4 data];
            [v30 getBytes:&v38 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v31 = v38;
          v32 = 24;
          goto LABEL_57;
        }

        if (v15 == 2)
        {
          v5->_hasDuration = 1;
          v38 = 0;
          v28 = [v4 position] + 8;
          if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 8, v29 <= objc_msgSend(v4, "length")))
          {
            v33 = [v4 data];
            [v33 getBytes:&v38 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v31 = v38;
          v32 = 48;
LABEL_57:
          *(&v5->super.super.isa + v32) = v31;
          goto LABEL_58;
        }

        if (v15 != 3)
        {
          goto LABEL_33;
        }

        v16 = PBReaderReadString();
        v17 = 56;
      }

      else if (v15 > 5)
      {
        if (v15 == 6)
        {
          v16 = PBReaderReadString();
          v17 = 72;
        }

        else
        {
          if (v15 != 7)
          {
LABEL_33:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_60;
            }

            goto LABEL_58;
          }

          v16 = PBReaderReadString();
          v17 = 80;
        }
      }

      else
      {
        if (v15 == 4)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v5->_hasHomeOccupancy = 1;
          while (1)
          {
            LOBYTE(v38) = 0;
            v23 = [v4 position] + 1;
            if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
            {
              v25 = [v4 data];
              [v25 getBytes:&v38 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v22 |= (v38 & 0x7F) << v20;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v13 = v21++ >= 9;
            if (v13)
            {
              v26 = 0;
              goto LABEL_52;
            }
          }

          if ([v4 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_52:
          v5->_homeOccupancy = v26;
          goto LABEL_58;
        }

        if (v15 != 5)
        {
          goto LABEL_33;
        }

        v16 = PBReaderReadString();
        v17 = 64;
      }

      v27 = *(&v5->super.super.isa + v17);
      *(&v5->super.super.isa + v17) = v16;

LABEL_58:
      v34 = [v4 position];
    }

    while (v34 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_60:
    v35 = 0;
  }

  else
  {
LABEL_61:
    v35 = v5;
  }

  return v35;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMHomeKitBase *)self absoluteTimestamp];
  v5 = MEMORY[0x1E696AD98];
  [(BMHomeKitBase *)self duration];
  v6 = [v5 numberWithDouble:?];
  v7 = [(BMHomeKitBase *)self homeUniqueIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMHomeKitBase homeOccupancy](self, "homeOccupancy")}];
  v9 = [(BMHomeKitBase *)self source];
  v10 = [(BMHomeKitBase *)self clientName];
  v11 = [(BMHomeKitBase *)self eventCorrelationIdentifier];
  v12 = [v3 initWithFormat:@"BMHomeKitBase with absoluteTimestamp: %@, duration: %@, homeUniqueIdentifier: %@, homeOccupancy: %@, source: %@, clientName: %@, eventCorrelationIdentifier: %@", v4, v6, v7, v8, v9, v10, v11];

  return v12;
}

- (BMHomeKitBase)initWithAbsoluteTimestamp:(id)a3 duration:(id)a4 homeUniqueIdentifier:(id)a5 homeOccupancy:(id)a6 source:(id)a7 clientName:(id)a8 eventCorrelationIdentifier:(id)a9
{
  v15 = a3;
  v16 = a4;
  v26 = a5;
  v17 = a6;
  v25 = a7;
  v18 = a8;
  v19 = a9;
  v27.receiver = self;
  v27.super_class = BMHomeKitBase;
  v20 = [(BMEventBase *)&v27 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v15)
    {
      v20->_hasRaw_absoluteTimestamp = 1;
      [v15 timeIntervalSince1970];
    }

    else
    {
      v20->_hasRaw_absoluteTimestamp = 0;
      v21 = -1.0;
    }

    v20->_raw_absoluteTimestamp = v21;
    if (v16)
    {
      v20->_hasDuration = 1;
      [v16 doubleValue];
    }

    else
    {
      v20->_hasDuration = 0;
      v22 = -1.0;
    }

    v20->_duration = v22;
    objc_storeStrong(&v20->_homeUniqueIdentifier, a5);
    if (v17)
    {
      v20->_hasHomeOccupancy = 1;
      v23 = [v17 intValue];
    }

    else
    {
      v20->_hasHomeOccupancy = 0;
      v23 = -1;
    }

    v20->_homeOccupancy = v23;
    objc_storeStrong(&v20->_source, a7);
    objc_storeStrong(&v20->_clientName, a8);
    objc_storeStrong(&v20->_eventCorrelationIdentifier, a9);
  }

  return v20;
}

+ (id)protoFields
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"absoluteTimestamp" number:1 type:0 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"duration" number:2 type:0 subMessageClass:{0, v2}];
  v12[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeUniqueIdentifier" number:3 type:13 subMessageClass:0];
  v12[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"homeOccupancy" number:4 type:2 subMessageClass:0];
  v12[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"source" number:5 type:13 subMessageClass:0];
  v12[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientName" number:6 type:13 subMessageClass:0];
  v12[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"eventCorrelationIdentifier" number:7 type:13 subMessageClass:0];
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)columns
{
  v12[7] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"absoluteTimestamp" dataType:3 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"duration" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"homeUniqueIdentifier" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"homeOccupancy" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"source" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientName" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"eventCorrelationIdentifier" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v5;
  v12[4] = v6;
  v12[5] = v7;
  v12[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:7];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
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

    v8 = [[BMHomeKitBase alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[9] = 0;
    }
  }

  return v4;
}

@end