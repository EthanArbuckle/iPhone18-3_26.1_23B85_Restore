@interface BMIntelligenceEngineInteractionCandidateInteraction
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMIntelligenceEngineInteractionCandidateInteraction)initWithCandidateId:(id)a3 userAlignment:(int)a4 parameterName:(id)a5 searchLikelihood:(id)a6;
- (BMIntelligenceEngineInteractionCandidateInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMIntelligenceEngineInteractionCandidateInteraction

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMIntelligenceEngineInteractionCandidateInteraction *)self candidateId];
    v7 = [v5 candidateId];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMIntelligenceEngineInteractionCandidateInteraction *)self candidateId];
      v10 = [v5 candidateId];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_17;
      }
    }

    v13 = [(BMIntelligenceEngineInteractionCandidateInteraction *)self userAlignment];
    if (v13 == [v5 userAlignment])
    {
      v14 = [(BMIntelligenceEngineInteractionCandidateInteraction *)self parameterName];
      v15 = [v5 parameterName];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMIntelligenceEngineInteractionCandidateInteraction *)self parameterName];
        v18 = [v5 parameterName];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_17;
        }
      }

      if (!-[BMIntelligenceEngineInteractionCandidateInteraction hasSearchLikelihood](self, "hasSearchLikelihood") && ![v5 hasSearchLikelihood])
      {
        v12 = 1;
        goto LABEL_18;
      }

      if (-[BMIntelligenceEngineInteractionCandidateInteraction hasSearchLikelihood](self, "hasSearchLikelihood") && [v5 hasSearchLikelihood])
      {
        [(BMIntelligenceEngineInteractionCandidateInteraction *)self searchLikelihood];
        v21 = v20;
        [v5 searchLikelihood];
        v12 = v21 == v22;
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
  v18[4] = *MEMORY[0x1E69E9840];
  v3 = [(BMIntelligenceEngineInteractionCandidateInteraction *)self candidateId];
  v4 = [v3 jsonDictionary];

  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMIntelligenceEngineInteractionCandidateInteraction userAlignment](self, "userAlignment")}];
  v6 = [(BMIntelligenceEngineInteractionCandidateInteraction *)self parameterName];
  if (![(BMIntelligenceEngineInteractionCandidateInteraction *)self hasSearchLikelihood]|| ([(BMIntelligenceEngineInteractionCandidateInteraction *)self searchLikelihood], fabs(v7) == INFINITY))
  {
    v9 = 0;
  }

  else
  {
    [(BMIntelligenceEngineInteractionCandidateInteraction *)self searchLikelihood];
    v8 = MEMORY[0x1E696AD98];
    [(BMIntelligenceEngineInteractionCandidateInteraction *)self searchLikelihood];
    v9 = [v8 numberWithDouble:?];
  }

  v17[0] = @"candidateId";
  v10 = v4;
  if (!v4)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v10;
  v17[1] = @"userAlignment";
  v11 = v5;
  if (!v5)
  {
    v11 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v11;
  v17[2] = @"parameterName";
  v12 = v6;
  if (!v6)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v18[2] = v12;
  v17[3] = @"searchLikelihood";
  v13 = v9;
  if (!v9)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v18[3] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  if (v9)
  {
    if (v6)
    {
      goto LABEL_15;
    }
  }

  else
  {

    if (v6)
    {
LABEL_15:
      if (v5)
      {
        goto LABEL_16;
      }

LABEL_22:

      if (v4)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  if (!v5)
  {
    goto LABEL_22;
  }

LABEL_16:
  if (v4)
  {
    goto LABEL_17;
  }

LABEL_23:

LABEL_17:
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (BMIntelligenceEngineInteractionCandidateInteraction)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v45[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"candidateId"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v7;
    v37 = 0;
    v8 = [[BMIntelligenceEngineInteractionCandidateID alloc] initWithJSONDictionary:v10 error:&v37];
    v11 = v37;
    if (v11)
    {
      v12 = v10;
      if (a4)
      {
        v11 = v11;
        *a4 = v11;
      }

      v13 = 0;
      a4 = v12;
      goto LABEL_29;
    }

LABEL_4:
    v9 = [v6 objectForKeyedSubscript:@"userAlignment"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v9;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!a4)
          {
            v13 = 0;
            goto LABEL_28;
          }

          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v30 = *MEMORY[0x1E698F240];
          v42 = *MEMORY[0x1E696A578];
          v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"userAlignment"];
          v43 = v20;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
          v13 = 0;
          *a4 = [v36 initWithDomain:v30 code:2 userInfo:v18];
          a4 = 0;
LABEL_27:

LABEL_28:
          goto LABEL_29;
        }

        v14 = [MEMORY[0x1E696AD98] numberWithInt:BMIntelligenceEngineInteractionUserAlignmentFromString(v9)];
      }

      v34 = v14;
    }

    else
    {
      v34 = 0;
    }

    v35 = v7;
    v18 = [v6 objectForKeyedSubscript:@"parameterName"];
    v19 = self;
    if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v20 = 0;
          v13 = 0;
          a4 = v34;
          v7 = v35;
          goto LABEL_27;
        }

        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = a4;
        v26 = *MEMORY[0x1E698F240];
        v40 = *MEMORY[0x1E696A578];
        v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"parameterName"];
        v41 = v22;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
        v27 = [v25 initWithDomain:v26 code:2 userInfo:v21];
        v20 = 0;
        v13 = 0;
        a4 = v34;
        *v32 = v27;
        goto LABEL_26;
      }

      v20 = v18;
    }

    else
    {
      v20 = 0;
    }

    v21 = [v6 objectForKeyedSubscript:@"searchLikelihood"];
    if (v21 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v33 = objc_alloc(MEMORY[0x1E696ABC0]);
          v31 = *MEMORY[0x1E698F240];
          v38 = *MEMORY[0x1E696A578];
          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"searchLikelihood"];
          v39 = v28;
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
          *a4 = [v33 initWithDomain:v31 code:2 userInfo:v29];
        }

        v22 = 0;
        v13 = 0;
        a4 = v34;
        goto LABEL_26;
      }

      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    a4 = v34;
    v13 = -[BMIntelligenceEngineInteractionCandidateInteraction initWithCandidateId:userAlignment:parameterName:searchLikelihood:](v19, "initWithCandidateId:userAlignment:parameterName:searchLikelihood:", v8, [v34 intValue], v20, v22);
    v19 = v13;
LABEL_26:

    self = v19;
    v7 = v35;
    goto LABEL_27;
  }

  if (!a4)
  {
    v13 = 0;
    goto LABEL_30;
  }

  v15 = objc_alloc(MEMORY[0x1E696ABC0]);
  v16 = *MEMORY[0x1E698F240];
  v44 = *MEMORY[0x1E696A578];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"candidateId"];
  v45[0] = v8;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
  v13 = 0;
  *a4 = [v15 initWithDomain:v16 code:2 userInfo:v17];
  a4 = v17;
LABEL_29:

LABEL_30:
  v23 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMIntelligenceEngineInteractionCandidateInteraction *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (self->_candidateId)
  {
    PBDataWriterPlaceMark();
    [(BMIntelligenceEngineInteractionCandidateID *)self->_candidateId writeTo:v4];
    PBDataWriterRecallMark();
  }

  userAlignment = self->_userAlignment;
  PBDataWriterWriteUint32Field();
  if (self->_parameterName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasSearchLikelihood)
  {
    searchLikelihood = self->_searchLikelihood;
    PBDataWriterWriteDoubleField();
  }
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = BMIntelligenceEngineInteractionCandidateInteraction;
  v5 = [(BMEventBase *)&v33 init];
  if (!v5)
  {
    goto LABEL_50;
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
        LOBYTE(v34[0]) = 0;
        v10 = [v4 position] + 1;
        if (v10 >= [v4 position] && (v11 = objc_msgSend(v4, "position") + 1, v11 <= objc_msgSend(v4, "length")))
        {
          v12 = [v4 data];
          [v12 getBytes:v34 range:{objc_msgSend(v4, "position"), 1}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
        }

        else
        {
          [v4 _setError];
        }

        v9 |= (v34[0] & 0x7F) << v7;
        if ((v34[0] & 0x80) == 0)
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

      v14 = [v4 hasError] ? 0 : v9;
LABEL_16:
      if (([v4 hasError] & 1) != 0 || (v14 & 7) == 4)
      {
        break;
      }

      v15 = v14 >> 3;
      if ((v14 >> 3) > 2)
      {
        if (v15 == 3)
        {
          v27 = PBReaderReadString();
          parameterName = v5->_parameterName;
          v5->_parameterName = v27;
        }

        else
        {
          if (v15 != 4)
          {
LABEL_35:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              goto LABEL_49;
            }

            goto LABEL_47;
          }

          v5->_hasSearchLikelihood = 1;
          v34[0] = 0;
          v23 = [v4 position] + 8;
          if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 8, v24 <= objc_msgSend(v4, "length")))
          {
            v29 = [v4 data];
            [v29 getBytes:v34 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          *&v5->_searchLikelihood = v34[0];
        }
      }

      else if (v15 == 1)
      {
        v34[0] = 0;
        v34[1] = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_49;
        }

        v25 = [[BMIntelligenceEngineInteractionCandidateID alloc] initByReadFrom:v4];
        if (!v25)
        {
          goto LABEL_49;
        }

        candidateId = v5->_candidateId;
        v5->_candidateId = v25;

        PBReaderRecallMark();
      }

      else
      {
        if (v15 != 2)
        {
          goto LABEL_35;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v19 = [v4 position] + 1;
          if (v19 >= [v4 position] && (v20 = objc_msgSend(v4, "position") + 1, v20 <= objc_msgSend(v4, "length")))
          {
            v21 = [v4 data];
            [v21 getBytes:v34 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v18 |= (v34[0] & 0x7F) << v16;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          if (v17++ > 8)
          {
            goto LABEL_43;
          }
        }

        if (([v4 hasError] & 1) != 0 || v18 > 9)
        {
LABEL_43:
          LODWORD(v18) = 0;
        }

        v5->_userAlignment = v18;
      }

LABEL_47:
      v30 = [v4 position];
    }

    while (v30 < [v4 length]);
  }

  if ([v4 hasError])
  {
LABEL_49:
    v31 = 0;
  }

  else
  {
LABEL_50:
    v31 = v5;
  }

  return v31;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(BMIntelligenceEngineInteractionCandidateInteraction *)self candidateId];
  v5 = BMIntelligenceEngineInteractionUserAlignmentAsString([(BMIntelligenceEngineInteractionCandidateInteraction *)self userAlignment]);
  v6 = [(BMIntelligenceEngineInteractionCandidateInteraction *)self parameterName];
  v7 = MEMORY[0x1E696AD98];
  [(BMIntelligenceEngineInteractionCandidateInteraction *)self searchLikelihood];
  v8 = [v7 numberWithDouble:?];
  v9 = [v3 initWithFormat:@"BMIntelligenceEngineInteractionCandidateInteraction with candidateId: %@, userAlignment: %@, parameterName: %@, searchLikelihood: %@", v4, v5, v6, v8];

  return v9;
}

- (BMIntelligenceEngineInteractionCandidateInteraction)initWithCandidateId:(id)a3 userAlignment:(int)a4 parameterName:(id)a5 searchLikelihood:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = BMIntelligenceEngineInteractionCandidateInteraction;
  v14 = [(BMEventBase *)&v17 init];
  if (v14)
  {
    v14->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v14->_candidateId, a3);
    v14->_userAlignment = a4;
    objc_storeStrong(&v14->_parameterName, a5);
    if (v13)
    {
      v14->_hasSearchLikelihood = 1;
      [v13 doubleValue];
    }

    else
    {
      v14->_hasSearchLikelihood = 0;
      v15 = -1.0;
    }

    v14->_searchLikelihood = v15;
  }

  return v14;
}

+ (id)protoFields
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"candidateId" number:1 type:14 subMessageClass:objc_opt_class()];
  v9[0] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"userAlignment" number:2 type:4 subMessageClass:0];
  v9[1] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"parameterName" number:3 type:13 subMessageClass:0];
  v9[2] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"searchLikelihood" number:4 type:0 subMessageClass:0];
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (id)columns
{
  v9[4] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"candidateId_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_198];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"userAlignment" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"parameterName" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"searchLikelihood" dataType:1 requestOnly:0 fieldNumber:4 protoDataType:0 convertedType:0];
  v9[0] = v2;
  v9[1] = v3;
  v9[2] = v4;
  v9[3] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

id __62__BMIntelligenceEngineInteractionCandidateInteraction_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 candidateId];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

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

    v8 = [[BMIntelligenceEngineInteractionCandidateInteraction alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end