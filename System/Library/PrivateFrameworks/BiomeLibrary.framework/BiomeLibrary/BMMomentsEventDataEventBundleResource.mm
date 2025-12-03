@interface BMMomentsEventDataEventBundleResource
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEventDataEventBundleResource)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMomentsEventDataEventBundleResource)initWithType:(int)type photoAssetMediaType:(int)mediaType photoFaceCount:(id)count photoCurationScore:(id)score photoOverallAestheticScore:(id)aestheticScore;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEventDataEventBundleResource

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    type = [(BMMomentsEventDataEventBundleResource *)self type];
    if (type != [v5 type])
    {
      goto LABEL_20;
    }

    photoAssetMediaType = [(BMMomentsEventDataEventBundleResource *)self photoAssetMediaType];
    if (photoAssetMediaType != [v5 photoAssetMediaType])
    {
      goto LABEL_20;
    }

    if (-[BMMomentsEventDataEventBundleResource hasPhotoFaceCount](self, "hasPhotoFaceCount") || [v5 hasPhotoFaceCount])
    {
      if (![(BMMomentsEventDataEventBundleResource *)self hasPhotoFaceCount])
      {
        goto LABEL_20;
      }

      if (![v5 hasPhotoFaceCount])
      {
        goto LABEL_20;
      }

      photoFaceCount = [(BMMomentsEventDataEventBundleResource *)self photoFaceCount];
      if (photoFaceCount != [v5 photoFaceCount])
      {
        goto LABEL_20;
      }
    }

    if (-[BMMomentsEventDataEventBundleResource hasPhotoCurationScore](self, "hasPhotoCurationScore") || [v5 hasPhotoCurationScore])
    {
      if (![(BMMomentsEventDataEventBundleResource *)self hasPhotoCurationScore])
      {
        goto LABEL_20;
      }

      if (![v5 hasPhotoCurationScore])
      {
        goto LABEL_20;
      }

      [(BMMomentsEventDataEventBundleResource *)self photoCurationScore];
      v10 = v9;
      [v5 photoCurationScore];
      if (v10 != v11)
      {
        goto LABEL_20;
      }
    }

    if (!-[BMMomentsEventDataEventBundleResource hasPhotoOverallAestheticScore](self, "hasPhotoOverallAestheticScore") && ![v5 hasPhotoOverallAestheticScore])
    {
      v15 = 1;
      goto LABEL_21;
    }

    if (-[BMMomentsEventDataEventBundleResource hasPhotoOverallAestheticScore](self, "hasPhotoOverallAestheticScore") && [v5 hasPhotoOverallAestheticScore])
    {
      [(BMMomentsEventDataEventBundleResource *)self photoOverallAestheticScore];
      v13 = v12;
      [v5 photoOverallAestheticScore];
      v15 = v13 == v14;
    }

    else
    {
LABEL_20:
      v15 = 0;
    }

LABEL_21:

    goto LABEL_22;
  }

  v15 = 0;
LABEL_22:

  return v15;
}

- (id)jsonDictionary
{
  v23[5] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleResource type](self, "type")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleResource photoAssetMediaType](self, "photoAssetMediaType")}];
  if ([(BMMomentsEventDataEventBundleResource *)self hasPhotoFaceCount])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleResource photoFaceCount](self, "photoFaceCount")}];
  }

  else
  {
    v5 = 0;
  }

  if (![(BMMomentsEventDataEventBundleResource *)self hasPhotoCurationScore]|| ([(BMMomentsEventDataEventBundleResource *)self photoCurationScore], fabs(v6) == INFINITY))
  {
    v8 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleResource *)self photoCurationScore];
    v7 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleResource *)self photoCurationScore];
    v8 = [v7 numberWithDouble:?];
  }

  if (![(BMMomentsEventDataEventBundleResource *)self hasPhotoOverallAestheticScore]|| ([(BMMomentsEventDataEventBundleResource *)self photoOverallAestheticScore], fabs(v9) == INFINITY))
  {
    v11 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundleResource *)self photoOverallAestheticScore];
    v10 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundleResource *)self photoOverallAestheticScore];
    v11 = [v10 numberWithDouble:?];
  }

  v20 = v3;
  v22[0] = @"type";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v23[0] = null;
  v22[1] = @"photoAssetMediaType";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v23[1] = null2;
  v22[2] = @"photoFaceCount";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v23[2] = null3;
  v22[3] = @"photoCurationScore";
  null4 = v8;
  if (!v8)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v23[3] = null4;
  v22[4] = @"photoOverallAestheticScore";
  null5 = v11;
  if (!v11)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v23[4] = null5;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:{5, v20}];
  if (v11)
  {
    if (v8)
    {
      goto LABEL_24;
    }
  }

  else
  {

    if (v8)
    {
LABEL_24:
      if (v5)
      {
        goto LABEL_25;
      }

LABEL_33:

      if (v4)
      {
        goto LABEL_26;
      }

      goto LABEL_34;
    }
  }

  if (!v5)
  {
    goto LABEL_33;
  }

LABEL_25:
  if (v4)
  {
    goto LABEL_26;
  }

LABEL_34:

LABEL_26:
  if (!v21)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (BMMomentsEventDataEventBundleResource)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v52[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"type"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v42 = 0;
LABEL_9:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"photoAssetMediaType"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v17 = 0;
            goto LABEL_44;
          }

          v32 = objc_alloc(MEMORY[0x1E696ABC0]);
          errorCopy = error;
          v34 = *MEMORY[0x1E698F240];
          v49 = *MEMORY[0x1E696A578];
          v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"photoAssetMediaType"];
          v50 = v41;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v35 = [v32 initWithDomain:v34 code:2 userInfo:v11];
          error = 0;
          v17 = 0;
          *errorCopy = v35;
          goto LABEL_43;
        }

        v10 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataEventBundleResourcePhotoAssetMediaTypeFromString(v9)];
      }

      v40 = v10;
    }

    else
    {
      v40 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"photoFaceCount"];
    v39 = v7;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v41 = 0;
          v17 = 0;
          error = v40;
          goto LABEL_43;
        }

        selfCopy3 = self;
        v18 = objc_alloc(MEMORY[0x1E696ABC0]);
        v19 = *MEMORY[0x1E698F240];
        v47 = *MEMORY[0x1E696A578];
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"photoFaceCount"];
        v48 = v14;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        v41 = 0;
        v17 = 0;
        *error = [v18 initWithDomain:v19 code:2 userInfo:v13];
        goto LABEL_52;
      }

      selfCopy3 = self;
      v41 = v11;
    }

    else
    {
      selfCopy3 = self;
      v41 = 0;
    }

    v13 = [dictionaryCopy objectForKeyedSubscript:@"photoCurationScore"];
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v14 = 0;
      goto LABEL_23;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
LABEL_23:
      v15 = [dictionaryCopy objectForKeyedSubscript:@"photoOverallAestheticScore"];
      if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v16 = 0;
LABEL_26:
        error = v40;
        v17 = -[BMMomentsEventDataEventBundleResource initWithType:photoAssetMediaType:photoFaceCount:photoCurationScore:photoOverallAestheticScore:](selfCopy3, "initWithType:photoAssetMediaType:photoFaceCount:photoCurationScore:photoOverallAestheticScore:", [v42 intValue], objc_msgSend(v40, "intValue"), v41, v14, v16);
        selfCopy3 = v17;
LABEL_41:

LABEL_42:
        self = selfCopy3;
        v7 = v39;
LABEL_43:

        goto LABEL_44;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = v15;
        goto LABEL_26;
      }

      if (error)
      {
        v38 = objc_alloc(MEMORY[0x1E696ABC0]);
        v36 = *MEMORY[0x1E698F240];
        v43 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"photoOverallAestheticScore"];
        v44 = v23;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
        *error = [v38 initWithDomain:v36 code:2 userInfo:v24];
      }

      v16 = 0;
      v17 = 0;
LABEL_40:
      error = v40;
      goto LABEL_41;
    }

    if (error)
    {
      v20 = objc_alloc(MEMORY[0x1E696ABC0]);
      errorCopy2 = error;
      v21 = *MEMORY[0x1E698F240];
      v45 = *MEMORY[0x1E696A578];
      v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"photoCurationScore"];
      v46 = v16;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v22 = [v20 initWithDomain:v21 code:2 userInfo:v15];
      v14 = 0;
      v17 = 0;
      *errorCopy2 = v22;
      goto LABEL_40;
    }

    v14 = 0;
    v17 = 0;
LABEL_52:
    error = v40;
    goto LABEL_42;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_8:
    v42 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataEventBundleResourceTypeFromString(v7)];
    goto LABEL_8;
  }

  if (!error)
  {
    v42 = 0;
    v17 = 0;
    goto LABEL_45;
  }

  v27 = objc_alloc(MEMORY[0x1E696ABC0]);
  errorCopy3 = error;
  v29 = *MEMORY[0x1E698F240];
  v51 = *MEMORY[0x1E696A578];
  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
  v52[0] = v30;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
  v31 = v29;
  error = v30;
  v42 = 0;
  v17 = 0;
  *errorCopy3 = [v27 initWithDomain:v31 code:2 userInfo:v9];
LABEL_44:

LABEL_45:
  v25 = *MEMORY[0x1E69E9840];
  return v17;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEventBundleResource *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  photoAssetMediaType = self->_photoAssetMediaType;
  PBDataWriterWriteUint32Field();
  if (self->_hasPhotoFaceCount)
  {
    photoFaceCount = self->_photoFaceCount;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasPhotoCurationScore)
  {
    photoCurationScore = self->_photoCurationScore;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasPhotoOverallAestheticScore)
  {
    photoOverallAestheticScore = self->_photoOverallAestheticScore;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v47.receiver = self;
  v47.super_class = BMMomentsEventDataEventBundleResource;
  v5 = [(BMEventBase *)&v47 init];
  if (!v5)
  {
    goto LABEL_80;
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
        LOBYTE(v48) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v48 & 0x7F) << v7;
        if ((v48 & 0x80) == 0)
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
          v34 = 0;
          v35 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v48) = 0;
            v36 = [fromCopy position] + 1;
            if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v48 & 0x7F) << v34;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v24 = v35++ > 8;
            if (v24)
            {
              goto LABEL_65;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 0x10)
          {
LABEL_65:
            LODWORD(v20) = 0;
          }

          v39 = 24;
        }

        else
        {
          if (v15 != 2)
          {
LABEL_57:
            if (!PBReaderSkipValueWithTag())
            {
              goto LABEL_79;
            }

            goto LABEL_77;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v48) = 0;
            v21 = [fromCopy position] + 1;
            if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v20 |= (v48 & 0x7F) << v18;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_69;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v20 > 3)
          {
LABEL_69:
            LODWORD(v20) = 0;
          }

          v39 = 28;
        }

        *(&v5->super.super.isa + v39) = v20;
      }

      else if (v15 == 3)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v5->_hasPhotoFaceCount = 1;
        while (1)
        {
          LOBYTE(v48) = 0;
          v28 = [fromCopy position] + 1;
          if (v28 >= [fromCopy position] && (v29 = objc_msgSend(fromCopy, "position") + 1, v29 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v27 |= (v48 & 0x7F) << v25;
          if ((v48 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v13 = v26++ >= 9;
          if (v13)
          {
            v31 = 0;
            goto LABEL_62;
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

LABEL_62:
        v5->_photoFaceCount = v31;
      }

      else
      {
        if (v15 == 4)
        {
          v5->_hasPhotoCurationScore = 1;
          v48 = 0;
          v32 = [fromCopy position] + 8;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 8, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v41 = v48;
          v42 = 40;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_57;
          }

          v5->_hasPhotoOverallAestheticScore = 1;
          v48 = 0;
          v16 = [fromCopy position] + 8;
          if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v48 range:{objc_msgSend(fromCopy, "position"), 8}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
          }

          else
          {
            [fromCopy _setError];
          }

          v41 = v48;
          v42 = 48;
        }

        *(&v5->super.super.isa + v42) = v41;
      }

LABEL_77:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_79:
    v45 = 0;
  }

  else
  {
LABEL_80:
    v45 = v5;
  }

  return v45;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMomentsEventDataEventBundleResourceTypeAsString([(BMMomentsEventDataEventBundleResource *)self type]);
  v5 = BMMomentsEventDataEventBundleResourcePhotoAssetMediaTypeAsString([(BMMomentsEventDataEventBundleResource *)self photoAssetMediaType]);
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundleResource photoFaceCount](self, "photoFaceCount")}];
  v7 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleResource *)self photoCurationScore];
  v8 = [v7 numberWithDouble:?];
  v9 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundleResource *)self photoOverallAestheticScore];
  v10 = [v9 numberWithDouble:?];
  v11 = [v3 initWithFormat:@"BMMomentsEventDataEventBundleResource with type: %@, photoAssetMediaType: %@, photoFaceCount: %@, photoCurationScore: %@, photoOverallAestheticScore: %@", v4, v5, v6, v8, v10];

  return v11;
}

- (BMMomentsEventDataEventBundleResource)initWithType:(int)type photoAssetMediaType:(int)mediaType photoFaceCount:(id)count photoCurationScore:(id)score photoOverallAestheticScore:(id)aestheticScore
{
  countCopy = count;
  scoreCopy = score;
  aestheticScoreCopy = aestheticScore;
  v20.receiver = self;
  v20.super_class = BMMomentsEventDataEventBundleResource;
  v15 = [(BMEventBase *)&v20 init];
  if (v15)
  {
    v15->_dataVersion = [objc_opt_class() latestDataVersion];
    v15->_type = type;
    v15->_photoAssetMediaType = mediaType;
    if (countCopy)
    {
      v15->_hasPhotoFaceCount = 1;
      intValue = [countCopy intValue];
    }

    else
    {
      v15->_hasPhotoFaceCount = 0;
      intValue = -1;
    }

    v15->_photoFaceCount = intValue;
    if (scoreCopy)
    {
      v15->_hasPhotoCurationScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v15->_hasPhotoCurationScore = 0;
      v17 = -1.0;
    }

    v15->_photoCurationScore = v17;
    if (aestheticScoreCopy)
    {
      v15->_hasPhotoOverallAestheticScore = 1;
      [aestheticScoreCopy doubleValue];
    }

    else
    {
      v15->_hasPhotoOverallAestheticScore = 0;
      v18 = -1.0;
    }

    v15->_photoOverallAestheticScore = v18;
  }

  return v15;
}

+ (id)protoFields
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoAssetMediaType" number:2 type:4 subMessageClass:{0, v2}];
  v10[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoFaceCount" number:3 type:2 subMessageClass:0];
  v10[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoCurationScore" number:4 type:0 subMessageClass:0];
  v10[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"photoOverallAestheticScore" number:5 type:0 subMessageClass:0];
  v10[4] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:5];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)columns
{
  v10[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photoAssetMediaType" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photoFaceCount" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photoCurationScore" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"photoOverallAestheticScore" dataType:1 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:0];
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

    v8 = [[BMMomentsEventDataEventBundleResource alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end