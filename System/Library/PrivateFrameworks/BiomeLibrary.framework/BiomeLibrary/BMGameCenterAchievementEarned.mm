@interface BMGameCenterAchievementEarned
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMGameCenterAchievementEarned)initWithAchievementID:(id)d achievementRarityPercent:(id)percent;
- (BMGameCenterAchievementEarned)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMGameCenterAchievementEarned

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"achievementID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"achievementRarityPercent" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:1 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    achievementID = [(BMGameCenterAchievementEarned *)self achievementID];
    achievementID2 = [v5 achievementID];
    v8 = achievementID2;
    if (achievementID == achievementID2)
    {
    }

    else
    {
      achievementID3 = [(BMGameCenterAchievementEarned *)self achievementID];
      achievementID4 = [v5 achievementID];
      v11 = [achievementID3 isEqual:achievementID4];

      if (!v11)
      {
        goto LABEL_12;
      }
    }

    if (!-[BMGameCenterAchievementEarned hasAchievementRarityPercent](self, "hasAchievementRarityPercent") && ![v5 hasAchievementRarityPercent])
    {
      v12 = 1;
      goto LABEL_13;
    }

    if (-[BMGameCenterAchievementEarned hasAchievementRarityPercent](self, "hasAchievementRarityPercent") && [v5 hasAchievementRarityPercent])
    {
      [(BMGameCenterAchievementEarned *)self achievementRarityPercent];
      v14 = v13;
      [v5 achievementRarityPercent];
      v12 = v14 == v15;
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (id)jsonDictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  achievementID = [(BMGameCenterAchievementEarned *)self achievementID];
  if (![(BMGameCenterAchievementEarned *)self hasAchievementRarityPercent]|| ([(BMGameCenterAchievementEarned *)self achievementRarityPercent], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMGameCenterAchievementEarned *)self achievementRarityPercent];
    v5 = MEMORY[0x1E696AD98];
    [(BMGameCenterAchievementEarned *)self achievementRarityPercent];
    v6 = [v5 numberWithDouble:?];
  }

  v12[0] = @"achievementID";
  null = achievementID;
  if (!achievementID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"achievementRarityPercent";
  v13[0] = null;
  null2 = v6;
  if (!v6)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v13[1] = null2;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  if (v6)
  {
    if (achievementID)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (achievementID)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMGameCenterAchievementEarned)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"achievementID"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (!error)
      {
        v8 = 0;
        selfCopy = 0;
        goto LABEL_9;
      }

      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E698F240];
      v23 = *MEMORY[0x1E696A578];
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"achievementID"];
      v24[0] = v10;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v16 = [v14 initWithDomain:v15 code:2 userInfo:v9];
      v8 = 0;
      selfCopy = 0;
      *error = v16;
      goto LABEL_8;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"achievementRarityPercent"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v17 = objc_alloc(MEMORY[0x1E696ABC0]);
        v18 = *MEMORY[0x1E698F240];
        v21 = *MEMORY[0x1E696A578];
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"achievementRarityPercent"];
        v22 = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
        *error = [v17 initWithDomain:v18 code:2 userInfo:v20];
      }

      v10 = 0;
      selfCopy = 0;
      goto LABEL_8;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  self = [(BMGameCenterAchievementEarned *)self initWithAchievementID:v8 achievementRarityPercent:v10];
  selfCopy = self;
LABEL_8:

LABEL_9:
  v12 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMGameCenterAchievementEarned *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_achievementID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_hasAchievementRarityPercent)
  {
    achievementRarityPercent = self->_achievementRarityPercent;
    PBDataWriterWriteFloatField();
    toCopy = v6;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v23.receiver = self;
  v23.super_class = BMGameCenterAchievementEarned;
  v5 = [(BMEventBase *)&v23 init];
  if (!v5)
  {
    goto LABEL_31;
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
        LOBYTE(v24) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v24) & 0x7F) << v7;
        if ((LOBYTE(v24) & 0x80) == 0)
        {
          break;
        }

        v7 += 7;
        if (v8++ >= 9)
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

      if ((v14 >> 3) == 2)
      {
        v5->_hasAchievementRarityPercent = 1;
        v24 = 0.0;
        v17 = [fromCopy position] + 4;
        if (v17 >= [fromCopy position] && (v18 = objc_msgSend(fromCopy, "position") + 4, v18 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v24 range:{objc_msgSend(fromCopy, "position"), 4}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 4}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_achievementRarityPercent = v24;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = PBReaderReadString();
        achievementID = v5->_achievementID;
        v5->_achievementID = v15;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_30;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_30:
    v21 = 0;
  }

  else
  {
LABEL_31:
    v21 = v5;
  }

  return v21;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  achievementID = [(BMGameCenterAchievementEarned *)self achievementID];
  v5 = MEMORY[0x1E696AD98];
  [(BMGameCenterAchievementEarned *)self achievementRarityPercent];
  v6 = [v5 numberWithDouble:?];
  v7 = [v3 initWithFormat:@"BMGameCenterAchievementEarned with achievementID: %@, achievementRarityPercent: %@", achievementID, v6];

  return v7;
}

- (BMGameCenterAchievementEarned)initWithAchievementID:(id)d achievementRarityPercent:(id)percent
{
  dCopy = d;
  percentCopy = percent;
  v13.receiver = self;
  v13.super_class = BMGameCenterAchievementEarned;
  v9 = [(BMEventBase *)&v13 init];
  if (v9)
  {
    v9->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v9->_achievementID, d);
    if (percentCopy)
    {
      v9->_hasAchievementRarityPercent = 1;
      [percentCopy floatValue];
      v11 = v10;
    }

    else
    {
      v9->_hasAchievementRarityPercent = 0;
      v11 = -1.0;
    }

    v9->_achievementRarityPercent = v11;
  }

  return v9;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"achievementID" number:1 type:13 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"achievementRarityPercent" number:2 type:1 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
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

    v8 = [[BMGameCenterAchievementEarned alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end