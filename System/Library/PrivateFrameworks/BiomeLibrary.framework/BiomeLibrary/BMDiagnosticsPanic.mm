@interface BMDiagnosticsPanic
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMDiagnosticsPanic)initWithCaptureTime:(id)a3 incidentID:(id)a4 patternUUID:(id)a5 patternType:(id)a6;
- (BMDiagnosticsPanic)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMDiagnosticsPanic

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"captureTime" dataType:1 requestOnly:0 fieldNumber:1 protoDataType:0 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"incidentID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"patternUUID" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"patternType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMDiagnosticsPanic hasCaptureTime](self, "hasCaptureTime") || [v5 hasCaptureTime])
    {
      if (![(BMDiagnosticsPanic *)self hasCaptureTime])
      {
        goto LABEL_21;
      }

      if (![v5 hasCaptureTime])
      {
        goto LABEL_21;
      }

      [(BMDiagnosticsPanic *)self captureTime];
      v7 = v6;
      [v5 captureTime];
      if (v7 != v8)
      {
        goto LABEL_21;
      }
    }

    v9 = [(BMDiagnosticsPanic *)self incidentID];
    v10 = [v5 incidentID];
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      v12 = [(BMDiagnosticsPanic *)self incidentID];
      v13 = [v5 incidentID];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        goto LABEL_21;
      }
    }

    v16 = [(BMDiagnosticsPanic *)self patternUUID];
    v17 = [v5 patternUUID];
    v18 = v17;
    if (v16 == v17)
    {
    }

    else
    {
      v19 = [(BMDiagnosticsPanic *)self patternUUID];
      v20 = [v5 patternUUID];
      v21 = [v19 isEqual:v20];

      if (!v21)
      {
        goto LABEL_21;
      }
    }

    if (!-[BMDiagnosticsPanic hasPatternType](self, "hasPatternType") && ![v5 hasPatternType])
    {
      v15 = 1;
      goto LABEL_22;
    }

    if (-[BMDiagnosticsPanic hasPatternType](self, "hasPatternType") && [v5 hasPatternType])
    {
      v22 = [(BMDiagnosticsPanic *)self patternType];
      v15 = v22 == [v5 patternType];
LABEL_22:

      goto LABEL_23;
    }

LABEL_21:
    v15 = 0;
    goto LABEL_22;
  }

  v15 = 0;
LABEL_23:

  return v15;
}

- (id)jsonDictionary
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (![(BMDiagnosticsPanic *)self hasCaptureTime]|| ([(BMDiagnosticsPanic *)self captureTime], fabs(v3) == INFINITY))
  {
    v5 = 0;
  }

  else
  {
    [(BMDiagnosticsPanic *)self captureTime];
    v4 = MEMORY[0x1E696AD98];
    [(BMDiagnosticsPanic *)self captureTime];
    v5 = [v4 numberWithDouble:?];
  }

  v6 = [(BMDiagnosticsPanic *)self incidentID];
  v7 = [(BMDiagnosticsPanic *)self patternUUID];
  if ([(BMDiagnosticsPanic *)self hasPatternType])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDiagnosticsPanic patternType](self, "patternType")}];
  }

  else
  {
    v8 = 0;
  }

  v16[0] = @"captureTime";
  v9 = v5;
  if (!v5)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v17[0] = v9;
  v16[1] = @"incidentID";
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = v10;
  v16[2] = @"patternUUID";
  v11 = v7;
  if (!v7)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v17[2] = v11;
  v16[3] = @"patternType";
  v12 = v8;
  if (!v8)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v17[3] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:4];
  if (v8)
  {
    if (v7)
    {
      goto LABEL_18;
    }
  }

  else
  {

    if (v7)
    {
LABEL_18:
      if (v6)
      {
        goto LABEL_19;
      }

LABEL_25:

      if (v5)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }
  }

  if (!v6)
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v5)
  {
    goto LABEL_20;
  }

LABEL_26:

LABEL_20:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BMDiagnosticsPanic)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v40[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"captureTime"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"incidentID"];
    v32 = v7;
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v15 = 0;
          goto LABEL_16;
        }

        v21 = objc_alloc(MEMORY[0x1E696ABC0]);
        v22 = *MEMORY[0x1E698F240];
        v37 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"incidentID"];
        v38 = v12;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v15 = 0;
        *a4 = [v21 initWithDomain:v22 code:2 userInfo:v10];
        a4 = 0;
        goto LABEL_15;
      }

      v31 = v9;
    }

    else
    {
      v31 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"patternUUID"];
    v11 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v12 = 0;
          v15 = 0;
          a4 = v31;
          goto LABEL_15;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = a4;
        v24 = *MEMORY[0x1E698F240];
        v35 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"patternUUID"];
        v36 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v25 = [v23 initWithDomain:v24 code:2 userInfo:v13];
        v12 = 0;
        v15 = 0;
        a4 = v31;
        *v29 = v25;
        goto LABEL_14;
      }

      v12 = v10;
    }

    else
    {
      v12 = 0;
    }

    v13 = [v6 objectForKeyedSubscript:@"patternType"];
    if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v28 = *MEMORY[0x1E698F240];
          v33 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"patternType"];
          v34 = v26;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          *a4 = [v30 initWithDomain:v28 code:2 userInfo:v27];
        }

        v14 = 0;
        v15 = 0;
        a4 = v31;
        goto LABEL_14;
      }

      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    a4 = v31;
    v15 = [(BMDiagnosticsPanic *)v11 initWithCaptureTime:v8 incidentID:v31 patternUUID:v12 patternType:v14];
    v11 = v15;
LABEL_14:

    self = v11;
LABEL_15:

    v7 = v32;
    goto LABEL_16;
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
    v15 = 0;
    goto LABEL_17;
  }

  v18 = objc_alloc(MEMORY[0x1E696ABC0]);
  v19 = *MEMORY[0x1E698F240];
  v39 = *MEMORY[0x1E696A578];
  v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"captureTime"];
  v40[0] = v20;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v8 = 0;
  v15 = 0;
  *a4 = [v18 initWithDomain:v19 code:2 userInfo:v9];
  a4 = v20;
LABEL_16:

LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDiagnosticsPanic *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if (self->_hasCaptureTime)
  {
    captureTime = self->_captureTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_incidentID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_patternUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasPatternType)
  {
    patternType = self->_patternType;
    PBDataWriterWriteUint32Field();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = BMDiagnosticsPanic;
  v5 = [(BMEventBase *)&v32 init];
  if (!v5)
  {
    goto LABEL_49;
  }

  v6 = [v4 position];
  if (v6 < [v4 length])
  {
    while (1)
    {
      if ([v4 hasError])
      {
        goto LABEL_47;
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
        goto LABEL_47;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 2)
      {
        break;
      }

      if (v15 == 3)
      {
        v16 = PBReaderReadString();
        v17 = 48;
LABEL_39:
        v27 = *(&v5->super.super.isa + v17);
        *(&v5->super.super.isa + v17) = v16;

        goto LABEL_46;
      }

      if (v15 != 4)
      {
LABEL_33:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_48;
        }

        goto LABEL_46;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      v5->_hasPatternType = 1;
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
          v24 = 0;
          goto LABEL_43;
        }
      }

      if ([v4 hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v20;
      }

LABEL_43:
      v5->_patternType = v24;
LABEL_46:
      v29 = [v4 position];
      if (v29 >= [v4 length])
      {
        goto LABEL_47;
      }
    }

    if (v15 == 1)
    {
      v5->_hasCaptureTime = 1;
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

      v5->_captureTime = v33;
      goto LABEL_46;
    }

    if (v15 != 2)
    {
      goto LABEL_33;
    }

    v16 = PBReaderReadString();
    v17 = 40;
    goto LABEL_39;
  }

LABEL_47:
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
  v4 = MEMORY[0x1E696AD98];
  [(BMDiagnosticsPanic *)self captureTime];
  v5 = [v4 numberWithDouble:?];
  v6 = [(BMDiagnosticsPanic *)self incidentID];
  v7 = [(BMDiagnosticsPanic *)self patternUUID];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDiagnosticsPanic patternType](self, "patternType")}];
  v9 = [v3 initWithFormat:@"BMDiagnosticsPanic with captureTime: %@, incidentID: %@, patternUUID: %@, patternType: %@", v5, v6, v7, v8];

  return v9;
}

- (BMDiagnosticsPanic)initWithCaptureTime:(id)a3 incidentID:(id)a4 patternUUID:(id)a5 patternType:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v18.receiver = self;
  v18.super_class = BMDiagnosticsPanic;
  v14 = [(BMEventBase *)&v18 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v10)
    {
      v14->_hasCaptureTime = 1;
      [v10 doubleValue];
    }

    else
    {
      v14->_hasCaptureTime = 0;
      v15 = -1.0;
    }

    v14->_captureTime = v15;
    objc_storeStrong(&v14->_incidentID, a4);
    objc_storeStrong(&v14->_patternUUID, a5);
    if (v13)
    {
      v14->_hasPatternType = 1;
      v16 = [v13 unsignedIntValue];
    }

    else
    {
      v16 = 0;
      v14->_hasPatternType = 0;
    }

    v14->_patternType = v16;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"captureTime" number:1 type:0 subMessageClass:0];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"incidentID" number:2 type:13 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"patternUUID" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"patternType" number:4 type:4 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
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

    v8 = [[BMDiagnosticsPanic alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end