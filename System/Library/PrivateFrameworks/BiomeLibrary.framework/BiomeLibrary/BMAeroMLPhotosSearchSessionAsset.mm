@interface BMAeroMLPhotosSearchSessionAsset
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMAeroMLPhotosSearchSessionAsset)initWithAssetUUID:(id)a3 rankingIndex:(id)a4 cosDistance:(id)a5;
- (BMAeroMLPhotosSearchSessionAsset)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMAeroMLPhotosSearchSessionAsset

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMAeroMLPhotosSearchSessionAsset *)self assetUUID];
    v7 = [v5 assetUUID];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMAeroMLPhotosSearchSessionAsset *)self assetUUID];
      v10 = [v5 assetUUID];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    if (!-[BMAeroMLPhotosSearchSessionAsset hasRankingIndex](self, "hasRankingIndex") && ![v5 hasRankingIndex] || -[BMAeroMLPhotosSearchSessionAsset hasRankingIndex](self, "hasRankingIndex") && objc_msgSend(v5, "hasRankingIndex") && (v13 = -[BMAeroMLPhotosSearchSessionAsset rankingIndex](self, "rankingIndex"), v13 == objc_msgSend(v5, "rankingIndex")))
    {
      if (!-[BMAeroMLPhotosSearchSessionAsset hasCosDistance](self, "hasCosDistance") && ![v5 hasCosDistance])
      {
        v12 = 1;
        goto LABEL_18;
      }

      if (-[BMAeroMLPhotosSearchSessionAsset hasCosDistance](self, "hasCosDistance") && [v5 hasCosDistance])
      {
        [(BMAeroMLPhotosSearchSessionAsset *)self cosDistance];
        v15 = v14;
        [v5 cosDistance];
        v12 = v15 == v16;
LABEL_18:

        goto LABEL_19;
      }
    }

LABEL_17:
    v12 = 0;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_19:

  return v12;
}

- (id)jsonDictionary
{
  v15[3] = *MEMORY[0x1E69E9840];
  v3 = [(BMAeroMLPhotosSearchSessionAsset *)self assetUUID];
  if ([(BMAeroMLPhotosSearchSessionAsset *)self hasRankingIndex])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchSessionAsset rankingIndex](self, "rankingIndex")}];
  }

  else
  {
    v4 = 0;
  }

  if (![(BMAeroMLPhotosSearchSessionAsset *)self hasCosDistance]|| ([(BMAeroMLPhotosSearchSessionAsset *)self cosDistance], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMAeroMLPhotosSearchSessionAsset *)self cosDistance];
    v6 = MEMORY[0x1E696AD98];
    [(BMAeroMLPhotosSearchSessionAsset *)self cosDistance];
    v7 = [v6 numberWithDouble:?];
  }

  v14[0] = @"assetUUID";
  v8 = v3;
  if (!v3)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = v8;
  v14[1] = @"rankingIndex";
  v9 = v4;
  if (!v4)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = v9;
  v14[2] = @"cosDistance";
  v10 = v7;
  if (!v7)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v15[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];
  if (v7)
  {
    if (v4)
    {
      goto LABEL_16;
    }

LABEL_21:

    if (v3)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_16:
  if (v3)
  {
    goto LABEL_17;
  }

LABEL_22:

LABEL_17:
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (BMAeroMLPhotosSearchSessionAsset)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"assetUUID"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"rankingIndex"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v10 = 0;
          v13 = 0;
          goto LABEL_12;
        }

        v23 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v27 = *MEMORY[0x1E696A578];
        v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"rankingIndex"];
        v28 = v12;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v19 = [v23 initWithDomain:v18 code:2 userInfo:v11];
        v10 = 0;
        v13 = 0;
        *a4 = v19;
        goto LABEL_11;
      }

      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = [v6 objectForKeyedSubscript:@"cosDistance"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v25 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"cosDistance"];
          v26 = v20;
          v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
          *a4 = [v24 initWithDomain:v22 code:2 userInfo:v21];
        }

        v12 = 0;
        v13 = 0;
        goto LABEL_11;
      }

      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    self = [(BMAeroMLPhotosSearchSessionAsset *)self initWithAssetUUID:v8 rankingIndex:v10 cosDistance:v12];
    v13 = self;
LABEL_11:

    goto LABEL_12;
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
    v13 = 0;
    goto LABEL_13;
  }

  v16 = objc_alloc(MEMORY[0x1E696ABC0]);
  v17 = *MEMORY[0x1E698F240];
  v29 = *MEMORY[0x1E696A578];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"assetUUID"];
  v30[0] = v10;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v8 = 0;
  v13 = 0;
  *a4 = [v16 initWithDomain:v17 code:2 userInfo:v9];
LABEL_12:

LABEL_13:
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMAeroMLPhotosSearchSessionAsset *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_assetUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_hasRankingIndex)
  {
    rankingIndex = self->_rankingIndex;
    PBDataWriterWriteUint32Field();
    v4 = v7;
  }

  if (self->_hasCosDistance)
  {
    cosDistance = self->_cosDistance;
    PBDataWriterWriteDoubleField();
    v4 = v7;
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = BMAeroMLPhotosSearchSessionAsset;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_45;
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
        LOBYTE(v32) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (LOBYTE(v32) & 0x7F) << v7;
        if ((LOBYTE(v32) & 0x80) == 0)
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
      if ((v14 >> 3) == 3)
      {
        v5->_hasCosDistance = 1;
        v32 = 0.0;
        v25 = [v4 position] + 8;
        if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
        {
          v27 = [v4 data];
          [v27 getBytes:&v32 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_cosDistance = v32;
      }

      else if (v15 == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 0;
        v5->_hasRankingIndex = 1;
        while (1)
        {
          LOBYTE(v32) = 0;
          v21 = [v4 position] + 1;
          if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
          {
            v23 = [v4 data];
            [v23 getBytes:&v32 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v20 |= (LOBYTE(v32) & 0x7F) << v18;
          if ((LOBYTE(v32) & 0x80) == 0)
          {
            break;
          }

          v18 += 7;
          v13 = v19++ >= 9;
          if (v13)
          {
            v24 = 0;
            goto LABEL_39;
          }
        }

        v24 = [v4 hasError] ? 0 : v20;
LABEL_39:
        v5->_rankingIndex = v24;
      }

      else if (v15 == 1)
      {
        v16 = PBReaderReadString();
        assetUUID = v5->_assetUUID;
        v5->_assetUUID = v16;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_44;
      }

      v28 = [v4 position];
    }

    while (v28 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_44:
    v29 = 0;
  }

  else
  {
LABEL_45:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMAeroMLPhotosSearchSessionAsset *)self assetUUID];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMAeroMLPhotosSearchSessionAsset rankingIndex](self, "rankingIndex")}];
  v6 = MEMORY[0x1E696AD98];
  [(BMAeroMLPhotosSearchSessionAsset *)self cosDistance];
  v7 = [v6 numberWithDouble:?];
  v8 = [v3 initWithFormat:@"BMAeroMLPhotosSearchSessionAsset with assetUUID: %@, rankingIndex: %@, cosDistance: %@", v4, v5, v7];

  return v8;
}

- (BMAeroMLPhotosSearchSessionAsset)initWithAssetUUID:(id)a3 rankingIndex:(id)a4 cosDistance:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v16.receiver = self;
  v16.super_class = BMAeroMLPhotosSearchSessionAsset;
  v12 = [(BMEventBase *)&v16 init];
  if (v12)
  {
    v12->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v12->_assetUUID, a3);
    if (v10)
    {
      v12->_hasRankingIndex = 1;
      v13 = [v10 unsignedIntValue];
    }

    else
    {
      v13 = 0;
      v12->_hasRankingIndex = 0;
    }

    v12->_rankingIndex = v13;
    if (v11)
    {
      v12->_hasCosDistance = 1;
      [v11 doubleValue];
    }

    else
    {
      v12->_hasCosDistance = 0;
      v14 = -1.0;
    }

    v12->_cosDistance = v14;
  }

  return v12;
}

+ (id)protoFields
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetUUID" number:1 type:13 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rankingIndex" number:2 type:4 subMessageClass:{0, v2}];
  v8[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"cosDistance" number:3 type:0 subMessageClass:0];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)columns
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetUUID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rankingIndex" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"cosDistance" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v8[0] = v2;
  v8[1] = v3;
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

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

    v8 = [[BMAeroMLPhotosSearchSessionAsset alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end