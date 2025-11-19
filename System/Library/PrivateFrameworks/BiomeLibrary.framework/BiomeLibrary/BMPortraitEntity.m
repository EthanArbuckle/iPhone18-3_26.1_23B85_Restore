@interface BMPortraitEntity
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPortraitEntity)initWithCategory:(int)a3 algorithm:(int)a4 decayRate:(id)a5 score:(id)a6 osBuild:(id)a7 assetVersion:(id)a8 name:(id)a9 bestLanguage:(id)a10 sentimentScore:(id)a11;
- (BMPortraitEntity)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPortraitEntity

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPortraitEntity *)self category];
    if (v6 != [v5 category])
    {
      goto LABEL_37;
    }

    v7 = [(BMPortraitEntity *)self algorithm];
    if (v7 != [v5 algorithm])
    {
      goto LABEL_37;
    }

    if (-[BMPortraitEntity hasDecayRate](self, "hasDecayRate") || [v5 hasDecayRate])
    {
      if (![(BMPortraitEntity *)self hasDecayRate])
      {
        goto LABEL_37;
      }

      if (![v5 hasDecayRate])
      {
        goto LABEL_37;
      }

      [(BMPortraitEntity *)self decayRate];
      v9 = v8;
      [v5 decayRate];
      if (v9 != v10)
      {
        goto LABEL_37;
      }
    }

    if (-[BMPortraitEntity hasScore](self, "hasScore") || [v5 hasScore])
    {
      if (![(BMPortraitEntity *)self hasScore])
      {
        goto LABEL_37;
      }

      if (![v5 hasScore])
      {
        goto LABEL_37;
      }

      [(BMPortraitEntity *)self score];
      v12 = v11;
      [v5 score];
      if (v12 != v13)
      {
        goto LABEL_37;
      }
    }

    v14 = [(BMPortraitEntity *)self osBuild];
    v15 = [v5 osBuild];
    v16 = v15;
    if (v14 == v15)
    {
    }

    else
    {
      v17 = [(BMPortraitEntity *)self osBuild];
      v18 = [v5 osBuild];
      v19 = [v17 isEqual:v18];

      if (!v19)
      {
        goto LABEL_37;
      }
    }

    if (-[BMPortraitEntity hasAssetVersion](self, "hasAssetVersion") || [v5 hasAssetVersion])
    {
      if (![(BMPortraitEntity *)self hasAssetVersion])
      {
        goto LABEL_37;
      }

      if (![v5 hasAssetVersion])
      {
        goto LABEL_37;
      }

      v21 = [(BMPortraitEntity *)self assetVersion];
      if (v21 != [v5 assetVersion])
      {
        goto LABEL_37;
      }
    }

    v22 = [(BMPortraitEntity *)self name];
    v23 = [v5 name];
    v24 = v23;
    if (v22 == v23)
    {
    }

    else
    {
      v25 = [(BMPortraitEntity *)self name];
      v26 = [v5 name];
      v27 = [v25 isEqual:v26];

      if (!v27)
      {
        goto LABEL_37;
      }
    }

    v28 = [(BMPortraitEntity *)self bestLanguage];
    v29 = [v5 bestLanguage];
    v30 = v29;
    if (v28 == v29)
    {
    }

    else
    {
      v31 = [(BMPortraitEntity *)self bestLanguage];
      v32 = [v5 bestLanguage];
      v33 = [v31 isEqual:v32];

      if (!v33)
      {
        goto LABEL_37;
      }
    }

    if (!-[BMPortraitEntity hasSentimentScore](self, "hasSentimentScore") && ![v5 hasSentimentScore])
    {
      v20 = 1;
      goto LABEL_38;
    }

    if (-[BMPortraitEntity hasSentimentScore](self, "hasSentimentScore") && [v5 hasSentimentScore])
    {
      [(BMPortraitEntity *)self sentimentScore];
      v35 = v34;
      [v5 sentimentScore];
      v20 = v35 == v36;
LABEL_38:

      goto LABEL_39;
    }

LABEL_37:
    v20 = 0;
    goto LABEL_38;
  }

  v20 = 0;
LABEL_39:

  return v20;
}

- (id)jsonDictionary
{
  v38[9] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitEntity category](self, "category")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitEntity algorithm](self, "algorithm")}];
  if (![(BMPortraitEntity *)self hasDecayRate]|| ([(BMPortraitEntity *)self decayRate], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMPortraitEntity *)self decayRate];
    v6 = MEMORY[0x1E696AD98];
    [(BMPortraitEntity *)self decayRate];
    v7 = [v6 numberWithDouble:?];
  }

  if (![(BMPortraitEntity *)self hasScore]|| ([(BMPortraitEntity *)self score], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMPortraitEntity *)self score];
    v9 = MEMORY[0x1E696AD98];
    [(BMPortraitEntity *)self score];
    v10 = [v9 numberWithDouble:?];
  }

  v11 = [(BMPortraitEntity *)self osBuild];
  if ([(BMPortraitEntity *)self hasAssetVersion])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitEntity assetVersion](self, "assetVersion")}];
  }

  else
  {
    v36 = 0;
  }

  v35 = [(BMPortraitEntity *)self name];
  v34 = [(BMPortraitEntity *)self bestLanguage];
  if (![(BMPortraitEntity *)self hasSentimentScore]|| ([(BMPortraitEntity *)self sentimentScore], fabs(v12) == INFINITY))
  {
    v14 = 0;
  }

  else
  {
    [(BMPortraitEntity *)self sentimentScore];
    v13 = MEMORY[0x1E696AD98];
    [(BMPortraitEntity *)self sentimentScore];
    v14 = [v13 numberWithDouble:?];
  }

  v37[0] = @"category";
  v15 = v3;
  if (!v3)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v15;
  v38[0] = v15;
  v37[1] = @"algorithm";
  v16 = v4;
  if (!v4)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29 = v16;
  v38[1] = v16;
  v37[2] = @"decayRate";
  v17 = v7;
  if (!v7)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v3;
  v28 = v17;
  v38[2] = v17;
  v37[3] = @"score";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v4;
  v38[3] = v18;
  v37[4] = @"osBuild";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v7;
  v38[4] = v19;
  v37[5] = @"assetVersion";
  v20 = v36;
  if (!v36)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v38[5] = v20;
  v37[6] = @"name";
  v21 = v35;
  if (!v35)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v11;
  v38[6] = v21;
  v37[7] = @"bestLanguage";
  v23 = v34;
  if (!v34)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v38[7] = v23;
  v37[8] = @"sentimentScore";
  v24 = v14;
  if (!v14)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v38[8] = v24;
  v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:9];
  if (!v14)
  {
  }

  if (!v34)
  {
  }

  if (!v35)
  {
  }

  if (!v36)
  {
  }

  if (!v22)
  {
  }

  if (!v10)
  {
  }

  if (v31)
  {
    if (v32)
    {
      goto LABEL_48;
    }

LABEL_53:

    if (v33)
    {
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  if (!v32)
  {
    goto LABEL_53;
  }

LABEL_48:
  if (v33)
  {
    goto LABEL_49;
  }

LABEL_54:

LABEL_49:
  v26 = *MEMORY[0x1E69E9840];

  return v25;
}

- (BMPortraitEntity)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v97[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"category"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
LABEL_9:
    v9 = [v5 objectForKeyedSubscript:@"algorithm"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v10 = 0;
            v21 = 0;
            goto LABEL_47;
          }

          v52 = objc_alloc(MEMORY[0x1E696ABC0]);
          v53 = *MEMORY[0x1E698F240];
          v94 = *MEMORY[0x1E696A578];
          v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"algorithm"];
          v95 = v22;
          v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
          v54 = [v52 initWithDomain:v53 code:2 userInfo:v12];
          v10 = 0;
          v21 = 0;
          *a4 = v54;
          goto LABEL_46;
        }

        v11 = [MEMORY[0x1E696AD98] numberWithInt:BMPortraitEntityAlgorithmFromString(v9)];
      }

      v10 = v11;
    }

    else
    {
      v10 = 0;
    }

    v12 = [v5 objectForKeyedSubscript:@"decayRate"];
    v74 = v9;
    if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = self;
        v26 = v12;
        if (!a4)
        {
          v22 = 0;
          v21 = 0;
          self = v25;
          goto LABEL_46;
        }

        v27 = objc_alloc(MEMORY[0x1E696ABC0]);
        v71 = v10;
        v28 = *MEMORY[0x1E698F240];
        v92 = *MEMORY[0x1E696A578];
        v29 = objc_alloc(MEMORY[0x1E696AEC0]);
        v62 = objc_opt_class();
        v30 = v29;
        v12 = v26;
        v78 = [v30 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v62, @"decayRate"];
        v93 = v78;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
        v31 = v28;
        v10 = v71;
        v32 = [v27 initWithDomain:v31 code:2 userInfo:v13];
        v22 = 0;
        v21 = 0;
        *a4 = v32;
        goto LABEL_84;
      }

      v76 = v12;
    }

    else
    {
      v76 = 0;
    }

    v13 = [v5 objectForKeyedSubscript:@"score"];
    v75 = v7;
    if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v78 = 0;
LABEL_23:
      v14 = [v5 objectForKeyedSubscript:@"osBuild"];
      v77 = self;
      v67 = v6;
      if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v73 = 0;
            v21 = 0;
            v22 = v76;
            goto LABEL_44;
          }

          v37 = objc_alloc(MEMORY[0x1E696ABC0]);
          v38 = v10;
          v39 = *MEMORY[0x1E698F240];
          v88 = *MEMORY[0x1E696A578];
          v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osBuild"];
          v89 = v69;
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
          v40 = v39;
          v10 = v38;
          v41 = [v37 initWithDomain:v40 code:2 userInfo:v15];
          v73 = 0;
          v21 = 0;
          *a4 = v41;
          v22 = v76;
          goto LABEL_43;
        }

        v73 = v14;
      }

      else
      {
        v73 = 0;
      }

      v15 = [v5 objectForKeyedSubscript:@"assetVersion"];
      v70 = v10;
      if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v69 = 0;
            v21 = 0;
            goto LABEL_42;
          }

          v42 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = v12;
          v44 = *MEMORY[0x1E698F240];
          v86 = *MEMORY[0x1E696A578];
          v68 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"assetVersion"];
          v87 = v68;
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
          v45 = v44;
          v12 = v43;
          self = v77;
          v46 = [v42 initWithDomain:v45 code:2 userInfo:v16];
          v69 = 0;
          v21 = 0;
          *a4 = v46;
LABEL_41:

          v10 = v70;
LABEL_42:
          v22 = v76;
LABEL_43:

          v6 = v67;
LABEL_44:

          v7 = v75;
LABEL_45:

          v9 = v74;
LABEL_46:

          goto LABEL_47;
        }

        v69 = v15;
      }

      else
      {
        v69 = 0;
      }

      v16 = [v5 objectForKeyedSubscript:@"name"];
      v66 = v12;
      if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v68 = 0;
            v21 = 0;
            goto LABEL_41;
          }

          v55 = objc_alloc(MEMORY[0x1E696ABC0]);
          v56 = *MEMORY[0x1E698F240];
          v84 = *MEMORY[0x1E696A578];
          v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"name"];
          v85 = v18;
          v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
          v57 = [v55 initWithDomain:v56 code:2 userInfo:v17];
          v68 = 0;
          v21 = 0;
          *a4 = v57;
          goto LABEL_40;
        }

        v68 = v16;
      }

      else
      {
        v68 = 0;
      }

      v17 = [v5 objectForKeyedSubscript:@"bestLanguage"];
      if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v18 = 0;
            v21 = 0;
            goto LABEL_40;
          }

          v64 = objc_alloc(MEMORY[0x1E696ABC0]);
          v58 = *MEMORY[0x1E698F240];
          v82 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bestLanguage"];
          v83 = v20;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
          v59 = [v64 initWithDomain:v58 code:2 userInfo:v19];
          v18 = 0;
          v21 = 0;
          *a4 = v59;
          goto LABEL_39;
        }

        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      v19 = [v5 objectForKeyedSubscript:@"sentimentScore"];
      if (v19 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v20 = a4;
          if (a4)
          {
            v65 = objc_alloc(MEMORY[0x1E696ABC0]);
            v63 = *MEMORY[0x1E698F240];
            v80 = *MEMORY[0x1E696A578];
            v60 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"sentimentScore"];
            v81 = v60;
            v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
            *a4 = [v65 initWithDomain:v63 code:2 userInfo:v61];

            v20 = 0;
          }

          v21 = 0;
          goto LABEL_39;
        }

        v20 = v19;
      }

      else
      {
        v20 = 0;
      }

      v21 = -[BMPortraitEntity initWithCategory:algorithm:decayRate:score:osBuild:assetVersion:name:bestLanguage:sentimentScore:](v77, "initWithCategory:algorithm:decayRate:score:osBuild:assetVersion:name:bestLanguage:sentimentScore:", [v75 intValue], objc_msgSend(v70, "intValue"), v76, v78, v73, v69, v68, v18, v20);
      v77 = v21;
LABEL_39:

LABEL_40:
      self = v77;
      v12 = v66;
      goto LABEL_41;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v78 = v13;
      goto LABEL_23;
    }

    v25 = self;
    if (a4)
    {
      v33 = objc_alloc(MEMORY[0x1E696ABC0]);
      v72 = v10;
      v34 = *MEMORY[0x1E698F240];
      v90 = *MEMORY[0x1E696A578];
      v73 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"score"];
      v91 = v73;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
      v35 = v34;
      v10 = v72;
      v36 = [v33 initWithDomain:v35 code:2 userInfo:v14];
      v78 = 0;
      v21 = 0;
      *a4 = v36;
      v22 = v76;
      goto LABEL_44;
    }

    v78 = 0;
    v21 = 0;
    v22 = v76;
LABEL_84:
    self = v25;
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
LABEL_8:
    v7 = v8;
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:BMPortraitEntityCategoryFromString(v6)];
    goto LABEL_8;
  }

  if (!a4)
  {
    v7 = 0;
    v21 = 0;
    goto LABEL_48;
  }

  v47 = objc_alloc(MEMORY[0x1E696ABC0]);
  v48 = *MEMORY[0x1E698F240];
  v96 = *MEMORY[0x1E696A578];
  v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"category"];
  v97[0] = v49;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v97 forKeys:&v96 count:1];
  v50 = v48;
  v10 = v49;
  v51 = [v47 initWithDomain:v50 code:2 userInfo:v9];
  v7 = 0;
  v21 = 0;
  *a4 = v51;
LABEL_47:

LABEL_48:
  v23 = *MEMORY[0x1E69E9840];
  return v21;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPortraitEntity *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  category = self->_category;
  PBDataWriterWriteUint32Field();
  algorithm = self->_algorithm;
  PBDataWriterWriteUint32Field();
  if (self->_hasDecayRate)
  {
    decayRate = self->_decayRate;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasScore)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
  }

  if (self->_osBuild)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasAssetVersion)
  {
    assetVersion = self->_assetVersion;
    PBDataWriterWriteInt32Field();
  }

  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bestLanguage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasSentimentScore)
  {
    sentimentScore = self->_sentimentScore;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v53.receiver = self;
  v53.super_class = BMPortraitEntity;
  v5 = [(BMEventBase *)&v53 init];
  if (!v5)
  {
    goto LABEL_95;
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
        LOBYTE(v54) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:&v54 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v54 & 0x7F) << v7;
        if ((v54 & 0x80) == 0)
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
      if ((v14 >> 3) <= 4)
      {
        if (v15 > 2)
        {
          if (v15 == 3)
          {
            v5->_hasDecayRate = 1;
            v54 = 0;
            v39 = [v4 position] + 8;
            if (v39 >= [v4 position] && (v40 = objc_msgSend(v4, "position") + 8, v40 <= objc_msgSend(v4, "length")))
            {
              v48 = [v4 data];
              [v48 getBytes:&v54 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v46 = v54;
            v47 = 40;
          }

          else
          {
            if (v15 != 4)
            {
              goto LABEL_70;
            }

            v5->_hasScore = 1;
            v54 = 0;
            v25 = [v4 position] + 8;
            if (v25 >= [v4 position] && (v26 = objc_msgSend(v4, "position") + 8, v26 <= objc_msgSend(v4, "length")))
            {
              v45 = [v4 data];
              [v45 getBytes:&v54 range:{objc_msgSend(v4, "position"), 8}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
            }

            else
            {
              [v4 _setError];
            }

            v46 = v54;
            v47 = 48;
          }

          goto LABEL_91;
        }

        if (v15 == 1)
        {
          v34 = 0;
          v35 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v54) = 0;
            v36 = [v4 position] + 1;
            if (v36 >= [v4 position] && (v37 = objc_msgSend(v4, "position") + 1, v37 <= objc_msgSend(v4, "length")))
            {
              v38 = [v4 data];
              [v38 getBytes:&v54 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v54 & 0x7F) << v34;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v34 += 7;
            v24 = v35++ > 8;
            if (v24)
            {
              goto LABEL_82;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 0x15)
          {
LABEL_82:
            LODWORD(v20) = 0;
          }

          v44 = 24;
        }

        else
        {
          if (v15 != 2)
          {
            goto LABEL_70;
          }

          v18 = 0;
          v19 = 0;
          v20 = 0;
          while (1)
          {
            LOBYTE(v54) = 0;
            v21 = [v4 position] + 1;
            if (v21 >= [v4 position] && (v22 = objc_msgSend(v4, "position") + 1, v22 <= objc_msgSend(v4, "length")))
            {
              v23 = [v4 data];
              [v23 getBytes:&v54 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v20 |= (v54 & 0x7F) << v18;
            if ((v54 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v24 = v19++ > 8;
            if (v24)
            {
              goto LABEL_74;
            }
          }

          if (([v4 hasError] & 1) != 0 || v20 > 0x11)
          {
LABEL_74:
            LODWORD(v20) = 0;
          }

          v44 = 28;
        }

        *(&v5->super.super.isa + v44) = v20;
      }

      else
      {
        if (v15 > 6)
        {
          switch(v15)
          {
            case 7:
              v41 = PBReaderReadString();
              v42 = 64;
              break;
            case 8:
              v41 = PBReaderReadString();
              v42 = 72;
              break;
            case 9:
              v5->_hasSentimentScore = 1;
              v54 = 0;
              v16 = [v4 position] + 8;
              if (v16 >= [v4 position] && (v17 = objc_msgSend(v4, "position") + 8, v17 <= objc_msgSend(v4, "length")))
              {
                v49 = [v4 data];
                [v49 getBytes:&v54 range:{objc_msgSend(v4, "position"), 8}];

                [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
              }

              else
              {
                [v4 _setError];
              }

              v46 = v54;
              v47 = 80;
LABEL_91:
              *(&v5->super.super.isa + v47) = v46;
              goto LABEL_92;
            default:
              goto LABEL_70;
          }

          goto LABEL_69;
        }

        if (v15 == 5)
        {
          v41 = PBReaderReadString();
          v42 = 56;
LABEL_69:
          v43 = *(&v5->super.super.isa + v42);
          *(&v5->super.super.isa + v42) = v41;

          goto LABEL_92;
        }

        if (v15 != 6)
        {
LABEL_70:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_94;
          }

          goto LABEL_92;
        }

        v27 = 0;
        v28 = 0;
        v29 = 0;
        v5->_hasAssetVersion = 1;
        while (1)
        {
          LOBYTE(v54) = 0;
          v30 = [v4 position] + 1;
          if (v30 >= [v4 position] && (v31 = objc_msgSend(v4, "position") + 1, v31 <= objc_msgSend(v4, "length")))
          {
            v32 = [v4 data];
            [v32 getBytes:&v54 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v29 |= (v54 & 0x7F) << v27;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v27 += 7;
          v13 = v28++ >= 9;
          if (v13)
          {
            v33 = 0;
            goto LABEL_79;
          }
        }

        if ([v4 hasError])
        {
          v33 = 0;
        }

        else
        {
          v33 = v29;
        }

LABEL_79:
        v5->_assetVersion = v33;
      }

LABEL_92:
      v50 = [v4 position];
    }

    while (v50 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_94:
    v51 = 0;
  }

  else
  {
LABEL_95:
    v51 = v5;
  }

  return v51;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = BMPortraitEntityCategoryAsString([(BMPortraitEntity *)self category]);
  v4 = BMPortraitEntityAlgorithmAsString([(BMPortraitEntity *)self algorithm]);
  v5 = MEMORY[0x1E696AD98];
  [(BMPortraitEntity *)self decayRate];
  v6 = [v5 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [(BMPortraitEntity *)self score];
  v8 = [v7 numberWithDouble:?];
  v9 = [(BMPortraitEntity *)self osBuild];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitEntity assetVersion](self, "assetVersion")}];
  v11 = [(BMPortraitEntity *)self name];
  v12 = [(BMPortraitEntity *)self bestLanguage];
  v13 = MEMORY[0x1E696AD98];
  [(BMPortraitEntity *)self sentimentScore];
  v14 = [v13 numberWithDouble:?];
  v15 = [v17 initWithFormat:@"BMPortraitEntity with category: %@, algorithm: %@, decayRate: %@, score: %@, osBuild: %@, assetVersion: %@, name: %@, bestLanguage: %@, sentimentScore: %@", v3, v4, v6, v8, v9, v10, v11, v12, v14];

  return v15;
}

- (BMPortraitEntity)initWithCategory:(int)a3 algorithm:(int)a4 decayRate:(id)a5 score:(id)a6 osBuild:(id)a7 assetVersion:(id)a8 name:(id)a9 bestLanguage:(id)a10 sentimentScore:(id)a11
{
  v17 = a5;
  v18 = a6;
  v29 = a7;
  v19 = a8;
  v28 = a9;
  v27 = a10;
  v20 = a11;
  v30.receiver = self;
  v30.super_class = BMPortraitEntity;
  v21 = [(BMEventBase *)&v30 init];
  if (v21)
  {
    v21->_dataVersion = [objc_opt_class() latestDataVersion];
    v21->_category = a3;
    v21->_algorithm = a4;
    if (v17)
    {
      v21->_hasDecayRate = 1;
      [v17 doubleValue];
    }

    else
    {
      v21->_hasDecayRate = 0;
      v22 = -1.0;
    }

    v21->_decayRate = v22;
    if (v18)
    {
      v21->_hasScore = 1;
      [v18 doubleValue];
    }

    else
    {
      v21->_hasScore = 0;
      v23 = -1.0;
    }

    v21->_score = v23;
    objc_storeStrong(&v21->_osBuild, a7);
    if (v19)
    {
      v21->_hasAssetVersion = 1;
      v24 = [v19 intValue];
    }

    else
    {
      v21->_hasAssetVersion = 0;
      v24 = -1;
    }

    v21->_assetVersion = v24;
    objc_storeStrong(&v21->_name, a9);
    objc_storeStrong(&v21->_bestLanguage, a10);
    if (v20)
    {
      v21->_hasSentimentScore = 1;
      [v20 doubleValue];
    }

    else
    {
      v21->_hasSentimentScore = 0;
      v25 = -1.0;
    }

    v21->_sentimentScore = v25;
  }

  return v21;
}

+ (id)protoFields
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"category" number:1 type:4 subMessageClass:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"algorithm" number:2 type:4 subMessageClass:{0, v2}];
  v14[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"decayRate" number:3 type:0 subMessageClass:0];
  v14[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"score" number:4 type:0 subMessageClass:0];
  v14[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osBuild" number:5 type:13 subMessageClass:0];
  v14[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetVersion" number:6 type:2 subMessageClass:0];
  v14[5] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"name" number:7 type:13 subMessageClass:0];
  v14[6] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bestLanguage" number:8 type:13 subMessageClass:0];
  v14[7] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sentimentScore" number:9 type:0 subMessageClass:0];
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v14[9] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"category" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"algorithm" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"decayRate" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"score" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osBuild" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetVersion" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"name" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bestLanguage" dataType:2 requestOnly:0 fieldNumber:8 protoDataType:13 convertedType:0];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sentimentScore" dataType:1 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:0];
  v14[0] = v2;
  v14[1] = v3;
  v14[2] = v4;
  v14[3] = v5;
  v14[4] = v6;
  v14[5] = v7;
  v14[6] = v8;
  v14[7] = v9;
  v14[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:9];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMPortraitEntity alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end