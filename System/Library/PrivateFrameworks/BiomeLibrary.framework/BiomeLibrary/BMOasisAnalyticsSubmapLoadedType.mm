@interface BMOasisAnalyticsSubmapLoadedType
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMOasisAnalyticsSubmapLoadedType)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMOasisAnalyticsSubmapLoadedType)initWithSubmapId:(id)a3 isLocated:(id)a4 numberOfSubmaps:(id)a5 bytesReadFromDisk:(id)a6 timeToLoadChunkInSecond:(id)a7;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMOasisAnalyticsSubmapLoadedType

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (-[BMOasisAnalyticsSubmapLoadedType hasSubmapId](self, "hasSubmapId") || [v5 hasSubmapId])
    {
      if (![(BMOasisAnalyticsSubmapLoadedType *)self hasSubmapId])
      {
        goto LABEL_28;
      }

      if (![v5 hasSubmapId])
      {
        goto LABEL_28;
      }

      v6 = [(BMOasisAnalyticsSubmapLoadedType *)self submapId];
      if (v6 != [v5 submapId])
      {
        goto LABEL_28;
      }
    }

    if (-[BMOasisAnalyticsSubmapLoadedType hasIsLocated](self, "hasIsLocated") || [v5 hasIsLocated])
    {
      if (![(BMOasisAnalyticsSubmapLoadedType *)self hasIsLocated])
      {
        goto LABEL_28;
      }

      if (![v5 hasIsLocated])
      {
        goto LABEL_28;
      }

      v7 = [(BMOasisAnalyticsSubmapLoadedType *)self isLocated];
      if (v7 != [v5 isLocated])
      {
        goto LABEL_28;
      }
    }

    if (-[BMOasisAnalyticsSubmapLoadedType hasNumberOfSubmaps](self, "hasNumberOfSubmaps") || [v5 hasNumberOfSubmaps])
    {
      if (![(BMOasisAnalyticsSubmapLoadedType *)self hasNumberOfSubmaps])
      {
        goto LABEL_28;
      }

      if (![v5 hasNumberOfSubmaps])
      {
        goto LABEL_28;
      }

      v8 = [(BMOasisAnalyticsSubmapLoadedType *)self numberOfSubmaps];
      if (v8 != [v5 numberOfSubmaps])
      {
        goto LABEL_28;
      }
    }

    if (-[BMOasisAnalyticsSubmapLoadedType hasBytesReadFromDisk](self, "hasBytesReadFromDisk") || [v5 hasBytesReadFromDisk])
    {
      if (![(BMOasisAnalyticsSubmapLoadedType *)self hasBytesReadFromDisk])
      {
        goto LABEL_28;
      }

      if (![v5 hasBytesReadFromDisk])
      {
        goto LABEL_28;
      }

      v9 = [(BMOasisAnalyticsSubmapLoadedType *)self bytesReadFromDisk];
      if (v9 != [v5 bytesReadFromDisk])
      {
        goto LABEL_28;
      }
    }

    if (!-[BMOasisAnalyticsSubmapLoadedType hasTimeToLoadChunkInSecond](self, "hasTimeToLoadChunkInSecond") && ![v5 hasTimeToLoadChunkInSecond])
    {
      v13 = 1;
      goto LABEL_29;
    }

    if (-[BMOasisAnalyticsSubmapLoadedType hasTimeToLoadChunkInSecond](self, "hasTimeToLoadChunkInSecond") && [v5 hasTimeToLoadChunkInSecond])
    {
      [(BMOasisAnalyticsSubmapLoadedType *)self timeToLoadChunkInSecond];
      v11 = v10;
      [v5 timeToLoadChunkInSecond];
      v13 = v11 == v12;
    }

    else
    {
LABEL_28:
      v13 = 0;
    }

LABEL_29:

    goto LABEL_30;
  }

  v13 = 0;
LABEL_30:

  return v13;
}

- (id)jsonDictionary
{
  v21[5] = *MEMORY[0x1E69E9840];
  if ([(BMOasisAnalyticsSubmapLoadedType *)self hasSubmapId])
  {
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSubmapLoadedType submapId](self, "submapId")}];
  }

  else
  {
    v3 = 0;
  }

  if ([(BMOasisAnalyticsSubmapLoadedType *)self hasIsLocated])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMOasisAnalyticsSubmapLoadedType isLocated](self, "isLocated")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMOasisAnalyticsSubmapLoadedType *)self hasNumberOfSubmaps])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsSubmapLoadedType numberOfSubmaps](self, "numberOfSubmaps")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMOasisAnalyticsSubmapLoadedType *)self hasBytesReadFromDisk])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSubmapLoadedType bytesReadFromDisk](self, "bytesReadFromDisk")}];
  }

  else
  {
    v6 = 0;
  }

  if (![(BMOasisAnalyticsSubmapLoadedType *)self hasTimeToLoadChunkInSecond]|| ([(BMOasisAnalyticsSubmapLoadedType *)self timeToLoadChunkInSecond], fabsf(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMOasisAnalyticsSubmapLoadedType *)self timeToLoadChunkInSecond];
    v8 = MEMORY[0x1E696AD98];
    [(BMOasisAnalyticsSubmapLoadedType *)self timeToLoadChunkInSecond];
    v9 = [v8 numberWithFloat:?];
  }

  v18 = v3;
  v20[0] = @"submapId";
  v10 = v3;
  if (!v3)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v21[0] = v10;
  v20[1] = @"isLocated";
  v11 = v4;
  if (!v4)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v21[1] = v11;
  v20[2] = @"numberOfSubmaps";
  v12 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v21[2] = v12;
  v20[3] = @"bytesReadFromDisk";
  v13 = v6;
  if (!v6)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v21[3] = v13;
  v20[4] = @"timeToLoadChunkInSecond";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v21[4] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:{5, v18}];
  if (v9)
  {
    if (v6)
    {
      goto LABEL_29;
    }
  }

  else
  {

    if (v6)
    {
LABEL_29:
      if (v5)
      {
        goto LABEL_30;
      }

LABEL_38:

      if (v4)
      {
        goto LABEL_31;
      }

      goto LABEL_39;
    }
  }

  if (!v5)
  {
    goto LABEL_38;
  }

LABEL_30:
  if (v4)
  {
    goto LABEL_31;
  }

LABEL_39:

LABEL_31:
  if (!v19)
  {
  }

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (BMOasisAnalyticsSubmapLoadedType)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v49[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"submapId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"isLocated"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v39 = 0;
          v16 = 0;
          goto LABEL_20;
        }

        v33 = a4;
        v22 = objc_alloc(MEMORY[0x1E696ABC0]);
        v23 = *MEMORY[0x1E698F240];
        v46 = *MEMORY[0x1E696A578];
        v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isLocated"];
        v47 = v37;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v39 = 0;
        v16 = 0;
        *v33 = [v22 initWithDomain:v23 code:2 userInfo:v10];
        goto LABEL_19;
      }

      v39 = v9;
    }

    else
    {
      v39 = 0;
    }

    v10 = [v6 objectForKeyedSubscript:@"numberOfSubmaps"];
    v36 = v8;
    v38 = self;
    if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v37 = 0;
          v16 = 0;
          goto LABEL_19;
        }

        v24 = a4;
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v44 = *MEMORY[0x1E696A578];
        v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"numberOfSubmaps"];
        v45 = v13;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        v37 = 0;
        v16 = 0;
        *v24 = [v25 initWithDomain:v26 code:2 userInfo:v11];
LABEL_18:

        self = v38;
        v8 = v36;
LABEL_19:

        goto LABEL_20;
      }

      v37 = v10;
    }

    else
    {
      v37 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"bytesReadFromDisk"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v13 = 0;
          v16 = 0;
          goto LABEL_18;
        }

        v34 = objc_alloc(MEMORY[0x1E696ABC0]);
        v27 = *MEMORY[0x1E698F240];
        v42 = *MEMORY[0x1E696A578];
        v28 = a4;
        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"bytesReadFromDisk"];
        v43 = v15;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
        v29 = [v34 initWithDomain:v27 code:2 userInfo:v14];
        v13 = 0;
        v16 = 0;
        *v28 = v29;
        goto LABEL_17;
      }

      v12 = a4;
      v13 = v11;
    }

    else
    {
      v12 = a4;
      v13 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"timeToLoadChunkInSecond"];
    if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v12)
        {
          v35 = objc_alloc(MEMORY[0x1E696ABC0]);
          v32 = *MEMORY[0x1E698F240];
          v40 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"timeToLoadChunkInSecond"];
          v41 = v30;
          v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          *v12 = [v35 initWithDomain:v32 code:2 userInfo:v31];
        }

        v15 = 0;
        v16 = 0;
        goto LABEL_17;
      }

      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [(BMOasisAnalyticsSubmapLoadedType *)v38 initWithSubmapId:v36 isLocated:v39 numberOfSubmaps:v37 bytesReadFromDisk:v13 timeToLoadChunkInSecond:v15];
    v38 = v16;
LABEL_17:

    goto LABEL_18;
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
    v16 = 0;
    goto LABEL_21;
  }

  v19 = a4;
  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v48 = *MEMORY[0x1E696A578];
  v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"submapId"];
  v49[0] = v39;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v8 = 0;
  v16 = 0;
  *v19 = [v20 initWithDomain:v21 code:2 userInfo:v9];
LABEL_20:

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMOasisAnalyticsSubmapLoadedType *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if (self->_hasSubmapId)
  {
    submapId = self->_submapId;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasIsLocated)
  {
    isLocated = self->_isLocated;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasNumberOfSubmaps)
  {
    numberOfSubmaps = self->_numberOfSubmaps;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasBytesReadFromDisk)
  {
    bytesReadFromDisk = self->_bytesReadFromDisk;
    PBDataWriterWriteUint64Field();
  }

  if (self->_hasTimeToLoadChunkInSecond)
  {
    timeToLoadChunkInSecond = self->_timeToLoadChunkInSecond;
    PBDataWriterWriteFloatField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = BMOasisAnalyticsSubmapLoadedType;
  v5 = [(BMEventBase *)&v50 init];
  if (!v5)
  {
    goto LABEL_85;
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
        LOBYTE(v51) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v51) & 0x7F) << v7;
        if ((LOBYTE(v51) & 0x80) == 0)
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
      if ((v14 >> 3) <= 100)
      {
        if (v15 == 1)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          v5->_hasSubmapId = 1;
          while (1)
          {
            LOBYTE(v51) = 0;
            v42 = [v4 position] + 1;
            if (v42 >= [v4 position] && (v43 = objc_msgSend(v4, "position") + 1, v43 <= objc_msgSend(v4, "length")))
            {
              v44 = [v4 data];
              [v44 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v41 = (((LOBYTE(v51) & 0x7F) << v39) | v41);
            if ((LOBYTE(v51) & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v13 = v40++ >= 9;
            if (v13)
            {
              v38 = 0;
              goto LABEL_76;
            }
          }

          if ([v4 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v41;
          }

LABEL_76:
          v45 = 40;
          goto LABEL_77;
        }

        if (v15 != 2)
        {
LABEL_63:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_84;
          }

          goto LABEL_82;
        }

        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasIsLocated = 1;
        while (1)
        {
          LOBYTE(v51) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (LOBYTE(v51) & 0x7F) << v18;
          if ((LOBYTE(v51) & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v13 = v19++ >= 9;
          if (v13)
          {
            LOBYTE(v24) = 0;
            goto LABEL_79;
          }
        }

        v24 = (v20 != 0) & ~[v4 hasError];
LABEL_79:
        v5->_isLocated = v24;
      }

      else
      {
        if (v15 == 101)
        {
          v25 = 0;
          v26 = 0;
          v27 = 0;
          v5->_hasNumberOfSubmaps = 1;
          while (1)
          {
            LOBYTE(v51) = 0;
            v28 = [v4 position] + 1;
            if (v28 >= [v4 position] && (v29 = objc_msgSend(v4, "position") + 1, v29 <= objc_msgSend(v4, "length")))
            {
              v30 = [v4 data];
              [v30 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v27 |= (LOBYTE(v51) & 0x7F) << v25;
            if ((LOBYTE(v51) & 0x80) == 0)
            {
              break;
            }

            v25 += 7;
            v13 = v26++ >= 9;
            if (v13)
            {
              v31 = 0;
              goto LABEL_68;
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

LABEL_68:
          v5->_numberOfSubmaps = v31;
          goto LABEL_82;
        }

        if (v15 == 102)
        {
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v5->_hasBytesReadFromDisk = 1;
          while (1)
          {
            LOBYTE(v51) = 0;
            v35 = [v4 position] + 1;
            if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 1, v36 <= objc_msgSend(v4, "length")))
            {
              v37 = [v4 data];
              [v37 getBytes:&v51 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v34 = (((LOBYTE(v51) & 0x7F) << v32) | v34);
            if ((LOBYTE(v51) & 0x80) == 0)
            {
              break;
            }

            v32 += 7;
            v13 = v33++ >= 9;
            if (v13)
            {
              v38 = 0;
              goto LABEL_72;
            }
          }

          if ([v4 hasError])
          {
            v38 = 0;
          }

          else
          {
            v38 = v34;
          }

LABEL_72:
          v45 = 48;
LABEL_77:
          *(&v5->super.super.isa + v45) = v38;
          goto LABEL_82;
        }

        if (v15 != 103)
        {
          goto LABEL_63;
        }

        v5->_hasTimeToLoadChunkInSecond = 1;
        v51 = 0.0;
        v16 = [v4 position] + 4;
        if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 4, v17 <= objc_msgSend(v4, "length")))
        {
          v46 = [v4 data];
          [v46 getBytes:&v51 range:{objc_msgSend(v4, "position"), 4}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 4}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_timeToLoadChunkInSecond = v51;
      }

LABEL_82:
      v47 = [v4 position];
    }

    while (v47 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_84:
    v48 = 0;
  }

  else
  {
LABEL_85:
    v48 = v5;
  }

  return v48;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSubmapLoadedType submapId](self, "submapId")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMOasisAnalyticsSubmapLoadedType isLocated](self, "isLocated")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMOasisAnalyticsSubmapLoadedType numberOfSubmaps](self, "numberOfSubmaps")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BMOasisAnalyticsSubmapLoadedType bytesReadFromDisk](self, "bytesReadFromDisk")}];
  v8 = MEMORY[0x1E696AD98];
  [(BMOasisAnalyticsSubmapLoadedType *)self timeToLoadChunkInSecond];
  v9 = [v8 numberWithFloat:?];
  v10 = [v3 initWithFormat:@"BMOasisAnalyticsSubmapLoadedType with submapId: %@, isLocated: %@, numberOfSubmaps: %@, bytesReadFromDisk: %@, timeToLoadChunkInSecond: %@", v4, v5, v6, v7, v9];

  return v10;
}

- (BMOasisAnalyticsSubmapLoadedType)initWithSubmapId:(id)a3 isLocated:(id)a4 numberOfSubmaps:(id)a5 bytesReadFromDisk:(id)a6 timeToLoadChunkInSecond:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = BMOasisAnalyticsSubmapLoadedType;
  v17 = [(BMEventBase *)&v23 init];
  if (v17)
  {
    v17->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v12)
    {
      v17->_hasSubmapId = 1;
      v18 = [v12 unsignedLongLongValue];
    }

    else
    {
      v18 = 0;
      v17->_hasSubmapId = 0;
    }

    v17->_submapId = v18;
    if (v13)
    {
      v17->_hasIsLocated = 1;
      v17->_isLocated = [v13 BOOLValue];
    }

    else
    {
      v17->_hasIsLocated = 0;
      v17->_isLocated = 0;
    }

    if (v14)
    {
      v17->_hasNumberOfSubmaps = 1;
      v19 = [v14 unsignedIntValue];
    }

    else
    {
      v19 = 0;
      v17->_hasNumberOfSubmaps = 0;
    }

    v17->_numberOfSubmaps = v19;
    if (v15)
    {
      v17->_hasBytesReadFromDisk = 1;
      v20 = [v15 unsignedLongLongValue];
    }

    else
    {
      v20 = 0;
      v17->_hasBytesReadFromDisk = 0;
    }

    v17->_bytesReadFromDisk = v20;
    if (v16)
    {
      v17->_hasTimeToLoadChunkInSecond = 1;
      [v16 floatValue];
    }

    else
    {
      v17->_hasTimeToLoadChunkInSecond = 0;
      v21 = -1.0;
    }

    v17->_timeToLoadChunkInSecond = v21;
  }

  return v17;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"submapId" number:1 type:5 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isLocated" number:2 type:12 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"numberOfSubmaps" number:101 type:4 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bytesReadFromDisk" number:102 type:5 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timeToLoadChunkInSecond" number:103 type:1 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"submapId" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:5 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isLocated" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"numberOfSubmaps" dataType:0 requestOnly:0 fieldNumber:101 protoDataType:4 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bytesReadFromDisk" dataType:0 requestOnly:0 fieldNumber:102 protoDataType:5 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timeToLoadChunkInSecond" dataType:1 requestOnly:0 fieldNumber:103 protoDataType:1 convertedType:0];
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

    v8 = [[BMOasisAnalyticsSubmapLoadedType alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[6] = 0;
    }
  }

  return v4;
}

@end