@interface BMPersonalizedSensingMomentsContextMomentsContext
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMPersonalizedSensingMomentsContextMomentsContext)initWithContextIdentifier:(id)a3 contextStrings:(id)a4 contextCreationTimestamp:(id)a5 associatedPatternType:(id)a6 metadataContentBitmap:(id)a7 actionType:(id)a8 associatedLocations:(id)a9 associatedContacts:(id)a10 associatedTime:(id)a11 associatedMusic:(id)a12;
- (BMPersonalizedSensingMomentsContextMomentsContext)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (NSDate)contextCreationTimestamp;
- (NSString)description;
- (NSUUID)contextIdentifier;
- (id)_associatedContactsJSONArray;
- (id)_associatedLocationsJSONArray;
- (id)_associatedMusicJSONArray;
- (id)_associatedTimeJSONArray;
- (id)_contextStringsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMPersonalizedSensingMomentsContextMomentsContext

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextIdentifier];
    v7 = [v5 contextIdentifier];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextIdentifier];
      v10 = [v5 contextIdentifier];
      v11 = [v9 isEqual:v10];

      if (!v11)
      {
        goto LABEL_40;
      }
    }

    v13 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextStrings];
    v14 = [v5 contextStrings];
    v15 = v14;
    if (v13 == v14)
    {
    }

    else
    {
      v16 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextStrings];
      v17 = [v5 contextStrings];
      v18 = [v16 isEqual:v17];

      if (!v18)
      {
        goto LABEL_40;
      }
    }

    v19 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextCreationTimestamp];
    v20 = [v5 contextCreationTimestamp];
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      v22 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextCreationTimestamp];
      v23 = [v5 contextCreationTimestamp];
      v24 = [v22 isEqual:v23];

      if (!v24)
      {
        goto LABEL_40;
      }
    }

    if (-[BMPersonalizedSensingMomentsContextMomentsContext hasAssociatedPatternType](self, "hasAssociatedPatternType") || [v5 hasAssociatedPatternType])
    {
      if (![(BMPersonalizedSensingMomentsContextMomentsContext *)self hasAssociatedPatternType])
      {
        goto LABEL_40;
      }

      if (![v5 hasAssociatedPatternType])
      {
        goto LABEL_40;
      }

      v25 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedPatternType];
      if (v25 != [v5 associatedPatternType])
      {
        goto LABEL_40;
      }
    }

    if (-[BMPersonalizedSensingMomentsContextMomentsContext hasMetadataContentBitmap](self, "hasMetadataContentBitmap") || [v5 hasMetadataContentBitmap])
    {
      if (![(BMPersonalizedSensingMomentsContextMomentsContext *)self hasMetadataContentBitmap])
      {
        goto LABEL_40;
      }

      if (![v5 hasMetadataContentBitmap])
      {
        goto LABEL_40;
      }

      v26 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self metadataContentBitmap];
      if (v26 != [v5 metadataContentBitmap])
      {
        goto LABEL_40;
      }
    }

    if (-[BMPersonalizedSensingMomentsContextMomentsContext hasActionType](self, "hasActionType") || [v5 hasActionType])
    {
      if (![(BMPersonalizedSensingMomentsContextMomentsContext *)self hasActionType])
      {
        goto LABEL_40;
      }

      if (![v5 hasActionType])
      {
        goto LABEL_40;
      }

      v27 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self actionType];
      if (v27 != [v5 actionType])
      {
        goto LABEL_40;
      }
    }

    v28 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedLocations];
    v29 = [v5 associatedLocations];
    v30 = v29;
    if (v28 == v29)
    {
    }

    else
    {
      v31 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedLocations];
      v32 = [v5 associatedLocations];
      v33 = [v31 isEqual:v32];

      if (!v33)
      {
        goto LABEL_40;
      }
    }

    v34 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedContacts];
    v35 = [v5 associatedContacts];
    v36 = v35;
    if (v34 == v35)
    {
    }

    else
    {
      v37 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedContacts];
      v38 = [v5 associatedContacts];
      v39 = [v37 isEqual:v38];

      if (!v39)
      {
        goto LABEL_40;
      }
    }

    v40 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedTime];
    v41 = [v5 associatedTime];
    v42 = v41;
    if (v40 == v41)
    {
    }

    else
    {
      v43 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedTime];
      v44 = [v5 associatedTime];
      v45 = [v43 isEqual:v44];

      if (!v45)
      {
LABEL_40:
        v12 = 0;
LABEL_41:

        goto LABEL_42;
      }
    }

    v47 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedMusic];
    v48 = [v5 associatedMusic];
    if (v47 == v48)
    {
      v12 = 1;
    }

    else
    {
      v49 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedMusic];
      v50 = [v5 associatedMusic];
      v12 = [v49 isEqual:v50];
    }

    goto LABEL_41;
  }

  v12 = 0;
LABEL_42:

  return v12;
}

- (NSDate)contextCreationTimestamp
{
  if (self->_hasRaw_contextCreationTimestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_contextCreationTimestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSUUID)contextIdentifier
{
  raw_contextIdentifier = self->_raw_contextIdentifier;
  if (raw_contextIdentifier)
  {
    v4 = [MEMORY[0x1E698F280] convertValue:raw_contextIdentifier toType:3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v41[10] = *MEMORY[0x1E69E9840];
  v3 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextIdentifier];
  v4 = [v3 UUIDString];

  v5 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self _contextStringsJSONArray];
  v6 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextCreationTimestamp];
  if (v6)
  {
    v7 = MEMORY[0x1E696AD98];
    v8 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextCreationTimestamp];
    [v8 timeIntervalSince1970];
    v9 = [v7 numberWithDouble:?];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMPersonalizedSensingMomentsContextMomentsContext *)self hasAssociatedPatternType])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext associatedPatternType](self, "associatedPatternType")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMPersonalizedSensingMomentsContextMomentsContext *)self hasMetadataContentBitmap])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext metadataContentBitmap](self, "metadataContentBitmap")}];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMPersonalizedSensingMomentsContextMomentsContext *)self hasActionType])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext actionType](self, "actionType")}];
  }

  else
  {
    v12 = 0;
  }

  v39 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self _associatedLocationsJSONArray];
  v38 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self _associatedContactsJSONArray];
  v13 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self _associatedTimeJSONArray];
  v14 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self _associatedMusicJSONArray];
  v40[0] = @"contextIdentifier";
  v15 = v4;
  if (!v4)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = v15;
  v41[0] = v15;
  v40[1] = @"contextStrings";
  v16 = v5;
  if (!v5)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = v16;
  v41[1] = v16;
  v40[2] = @"contextCreationTimestamp";
  v17 = v9;
  if (!v9)
  {
    v17 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = v17;
  v41[2] = v17;
  v40[3] = @"associatedPatternType";
  v18 = v10;
  if (!v10)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v4;
  v30 = v18;
  v41[3] = v18;
  v40[4] = @"metadataContentBitmap";
  v19 = v11;
  if (!v11)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v5;
  v29 = v19;
  v41[4] = v19;
  v40[5] = @"actionType";
  v20 = v12;
  if (!v12)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v9;
  v41[5] = v20;
  v40[6] = @"associatedLocations";
  v21 = v39;
  if (!v39)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v22 = v10;
  v41[6] = v21;
  v40[7] = @"associatedContacts";
  v23 = v38;
  if (!v38)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v24 = v11;
  v41[7] = v23;
  v40[8] = @"associatedTime";
  v25 = v13;
  if (!v13)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v41[8] = v25;
  v40[9] = @"associatedMusic";
  v26 = v14;
  if (!v14)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v41[9] = v26;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:10];
  if (v14)
  {
    if (v13)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (v13)
    {
      goto LABEL_35;
    }
  }

LABEL_35:
  if (!v38)
  {
  }

  if (!v39)
  {
  }

  if (!v12)
  {
  }

  if (!v24)
  {
  }

  if (v22)
  {
    if (v35)
    {
      goto LABEL_45;
    }
  }

  else
  {

    if (v35)
    {
LABEL_45:
      if (v36)
      {
        goto LABEL_46;
      }

LABEL_54:

      if (v37)
      {
        goto LABEL_47;
      }

      goto LABEL_55;
    }
  }

  if (!v36)
  {
    goto LABEL_54;
  }

LABEL_46:
  if (v37)
  {
    goto LABEL_47;
  }

LABEL_55:

LABEL_47:
  v27 = *MEMORY[0x1E69E9840];

  return v34;
}

- (id)_associatedMusicJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedMusic];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_associatedTimeJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedTime];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_associatedContactsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedContacts];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_associatedLocationsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedLocations];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_contextStringsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextStrings];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMPersonalizedSensingMomentsContextMomentsContext)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v279[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"contextIdentifier"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v25 = objc_alloc(MEMORY[0x1E696ABC0]);
        v26 = *MEMORY[0x1E698F240];
        v276 = *MEMORY[0x1E696A578];
        v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contextIdentifier"];
        v277 = v7;
        v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v277 forKeys:&v276 count:1];
        v27 = [v25 initWithDomain:v26 code:2 userInfo:v8];
        v28 = 0;
        *a4 = v27;
        goto LABEL_204;
      }

      v28 = 0;
      goto LABEL_206;
    }

    v22 = v6;
    v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v22];
    if (!v23)
    {
      v50 = v22;
      if (a4)
      {
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = *MEMORY[0x1E698F240];
        v278 = *MEMORY[0x1E696A578];
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-initWithUUIDString: for %@ returned nil", @"contextIdentifier"];
        v279[0] = v8;
        v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v279 forKeys:&v278 count:1];
        *a4 = [v51 initWithDomain:v52 code:2 userInfo:v53];

        v28 = 0;
        v7 = v50;
        goto LABEL_204;
      }

      v28 = 0;
      v7 = v22;
      goto LABEL_205;
    }

    v24 = v23;

    v7 = v24;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v5 objectForKeyedSubscript:@"contextStrings"];
  v9 = [MEMORY[0x1E695DFB0] null];
  v10 = [v8 isEqual:v9];

  v204 = self;
  v205 = v6;
  if (v10)
  {
    v203 = v7;
    v11 = v5;

    v8 = 0;
  }

  else
  {
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (a4)
        {
          v39 = objc_alloc(MEMORY[0x1E696ABC0]);
          v40 = *MEMORY[0x1E698F240];
          v274 = *MEMORY[0x1E696A578];
          v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"contextStrings"];
          v275 = v207;
          v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
          v42 = v40;
          v38 = v41;
          v43 = [v39 initWithDomain:v42 code:2 userInfo:v41];
          v28 = 0;
          *a4 = v43;
          goto LABEL_203;
        }

        v28 = 0;
        goto LABEL_204;
      }
    }

    v203 = v7;
    v11 = v5;
  }

  v207 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v229 = 0u;
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  v8 = v8;
  v12 = [v8 countByEnumeratingWithState:&v229 objects:v273 count:16];
  if (!v12)
  {
LABEL_19:

    v5 = v11;
    v17 = [v11 objectForKeyedSubscript:@"contextCreationTimestamp"];
    if (!v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v21 = 0;
      goto LABEL_48;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = MEMORY[0x1E695DF00];
      v45 = v17;
      v46 = [v44 alloc];
      [v45 doubleValue];
      v48 = v47;

      v49 = [v46 initWithTimeIntervalSince1970:v48];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v54 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v21 = [v54 dateFromString:v17];

LABEL_48:
        v196 = v21;
        v55 = [v5 objectForKeyedSubscript:@"associatedPatternType"];
        v193 = v55;
        if (v55)
        {
          v56 = v55;
          objc_opt_class();
          self = v204;
          if (objc_opt_isKindOfClass())
          {
            v32 = 0;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!a4)
              {
                v32 = 0;
                v28 = 0;
                v7 = v203;
                v38 = v196;
LABEL_200:

                goto LABEL_201;
              }

              v77 = objc_alloc(MEMORY[0x1E696ABC0]);
              v78 = *MEMORY[0x1E698F240];
              v265 = *MEMORY[0x1E696A578];
              v191 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"associatedPatternType"];
              v266 = v191;
              v192 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v266 forKeys:&v265 count:1];
              v79 = [v77 initWithDomain:v78 code:2 userInfo:?];
              v32 = 0;
              v28 = 0;
              *a4 = v79;
              goto LABEL_118;
            }

            v32 = v56;
          }
        }

        else
        {
          v32 = 0;
          self = v204;
        }

        v57 = [v5 objectForKeyedSubscript:@"metadataContentBitmap"];
        v192 = v57;
        if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v191 = 0;
          goto LABEL_57;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v191 = v58;
LABEL_57:
          v59 = [v5 objectForKeyedSubscript:@"actionType"];
          v201 = v59;
          v195 = v5;
          if (!v59 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v60 = self;
            v188 = 0;
LABEL_60:
            v61 = [v195 objectForKeyedSubscript:@"associatedLocations"];
            v62 = [MEMORY[0x1E695DFB0] null];
            v63 = [v61 isEqual:v62];

            v7 = v203;
            if (v63)
            {

              v61 = 0;
              v38 = v196;
LABEL_64:
              v198 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v61, "count")}];
              v224 = 0u;
              v225 = 0u;
              v226 = 0u;
              v227 = 0u;
              v64 = v61;
              v65 = [v64 countByEnumeratingWithState:&v224 objects:v258 count:16];
              v5 = v195;
              obj = v64;
              if (!v65)
              {
                goto LABEL_74;
              }

              v66 = v65;
              v67 = *v225;
              while (1)
              {
                for (i = 0; i != v66; ++i)
                {
                  if (*v225 != v67)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v69 = *(*(&v224 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v88 = a4;
                    if (a4)
                    {
                      v89 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v90 = *MEMORY[0x1E698F240];
                      v256 = *MEMORY[0x1E696A578];
                      v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"associatedLocations"];
                      v257 = v70;
                      v91 = MEMORY[0x1E695DF20];
                      v92 = &v257;
                      v93 = &v256;
LABEL_90:
                      v94 = [v91 dictionaryWithObjects:v92 forKeys:v93 count:1];
                      v95 = v90;
                      v59 = v201;
                      v96 = [v89 initWithDomain:v95 code:2 userInfo:v94];
                      v28 = 0;
                      *v88 = v96;
                      v189 = obj;
                      v5 = v195;
LABEL_91:
                      v6 = v205;
                      v7 = v203;
                      goto LABEL_194;
                    }

LABEL_114:
                    v28 = 0;
                    v38 = v196;
                    v189 = obj;
                    v5 = v195;
                    goto LABEL_115;
                  }

                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v88 = a4;
                    if (a4)
                    {
                      v89 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v90 = *MEMORY[0x1E698F240];
                      v254 = *MEMORY[0x1E696A578];
                      v70 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"associatedLocations"];
                      v255 = v70;
                      v91 = MEMORY[0x1E695DF20];
                      v92 = &v255;
                      v93 = &v254;
                      goto LABEL_90;
                    }

                    goto LABEL_114;
                  }

                  v70 = v69;
                  v71 = [BMPersonalizedSensingMomentsContextMomentsContextLocationMetaData alloc];
                  v223 = 0;
                  v72 = [(BMPersonalizedSensingMomentsContextMomentsContextLocationMetaData *)v71 initWithJSONDictionary:v70 error:&v223];
                  v73 = v223;
                  if (v73)
                  {
                    v94 = v73;
                    v6 = v205;
                    v7 = v203;
                    if (a4)
                    {
                      v97 = v73;
                      *a4 = v94;
                    }

                    v28 = 0;
                    v189 = obj;
                    v5 = v195;
                    goto LABEL_193;
                  }

                  [v198 addObject:v72];

                  v59 = v201;
                }

                v64 = obj;
                v66 = [obj countByEnumeratingWithState:&v224 objects:v258 count:16];
                v5 = v195;
                v38 = v196;
                if (!v66)
                {
LABEL_74:

                  v74 = [v5 objectForKeyedSubscript:@"associatedContacts"];
                  v75 = [MEMORY[0x1E695DFB0] null];
                  v76 = [v74 isEqual:v75];

                  if (v76)
                  {

                    v74 = 0;
LABEL_97:
                    v187 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v74, "count")}];
                    v219 = 0u;
                    v220 = 0u;
                    v221 = 0u;
                    v222 = 0u;
                    v189 = v74;
                    v98 = [v189 countByEnumeratingWithState:&v219 objects:v251 count:16];
                    if (!v98)
                    {
                      goto LABEL_107;
                    }

                    v99 = v98;
                    v100 = *v220;
                    while (1)
                    {
                      v101 = v5;
                      for (j = 0; j != v99; ++j)
                      {
                        if (*v220 != v100)
                        {
                          objc_enumerationMutation(v189);
                        }

                        v103 = *(*(&v219 + 1) + 8 * j);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v118 = a4;
                          if (a4)
                          {
                            v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v120 = *MEMORY[0x1E698F240];
                            v249 = *MEMORY[0x1E696A578];
                            v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"associatedContacts"];
                            v250 = v104;
                            v121 = MEMORY[0x1E695DF20];
                            v122 = &v250;
                            v123 = &v249;
LABEL_128:
                            v124 = [v121 dictionaryWithObjects:v122 forKeys:v123 count:1];
                            v125 = [v119 initWithDomain:v120 code:2 userInfo:v124];
                            v28 = 0;
                            *v118 = v125;
                            v94 = v189;
                            v5 = v101;
                            goto LABEL_129;
                          }

LABEL_150:
                          v28 = 0;
                          v94 = v189;
                          v5 = v101;
                          v6 = v205;
                          goto LABEL_151;
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v118 = a4;
                          if (a4)
                          {
                            v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v120 = *MEMORY[0x1E698F240];
                            v247 = *MEMORY[0x1E696A578];
                            v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"associatedContacts"];
                            v248 = v104;
                            v121 = MEMORY[0x1E695DF20];
                            v122 = &v248;
                            v123 = &v247;
                            goto LABEL_128;
                          }

                          goto LABEL_150;
                        }

                        v104 = v103;
                        v105 = [BMPersonalizedSensingMomentsContextMomentsContextContactMetaData alloc];
                        v218 = 0;
                        v106 = [(BMPersonalizedSensingMomentsContextMomentsContextContactMetaData *)v105 initWithJSONDictionary:v104 error:&v218];
                        v107 = v218;
                        if (v107)
                        {
                          v124 = v107;
                          v6 = v205;
                          if (a4)
                          {
                            v126 = v107;
                            *a4 = v124;
                          }

                          v28 = 0;
                          v94 = v189;
                          v5 = v101;
                          goto LABEL_133;
                        }

                        [v187 addObject:v106];

                        v59 = v201;
                      }

                      v99 = [v189 countByEnumeratingWithState:&v219 objects:v251 count:16];
                      v5 = v101;
                      if (!v99)
                      {
LABEL_107:

                        v94 = [v5 objectForKeyedSubscript:@"associatedTime"];
                        v108 = [MEMORY[0x1E695DFB0] null];
                        v109 = [v94 isEqual:v108];

                        if (v109)
                        {

                          v94 = 0;
LABEL_136:
                          v104 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v94, "count")}];
                          v214 = 0u;
                          v215 = 0u;
                          v216 = 0u;
                          v217 = 0u;
                          v94 = v94;
                          v127 = [v94 countByEnumeratingWithState:&v214 objects:v244 count:16];
                          if (!v127)
                          {
                            goto LABEL_146;
                          }

                          v128 = v127;
                          v181 = *v215;
                          while (1)
                          {
                            for (k = 0; k != v128; ++k)
                            {
                              if (*v215 != v181)
                              {
                                objc_enumerationMutation(v94);
                              }

                              v130 = *(*(&v214 + 1) + 8 * k);
                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v140 = a4;
                                if (a4)
                                {
                                  v141 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v142 = *MEMORY[0x1E698F240];
                                  v242 = *MEMORY[0x1E696A578];
                                  v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"associatedTime"];
                                  v243 = v143;
                                  v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
                                  v145 = v141;
                                  v146 = v142;
LABEL_158:
                                  *v140 = [v145 initWithDomain:v146 code:2 userInfo:v144];

                                  v148 = v143;
                                  v28 = 0;
                                  v124 = v94;
                                  v5 = v195;
                                  v6 = v205;
LABEL_159:
                                  v70 = v187;
                                  goto LABEL_191;
                                }

LABEL_178:
                                v28 = 0;
                                v124 = v94;
                                v5 = v195;
LABEL_129:
                                v6 = v205;
                                goto LABEL_133;
                              }

                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                v140 = a4;
                                if (a4)
                                {
                                  v147 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v183 = *MEMORY[0x1E698F240];
                                  v240 = *MEMORY[0x1E696A578];
                                  v143 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"associatedTime"];
                                  v241 = v143;
                                  v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
                                  v145 = v147;
                                  v146 = v183;
                                  goto LABEL_158;
                                }

                                goto LABEL_178;
                              }

                              v131 = v130;
                              v132 = [BMPersonalizedSensingMomentsContextMomentsContextTimeMetaData alloc];
                              v213 = 0;
                              v133 = [(BMPersonalizedSensingMomentsContextMomentsContextTimeMetaData *)v132 initWithJSONDictionary:v131 error:&v213];
                              v134 = v213;
                              if (v134)
                              {
                                v149 = v134;
                                v184 = v131;
                                v6 = v205;
                                if (a4)
                                {
                                  v150 = v134;
                                  *a4 = v149;
                                }

                                v28 = 0;
                                v124 = v94;
                                v5 = v195;
                                v70 = v187;
LABEL_190:
                                v148 = v184;
                                goto LABEL_191;
                              }

                              [v104 addObject:v133];
                            }

                            v5 = v195;
                            v128 = [v94 countByEnumeratingWithState:&v214 objects:v244 count:16];
                            if (!v128)
                            {
LABEL_146:

                              v124 = [v5 objectForKeyedSubscript:@"associatedMusic"];
                              v135 = [MEMORY[0x1E695DFB0] null];
                              v182 = [v124 isEqual:v135];

                              if (v182)
                              {

                                v124 = 0;
LABEL_165:
                                v151 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v124, "count")}];
                                v209 = 0u;
                                v210 = 0u;
                                v211 = 0u;
                                v212 = 0u;
                                v124 = v124;
                                v152 = [v124 countByEnumeratingWithState:&v209 objects:v237 count:16];
                                if (!v152)
                                {
                                  goto LABEL_175;
                                }

                                v153 = v152;
                                v177 = *v210;
                                v184 = v151;
LABEL_167:
                                v154 = 0;
                                while (1)
                                {
                                  if (*v210 != v177)
                                  {
                                    objc_enumerationMutation(v124);
                                  }

                                  v155 = *(*(&v209 + 1) + 8 * v154);
                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    break;
                                  }

                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0)
                                  {
                                    v5 = v195;
                                    v6 = v205;
                                    v70 = v187;
                                    if (!a4)
                                    {
                                      goto LABEL_189;
                                    }

                                    v178 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v175 = *MEMORY[0x1E698F240];
                                    v233 = *MEMORY[0x1E696A578];
                                    v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"associatedMusic"];
                                    v234 = v163;
                                    v164 = MEMORY[0x1E695DF20];
                                    v165 = &v234;
                                    v166 = &v233;
                                    goto LABEL_184;
                                  }

                                  v156 = v155;
                                  v157 = [BMPersonalizedSensingMomentsContextMomentsContextMusicMetaData alloc];
                                  v208 = 0;
                                  v158 = [(BMPersonalizedSensingMomentsContextMomentsContextMusicMetaData *)v157 initWithJSONDictionary:v156 error:&v208];
                                  v159 = v208;
                                  if (v159)
                                  {
                                    v179 = v156;
                                    if (a4)
                                    {
                                      v159 = v159;
                                      *a4 = v159;
                                    }

                                    v176 = v159;

                                    v5 = v195;
                                    v6 = v205;
                                    v70 = v187;
                                    v163 = v179;
LABEL_188:

LABEL_189:
                                    v28 = 0;
                                    goto LABEL_190;
                                  }

                                  [v184 addObject:v158];

                                  if (v153 == ++v154)
                                  {
                                    v5 = v195;
                                    v151 = v184;
                                    v153 = [v124 countByEnumeratingWithState:&v209 objects:v237 count:16];
                                    if (v153)
                                    {
                                      goto LABEL_167;
                                    }

LABEL_175:

                                    v174 = v151;
                                    v160 = v151;
                                    v70 = v187;
                                    v28 = [(BMPersonalizedSensingMomentsContextMomentsContext *)v204 initWithContextIdentifier:v203 contextStrings:v207 contextCreationTimestamp:v196 associatedPatternType:v32 metadataContentBitmap:v191 actionType:v188 associatedLocations:v198 associatedContacts:v187 associatedTime:v104 associatedMusic:v174];
                                    v204 = v28;
                                    v148 = v160;
                                    v6 = v205;
LABEL_191:

LABEL_192:
                                    v7 = v203;
LABEL_193:
                                    v59 = v201;
LABEL_194:

                                    v38 = v196;
                                    self = v204;
LABEL_195:

LABEL_196:
                                    goto LABEL_197;
                                  }
                                }

                                v5 = v195;
                                v6 = v205;
                                v70 = v187;
                                if (!a4)
                                {
                                  goto LABEL_189;
                                }

                                v178 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v175 = *MEMORY[0x1E698F240];
                                v235 = *MEMORY[0x1E696A578];
                                v163 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"associatedMusic"];
                                v236 = v163;
                                v164 = MEMORY[0x1E695DF20];
                                v165 = &v236;
                                v166 = &v235;
LABEL_184:
                                v167 = [v164 dictionaryWithObjects:v165 forKeys:v166 count:1];
                                v168 = v175;
                                v176 = v167;
                                *a4 = [v178 initWithDomain:v168 code:2 userInfo:?];
                                goto LABEL_188;
                              }

                              if (!v124)
                              {
                                goto LABEL_165;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                goto LABEL_165;
                              }

                              v6 = v205;
                              if (a4)
                              {
                                v186 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v180 = *MEMORY[0x1E698F240];
                                v238 = *MEMORY[0x1E696A578];
                                v171 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"associatedMusic"];
                                v239 = v171;
                                v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
                                *a4 = [v186 initWithDomain:v180 code:2 userInfo:v172];

                                v148 = v171;
                                v28 = 0;
                                goto LABEL_159;
                              }

                              v28 = 0;
LABEL_133:
                              v70 = v187;
                              goto LABEL_192;
                            }
                          }
                        }

                        v6 = v205;
                        if (!v94)
                        {
                          goto LABEL_136;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          goto LABEL_136;
                        }

                        if (a4)
                        {
                          v185 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v161 = *MEMORY[0x1E698F240];
                          v245 = *MEMORY[0x1E696A578];
                          v104 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"associatedTime"];
                          v246 = v104;
                          v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v246 forKeys:&v245 count:1];
                          v162 = [v185 initWithDomain:v161 code:2 userInfo:v124];
                          v28 = 0;
                          *a4 = v162;
                          goto LABEL_133;
                        }

                        v28 = 0;
LABEL_151:
                        v7 = v203;
                        v70 = v187;
                        goto LABEL_194;
                      }
                    }
                  }

                  if (!v74)
                  {
                    goto LABEL_97;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    goto LABEL_97;
                  }

                  v189 = v74;
                  if (a4)
                  {
                    v136 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v137 = *MEMORY[0x1E698F240];
                    v252 = *MEMORY[0x1E696A578];
                    v138 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"associatedContacts"];
                    v253 = v138;
                    v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v253 forKeys:&v252 count:1];
                    v139 = [v136 initWithDomain:v137 code:2 userInfo:v94];
                    v28 = 0;
                    *a4 = v139;
                    v70 = v138;
                    goto LABEL_91;
                  }

                  v28 = 0;
LABEL_115:
                  self = v204;
                  v6 = v205;
                  v7 = v203;
                  goto LABEL_195;
                }
              }
            }

            v38 = v196;
            if (!v61)
            {
              goto LABEL_64;
            }

            objc_opt_class();
            obj = v61;
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_64;
            }

            self = v60;
            if (a4)
            {
              v110 = objc_alloc(MEMORY[0x1E696ABC0]);
              v111 = *MEMORY[0x1E698F240];
              v259 = *MEMORY[0x1E696A578];
              v198 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"associatedLocations"];
              v260 = v198;
              v112 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v260 forKeys:&v259 count:1];
              v113 = v111;
              v38 = v196;
              v190 = v112;
              v114 = [v110 initWithDomain:v113 code:2 userInfo:?];
              v28 = 0;
              *a4 = v114;
              v5 = v195;

              goto LABEL_196;
            }

            v28 = 0;
            v5 = v195;
LABEL_197:

            goto LABEL_198;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v60 = self;
            v188 = v59;
            goto LABEL_60;
          }

          if (a4)
          {
            v199 = objc_alloc(MEMORY[0x1E696ABC0]);
            v82 = *MEMORY[0x1E698F240];
            v261 = *MEMORY[0x1E696A578];
            v83 = objc_alloc(MEMORY[0x1E696AEC0]);
            v173 = objc_opt_class();
            v84 = v83;
            v59 = v201;
            obj = [v84 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v173, @"actionType"];
            v262 = obj;
            v85 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v262 forKeys:&v261 count:1];
            v86 = v199;
            v200 = v85;
            v87 = [v86 initWithDomain:v82 code:2 userInfo:?];
            v188 = 0;
            v28 = 0;
            *a4 = v87;
            v7 = v203;
            v38 = v196;

            goto LABEL_197;
          }

          v188 = 0;
          v28 = 0;
LABEL_120:
          v7 = v203;
          v38 = v196;
LABEL_198:

          goto LABEL_199;
        }

        if (a4)
        {
          v202 = objc_alloc(MEMORY[0x1E696ABC0]);
          v80 = *MEMORY[0x1E698F240];
          v263 = *MEMORY[0x1E696A578];
          v188 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"metadataContentBitmap"];
          v264 = v188;
          v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v264 forKeys:&v263 count:1];
          v81 = [v202 initWithDomain:v80 code:2 userInfo:v59];
          v191 = 0;
          v28 = 0;
          *a4 = v81;
          goto LABEL_120;
        }

        v191 = 0;
        v28 = 0;
LABEL_118:
        v7 = v203;
        v38 = v196;
LABEL_199:

        goto LABEL_200;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!a4)
        {
          v38 = 0;
          v28 = 0;
          self = v204;
          v7 = v203;
LABEL_202:

          goto LABEL_203;
        }

        v115 = objc_alloc(MEMORY[0x1E696ABC0]);
        v116 = *MEMORY[0x1E698F240];
        v267 = *MEMORY[0x1E696A578];
        v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"contextCreationTimestamp"];
        v268 = v32;
        v194 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v268 forKeys:&v267 count:1];
        v117 = [v115 initWithDomain:v116 code:2 userInfo:?];
        v38 = 0;
        v28 = 0;
        *a4 = v117;
        self = v204;
        v7 = v203;

LABEL_201:
        goto LABEL_202;
      }

      v49 = v17;
    }

    v21 = v49;
    goto LABEL_48;
  }

  v13 = v12;
  v14 = *v230;
LABEL_11:
  v15 = 0;
  while (1)
  {
    if (*v230 != v14)
    {
      objc_enumerationMutation(v8);
    }

    v16 = *(*(&v229 + 1) + 8 * v15);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = a4;
      if (!a4)
      {
        goto LABEL_38;
      }

      v35 = objc_alloc(MEMORY[0x1E696ABC0]);
      v36 = *MEMORY[0x1E698F240];
      v269 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"contextStrings"];
      v270 = v17;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v270 forKeys:&v269 count:1];
      v33 = v35;
      v34 = v36;
LABEL_31:
      v28 = 0;
      *v29 = [v33 initWithDomain:v34 code:2 userInfo:v32];
LABEL_35:
      v38 = v8;
      v5 = v11;
      self = v204;
      v7 = v203;
      goto LABEL_201;
    }

    v17 = v16;
    v18 = [BMPersonalizedSensingMomentsContextMomentsContextString alloc];
    v228 = 0;
    v19 = [(BMPersonalizedSensingMomentsContextMomentsContextString *)v18 initWithJSONDictionary:v17 error:&v228];
    v20 = v228;
    if (v20)
    {
      v32 = v20;
      if (a4)
      {
        v37 = v20;
        *a4 = v32;
      }

      v28 = 0;
      goto LABEL_35;
    }

    [v207 addObject:v19];

    if (v13 == ++v15)
    {
      v13 = [v8 countByEnumeratingWithState:&v229 objects:v273 count:16];
      if (!v13)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }
  }

  v29 = a4;
  if (a4)
  {
    v30 = objc_alloc(MEMORY[0x1E696ABC0]);
    v31 = *MEMORY[0x1E698F240];
    v271 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"contextStrings"];
    v272 = v17;
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v272 forKeys:&v271 count:1];
    v33 = v30;
    v34 = v31;
    goto LABEL_31;
  }

LABEL_38:
  v28 = 0;
  v38 = v8;
  v5 = v11;
  self = v204;
  v7 = v203;
LABEL_203:

LABEL_204:
LABEL_205:

LABEL_206:
  v169 = *MEMORY[0x1E69E9840];
  return v28;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPersonalizedSensingMomentsContextMomentsContext *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_raw_contextIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v5 = self->_contextStrings;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v58;
    do
    {
      v9 = 0;
      do
      {
        if (*v58 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v57 + 1) + 8 * v9);
        v56 = 0;
        PBDataWriterPlaceMark();
        [v10 writeTo:v4];
        PBDataWriterRecallMark();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v7);
  }

  if (self->_hasRaw_contextCreationTimestamp)
  {
    raw_contextCreationTimestamp = self->_raw_contextCreationTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasAssociatedPatternType)
  {
    associatedPatternType = self->_associatedPatternType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasMetadataContentBitmap)
  {
    metadataContentBitmap = self->_metadataContentBitmap;
    PBDataWriterWriteUint32Field();
  }

  if (self->_hasActionType)
  {
    actionType = self->_actionType;
    PBDataWriterWriteUint32Field();
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v15 = self->_associatedLocations;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v53;
    do
    {
      v19 = 0;
      do
      {
        if (*v53 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v52 + 1) + 8 * v19);
        v56 = 0;
        PBDataWriterPlaceMark();
        [v20 writeTo:v4];
        PBDataWriterRecallMark();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v17);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v21 = self->_associatedContacts;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v49;
    do
    {
      v25 = 0;
      do
      {
        if (*v49 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v48 + 1) + 8 * v25);
        v56 = 0;
        PBDataWriterPlaceMark();
        [v26 writeTo:v4];
        PBDataWriterRecallMark();
        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v23);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v27 = self->_associatedTime;
  v28 = [(NSArray *)v27 countByEnumeratingWithState:&v44 objects:v62 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v45;
    do
    {
      v31 = 0;
      do
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v44 + 1) + 8 * v31);
        v56 = 0;
        PBDataWriterPlaceMark();
        [v32 writeTo:v4];
        PBDataWriterRecallMark();
        ++v31;
      }

      while (v29 != v31);
      v29 = [(NSArray *)v27 countByEnumeratingWithState:&v44 objects:v62 count:16];
    }

    while (v29);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v33 = self->_associatedMusic;
  v34 = [(NSArray *)v33 countByEnumeratingWithState:&v40 objects:v61 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v41;
    do
    {
      v37 = 0;
      do
      {
        if (*v41 != v36)
        {
          objc_enumerationMutation(v33);
        }

        v38 = *(*(&v40 + 1) + 8 * v37);
        v56 = 0;
        PBDataWriterPlaceMark();
        [v38 writeTo:{v4, v40}];
        PBDataWriterRecallMark();
        ++v37;
      }

      while (v35 != v37);
      v35 = [(NSArray *)v33 countByEnumeratingWithState:&v40 objects:v61 count:16];
    }

    while (v35);
  }

  v39 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v67.receiver = self;
  v67.super_class = BMPersonalizedSensingMomentsContextMomentsContext;
  v5 = [(BMEventBase *)&v67 init];
  if (!v5)
  {
LABEL_96:
    v64 = v5;
    goto LABEL_99;
  }

  v66 = objc_opt_new();
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  while (1)
  {
    v10 = [v4 position];
    if (v10 >= [v4 length] || (objc_msgSend(v4, "hasError") & 1) != 0)
    {
      break;
    }

    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      LOBYTE(v68) = 0;
      v14 = [v4 position] + 1;
      if (v14 >= [v4 position] && (v15 = objc_msgSend(v4, "position") + 1, v15 <= objc_msgSend(v4, "length")))
      {
        v16 = [v4 data];
        [v16 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v13 |= (LOBYTE(v68) & 0x7F) << v11;
      if ((LOBYTE(v68) & 0x80) == 0)
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

    v18 = [v4 hasError] ? 0 : v13;
LABEL_17:
    if (([v4 hasError] & 1) != 0 || (v18 & 7) == 4)
    {
      break;
    }

    v19 = v18 >> 3;
    if ((v18 >> 3) > 5)
    {
      if (v19 <= 7)
      {
        if (v19 != 6)
        {
          if (v19 != 7)
          {
            goto LABEL_79;
          }

          v68 = 0.0;
          v69 = 0;
          if (!PBReaderPlaceMark() || (v31 = [[BMPersonalizedSensingMomentsContextMomentsContextLocationMetaData alloc] initByReadFrom:v4]) == 0)
          {
LABEL_97:

            goto LABEL_98;
          }

          v28 = v31;
          v29 = v6;
          goto LABEL_78;
        }

        v34 = 0;
        v35 = 0;
        v36 = 0;
        v5->_hasActionType = 1;
        while (1)
        {
          LOBYTE(v68) = 0;
          v37 = [v4 position] + 1;
          if (v37 >= [v4 position] && (v38 = objc_msgSend(v4, "position") + 1, v38 <= objc_msgSend(v4, "length")))
          {
            v39 = [v4 data];
            [v39 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v36 |= (LOBYTE(v68) & 0x7F) << v34;
          if ((LOBYTE(v68) & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v17 = v35++ >= 9;
          if (v17)
          {
            v40 = 0;
            goto LABEL_84;
          }
        }

        if ([v4 hasError])
        {
          v40 = 0;
        }

        else
        {
          v40 = v36;
        }

LABEL_84:
        v5->_actionType = v40;
      }

      else
      {
        switch(v19)
        {
          case 8:
            v68 = 0.0;
            v69 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_97;
            }

            v43 = [[BMPersonalizedSensingMomentsContextMomentsContextContactMetaData alloc] initByReadFrom:v4];
            if (!v43)
            {
              goto LABEL_97;
            }

            v28 = v43;
            v29 = v7;
            break;
          case 9:
            v68 = 0.0;
            v69 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_97;
            }

            v51 = [[BMPersonalizedSensingMomentsContextMomentsContextTimeMetaData alloc] initByReadFrom:v4];
            if (!v51)
            {
              goto LABEL_97;
            }

            v28 = v51;
            v29 = v8;
            break;
          case 0xA:
            v68 = 0.0;
            v69 = 0;
            if (!PBReaderPlaceMark())
            {
              goto LABEL_97;
            }

            v27 = [[BMPersonalizedSensingMomentsContextMomentsContextMusicMetaData alloc] initByReadFrom:v4];
            if (!v27)
            {
              goto LABEL_97;
            }

            v28 = v27;
            v29 = v9;
            break;
          default:
            goto LABEL_79;
        }

LABEL_78:
        [v29 addObject:v28];
        PBReaderRecallMark();
      }
    }

    else if (v19 <= 2)
    {
      if (v19 != 1)
      {
        if (v19 != 2)
        {
          goto LABEL_79;
        }

        v68 = 0.0;
        v69 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_97;
        }

        v30 = [[BMPersonalizedSensingMomentsContextMomentsContextString alloc] initByReadFrom:v4];
        if (!v30)
        {
          goto LABEL_97;
        }

        v28 = v30;
        v29 = v66;
        goto LABEL_78;
      }

      v32 = PBReaderReadString();
      raw_contextIdentifier = v5->_raw_contextIdentifier;
      v5->_raw_contextIdentifier = v32;
    }

    else
    {
      switch(v19)
      {
        case 3:
          v5->_hasRaw_contextCreationTimestamp = 1;
          v68 = 0.0;
          v41 = [v4 position] + 8;
          if (v41 >= [v4 position] && (v42 = objc_msgSend(v4, "position") + 8, v42 <= objc_msgSend(v4, "length")))
          {
            v52 = [v4 data];
            [v52 getBytes:&v68 range:{objc_msgSend(v4, "position"), 8}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
          }

          else
          {
            [v4 _setError];
          }

          v5->_raw_contextCreationTimestamp = v68;
          break;
        case 4:
          v44 = 0;
          v45 = 0;
          v46 = 0;
          v5->_hasAssociatedPatternType = 1;
          while (1)
          {
            LOBYTE(v68) = 0;
            v47 = [v4 position] + 1;
            if (v47 >= [v4 position] && (v48 = objc_msgSend(v4, "position") + 1, v48 <= objc_msgSend(v4, "length")))
            {
              v49 = [v4 data];
              [v49 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v46 |= (LOBYTE(v68) & 0x7F) << v44;
            if ((LOBYTE(v68) & 0x80) == 0)
            {
              break;
            }

            v44 += 7;
            v17 = v45++ >= 9;
            if (v17)
            {
              v50 = 0;
              goto LABEL_92;
            }
          }

          if ([v4 hasError])
          {
            v50 = 0;
          }

          else
          {
            v50 = v46;
          }

LABEL_92:
          v5->_associatedPatternType = v50;
          break;
        case 5:
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v5->_hasMetadataContentBitmap = 1;
          while (1)
          {
            LOBYTE(v68) = 0;
            v23 = [v4 position] + 1;
            if (v23 >= [v4 position] && (v24 = objc_msgSend(v4, "position") + 1, v24 <= objc_msgSend(v4, "length")))
            {
              v25 = [v4 data];
              [v25 getBytes:&v68 range:{objc_msgSend(v4, "position"), 1}];

              [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
            }

            else
            {
              [v4 _setError];
            }

            v22 |= (LOBYTE(v68) & 0x7F) << v20;
            if ((LOBYTE(v68) & 0x80) == 0)
            {
              break;
            }

            v20 += 7;
            v17 = v21++ >= 9;
            if (v17)
            {
              v26 = 0;
              goto LABEL_88;
            }
          }

          if ([v4 hasError])
          {
            v26 = 0;
          }

          else
          {
            v26 = v22;
          }

LABEL_88:
          v5->_metadataContentBitmap = v26;
          break;
        default:
LABEL_79:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_97;
          }

          break;
      }
    }
  }

  v53 = [v66 copy];
  contextStrings = v5->_contextStrings;
  v5->_contextStrings = v53;

  v55 = [v6 copy];
  associatedLocations = v5->_associatedLocations;
  v5->_associatedLocations = v55;

  v57 = [v7 copy];
  associatedContacts = v5->_associatedContacts;
  v5->_associatedContacts = v57;

  v59 = [v8 copy];
  associatedTime = v5->_associatedTime;
  v5->_associatedTime = v59;

  v61 = [v9 copy];
  associatedMusic = v5->_associatedMusic;
  v5->_associatedMusic = v61;

  v63 = [v4 hasError];
  if ((v63 & 1) == 0)
  {
    goto LABEL_96;
  }

LABEL_98:
  v64 = 0;
LABEL_99:

  return v64;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextIdentifier];
  v3 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextStrings];
  v4 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self contextCreationTimestamp];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext associatedPatternType](self, "associatedPatternType")}];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext metadataContentBitmap](self, "metadataContentBitmap")}];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPersonalizedSensingMomentsContextMomentsContext actionType](self, "actionType")}];
  v8 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedLocations];
  v9 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedContacts];
  v10 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedTime];
  v11 = [(BMPersonalizedSensingMomentsContextMomentsContext *)self associatedMusic];
  v15 = [v14 initWithFormat:@"BMPersonalizedSensingMomentsContextMomentsContext with contextIdentifier: %@, contextStrings: %@, contextCreationTimestamp: %@, associatedPatternType: %@, metadataContentBitmap: %@, actionType: %@, associatedLocations: %@, associatedContacts: %@, associatedTime: %@, associatedMusic: %@", v13, v3, v4, v5, v6, v7, v8, v9, v10, v11];

  return v15;
}

- (BMPersonalizedSensingMomentsContextMomentsContext)initWithContextIdentifier:(id)a3 contextStrings:(id)a4 contextCreationTimestamp:(id)a5 associatedPatternType:(id)a6 metadataContentBitmap:(id)a7 actionType:(id)a8 associatedLocations:(id)a9 associatedContacts:(id)a10 associatedTime:(id)a11 associatedMusic:(id)a12
{
  v17 = a3;
  obj = a4;
  v37 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = v17;
  v26 = a12;
  v38.receiver = self;
  v38.super_class = BMPersonalizedSensingMomentsContextMomentsContext;
  v27 = [(BMEventBase *)&v38 init];
  if (v27)
  {
    v27->_dataVersion = [objc_opt_class() latestDataVersion];
    if (v25)
    {
      v28 = [v25 UUIDString];
    }

    else
    {
      v28 = 0;
    }

    raw_contextIdentifier = v27->_raw_contextIdentifier;
    v27->_raw_contextIdentifier = v28;

    objc_storeStrong(&v27->_contextStrings, obj);
    if (v18)
    {
      v27->_hasRaw_contextCreationTimestamp = 1;
      [v18 timeIntervalSince1970];
    }

    else
    {
      v27->_hasRaw_contextCreationTimestamp = 0;
      v30 = -1.0;
    }

    v27->_raw_contextCreationTimestamp = v30;
    if (v19)
    {
      v27->_hasAssociatedPatternType = 1;
      v31 = [v19 unsignedIntValue];
    }

    else
    {
      v31 = 0;
      v27->_hasAssociatedPatternType = 0;
    }

    v27->_associatedPatternType = v31;
    if (v20)
    {
      v27->_hasMetadataContentBitmap = 1;
      v32 = [v20 unsignedIntValue];
    }

    else
    {
      v32 = 0;
      v27->_hasMetadataContentBitmap = 0;
    }

    v27->_metadataContentBitmap = v32;
    if (v21)
    {
      v27->_hasActionType = 1;
      v33 = [v21 unsignedIntValue];
    }

    else
    {
      v33 = 0;
      v27->_hasActionType = 0;
    }

    v27->_actionType = v33;
    objc_storeStrong(&v27->_associatedLocations, a9);
    objc_storeStrong(&v27->_associatedContacts, a10);
    objc_storeStrong(&v27->_associatedTime, a11);
    objc_storeStrong(&v27->_associatedMusic, a12);
  }

  return v27;
}

+ (id)protoFields
{
  v15[10] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextIdentifier" number:1 type:13 subMessageClass:0];
  v15[0] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextStrings" number:2 type:14 subMessageClass:objc_opt_class()];
  v15[1] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contextCreationTimestamp" number:3 type:0 subMessageClass:0];
  v15[2] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedPatternType" number:4 type:4 subMessageClass:0];
  v15[3] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"metadataContentBitmap" number:5 type:4 subMessageClass:0];
  v15[4] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"actionType" number:6 type:4 subMessageClass:0];
  v15[5] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedLocations" number:7 type:14 subMessageClass:objc_opt_class()];
  v15[6] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedContacts" number:8 type:14 subMessageClass:objc_opt_class()];
  v15[7] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedTime" number:9 type:14 subMessageClass:objc_opt_class()];
  v15[8] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"associatedMusic" number:10 type:14 subMessageClass:objc_opt_class()];
  v15[9] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v15[10] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextIdentifier" dataType:6 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:3];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"contextStrings_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_422_76839];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contextCreationTimestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"associatedPatternType" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"metadataContentBitmap" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"actionType" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"associatedLocations_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_424_76841];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"associatedContacts_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_426];
  v10 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"associatedTime_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_428];
  v11 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"associatedMusic_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_430];
  v15[0] = v2;
  v15[1] = v3;
  v15[2] = v4;
  v15[3] = v5;
  v15[4] = v6;
  v15[5] = v7;
  v15[6] = v8;
  v15[7] = v9;
  v15[8] = v10;
  v15[9] = v11;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:10];

  v12 = *MEMORY[0x1E69E9840];

  return v14;
}

id __60__BMPersonalizedSensingMomentsContextMomentsContext_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _associatedMusicJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __60__BMPersonalizedSensingMomentsContextMomentsContext_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _associatedTimeJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __60__BMPersonalizedSensingMomentsContextMomentsContext_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _associatedContactsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __60__BMPersonalizedSensingMomentsContextMomentsContext_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _associatedLocationsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __60__BMPersonalizedSensingMomentsContextMomentsContext_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _contextStringsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
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

    v8 = [[BMPersonalizedSensingMomentsContextMomentsContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end