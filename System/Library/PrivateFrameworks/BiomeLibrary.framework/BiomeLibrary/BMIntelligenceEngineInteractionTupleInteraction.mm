@interface BMIntelligenceEngineInteractionTupleInteraction
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMIntelligenceEngineInteractionTupleInteraction)initWithCandidateIds:(id)ids userAlignment:(int)alignment;
- (BMIntelligenceEngineInteractionTupleInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_candidateIdsJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMIntelligenceEngineInteractionTupleInteraction

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    candidateIds = [(BMIntelligenceEngineInteractionTupleInteraction *)self candidateIds];
    candidateIds2 = [v5 candidateIds];
    v8 = candidateIds2;
    if (candidateIds == candidateIds2)
    {
    }

    else
    {
      candidateIds3 = [(BMIntelligenceEngineInteractionTupleInteraction *)self candidateIds];
      candidateIds4 = [v5 candidateIds];
      v11 = [candidateIds3 isEqual:candidateIds4];

      if (!v11)
      {
        v12 = 0;
LABEL_8:

        goto LABEL_9;
      }
    }

    userAlignment = [(BMIntelligenceEngineInteractionTupleInteraction *)self userAlignment];
    v12 = userAlignment == [v5 userAlignment];
    goto LABEL_8;
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (id)jsonDictionary
{
  v11[2] = *MEMORY[0x1E69E9840];
  _candidateIdsJSONArray = [(BMIntelligenceEngineInteractionTupleInteraction *)self _candidateIdsJSONArray];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligenceEngineInteractionTupleInteraction userAlignment](self, "userAlignment")}];
  v10[0] = @"candidateIds";
  null = _candidateIdsJSONArray;
  if (!_candidateIdsJSONArray)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v10[1] = @"userAlignment";
  v11[0] = null;
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v11[1] = null2;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  if (v4)
  {
    if (_candidateIdsJSONArray)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (_candidateIdsJSONArray)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_candidateIdsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  candidateIds = [(BMIntelligenceEngineInteractionTupleInteraction *)self candidateIds];
  v5 = [candidateIds countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(candidateIds);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [candidateIds countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMIntelligenceEngineInteractionTupleInteraction)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v60[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"candidateIds"];
  null = [MEMORY[0x1E695DFB0] null];
  v9 = [v7 isEqual:null];

  if (v9)
  {
    errorCopy2 = error;
    v44 = dictionaryCopy;
    selfCopy2 = self;

    v7 = 0;
  }

  else
  {
    if (v7)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v30 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v59 = *MEMORY[0x1E696A578];
          v46 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"candidateIds"];
          v60[0] = v46;
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:&v59 count:1];
          v32 = [v30 initWithDomain:v31 code:2 userInfo:v19];
          selfCopy3 = 0;
          *error = v32;
          goto LABEL_39;
        }

        selfCopy3 = 0;
        goto LABEL_40;
      }
    }

    errorCopy2 = error;
    v44 = dictionaryCopy;
    selfCopy2 = self;
  }

  v46 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v7 = v7;
  v10 = [v7 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  v12 = *v49;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v49 != v12)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v48 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = errorCopy2;
        if (errorCopy2)
        {
          v21 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v56 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"candidateIds"];
          v57 = v15;
          v23 = MEMORY[0x1E695DF20];
          v24 = &v57;
          v25 = &v56;
LABEL_23:
          v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:1];
          *v20 = [v21 initWithDomain:v22 code:2 userInfo:v26];

LABEL_27:
          selfCopy3 = 0;
          v19 = v7;
          dictionaryCopy = v44;
          self = selfCopy2;
          goto LABEL_38;
        }

LABEL_30:
        selfCopy3 = 0;
        v19 = v7;
        dictionaryCopy = v44;
        self = selfCopy2;
        goto LABEL_39;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = errorCopy2;
        if (errorCopy2)
        {
          v21 = objc_alloc(MEMORY[0x1E696ABC0]);
          v22 = *MEMORY[0x1E698F240];
          v54 = *MEMORY[0x1E696A578];
          v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidateIds"];
          v55 = v15;
          v23 = MEMORY[0x1E695DF20];
          v24 = &v55;
          v25 = &v54;
          goto LABEL_23;
        }

        goto LABEL_30;
      }

      v15 = v14;
      v16 = [BMIntelligenceEngineInteractionCandidateID alloc];
      v47 = 0;
      v17 = [(BMIntelligenceEngineInteractionCandidateID *)v16 initWithJSONDictionary:v15 error:&v47];
      v18 = v47;
      if (v18)
      {
        v27 = v18;
        if (errorCopy2)
        {
          v28 = v18;
          *errorCopy2 = v27;
        }

        goto LABEL_27;
      }

      [v46 addObject:v17];
    }

    v11 = [v7 countByEnumeratingWithState:&v48 objects:v58 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_16:

  dictionaryCopy = v44;
  v15 = [v44 objectForKeyedSubscript:@"userAlignment"];
  if (!v15 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v19 = 0;
    goto LABEL_37;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v15;
LABEL_36:
    v19 = v33;
LABEL_37:
    self = -[BMIntelligenceEngineInteractionTupleInteraction initWithCandidateIds:userAlignment:](selfCopy2, "initWithCandidateIds:userAlignment:", v46, [v19 intValue]);
    selfCopy3 = self;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = MEMORY[0x1E696AD98];
      v35 = BMIntelligenceEngineInteractionUserAlignmentFromString(v15);
      v36 = v34;
      dictionaryCopy = v44;
      v33 = [v36 numberWithInt:v35];
      goto LABEL_36;
    }

    if (errorCopy2)
    {
      v39 = objc_alloc(MEMORY[0x1E696ABC0]);
      v40 = *MEMORY[0x1E698F240];
      v52 = *MEMORY[0x1E696A578];
      v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userAlignment"];
      v53 = v41;
      v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      *errorCopy2 = [v39 initWithDomain:v40 code:2 userInfo:v42];
    }

    v19 = 0;
    selfCopy3 = 0;
    self = selfCopy2;
  }

LABEL_38:

LABEL_39:
LABEL_40:

  v37 = *MEMORY[0x1E69E9840];
  return selfCopy3;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceEngineInteractionTupleInteraction *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_candidateIds;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v10 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  userAlignment = self->_userAlignment;
  PBDataWriterWriteUint32Field();

  v12 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v31.receiver = self;
  v31.super_class = BMIntelligenceEngineInteractionTupleInteraction;
  v5 = [(BMEventBase *)&v31 init];
  if (!v5)
  {
    goto LABEL_40;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v32[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v32[0] & 0x7F) << v8;
        if ((v32[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        break;
      }

      if ((v15 >> 3) == 1)
      {
        v32[0] = 0;
        v32[1] = 0;
        if (!PBReaderPlaceMark() || (v23 = [[BMIntelligenceEngineInteractionCandidateID alloc] initByReadFrom:fromCopy]) == 0)
        {
LABEL_41:

          goto LABEL_42;
        }

        v24 = v23;
        [v6 addObject:v23];
        PBReaderRecallMark();
      }

      else if ((v15 >> 3) == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v32[0]) = 0;
          v19 = [fromCopy position] + 1;
          if (v19 >= [fromCopy position] && (v20 = objc_msgSend(fromCopy, "position") + 1, v20 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:v32 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v18 |= (v32[0] & 0x7F) << v16;
          if ((v32[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_36;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v18 > 9)
        {
LABEL_36:
          LODWORD(v18) = 0;
        }

        v5->_userAlignment = v18;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_41;
      }

      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v26 = [v6 copy];
  candidateIds = v5->_candidateIds;
  v5->_candidateIds = v26;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_42:
    v29 = 0;
  }

  else
  {
LABEL_40:
    v29 = v5;
  }

  return v29;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  candidateIds = [(BMIntelligenceEngineInteractionTupleInteraction *)self candidateIds];
  v5 = BMIntelligenceEngineInteractionUserAlignmentAsString([(BMIntelligenceEngineInteractionTupleInteraction *)self userAlignment]);
  v6 = [v3 initWithFormat:@"BMIntelligenceEngineInteractionTupleInteraction with candidateIds: %@, userAlignment: %@", candidateIds, v5];

  return v6;
}

- (BMIntelligenceEngineInteractionTupleInteraction)initWithCandidateIds:(id)ids userAlignment:(int)alignment
{
  idsCopy = ids;
  v10.receiver = self;
  v10.super_class = BMIntelligenceEngineInteractionTupleInteraction;
  v8 = [(BMEventBase *)&v10 init];
  if (v8)
  {
    v8->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v8->_candidateIds, ids);
    v8->_userAlignment = alignment;
  }

  return v8;
}

+ (id)protoFields
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"candidateIds" number:1 type:14 subMessageClass:objc_opt_class()];
  v7[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAlignment" number:2 type:4 subMessageClass:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)columns
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"candidateIds_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_255];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userAlignment" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v7[0] = v2;
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

id __58__BMIntelligenceEngineInteractionTupleInteraction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _candidateIdsJSONArray];
  v4 = BMConvertObjectToJSONString();

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

    v8 = [[BMIntelligenceEngineInteractionTupleInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[4] = 0;
    }
  }

  return v4;
}

@end