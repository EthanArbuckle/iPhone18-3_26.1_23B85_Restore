@interface BMDictationUserEdit
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMDictationUserEdit)initWithAsrID:(id)d interactionID:(id)iD metadata:(id)metadata startIndex:(id)index endIndex:(id)endIndex correctedText:(id)text recognizedText:(id)recognizedText recognizedTokens:(id)self0 alternativeSelections:(id)self1 preItnNbest:(id)self2 postItnNbest:(id)self3;
- (BMDictationUserEdit)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_alternativeSelectionsJSONArray;
- (id)_postItnNbestJSONArray;
- (id)_preItnNbestJSONArray;
- (id)_recognizedTokensJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMDictationUserEdit

+ (id)columns
{
  v16[11] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"asrID" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"interactionID" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"metadata_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_259];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startIndex" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endIndex" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"correctedText" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"recognizedText" dataType:2 requestOnly:0 fieldNumber:7 protoDataType:13 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"recognizedTokens_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_261];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"alternativeSelections_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_263];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"preItnNbest_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_265_82483];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"postItnNbest_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_267_82484];
  v16[0] = v2;
  v16[1] = v3;
  v16[2] = v4;
  v16[3] = v5;
  v16[4] = v14;
  v16[5] = v6;
  v16[6] = v7;
  v16[7] = v15;
  v16[8] = v8;
  v16[9] = v9;
  v16[10] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    asrID = [(BMDictationUserEdit *)self asrID];
    asrID2 = [v5 asrID];
    v8 = asrID2;
    if (asrID == asrID2)
    {
    }

    else
    {
      asrID3 = [(BMDictationUserEdit *)self asrID];
      asrID4 = [v5 asrID];
      v11 = [asrID3 isEqual:asrID4];

      if (!v11)
      {
        goto LABEL_43;
      }
    }

    interactionID = [(BMDictationUserEdit *)self interactionID];
    interactionID2 = [v5 interactionID];
    v15 = interactionID2;
    if (interactionID == interactionID2)
    {
    }

    else
    {
      interactionID3 = [(BMDictationUserEdit *)self interactionID];
      interactionID4 = [v5 interactionID];
      v18 = [interactionID3 isEqual:interactionID4];

      if (!v18)
      {
        goto LABEL_43;
      }
    }

    metadata = [(BMDictationUserEdit *)self metadata];
    metadata2 = [v5 metadata];
    v21 = metadata2;
    if (metadata == metadata2)
    {
    }

    else
    {
      metadata3 = [(BMDictationUserEdit *)self metadata];
      metadata4 = [v5 metadata];
      v24 = [metadata3 isEqual:metadata4];

      if (!v24)
      {
        goto LABEL_43;
      }
    }

    if (-[BMDictationUserEdit hasStartIndex](self, "hasStartIndex") || [v5 hasStartIndex])
    {
      if (![(BMDictationUserEdit *)self hasStartIndex])
      {
        goto LABEL_43;
      }

      if (![v5 hasStartIndex])
      {
        goto LABEL_43;
      }

      startIndex = [(BMDictationUserEdit *)self startIndex];
      if (startIndex != [v5 startIndex])
      {
        goto LABEL_43;
      }
    }

    if (-[BMDictationUserEdit hasEndIndex](self, "hasEndIndex") || [v5 hasEndIndex])
    {
      if (![(BMDictationUserEdit *)self hasEndIndex])
      {
        goto LABEL_43;
      }

      if (![v5 hasEndIndex])
      {
        goto LABEL_43;
      }

      endIndex = [(BMDictationUserEdit *)self endIndex];
      if (endIndex != [v5 endIndex])
      {
        goto LABEL_43;
      }
    }

    correctedText = [(BMDictationUserEdit *)self correctedText];
    correctedText2 = [v5 correctedText];
    v29 = correctedText2;
    if (correctedText == correctedText2)
    {
    }

    else
    {
      correctedText3 = [(BMDictationUserEdit *)self correctedText];
      correctedText4 = [v5 correctedText];
      v32 = [correctedText3 isEqual:correctedText4];

      if (!v32)
      {
        goto LABEL_43;
      }
    }

    recognizedText = [(BMDictationUserEdit *)self recognizedText];
    recognizedText2 = [v5 recognizedText];
    v35 = recognizedText2;
    if (recognizedText == recognizedText2)
    {
    }

    else
    {
      recognizedText3 = [(BMDictationUserEdit *)self recognizedText];
      recognizedText4 = [v5 recognizedText];
      v38 = [recognizedText3 isEqual:recognizedText4];

      if (!v38)
      {
        goto LABEL_43;
      }
    }

    recognizedTokens = [(BMDictationUserEdit *)self recognizedTokens];
    recognizedTokens2 = [v5 recognizedTokens];
    v41 = recognizedTokens2;
    if (recognizedTokens == recognizedTokens2)
    {
    }

    else
    {
      recognizedTokens3 = [(BMDictationUserEdit *)self recognizedTokens];
      recognizedTokens4 = [v5 recognizedTokens];
      v44 = [recognizedTokens3 isEqual:recognizedTokens4];

      if (!v44)
      {
        goto LABEL_43;
      }
    }

    alternativeSelections = [(BMDictationUserEdit *)self alternativeSelections];
    alternativeSelections2 = [v5 alternativeSelections];
    v47 = alternativeSelections2;
    if (alternativeSelections == alternativeSelections2)
    {
    }

    else
    {
      alternativeSelections3 = [(BMDictationUserEdit *)self alternativeSelections];
      alternativeSelections4 = [v5 alternativeSelections];
      v50 = [alternativeSelections3 isEqual:alternativeSelections4];

      if (!v50)
      {
        goto LABEL_43;
      }
    }

    preItnNbest = [(BMDictationUserEdit *)self preItnNbest];
    preItnNbest2 = [v5 preItnNbest];
    v53 = preItnNbest2;
    if (preItnNbest == preItnNbest2)
    {
    }

    else
    {
      preItnNbest3 = [(BMDictationUserEdit *)self preItnNbest];
      preItnNbest4 = [v5 preItnNbest];
      v56 = [preItnNbest3 isEqual:preItnNbest4];

      if (!v56)
      {
LABEL_43:
        v12 = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    postItnNbest = [(BMDictationUserEdit *)self postItnNbest];
    postItnNbest2 = [v5 postItnNbest];
    if (postItnNbest == postItnNbest2)
    {
      v12 = 1;
    }

    else
    {
      postItnNbest3 = [(BMDictationUserEdit *)self postItnNbest];
      postItnNbest4 = [v5 postItnNbest];
      v12 = [postItnNbest3 isEqual:postItnNbest4];
    }

    goto LABEL_44;
  }

  v12 = 0;
LABEL_45:

  return v12;
}

- (id)jsonDictionary
{
  v39[11] = *MEMORY[0x1E69E9840];
  asrID = [(BMDictationUserEdit *)self asrID];
  interactionID = [(BMDictationUserEdit *)self interactionID];
  metadata = [(BMDictationUserEdit *)self metadata];
  jsonDictionary = [metadata jsonDictionary];

  if ([(BMDictationUserEdit *)self hasStartIndex])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEdit startIndex](self, "startIndex")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMDictationUserEdit *)self hasEndIndex])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEdit endIndex](self, "endIndex")}];
  }

  else
  {
    v8 = 0;
  }

  correctedText = [(BMDictationUserEdit *)self correctedText];
  recognizedText = [(BMDictationUserEdit *)self recognizedText];
  _recognizedTokensJSONArray = [(BMDictationUserEdit *)self _recognizedTokensJSONArray];
  _alternativeSelectionsJSONArray = [(BMDictationUserEdit *)self _alternativeSelectionsJSONArray];
  _preItnNbestJSONArray = [(BMDictationUserEdit *)self _preItnNbestJSONArray];
  _postItnNbestJSONArray = [(BMDictationUserEdit *)self _postItnNbestJSONArray];
  v38[0] = @"asrID";
  null = asrID;
  if (!asrID)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v39[0] = null;
  v38[1] = @"interactionID";
  null2 = interactionID;
  if (!interactionID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v39[1] = null2;
  v38[2] = @"metadata";
  null3 = jsonDictionary;
  if (!jsonDictionary)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null3;
  v39[2] = null3;
  v38[3] = @"startIndex";
  null4 = v7;
  if (!v7)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = asrID;
  v26 = null4;
  v39[3] = null4;
  v38[4] = @"endIndex";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = interactionID;
  v25 = null5;
  v39[4] = null5;
  v38[5] = @"correctedText";
  null6 = correctedText;
  if (!correctedText)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = jsonDictionary;
  v39[5] = null6;
  v38[6] = @"recognizedText";
  null7 = recognizedText;
  if (!recognizedText)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v7;
  v39[6] = null7;
  v38[7] = @"recognizedTokens";
  null8 = _recognizedTokensJSONArray;
  if (!_recognizedTokensJSONArray)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v39[7] = null8;
  v38[8] = @"alternativeSelections";
  null9 = _alternativeSelectionsJSONArray;
  if (!_alternativeSelectionsJSONArray)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v39[8] = null9;
  v38[9] = @"preItnNbest";
  null10 = _preItnNbestJSONArray;
  if (!_preItnNbestJSONArray)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v39[9] = null10;
  v38[10] = @"postItnNbest";
  null11 = _postItnNbestJSONArray;
  if (!_postItnNbestJSONArray)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v39[10] = null11;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:11];
  if (_postItnNbestJSONArray)
  {
    if (_preItnNbestJSONArray)
    {
      goto LABEL_31;
    }

LABEL_48:

    if (_alternativeSelectionsJSONArray)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  if (!_preItnNbestJSONArray)
  {
    goto LABEL_48;
  }

LABEL_31:
  if (_alternativeSelectionsJSONArray)
  {
    goto LABEL_32;
  }

LABEL_49:

LABEL_32:
  if (!_recognizedTokensJSONArray)
  {
  }

  if (!recognizedText)
  {
  }

  if (!correctedText)
  {
  }

  if (!v8)
  {
  }

  if (v31)
  {
    if (v32)
    {
      goto LABEL_42;
    }
  }

  else
  {

    if (v32)
    {
LABEL_42:
      if (v33)
      {
        goto LABEL_43;
      }

LABEL_52:

      if (v34)
      {
        goto LABEL_44;
      }

      goto LABEL_53;
    }
  }

  if (!v33)
  {
    goto LABEL_52;
  }

LABEL_43:
  if (v34)
  {
    goto LABEL_44;
  }

LABEL_53:

LABEL_44:
  v23 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)_postItnNbestJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  postItnNbest = [(BMDictationUserEdit *)self postItnNbest];
  v5 = [postItnNbest countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(postItnNbest);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [postItnNbest countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_preItnNbestJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  preItnNbest = [(BMDictationUserEdit *)self preItnNbest];
  v5 = [preItnNbest countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(preItnNbest);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [preItnNbest countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_alternativeSelectionsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  alternativeSelections = [(BMDictationUserEdit *)self alternativeSelections];
  v5 = [alternativeSelections countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(alternativeSelections);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [alternativeSelections countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_recognizedTokensJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  recognizedTokens = [(BMDictationUserEdit *)self recognizedTokens];
  v5 = [recognizedTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(recognizedTokens);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [recognizedTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMDictationUserEdit)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v277[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"asrID"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = dictionaryCopy;
        v27 = *MEMORY[0x1E698F240];
        v276 = *MEMORY[0x1E696A578];
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"asrID"];
        v277[0] = v23;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v277 forKeys:&v276 count:1];
        v29 = v25;
        v9 = v28;
        v30 = v27;
        dictionaryCopy = v26;
        v31 = [v29 initWithDomain:v30 code:2 userInfo:v28];
        v8 = 0;
        errorCopy = error;
        error = 0;
        *errorCopy = v31;
        goto LABEL_189;
      }

      v8 = 0;
      goto LABEL_190;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"interactionID"];
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        selfCopy = self;
        v48 = v9;
        v49 = objc_alloc(MEMORY[0x1E696ABC0]);
        v50 = dictionaryCopy;
        v51 = *MEMORY[0x1E698F240];
        v274 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"interactionID"];
        v275 = v21;
        v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
        v52 = v49;
        v9 = v48;
        self = selfCopy;
        v53 = v51;
        dictionaryCopy = v50;
        v54 = [v52 initWithDomain:v53 code:2 userInfo:v24];
        v23 = 0;
        errorCopy2 = error;
        error = 0;
        *errorCopy2 = v54;
        goto LABEL_187;
      }

      v23 = 0;
      goto LABEL_189;
    }

    v214 = v9;
  }

  else
  {
    v214 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"metadata"];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v196 = v9;
        v56 = objc_alloc(MEMORY[0x1E696ABC0]);
        errorCopy3 = error;
        v57 = v8;
        v58 = *MEMORY[0x1E698F240];
        v272 = *MEMORY[0x1E696A578];
        v59 = dictionaryCopy;
        v60 = v10;
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"metadata"];
        v273 = v24;
        v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v273 forKeys:&v272 count:1];
        v62 = v56;
        v9 = v196;
        v63 = v58;
        v8 = v57;
        *errorCopy3 = [v62 initWithDomain:v63 code:2 userInfo:v61];

        error = 0;
        v21 = v60;
        dictionaryCopy = v59;
        v23 = v214;
        goto LABEL_187;
      }

      v23 = v214;
      goto LABEL_188;
    }

    v21 = v10;
    v235 = 0;
    v207 = [[BMDictationUserEditRequestMetadata alloc] initWithJSONDictionary:v21 error:&v235];
    v22 = v235;
    if (v22)
    {
      if (error)
      {
        v22 = v22;
        *error = v22;
      }

      error = 0;
      v23 = v214;
      v24 = v207;
      goto LABEL_187;
    }

    errorCopy5 = error;
  }

  else
  {
    errorCopy5 = error;
    v207 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"startIndex"];
  v208 = v10;
  v204 = v11;
  errorCopy6 = self;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy5)
      {
        v197 = v9;
        v64 = objc_alloc(MEMORY[0x1E696ABC0]);
        v194 = v8;
        v65 = dictionaryCopy;
        v66 = *MEMORY[0x1E698F240];
        v270 = *MEMORY[0x1E696A578];
        v67 = objc_alloc(MEMORY[0x1E696AEC0]);
        v182 = objc_opt_class();
        v68 = v67;
        v10 = v208;
        v201 = [v68 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v182, @"startIndex"];
        v271 = v201;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
        v69 = v64;
        v70 = v66;
        dictionaryCopy = v65;
        v8 = v194;
        v9 = v197;
        v71 = 0;
        error = 0;
        *errorCopy5 = [v69 initWithDomain:v70 code:2 userInfo:v13];
        v23 = v214;
        goto LABEL_185;
      }

      v71 = 0;
      error = 0;
      v23 = v214;
      goto LABEL_186;
    }

    v200 = v12;
  }

  else
  {
    v200 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"endIndex"];
  v213 = v13;
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      error = errorCopy5;
      if (!errorCopy5)
      {
        v201 = 0;
        v23 = v214;
        v71 = v200;
        goto LABEL_185;
      }

      v77 = v9;
      v78 = objc_alloc(MEMORY[0x1E696ABC0]);
      v79 = dictionaryCopy;
      v80 = *MEMORY[0x1E698F240];
      v268 = *MEMORY[0x1E696A578];
      v81 = objc_alloc(MEMORY[0x1E696AEC0]);
      v183 = objc_opt_class();
      v82 = v81;
      v10 = v208;
      v83 = [v82 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v183, @"endIndex"];
      v269 = v83;
      v84 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
      v85 = v78;
      v9 = v77;
      v13 = v213;
      v86 = v80;
      dictionaryCopy = v79;
      v87 = v83;
      v199 = v84;
      v201 = 0;
      error = 0;
      *errorCopy5 = [v85 initWithDomain:v86 code:2 userInfo:?];
      v23 = v214;
      goto LABEL_87;
    }

    v201 = v13;
  }

  else
  {
    v201 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"correctedText"];
  v193 = v8;
  v199 = v14;
  v206 = dictionaryCopy;
  if (v14)
  {
    v15 = v14;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v203 = v15;
        goto LABEL_19;
      }

      if (errorCopy5)
      {
        v90 = v9;
        v91 = objc_alloc(MEMORY[0x1E696ABC0]);
        v92 = *MEMORY[0x1E698F240];
        v266 = *MEMORY[0x1E696A578];
        v93 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"correctedText"];
        v267 = v93;
        v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
        v95 = v91;
        v9 = v90;
        v17 = v93;
        v96 = v92;
        v16 = v94;
        v87 = 0;
        error = 0;
        *errorCopy5 = [v95 initWithDomain:v96 code:2 userInfo:v94];
        v23 = v214;
        v10 = v208;
        v71 = v200;
        goto LABEL_183;
      }

      v87 = 0;
      error = 0;
      v23 = v214;
      v10 = v208;
LABEL_87:
      v71 = v200;
      goto LABEL_184;
    }
  }

  v203 = 0;
LABEL_19:
  v16 = [dictionaryCopy objectForKeyedSubscript:@"recognizedText"];
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v97 = v16;
      if (errorCopy5)
      {
        v98 = v9;
        v99 = objc_alloc(MEMORY[0x1E696ABC0]);
        v100 = *MEMORY[0x1E698F240];
        v264 = *MEMORY[0x1E696A578];
        v101 = objc_alloc(MEMORY[0x1E696AEC0]);
        v184 = objc_opt_class();
        v102 = v101;
        v16 = v97;
        obj = [v102 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v184, @"recognizedText"];
        v265 = obj;
        v103 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v265 forKeys:&v264 count:1];
        v104 = v99;
        v9 = v98;
        v190 = v103;
        v17 = 0;
        error = 0;
        *errorCopy5 = [v104 initWithDomain:v100 code:2 userInfo:?];
        v23 = v214;
        v10 = v208;
        v71 = v200;
        v87 = v203;

        goto LABEL_182;
      }

      v17 = 0;
      error = 0;
      v23 = v214;
      v10 = v208;
      v71 = v200;
      v87 = v203;
      goto LABEL_183;
    }

    v195 = v9;
    v17 = v16;
  }

  else
  {
    v195 = v9;
    v17 = 0;
  }

  v18 = [v206 objectForKeyedSubscript:@"recognizedTokens"];
  null = [MEMORY[0x1E695DFB0] null];
  v20 = [v18 isEqual:null];

  v202 = v7;
  if (v20)
  {

    v18 = 0;
  }

  else if (v18)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      obj = v18;
      if (!errorCopy5)
      {
        error = 0;
        v9 = v195;
        v23 = v214;
        v10 = v208;
        v71 = v200;
        v87 = v203;
        goto LABEL_182;
      }

      v105 = objc_alloc(MEMORY[0x1E696ABC0]);
      v106 = *MEMORY[0x1E698F240];
      v262 = *MEMORY[0x1E696A578];
      v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"recognizedTokens"];
      v263 = v189;
      v191 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v263 forKeys:&v262 count:1];
      error = 0;
      *errorCopy5 = [v105 initWithDomain:v106 code:2 userInfo:?];
      v9 = v195;
      v23 = v214;
      v10 = v208;
      goto LABEL_81;
    }
  }

  v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
  v231 = 0u;
  v232 = 0u;
  v233 = 0u;
  v234 = 0u;
  v34 = v18;
  v35 = v33;
  v36 = v34;
  v37 = [v34 countByEnumeratingWithState:&v231 objects:v261 count:16];
  v38 = v203;
  obj = v36;
  v189 = v33;
  if (!v37)
  {
    goto LABEL_50;
  }

  v39 = v37;
  v40 = *v232;
  do
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v232 != v40)
      {
        objc_enumerationMutation(obj);
      }

      v42 = *(*(&v231 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (errorCopy5)
        {
          v72 = objc_alloc(MEMORY[0x1E696ABC0]);
          v73 = *MEMORY[0x1E698F240];
          v259 = *MEMORY[0x1E696A578];
          v192 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"recognizedTokens"];
          v260 = v192;
          v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v260 forKeys:&v259 count:1];
          v75 = v72;
          v76 = v73;
LABEL_68:
          v187 = v74;
          v13 = v213;
          v23 = v214;
          v87 = v203;
          error = 0;
          v10 = v208;
          *errorCopy5 = [v75 initWithDomain:v76 code:2 userInfo:?];
          v191 = obj;
          v9 = v195;
          v71 = v200;

          goto LABEL_179;
        }

LABEL_72:
        error = 0;
        v23 = v214;
        v87 = v203;
        v9 = v195;
        v10 = v208;
        v71 = v200;
        v13 = v213;

        goto LABEL_181;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (errorCopy5)
        {
          v88 = objc_alloc(MEMORY[0x1E696ABC0]);
          v89 = *MEMORY[0x1E698F240];
          v257 = *MEMORY[0x1E696A578];
          v192 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"recognizedTokens"];
          v258 = v192;
          v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v258 forKeys:&v257 count:1];
          v75 = v88;
          v76 = v89;
          goto LABEL_68;
        }

        goto LABEL_72;
      }

      [v35 addObject:v42];
    }

    v36 = obj;
    v39 = [obj countByEnumeratingWithState:&v231 objects:v261 count:16];
    v38 = v203;
  }

  while (v39);
LABEL_50:
  v203 = v38;

  v43 = [v206 objectForKeyedSubscript:@"alternativeSelections"];
  null2 = [MEMORY[0x1E695DFB0] null];
  v45 = [v43 isEqual:null2];

  if (!v45)
  {
    v13 = v213;
    if (!v43)
    {
      v46 = 0;
      v7 = v202;
      v10 = v208;
      goto LABEL_90;
    }

    objc_opt_class();
    v191 = v43;
    v7 = v202;
    v10 = v208;
    if (objc_opt_isKindOfClass())
    {
      v46 = v191;
      goto LABEL_90;
    }

    if (errorCopy5)
    {
      v144 = objc_alloc(MEMORY[0x1E696ABC0]);
      v145 = *MEMORY[0x1E698F240];
      v255 = *MEMORY[0x1E696A578];
      v192 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"alternativeSelections"];
      v256 = v192;
      v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v256 forKeys:&v255 count:1];
      v147 = v145;
      v10 = v208;
      v188 = v146;
      error = 0;
      *errorCopy5 = [v144 initWithDomain:v147 code:2 userInfo:?];
      v9 = v195;
      goto LABEL_130;
    }

    error = 0;
    v9 = v195;
    v23 = v214;
LABEL_81:
    v71 = v200;
    v87 = v203;
    goto LABEL_180;
  }

  v46 = 0;
  v7 = v202;
  v10 = v208;
  v13 = v213;
LABEL_90:
  v192 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v46, "count")}];
  v227 = 0u;
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  v191 = v46;
  v107 = [v191 countByEnumeratingWithState:&v227 objects:v254 count:16];
  v186 = v17;
  if (!v107)
  {
    goto LABEL_100;
  }

  v108 = v107;
  v109 = *v228;
  do
  {
    for (j = 0; j != v108; ++j)
    {
      if (*v228 != v109)
      {
        objc_enumerationMutation(v191);
      }

      v111 = *(*(&v227 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v119 = errorCopy5;
        if (errorCopy5)
        {
          v120 = v191;
          v121 = objc_alloc(MEMORY[0x1E696ABC0]);
          v122 = *MEMORY[0x1E698F240];
          v252 = *MEMORY[0x1E696A578];
          v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"alternativeSelections"];
          v253 = v112;
          v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v253 forKeys:&v252 count:1];
          v124 = v121;
          v125 = v122;
          goto LABEL_107;
        }

LABEL_131:
        error = 0;
        v9 = v195;
        v23 = v214;
        v10 = v208;
        v71 = v200;
        v87 = v203;
        v17 = v186;

        goto LABEL_179;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v119 = errorCopy5;
        if (!errorCopy5)
        {
          goto LABEL_131;
        }

        v120 = v191;
        v126 = objc_alloc(MEMORY[0x1E696ABC0]);
        v127 = *MEMORY[0x1E698F240];
        v250 = *MEMORY[0x1E696A578];
        v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"alternativeSelections"];
        v251 = v112;
        v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v251 forKeys:&v250 count:1];
        v124 = v126;
        v125 = v127;
LABEL_107:
        error = 0;
        *v119 = [v124 initWithDomain:v125 code:2 userInfo:v123];
        v188 = v120;
        v9 = v195;
LABEL_111:
        v23 = v214;
        v10 = v208;
        v87 = v203;
        goto LABEL_176;
      }

      v112 = v111;
      v113 = [BMDictationUserEditConfusionPair alloc];
      v226 = 0;
      v114 = [(BMDictationUserEditConfusionPair *)v113 initWithJSONDictionary:v112 error:&v226];
      v115 = v226;
      if (v115)
      {
        v123 = v115;
        v9 = v195;
        if (errorCopy5)
        {
          v128 = v115;
          *errorCopy5 = v123;
        }

        error = 0;
        v188 = v191;
        goto LABEL_111;
      }

      [v192 addObject:v114];

      v7 = v202;
      v13 = v213;
    }

    v108 = [v191 countByEnumeratingWithState:&v227 objects:v254 count:16];
    v10 = v208;
    v17 = v186;
  }

  while (v108);
LABEL_100:

  v116 = [v206 objectForKeyedSubscript:@"preItnNbest"];
  null3 = [MEMORY[0x1E695DFB0] null];
  v118 = [v116 isEqual:null3];

  if (v118)
  {

    goto LABEL_115;
  }

  if (!v116)
  {
LABEL_115:
    v129 = 0;
    v9 = v195;
    goto LABEL_116;
  }

  objc_opt_class();
  v188 = v116;
  v9 = v195;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (errorCopy5)
    {
      v165 = objc_alloc(MEMORY[0x1E696ABC0]);
      v166 = *MEMORY[0x1E698F240];
      v248 = *MEMORY[0x1E696A578];
      v112 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"preItnNbest"];
      v249 = v112;
      v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v249 forKeys:&v248 count:1];
      v167 = v166;
      v9 = v195;
      error = 0;
      *errorCopy5 = [v165 initWithDomain:v167 code:2 userInfo:v123];
      goto LABEL_150;
    }

    error = 0;
LABEL_130:
    v23 = v214;
    v71 = v200;
    v87 = v203;
    goto LABEL_178;
  }

  v129 = v116;
LABEL_116:
  v112 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v129, "count")}];
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v188 = v129;
  v130 = [v188 countByEnumeratingWithState:&v222 objects:v247 count:16];
  if (!v130)
  {
    goto LABEL_126;
  }

  v131 = v130;
  v132 = *v223;
  do
  {
    v133 = 0;
    do
    {
      if (*v223 != v132)
      {
        objc_enumerationMutation(v188);
      }

      v134 = *(*(&v222 + 1) + 8 * v133);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v148 = errorCopy5;
        if (errorCopy5)
        {
          v135 = v16;
          v149 = v9;
          v150 = objc_alloc(MEMORY[0x1E696ABC0]);
          v151 = *MEMORY[0x1E698F240];
          v245 = *MEMORY[0x1E696A578];
          v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"preItnNbest"];
          v246 = v137;
          v152 = MEMORY[0x1E695DF20];
          v153 = &v246;
          v154 = &v245;
LABEL_137:
          v155 = [v152 dictionaryWithObjects:v153 forKeys:v154 count:1];
          v156 = v150;
          v9 = v149;
          v157 = v151;
          v10 = v208;
          *v148 = [v156 initWithDomain:v157 code:2 userInfo:v155];

          error = 0;
          v123 = v188;
          goto LABEL_138;
        }

LABEL_149:
        error = 0;
        v123 = v188;
LABEL_150:
        v23 = v214;
        goto LABEL_151;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v148 = errorCopy5;
        if (errorCopy5)
        {
          v135 = v16;
          v149 = v9;
          v150 = objc_alloc(MEMORY[0x1E696ABC0]);
          v151 = *MEMORY[0x1E698F240];
          v243 = *MEMORY[0x1E696A578];
          v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"preItnNbest"];
          v244 = v137;
          v152 = MEMORY[0x1E695DF20];
          v153 = &v244;
          v154 = &v243;
          goto LABEL_137;
        }

        goto LABEL_149;
      }

      v135 = v16;
      v136 = v9;
      v137 = v134;
      v138 = [BMDictationUserEditRecognitionResult alloc];
      v221 = 0;
      v139 = [(BMDictationUserEditRecognitionResult *)v138 initWithJSONDictionary:v137 error:&v221];
      v140 = v221;
      if (v140)
      {
        v158 = v140;
        if (errorCopy5)
        {
          v159 = v140;
          *errorCopy5 = v158;
        }

        error = 0;
        v123 = v188;
        v9 = v136;
        v23 = v214;
        v10 = v208;
        goto LABEL_142;
      }

      [v112 addObject:v139];

      ++v133;
      v10 = v208;
      v16 = v135;
      v17 = v186;
    }

    while (v131 != v133);
    v131 = [v188 countByEnumeratingWithState:&v222 objects:v247 count:16];
  }

  while (v131);
LABEL_126:
  v135 = v16;
  v198 = v9;

  v123 = [v206 objectForKeyedSubscript:@"postItnNbest"];
  null4 = [MEMORY[0x1E695DFB0] null];
  v142 = [v123 isEqual:null4];

  if (v142)
  {

    v123 = 0;
    v9 = v198;
    v143 = errorCopy5;
    goto LABEL_153;
  }

  v143 = errorCopy5;
  if (v123)
  {
    objc_opt_class();
    v9 = v198;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (errorCopy5)
      {
        v160 = objc_alloc(MEMORY[0x1E696ABC0]);
        v161 = *MEMORY[0x1E698F240];
        v241 = *MEMORY[0x1E696A578];
        v137 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"postItnNbest"];
        v242 = v137;
        v162 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v242 forKeys:&v241 count:1];
        v163 = v160;
        v9 = v198;
        v164 = v161;
        v10 = v208;
        *errorCopy5 = [v163 initWithDomain:v164 code:2 userInfo:v162];

        error = 0;
LABEL_138:
        v23 = v214;
LABEL_142:
        v87 = v203;
        goto LABEL_175;
      }

      error = 0;
      v23 = v214;
      v16 = v135;
      v17 = v186;
LABEL_151:
      v87 = v203;
      goto LABEL_177;
    }
  }

  else
  {
    v9 = v198;
  }

LABEL_153:
  v137 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v123, "count")}];
  v217 = 0u;
  v218 = 0u;
  v219 = 0u;
  v220 = 0u;
  v123 = v123;
  v185 = [v123 countByEnumeratingWithState:&v217 objects:v240 count:16];
  if (!v185)
  {
    goto LABEL_163;
  }

  v211 = *v218;
  while (2)
  {
    v168 = 0;
    while (2)
    {
      if (*v218 != v211)
      {
        objc_enumerationMutation(v123);
      }

      v169 = *(*(&v217 + 1) + 8 * v168);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v214;
        v87 = v203;
        if (v143)
        {
          v212 = objc_alloc(MEMORY[0x1E696ABC0]);
          v174 = *MEMORY[0x1E698F240];
          v238 = *MEMORY[0x1E696A578];
          v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"postItnNbest"];
          v239 = v170;
          v175 = MEMORY[0x1E695DF20];
          v176 = &v239;
          v177 = &v238;
LABEL_169:
          v178 = [v175 dictionaryWithObjects:v176 forKeys:v177 count:1];
          *v143 = [v212 initWithDomain:v174 code:2 userInfo:v178];
LABEL_173:

          v9 = v198;
        }

LABEL_174:

        error = 0;
        v10 = v208;
        goto LABEL_175;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v23 = v214;
        v87 = v203;
        if (v143)
        {
          v212 = objc_alloc(MEMORY[0x1E696ABC0]);
          v174 = *MEMORY[0x1E698F240];
          v236 = *MEMORY[0x1E696A578];
          v170 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"postItnNbest"];
          v237 = v170;
          v175 = MEMORY[0x1E695DF20];
          v176 = &v237;
          v177 = &v236;
          goto LABEL_169;
        }

        goto LABEL_174;
      }

      v170 = v169;
      v171 = [BMDictationUserEditRecognitionResult alloc];
      v216 = 0;
      v172 = [(BMDictationUserEditRecognitionResult *)v171 initWithJSONDictionary:v170 error:&v216];
      v173 = v216;
      if (v173)
      {
        v178 = v173;
        if (v143)
        {
          v179 = v173;
          *v143 = v178;
        }

        v23 = v214;
        v87 = v203;
        goto LABEL_173;
      }

      [v137 addObject:v172];

      ++v168;
      v9 = v198;
      if (v185 != v168)
      {
        continue;
      }

      break;
    }

    v10 = v208;
    v185 = [v123 countByEnumeratingWithState:&v217 objects:v240 count:16];
    if (v185)
    {
      continue;
    }

    break;
  }

LABEL_163:

  v23 = v214;
  v87 = v203;
  error = [(BMDictationUserEdit *)errorCopy6 initWithAsrID:v193 interactionID:v214 metadata:v207 startIndex:v200 endIndex:v201 correctedText:v203 recognizedText:v186 recognizedTokens:v189 alternativeSelections:v192 preItnNbest:v112 postItnNbest:v137];
  errorCopy6 = error;
LABEL_175:

  v16 = v135;
LABEL_176:
  v17 = v186;
LABEL_177:

  v7 = v202;
  v71 = v200;
  v13 = v213;
LABEL_178:

LABEL_179:
LABEL_180:

LABEL_181:
LABEL_182:

LABEL_183:
  v8 = v193;
  dictionaryCopy = v206;
LABEL_184:

LABEL_185:
LABEL_186:

  v21 = v10;
  v24 = v207;
  self = errorCopy6;
LABEL_187:

  v10 = v21;
LABEL_188:

LABEL_189:
LABEL_190:

  v180 = *MEMORY[0x1E69E9840];
  return error;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMDictationUserEdit *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v53 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_asrID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_interactionID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_metadata)
  {
    v48 = 0;
    PBDataWriterPlaceMark();
    [(BMDictationUserEditRequestMetadata *)self->_metadata writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasStartIndex)
  {
    startIndex = self->_startIndex;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasEndIndex)
  {
    endIndex = self->_endIndex;
    PBDataWriterWriteUint32Field();
  }

  if (self->_correctedText)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_recognizedText)
  {
    PBDataWriterWriteStringField();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v7 = self->_recognizedTokens;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    do
    {
      v11 = 0;
      do
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v44 + 1) + 8 * v11);
        PBDataWriterWriteStringField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v9);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v13 = self->_alternativeSelections;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v41;
    do
    {
      v17 = 0;
      do
      {
        if (*v41 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v40 + 1) + 8 * v17);
        v48 = 0;
        PBDataWriterPlaceMark();
        [v18 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v15);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = self->_preItnNbest;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      v23 = 0;
      do
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v36 + 1) + 8 * v23);
        v48 = 0;
        PBDataWriterPlaceMark();
        [v24 writeTo:toCopy];
        PBDataWriterRecallMark();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v21);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v25 = self->_postItnNbest;
  v26 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v49 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v33;
    do
    {
      v29 = 0;
      do
      {
        if (*v33 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v32 + 1) + 8 * v29);
        v48 = 0;
        PBDataWriterPlaceMark();
        [v30 writeTo:{toCopy, v32}];
        PBDataWriterRecallMark();
        ++v29;
      }

      while (v27 != v29);
      v27 = [(NSArray *)v25 countByEnumeratingWithState:&v32 objects:v49 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v56.receiver = self;
  v56.super_class = BMDictationUserEdit;
  v5 = [(BMEventBase *)&v56 init];
  if (!v5)
  {
LABEL_84:
    v54 = v5;
    goto LABEL_85;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v57) = 0;
      v14 = [fromCopy position] + 1;
      if (v14 >= [fromCopy position] && (v15 = objc_msgSend(fromCopy, "position") + 1, v15 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v13 |= (v57 & 0x7F) << v11;
      if ((v57 & 0x80) == 0)
      {
        break;
      }

      v11 += 7;
      v17 = v12++ >= 9;
      if (v17)
      {
        v18 = 0;
        goto LABEL_17;
      }
    }

    v18 = [fromCopy hasError] ? 0 : v13;
LABEL_17:
    if (([fromCopy hasError] & 1) != 0 || (v18 & 7) == 4)
    {
      break;
    }

    v19 = v18 >> 3;
    if ((v18 >> 3) <= 5)
    {
      if (v19 <= 2)
      {
        if (v19 == 1)
        {
          v31 = PBReaderReadString();
          v32 = 32;
        }

        else
        {
          if (v19 != 2)
          {
            goto LABEL_72;
          }

          v31 = PBReaderReadString();
          v32 = 40;
        }

LABEL_66:
        v43 = *(&v5->super.super.isa + v32);
        *(&v5->super.super.isa + v32) = v31;
      }

      else
      {
        switch(v19)
        {
          case 3:
            v57 = 0;
            v58 = 0;
            if (!PBReaderPlaceMark() || (v41 = [[BMDictationUserEditRequestMetadata alloc] initByReadFrom:fromCopy]) == 0)
            {
LABEL_86:

              goto LABEL_83;
            }

            metadata = v5->_metadata;
            v5->_metadata = v41;

            PBReaderRecallMark();
            break;
          case 4:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            v5->_hasStartIndex = 1;
            while (1)
            {
              LOBYTE(v57) = 0;
              v36 = [fromCopy position] + 1;
              if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
              {
                data2 = [fromCopy data];
                [data2 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v35 |= (v57 & 0x7F) << v33;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v17 = v34++ >= 9;
              if (v17)
              {
                v39 = 0;
                goto LABEL_77;
              }
            }

            if ([fromCopy hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_77:
            v5->_startIndex = v39;
            break;
          case 5:
            v22 = 0;
            v23 = 0;
            v24 = 0;
            v5->_hasEndIndex = 1;
            while (1)
            {
              LOBYTE(v57) = 0;
              v25 = [fromCopy position] + 1;
              if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
              {
                data3 = [fromCopy data];
                [data3 getBytes:&v57 range:{objc_msgSend(fromCopy, "position"), 1}];

                [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
              }

              else
              {
                [fromCopy _setError];
              }

              v24 |= (v57 & 0x7F) << v22;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v22 += 7;
              v17 = v23++ >= 9;
              if (v17)
              {
                v28 = 0;
                goto LABEL_81;
              }
            }

            if ([fromCopy hasError])
            {
              v28 = 0;
            }

            else
            {
              v28 = v24;
            }

LABEL_81:
            v5->_endIndex = v28;
            break;
          default:
            goto LABEL_72;
        }
      }
    }

    else if (v19 > 8)
    {
      switch(v19)
      {
        case 9:
          v57 = 0;
          v58 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_86;
          }

          v44 = [[BMDictationUserEditConfusionPair alloc] initByReadFrom:fromCopy];
          if (!v44)
          {
            goto LABEL_86;
          }

          v21 = v44;
          v30 = v7;
          goto LABEL_70;
        case 0xA:
          v57 = 0;
          v58 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_86;
          }

          v40 = [[BMDictationUserEditRecognitionResult alloc] initByReadFrom:fromCopy];
          if (!v40)
          {
            goto LABEL_86;
          }

          v21 = v40;
          v30 = v8;
          goto LABEL_70;
        case 0xB:
          v57 = 0;
          v58 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_86;
          }

          v29 = [[BMDictationUserEditRecognitionResult alloc] initByReadFrom:fromCopy];
          if (!v29)
          {
            goto LABEL_86;
          }

          v21 = v29;
          v30 = v9;
LABEL_70:
          [v30 addObject:v21];
          PBReaderRecallMark();
          goto LABEL_71;
      }

LABEL_72:
      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      if (v19 == 6)
      {
        v31 = PBReaderReadString();
        v32 = 56;
        goto LABEL_66;
      }

      if (v19 == 7)
      {
        v31 = PBReaderReadString();
        v32 = 64;
        goto LABEL_66;
      }

      if (v19 != 8)
      {
        goto LABEL_72;
      }

      v20 = PBReaderReadString();
      if (!v20)
      {
        goto LABEL_86;
      }

      v21 = v20;
      [v6 addObject:v20];
LABEL_71:
    }
  }

  v45 = [v6 copy];
  recognizedTokens = v5->_recognizedTokens;
  v5->_recognizedTokens = v45;

  v47 = [v7 copy];
  alternativeSelections = v5->_alternativeSelections;
  v5->_alternativeSelections = v47;

  v49 = [v8 copy];
  preItnNbest = v5->_preItnNbest;
  v5->_preItnNbest = v49;

  v51 = [v9 copy];
  postItnNbest = v5->_postItnNbest;
  v5->_postItnNbest = v51;

  hasError = [fromCopy hasError];
  if ((hasError & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_83:
  v54 = 0;
LABEL_85:

  return v54;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  asrID = [(BMDictationUserEdit *)self asrID];
  interactionID = [(BMDictationUserEdit *)self interactionID];
  metadata = [(BMDictationUserEdit *)self metadata];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEdit startIndex](self, "startIndex")}];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMDictationUserEdit endIndex](self, "endIndex")}];
  correctedText = [(BMDictationUserEdit *)self correctedText];
  recognizedText = [(BMDictationUserEdit *)self recognizedText];
  recognizedTokens = [(BMDictationUserEdit *)self recognizedTokens];
  alternativeSelections = [(BMDictationUserEdit *)self alternativeSelections];
  preItnNbest = [(BMDictationUserEdit *)self preItnNbest];
  postItnNbest = [(BMDictationUserEdit *)self postItnNbest];
  v15 = [v14 initWithFormat:@"BMDictationUserEdit with asrID: %@, interactionID: %@, metadata: %@, startIndex: %@, endIndex: %@, correctedText: %@, recognizedText: %@, recognizedTokens: %@, alternativeSelections: %@, preItnNbest: %@, postItnNbest: %@", asrID, interactionID, metadata, v4, v5, correctedText, recognizedText, recognizedTokens, alternativeSelections, preItnNbest, postItnNbest];

  return v15;
}

- (BMDictationUserEdit)initWithAsrID:(id)d interactionID:(id)iD metadata:(id)metadata startIndex:(id)index endIndex:(id)endIndex correctedText:(id)text recognizedText:(id)recognizedText recognizedTokens:(id)self0 alternativeSelections:(id)self1 preItnNbest:(id)self2 postItnNbest:(id)self3
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  metadataCopy = metadata;
  indexCopy = index;
  endIndexCopy = endIndex;
  textCopy = text;
  recognizedTextCopy = recognizedText;
  tokensCopy = tokens;
  selectionsCopy = selections;
  nbestCopy = nbest;
  itnNbestCopy = itnNbest;
  v36.receiver = self;
  v36.super_class = BMDictationUserEdit;
  v24 = [(BMEventBase *)&v36 init];
  if (v24)
  {
    v24->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v24->_asrID, d);
    objc_storeStrong(&v24->_interactionID, iDCopy);
    objc_storeStrong(&v24->_metadata, metadata);
    if (indexCopy)
    {
      v24->_hasStartIndex = 1;
      unsignedIntValue = [indexCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue = 0;
      v24->_hasStartIndex = 0;
    }

    v24->_startIndex = unsignedIntValue;
    if (endIndexCopy)
    {
      v24->_hasEndIndex = 1;
      unsignedIntValue2 = [endIndexCopy unsignedIntValue];
    }

    else
    {
      unsignedIntValue2 = 0;
      v24->_hasEndIndex = 0;
    }

    v24->_endIndex = unsignedIntValue2;
    objc_storeStrong(&v24->_correctedText, text);
    objc_storeStrong(&v24->_recognizedText, recognizedText);
    objc_storeStrong(&v24->_recognizedTokens, tokens);
    objc_storeStrong(&v24->_alternativeSelections, selections);
    objc_storeStrong(&v24->_preItnNbest, nbest);
    objc_storeStrong(&v24->_postItnNbest, itnNbest);
  }

  return v24;
}

+ (id)protoFields
{
  v16[11] = *MEMORY[0x1E69E9840];
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"asrID" number:1 type:13 subMessageClass:0];
  v16[0] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"interactionID" number:2 type:13 subMessageClass:0];
  v16[1] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadata" number:3 type:14 subMessageClass:objc_opt_class()];
  v16[2] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startIndex" number:4 type:4 subMessageClass:0];
  v16[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endIndex" number:5 type:4 subMessageClass:0];
  v16[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"correctedText" number:6 type:13 subMessageClass:0];
  v16[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognizedText" number:7 type:13 subMessageClass:0];
  v16[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"recognizedTokens" number:8 type:13 subMessageClass:0];
  v16[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"alternativeSelections" number:9 type:14 subMessageClass:objc_opt_class()];
  v16[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"preItnNbest" number:10 type:14 subMessageClass:objc_opt_class()];
  v16[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"postItnNbest" number:11 type:14 subMessageClass:objc_opt_class()];
  v16[10] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:11];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

id __30__BMDictationUserEdit_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _postItnNbestJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __30__BMDictationUserEdit_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _preItnNbestJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __30__BMDictationUserEdit_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _alternativeSelectionsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __30__BMDictationUserEdit_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _recognizedTokensJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __30__BMDictationUserEdit_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 metadata];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
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

    v8 = [[BMDictationUserEdit alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end