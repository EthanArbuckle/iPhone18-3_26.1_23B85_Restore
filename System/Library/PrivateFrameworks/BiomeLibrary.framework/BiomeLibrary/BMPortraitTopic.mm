@interface BMPortraitTopic
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPortraitTopic)initWithIdentifier:(id)identifier algorithm:(int)algorithm decayRate:(id)rate score:(id)score osBuild:(id)build assetVersion:(id)version;
- (BMPortraitTopic)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPortraitTopic

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMPortraitTopic *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMPortraitTopic *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_27;
      }
    }

    algorithm = [(BMPortraitTopic *)self algorithm];
    if (algorithm != [v5 algorithm])
    {
      goto LABEL_27;
    }

    if (-[BMPortraitTopic hasDecayRate](self, "hasDecayRate") || [v5 hasDecayRate])
    {
      if (![(BMPortraitTopic *)self hasDecayRate])
      {
        goto LABEL_27;
      }

      if (![v5 hasDecayRate])
      {
        goto LABEL_27;
      }

      [(BMPortraitTopic *)self decayRate];
      v15 = v14;
      [v5 decayRate];
      if (v15 != v16)
      {
        goto LABEL_27;
      }
    }

    if (-[BMPortraitTopic hasScore](self, "hasScore") || [v5 hasScore])
    {
      if (![(BMPortraitTopic *)self hasScore])
      {
        goto LABEL_27;
      }

      if (![v5 hasScore])
      {
        goto LABEL_27;
      }

      [(BMPortraitTopic *)self score];
      v18 = v17;
      [v5 score];
      if (v18 != v19)
      {
        goto LABEL_27;
      }
    }

    osBuild = [(BMPortraitTopic *)self osBuild];
    osBuild2 = [v5 osBuild];
    v22 = osBuild2;
    if (osBuild == osBuild2)
    {
    }

    else
    {
      osBuild3 = [(BMPortraitTopic *)self osBuild];
      osBuild4 = [v5 osBuild];
      v25 = [osBuild3 isEqual:osBuild4];

      if (!v25)
      {
        goto LABEL_27;
      }
    }

    if (!-[BMPortraitTopic hasAssetVersion](self, "hasAssetVersion") && ![v5 hasAssetVersion])
    {
      v12 = 1;
      goto LABEL_28;
    }

    if (-[BMPortraitTopic hasAssetVersion](self, "hasAssetVersion") && [v5 hasAssetVersion])
    {
      assetVersion = [(BMPortraitTopic *)self assetVersion];
      v12 = assetVersion == [v5 assetVersion];
LABEL_28:

      goto LABEL_29;
    }

LABEL_27:
    v12 = 0;
    goto LABEL_28;
  }

  v12 = 0;
LABEL_29:

  return v12;
}

- (id)jsonDictionary
{
  v27[6] = *MEMORY[0x1E69E9840];
  identifier = [(BMPortraitTopic *)self identifier];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitTopic algorithm](self, "algorithm")}];
  if (![(BMPortraitTopic *)self hasDecayRate]|| ([(BMPortraitTopic *)self decayRate], fabs(v5) == INFINITY))
  {
    v7 = 0;
  }

  else
  {
    [(BMPortraitTopic *)self decayRate];
    v6 = MEMORY[0x1E696AD98];
    [(BMPortraitTopic *)self decayRate];
    v7 = [v6 numberWithDouble:?];
  }

  if (![(BMPortraitTopic *)self hasScore]|| ([(BMPortraitTopic *)self score], fabs(v8) == INFINITY))
  {
    v10 = 0;
  }

  else
  {
    [(BMPortraitTopic *)self score];
    v9 = MEMORY[0x1E696AD98];
    [(BMPortraitTopic *)self score];
    v10 = [v9 numberWithDouble:?];
  }

  osBuild = [(BMPortraitTopic *)self osBuild];
  if ([(BMPortraitTopic *)self hasAssetVersion])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitTopic assetVersion](self, "assetVersion")}];
  }

  else
  {
    v12 = 0;
  }

  v25 = identifier;
  v26[0] = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22 = null;
  v24 = v4;
  v27[0] = null;
  v26[1] = @"algorithm";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v27[1] = null2;
  v26[2] = @"decayRate";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27[2] = null3;
  v26[3] = @"score";
  null4 = v10;
  if (!v10)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27[3] = null4;
  v26[4] = @"osBuild";
  null5 = osBuild;
  if (!osBuild)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v27[4] = null5;
  v26[5] = @"assetVersion";
  null6 = v12;
  if (!v12)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v27[5] = null6;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:{6, v22}];
  if (v12)
  {
    if (osBuild)
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (osBuild)
    {
LABEL_26:
      if (v10)
      {
        goto LABEL_27;
      }

LABEL_37:

      if (v7)
      {
        goto LABEL_28;
      }

      goto LABEL_38;
    }
  }

  if (!v10)
  {
    goto LABEL_37;
  }

LABEL_27:
  if (v7)
  {
    goto LABEL_28;
  }

LABEL_38:

LABEL_28:
  if (!v24)
  {
  }

  if (!v25)
  {
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (BMPortraitTopic)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v62[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"algorithm"];
    v47 = v9;
    if (v9 && (v10 = v9, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v46 = v10;
      }

      else
      {
        errorCopy = error;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v18 = 0;
            v19 = 0;
            goto LABEL_50;
          }

          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = v8;
          v41 = *MEMORY[0x1E698F240];
          v59 = *MEMORY[0x1E696A578];
          v50 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"algorithm"];
          v60 = v50;
          v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v42 = v41;
          v8 = v40;
          v18 = 0;
          v19 = 0;
          *errorCopy = [v39 initWithDomain:v42 code:2 userInfo:v11];
          goto LABEL_49;
        }

        v46 = [MEMORY[0x1E696AD98] numberWithInt:BMPortraitTopicAlgorithmFromString(v10)];
      }
    }

    else
    {
      v46 = 0;
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"decayRate"];
    v45 = v7;
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v50 = 0;
          v19 = 0;
          v18 = v46;
          goto LABEL_49;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = v8;
        v27 = *MEMORY[0x1E698F240];
        v57 = *MEMORY[0x1E696A578];
        v49 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"decayRate"];
        v58 = v49;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v28 = v27;
        v8 = v26;
        v50 = 0;
        v19 = 0;
        *error = [v25 initWithDomain:v28 code:2 userInfo:v12];
        goto LABEL_57;
      }

      v50 = v11;
    }

    else
    {
      v50 = 0;
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    v48 = v8;
    if (!v12 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v49 = 0;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49 = v12;
LABEL_13:
      v13 = [dictionaryCopy objectForKeyedSubscript:@"osBuild"];
      if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        selfCopy3 = self;
        v15 = 0;
        goto LABEL_16;
      }

      objc_opt_class();
      selfCopy3 = self;
      if (objc_opt_isKindOfClass())
      {
        v15 = v13;
LABEL_16:
        v16 = [dictionaryCopy objectForKeyedSubscript:@"assetVersion"];
        if (!v16 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v17 = 0;
LABEL_19:
          v18 = v46;
          v19 = -[BMPortraitTopic initWithIdentifier:algorithm:decayRate:score:osBuild:assetVersion:](selfCopy3, "initWithIdentifier:algorithm:decayRate:score:osBuild:assetVersion:", v48, [v46 intValue], v50, v49, v15, v17);
          selfCopy3 = v19;
LABEL_46:

LABEL_47:
          self = selfCopy3;
          v8 = v48;
LABEL_48:

          v7 = v45;
LABEL_49:

          v10 = v47;
          goto LABEL_50;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
          goto LABEL_19;
        }

        if (error)
        {
          v44 = objc_alloc(MEMORY[0x1E696ABC0]);
          v43 = *MEMORY[0x1E698F240];
          v51 = *MEMORY[0x1E696A578];
          v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"assetVersion"];
          v52 = v35;
          v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          *error = [v44 initWithDomain:v43 code:2 userInfo:v36];
        }

        v17 = 0;
        v19 = 0;
LABEL_45:
        v18 = v46;
        goto LABEL_46;
      }

      if (error)
      {
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v53 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osBuild"];
        v54 = v17;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        v34 = [v32 initWithDomain:v33 code:2 userInfo:v16];
        v15 = 0;
        v19 = 0;
        *error = v34;
        goto LABEL_45;
      }

      v15 = 0;
      v19 = 0;
LABEL_59:
      v18 = v46;
      goto LABEL_47;
    }

    if (error)
    {
      selfCopy3 = self;
      v29 = objc_alloc(MEMORY[0x1E696ABC0]);
      v30 = *MEMORY[0x1E698F240];
      v55 = *MEMORY[0x1E696A578];
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"score"];
      v56 = v15;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      v31 = [v29 initWithDomain:v30 code:2 userInfo:v13];
      v49 = 0;
      v19 = 0;
      *error = v31;
      goto LABEL_59;
    }

    v49 = 0;
    v19 = 0;
LABEL_57:
    v18 = v46;
    goto LABEL_48;
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
    v19 = 0;
    goto LABEL_51;
  }

  v20 = objc_alloc(MEMORY[0x1E696ABC0]);
  v21 = *MEMORY[0x1E698F240];
  v61 = *MEMORY[0x1E696A578];
  v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
  v62[0] = v22;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
  v23 = [v20 initWithDomain:v21 code:2 userInfo:v10];
  v8 = 0;
  v19 = 0;
  *error = v23;
  v18 = v22;
LABEL_50:

LABEL_51:
  v37 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPortraitTopic *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

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

  v7 = toCopy;
  if (self->_osBuild)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }

  if (self->_hasAssetVersion)
  {
    assetVersion = self->_assetVersion;
    PBDataWriterWriteInt32Field();
    v7 = toCopy;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v44.receiver = self;
  v44.super_class = BMPortraitTopic;
  v5 = [(BMEventBase *)&v44 init];
  if (!v5)
  {
    goto LABEL_70;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_68;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v45 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v45 & 0x7F) << v7;
        if ((v45 & 0x80) == 0)
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
        goto LABEL_68;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) <= 3)
      {
        break;
      }

      if (v15 == 4)
      {
        v5->_hasScore = 1;
        v45 = 0;
        v27 = [fromCopy position] + 8;
        if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 8, v28 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v45 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v38 = v45;
        v39 = 48;
LABEL_66:
        *(&v5->super.super.isa + v39) = v38;
        goto LABEL_67;
      }

      if (v15 == 5)
      {
        v25 = PBReaderReadString();
        v26 = 56;
LABEL_53:
        v36 = *(&v5->super.super.isa + v26);
        *(&v5->super.super.isa + v26) = v25;

        goto LABEL_67;
      }

      if (v15 != 6)
      {
LABEL_41:
        if (!PBReaderSkipValueWithTag())
        {
          goto LABEL_69;
        }

        goto LABEL_67;
      }

      v18 = 0;
      v19 = 0;
      v20 = 0;
      v5->_hasAssetVersion = 1;
      while (1)
      {
        LOBYTE(v45) = 0;
        v21 = [fromCopy position] + 1;
        if (v21 >= [fromCopy position] && (v22 = objc_msgSend(fromCopy, "position") + 1, v22 <= objc_msgSend(fromCopy, "length")))
        {
          data3 = [fromCopy data];
          [data3 getBytes:&v45 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v20 |= (v45 & 0x7F) << v18;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v18 += 7;
        v13 = v19++ >= 9;
        if (v13)
        {
          v24 = 0;
          goto LABEL_57;
        }
      }

      if ([fromCopy hasError])
      {
        v24 = 0;
      }

      else
      {
        v24 = v20;
      }

LABEL_57:
      v5->_assetVersion = v24;
LABEL_67:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_68;
      }
    }

    if (v15 != 1)
    {
      if (v15 == 2)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        while (1)
        {
          LOBYTE(v45) = 0;
          v32 = [fromCopy position] + 1;
          if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v45 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v31 |= (v45 & 0x7F) << v29;
          if ((v45 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          if (v30++ > 8)
          {
            goto LABEL_60;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v31 > 0xB)
        {
LABEL_60:
          LODWORD(v31) = 0;
        }

        v5->_algorithm = v31;
        goto LABEL_67;
      }

      if (v15 != 3)
      {
        goto LABEL_41;
      }

      v5->_hasDecayRate = 1;
      v45 = 0;
      v16 = [fromCopy position] + 8;
      if (v16 >= [fromCopy position] && (v17 = objc_msgSend(fromCopy, "position") + 8, v17 <= objc_msgSend(fromCopy, "length")))
      {
        data5 = [fromCopy data];
        [data5 getBytes:&v45 range:{objc_msgSend(fromCopy, "position"), 8}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
      }

      else
      {
        [fromCopy _setError];
      }

      v38 = v45;
      v39 = 40;
      goto LABEL_66;
    }

    v25 = PBReaderReadString();
    v26 = 32;
    goto LABEL_53;
  }

LABEL_68:
  if ([fromCopy hasError])
  {
LABEL_69:
    v42 = 0;
  }

  else
  {
LABEL_70:
    v42 = v5;
  }

  return v42;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMPortraitTopic *)self identifier];
  v5 = BMPortraitTopicAlgorithmAsString([(BMPortraitTopic *)self algorithm]);
  v6 = MEMORY[0x1E696AD98];
  [(BMPortraitTopic *)self decayRate];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(BMPortraitTopic *)self score];
  v9 = [v8 numberWithDouble:?];
  osBuild = [(BMPortraitTopic *)self osBuild];
  v11 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPortraitTopic assetVersion](self, "assetVersion")}];
  v12 = [v3 initWithFormat:@"BMPortraitTopic with identifier: %@, algorithm: %@, decayRate: %@, score: %@, osBuild: %@, assetVersion: %@", identifier, v5, v7, v9, osBuild, v11];

  return v12;
}

- (BMPortraitTopic)initWithIdentifier:(id)identifier algorithm:(int)algorithm decayRate:(id)rate score:(id)score osBuild:(id)build assetVersion:(id)version
{
  identifierCopy = identifier;
  rateCopy = rate;
  scoreCopy = score;
  buildCopy = build;
  versionCopy = version;
  v25.receiver = self;
  v25.super_class = BMPortraitTopic;
  v20 = [(BMEventBase *)&v25 init];
  if (v20)
  {
    v20->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v20->_identifier, identifier);
    v20->_algorithm = algorithm;
    if (rateCopy)
    {
      v20->_hasDecayRate = 1;
      [rateCopy doubleValue];
    }

    else
    {
      v20->_hasDecayRate = 0;
      v21 = -1.0;
    }

    v20->_decayRate = v21;
    if (scoreCopy)
    {
      v20->_hasScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v20->_hasScore = 0;
      v22 = -1.0;
    }

    v20->_score = v22;
    objc_storeStrong(&v20->_osBuild, build);
    if (versionCopy)
    {
      v20->_hasAssetVersion = 1;
      intValue = [versionCopy intValue];
    }

    else
    {
      v20->_hasAssetVersion = 0;
      intValue = -1;
    }

    v20->_assetVersion = intValue;
  }

  return v20;
}

+ (id)protoFields
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v11[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"algorithm" number:2 type:4 subMessageClass:0];
  v11[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"decayRate" number:3 type:0 subMessageClass:0];
  v11[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"score" number:4 type:0 subMessageClass:0];
  v11[3] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osBuild" number:5 type:13 subMessageClass:0];
  v11[4] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assetVersion" number:6 type:2 subMessageClass:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)columns
{
  v11[6] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"algorithm" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"decayRate" dataType:1 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"score" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osBuild" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"assetVersion" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
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

    v8 = [[BMPortraitTopic alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end