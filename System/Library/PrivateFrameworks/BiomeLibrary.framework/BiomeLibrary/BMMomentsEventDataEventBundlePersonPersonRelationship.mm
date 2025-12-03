@interface BMMomentsEventDataEventBundlePersonPersonRelationship
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEventDataEventBundlePersonPersonRelationship)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMomentsEventDataEventBundlePersonPersonRelationship)initWithPersonRelationshipTag:(int)tag score:(id)score;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEventDataEventBundlePersonPersonRelationship

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    personRelationshipTag = [(BMMomentsEventDataEventBundlePersonPersonRelationship *)self personRelationshipTag];
    if (personRelationshipTag != [v5 personRelationshipTag])
    {
      goto LABEL_9;
    }

    if (!-[BMMomentsEventDataEventBundlePersonPersonRelationship hasScore](self, "hasScore") && ![v5 hasScore])
    {
      v10 = 1;
      goto LABEL_10;
    }

    if (-[BMMomentsEventDataEventBundlePersonPersonRelationship hasScore](self, "hasScore") && [v5 hasScore])
    {
      [(BMMomentsEventDataEventBundlePersonPersonRelationship *)self score];
      v8 = v7;
      [v5 score];
      v10 = v8 == v9;
    }

    else
    {
LABEL_9:
      v10 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)jsonDictionary
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventDataEventBundlePersonPersonRelationship personRelationshipTag](self, "personRelationshipTag")}];
  if (![(BMMomentsEventDataEventBundlePersonPersonRelationship *)self hasScore]|| ([(BMMomentsEventDataEventBundlePersonPersonRelationship *)self score], fabs(v4) == INFINITY))
  {
    v6 = 0;
  }

  else
  {
    [(BMMomentsEventDataEventBundlePersonPersonRelationship *)self score];
    v5 = MEMORY[0x1E696AD98];
    [(BMMomentsEventDataEventBundlePersonPersonRelationship *)self score];
    v6 = [v5 numberWithDouble:?];
  }

  v12[0] = @"personRelationshipTag";
  null = v3;
  if (!v3)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v12[1] = @"score";
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
    if (v3)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (v3)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BMMomentsEventDataEventBundlePersonPersonRelationship)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v25[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"personRelationshipTag"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v8 = 0;
          selfCopy = 0;
          goto LABEL_14;
        }

        v19 = objc_alloc(MEMORY[0x1E696ABC0]);
        v20 = *MEMORY[0x1E698F240];
        v24 = *MEMORY[0x1E696A578];
        v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"personRelationshipTag"];
        v25[0] = v11;
        v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v21 = [v19 initWithDomain:v20 code:2 userInfo:v10];
        v8 = 0;
        selfCopy = 0;
        *error = v21;
        goto LABEL_13;
      }

      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataPersonRelationshipTagFromString(v7)];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"score"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = *MEMORY[0x1E698F240];
        v22 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"score"];
        v23 = v17;
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        *error = [v15 initWithDomain:v16 code:2 userInfo:v18];
      }

      v11 = 0;
      selfCopy = 0;
      goto LABEL_13;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  self = -[BMMomentsEventDataEventBundlePersonPersonRelationship initWithPersonRelationshipTag:score:](self, "initWithPersonRelationshipTag:score:", [v8 intValue], v11);
  selfCopy = self;
LABEL_13:

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventDataEventBundlePersonPersonRelationship *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  personRelationshipTag = self->_personRelationshipTag;
  v7 = toCopy;
  PBDataWriterWriteUint32Field();
  if (self->_hasScore)
  {
    score = self->_score;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v28.receiver = self;
  v28.super_class = BMMomentsEventDataEventBundlePersonPersonRelationship;
  v5 = [(BMEventBase *)&v28 init];
  if (!v5)
  {
    goto LABEL_43;
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
        LOBYTE(v29) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (LOBYTE(v29) & 0x7F) << v7;
        if ((LOBYTE(v29) & 0x80) == 0)
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
        v5->_hasScore = 1;
        v29 = 0.0;
        v22 = [fromCopy position] + 8;
        if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 8, v23 <= objc_msgSend(fromCopy, "length")))
        {
          data2 = [fromCopy data];
          [data2 getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_score = v29;
      }

      else if ((v14 >> 3) == 1)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        while (1)
        {
          LOBYTE(v29) = 0;
          v18 = [fromCopy position] + 1;
          if (v18 >= [fromCopy position] && (v19 = objc_msgSend(fromCopy, "position") + 1, v19 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v29 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v17 |= (LOBYTE(v29) & 0x7F) << v15;
          if ((LOBYTE(v29) & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          if (v16++ > 8)
          {
            goto LABEL_36;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v17 > 0x1D)
        {
LABEL_36:
          LODWORD(v17) = 0;
        }

        v5->_personRelationshipTag = v17;
      }

      else if (!PBReaderSkipValueWithTag())
      {
        goto LABEL_42;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_42:
    v26 = 0;
  }

  else
  {
LABEL_43:
    v26 = v5;
  }

  return v26;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = BMMomentsEventDataPersonRelationshipTagAsString([(BMMomentsEventDataEventBundlePersonPersonRelationship *)self personRelationshipTag]);
  v5 = MEMORY[0x1E696AD98];
  [(BMMomentsEventDataEventBundlePersonPersonRelationship *)self score];
  v6 = [v5 numberWithDouble:?];
  v7 = [v3 initWithFormat:@"BMMomentsEventDataEventBundlePersonPersonRelationship with personRelationshipTag: %@, score: %@", v4, v6];

  return v7;
}

- (BMMomentsEventDataEventBundlePersonPersonRelationship)initWithPersonRelationshipTag:(int)tag score:(id)score
{
  scoreCopy = score;
  v10.receiver = self;
  v10.super_class = BMMomentsEventDataEventBundlePersonPersonRelationship;
  v7 = [(BMEventBase *)&v10 init];
  if (v7)
  {
    v7->_dataVersion = [objc_opt_class() latestDataVersion];
    v7->_personRelationshipTag = tag;
    if (scoreCopy)
    {
      v7->_hasScore = 1;
      [scoreCopy doubleValue];
    }

    else
    {
      v7->_hasScore = 0;
      v8 = -1.0;
    }

    v7->_score = v8;
  }

  return v7;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"personRelationshipTag" number:1 type:4 subMessageClass:0];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"score" number:2 type:0 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"personRelationshipTag" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"score" dataType:1 requestOnly:0 fieldNumber:2 protoDataType:0 convertedType:0];
  v7[0] = v2;
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

    v8 = [[BMMomentsEventDataEventBundlePersonPersonRelationship alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end