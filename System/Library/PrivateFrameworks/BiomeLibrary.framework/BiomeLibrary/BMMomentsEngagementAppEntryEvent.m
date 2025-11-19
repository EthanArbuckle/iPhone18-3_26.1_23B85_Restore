@interface BMMomentsEngagementAppEntryEvent
+ (id)columns;
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
+ (id)protoFields;
- (BMMomentsEngagementAppEntryEvent)initWithJSONDictionary:(id)a3 error:(id *)a4;
- (BMMomentsEngagementAppEntryEvent)initWithType:(int)a3 clientIdentifier:(id)a4 timestamp:(id)a5 identifier:(id)a6 startTime:(id)a7 endTime:(id)a8 totalCharacters:(id)a9 addedCharacters:(id)a10 usedPhotoAssets:(id)a11 appEntryEventType:(id)a12 bundleInterfaceTypes:(id)a13 bundleEvergreenTypes:(id)a14 bundleSummary:(id)a15 assets:(id)a16;
- (BOOL)isEqual:(id)a3;
- (NSDate)endTime;
- (NSDate)startTime;
- (NSDate)timestamp;
- (NSString)description;
- (id)_assetsJSONArray;
- (id)_bundleEvergreenTypesJSONArray;
- (id)_bundleInterfaceTypesJSONArray;
- (id)_identifierJSONArray;
- (id)_usedPhotoAssetsJSONArray;
- (id)initByReadFrom:(id)a3;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)a3;
@end

@implementation BMMomentsEngagementAppEntryEvent

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(BMMomentsEngagementAppEntryEvent *)self type];
    if (v6 == [v5 type])
    {
      v7 = [(BMMomentsEngagementAppEntryEvent *)self clientIdentifier];
      v8 = [v5 clientIdentifier];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(BMMomentsEngagementAppEntryEvent *)self clientIdentifier];
        v11 = [v5 clientIdentifier];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_52;
        }
      }

      v14 = [(BMMomentsEngagementAppEntryEvent *)self timestamp];
      v15 = [v5 timestamp];
      v16 = v15;
      if (v14 == v15)
      {
      }

      else
      {
        v17 = [(BMMomentsEngagementAppEntryEvent *)self timestamp];
        v18 = [v5 timestamp];
        v19 = [v17 isEqual:v18];

        if (!v19)
        {
          goto LABEL_52;
        }
      }

      v20 = [(BMMomentsEngagementAppEntryEvent *)self identifier];
      v21 = [v5 identifier];
      v22 = v21;
      if (v20 == v21)
      {
      }

      else
      {
        v23 = [(BMMomentsEngagementAppEntryEvent *)self identifier];
        v24 = [v5 identifier];
        v25 = [v23 isEqual:v24];

        if (!v25)
        {
          goto LABEL_52;
        }
      }

      v26 = [(BMMomentsEngagementAppEntryEvent *)self startTime];
      v27 = [v5 startTime];
      v28 = v27;
      if (v26 == v27)
      {
      }

      else
      {
        v29 = [(BMMomentsEngagementAppEntryEvent *)self startTime];
        v30 = [v5 startTime];
        v31 = [v29 isEqual:v30];

        if (!v31)
        {
          goto LABEL_52;
        }
      }

      v32 = [(BMMomentsEngagementAppEntryEvent *)self endTime];
      v33 = [v5 endTime];
      v34 = v33;
      if (v32 == v33)
      {
      }

      else
      {
        v35 = [(BMMomentsEngagementAppEntryEvent *)self endTime];
        v36 = [v5 endTime];
        v37 = [v35 isEqual:v36];

        if (!v37)
        {
          goto LABEL_52;
        }
      }

      if (-[BMMomentsEngagementAppEntryEvent hasTotalCharacters](self, "hasTotalCharacters") || [v5 hasTotalCharacters])
      {
        if (![(BMMomentsEngagementAppEntryEvent *)self hasTotalCharacters])
        {
          goto LABEL_52;
        }

        if (![v5 hasTotalCharacters])
        {
          goto LABEL_52;
        }

        v38 = [(BMMomentsEngagementAppEntryEvent *)self totalCharacters];
        if (v38 != [v5 totalCharacters])
        {
          goto LABEL_52;
        }
      }

      if (-[BMMomentsEngagementAppEntryEvent hasAddedCharacters](self, "hasAddedCharacters") || [v5 hasAddedCharacters])
      {
        if (![(BMMomentsEngagementAppEntryEvent *)self hasAddedCharacters])
        {
          goto LABEL_52;
        }

        if (![v5 hasAddedCharacters])
        {
          goto LABEL_52;
        }

        v39 = [(BMMomentsEngagementAppEntryEvent *)self addedCharacters];
        if (v39 != [v5 addedCharacters])
        {
          goto LABEL_52;
        }
      }

      v40 = [(BMMomentsEngagementAppEntryEvent *)self usedPhotoAssets];
      v41 = [v5 usedPhotoAssets];
      v42 = v41;
      if (v40 == v41)
      {
      }

      else
      {
        v43 = [(BMMomentsEngagementAppEntryEvent *)self usedPhotoAssets];
        v44 = [v5 usedPhotoAssets];
        v45 = [v43 isEqual:v44];

        if (!v45)
        {
          goto LABEL_52;
        }
      }

      v46 = [(BMMomentsEngagementAppEntryEvent *)self appEntryEventType];
      v47 = [v5 appEntryEventType];
      v48 = v47;
      if (v46 == v47)
      {
      }

      else
      {
        v49 = [(BMMomentsEngagementAppEntryEvent *)self appEntryEventType];
        v50 = [v5 appEntryEventType];
        v51 = [v49 isEqual:v50];

        if (!v51)
        {
          goto LABEL_52;
        }
      }

      v52 = [(BMMomentsEngagementAppEntryEvent *)self bundleInterfaceTypes];
      v53 = [v5 bundleInterfaceTypes];
      v54 = v53;
      if (v52 == v53)
      {
      }

      else
      {
        v55 = [(BMMomentsEngagementAppEntryEvent *)self bundleInterfaceTypes];
        v56 = [v5 bundleInterfaceTypes];
        v57 = [v55 isEqual:v56];

        if (!v57)
        {
          goto LABEL_52;
        }
      }

      v58 = [(BMMomentsEngagementAppEntryEvent *)self bundleEvergreenTypes];
      v59 = [v5 bundleEvergreenTypes];
      v60 = v59;
      if (v58 == v59)
      {
      }

      else
      {
        v61 = [(BMMomentsEngagementAppEntryEvent *)self bundleEvergreenTypes];
        v62 = [v5 bundleEvergreenTypes];
        v63 = [v61 isEqual:v62];

        if (!v63)
        {
          goto LABEL_52;
        }
      }

      v64 = [(BMMomentsEngagementAppEntryEvent *)self bundleSummary];
      v65 = [v5 bundleSummary];
      v66 = v65;
      if (v64 == v65)
      {
      }

      else
      {
        v67 = [(BMMomentsEngagementAppEntryEvent *)self bundleSummary];
        v68 = [v5 bundleSummary];
        v69 = [v67 isEqual:v68];

        if (!v69)
        {
          goto LABEL_52;
        }
      }

      v71 = [(BMMomentsEngagementAppEntryEvent *)self assets];
      v72 = [v5 assets];
      if (v71 == v72)
      {
        v13 = 1;
      }

      else
      {
        v73 = [(BMMomentsEngagementAppEntryEvent *)self assets];
        v74 = [v5 assets];
        v13 = [v73 isEqual:v74];
      }

      goto LABEL_53;
    }

LABEL_52:
    v13 = 0;
LABEL_53:

    goto LABEL_54;
  }

  v13 = 0;
LABEL_54:

  return v13;
}

- (NSDate)endTime
{
  if (self->_hasRaw_endTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)startTime
{
  if (self->_hasRaw_startTime)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startTime];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)timestamp
{
  if (self->_hasRaw_timestamp)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_timestamp];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v55[14] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementAppEntryEvent type](self, "type")}];
  v4 = [(BMMomentsEngagementAppEntryEvent *)self clientIdentifier];
  v5 = [(BMMomentsEngagementAppEntryEvent *)self timestamp];
  if (v5)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = [(BMMomentsEngagementAppEntryEvent *)self timestamp];
    [v7 timeIntervalSince1970];
    v8 = [v6 numberWithDouble:?];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(BMMomentsEngagementAppEntryEvent *)self _identifierJSONArray];
  v10 = [(BMMomentsEngagementAppEntryEvent *)self startTime];
  if (v10)
  {
    v11 = MEMORY[0x1E696AD98];
    v12 = [(BMMomentsEngagementAppEntryEvent *)self startTime];
    [v12 timeIntervalSince1970];
    v53 = [v11 numberWithDouble:?];
  }

  else
  {
    v53 = 0;
  }

  v13 = [(BMMomentsEngagementAppEntryEvent *)self endTime];
  if (v13)
  {
    v14 = MEMORY[0x1E696AD98];
    v15 = [(BMMomentsEngagementAppEntryEvent *)self endTime];
    [v15 timeIntervalSince1970];
    v52 = [v14 numberWithDouble:?];
  }

  else
  {
    v52 = 0;
  }

  if ([(BMMomentsEngagementAppEntryEvent *)self hasTotalCharacters])
  {
    v51 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementAppEntryEvent totalCharacters](self, "totalCharacters")}];
  }

  else
  {
    v51 = 0;
  }

  if ([(BMMomentsEngagementAppEntryEvent *)self hasAddedCharacters])
  {
    v50 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementAppEntryEvent addedCharacters](self, "addedCharacters")}];
  }

  else
  {
    v50 = 0;
  }

  v49 = [(BMMomentsEngagementAppEntryEvent *)self _usedPhotoAssetsJSONArray];
  v48 = [(BMMomentsEngagementAppEntryEvent *)self appEntryEventType];
  v47 = [(BMMomentsEngagementAppEntryEvent *)self _bundleInterfaceTypesJSONArray];
  v46 = [(BMMomentsEngagementAppEntryEvent *)self _bundleEvergreenTypesJSONArray];
  v16 = [(BMMomentsEngagementAppEntryEvent *)self bundleSummary];
  v17 = [v16 jsonDictionary];

  v18 = [(BMMomentsEngagementAppEntryEvent *)self _assetsJSONArray];
  v54[0] = @"type";
  v19 = v3;
  if (!v3)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = v19;
  v55[0] = v19;
  v54[1] = @"clientIdentifier";
  v20 = v4;
  if (!v4)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = v20;
  v55[1] = v20;
  v54[2] = @"timestamp";
  v21 = v8;
  if (!v8)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = v21;
  v55[2] = v21;
  v54[3] = @"identifier";
  v22 = v9;
  if (!v9)
  {
    v22 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v22;
  v55[3] = v22;
  v54[4] = @"startTime";
  v23 = v53;
  if (!v53)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v3;
  v55[4] = v23;
  v54[5] = @"endTime";
  v24 = v52;
  if (!v52)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = v4;
  v55[5] = v24;
  v54[6] = @"totalCharacters";
  v25 = v51;
  if (!v51)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = v8;
  v55[6] = v25;
  v54[7] = @"addedCharacters";
  v26 = v50;
  if (!v50)
  {
    v26 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = v9;
  v55[7] = v26;
  v54[8] = @"usedPhotoAssets";
  v27 = v49;
  if (!v49)
  {
    v27 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = v23;
  v55[8] = v27;
  v54[9] = @"appEntryEventType";
  v28 = v48;
  if (!v48)
  {
    v28 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = v24;
  v55[9] = v28;
  v54[10] = @"bundleInterfaceTypes";
  v29 = v47;
  if (!v47)
  {
    v29 = [MEMORY[0x1E695DFB0] null];
  }

  v55[10] = v29;
  v54[11] = @"bundleEvergreenTypes";
  v30 = v46;
  if (!v46)
  {
    v30 = [MEMORY[0x1E695DFB0] null];
  }

  v55[11] = v30;
  v54[12] = @"bundleSummary";
  v31 = v17;
  if (!v17)
  {
    v31 = [MEMORY[0x1E695DFB0] null];
  }

  v55[12] = v31;
  v54[13] = @"assets";
  v32 = v18;
  if (!v18)
  {
    v32 = [MEMORY[0x1E695DFB0] null];
  }

  v55[13] = v32;
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v55 forKeys:v54 count:14];
  if (v18)
  {
    if (v17)
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (v17)
    {
      goto LABEL_46;
    }
  }

LABEL_46:
  if (!v46)
  {
  }

  if (!v47)
  {
  }

  if (!v48)
  {
  }

  if (!v49)
  {
  }

  if (!v50)
  {
  }

  if (!v51)
  {
  }

  if (!v52)
  {
  }

  if (v53)
  {
    if (v42)
    {
      goto LABEL_62;
    }
  }

  else
  {

    if (v42)
    {
LABEL_62:
      if (v43)
      {
        goto LABEL_63;
      }

      goto LABEL_72;
    }
  }

  if (v43)
  {
LABEL_63:
    if (v44)
    {
      goto LABEL_64;
    }

LABEL_73:

    if (v45)
    {
      goto LABEL_65;
    }

    goto LABEL_74;
  }

LABEL_72:

  if (!v44)
  {
    goto LABEL_73;
  }

LABEL_64:
  if (v45)
  {
    goto LABEL_65;
  }

LABEL_74:

LABEL_65:
  v33 = *MEMORY[0x1E69E9840];

  return v41;
}

- (id)_assetsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMomentsEngagementAppEntryEvent *)self assets];
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

- (id)_bundleEvergreenTypesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMMomentsEngagementAppEntryEvent *)self bundleEvergreenTypes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_bundleInterfaceTypesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(BMMomentsEngagementAppEntryEvent *)self bundleInterfaceTypes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_usedPhotoAssetsJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMomentsEngagementAppEntryEvent *)self usedPhotoAssets];
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

- (id)_identifierJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(BMMomentsEngagementAppEntryEvent *)self identifier];
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

- (BMMomentsEngagementAppEntryEvent)initWithJSONDictionary:(id)a3 error:(id *)a4
{
  v321[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:@"type"];
  v8 = 0x1E695D000uLL;
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
        if (a4)
        {
          v59 = objc_alloc(MEMORY[0x1E696ABC0]);
          v60 = *MEMORY[0x1E698F240];
          v320 = *MEMORY[0x1E696A578];
          v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"type"];
          v321[0] = v48;
          v241 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v321 forKeys:&v320 count:1];
          v9 = 0;
          v24 = 0;
          *a4 = [v59 initWithDomain:v60 code:2 userInfo:?];
          goto LABEL_239;
        }

        v9 = 0;
        v24 = 0;
        goto LABEL_240;
      }

      v10 = v7;
      v9 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementAppEntryEventTypeFromString(v10)];
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [v6 objectForKeyedSubscript:@"clientIdentifier"];
  v241 = v11;
  if (v11 && (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        v42 = objc_alloc(MEMORY[0x1E696ABC0]);
        v43 = *MEMORY[0x1E698F240];
        v318 = *MEMORY[0x1E696A578];
        v44 = v9;
        v45 = objc_alloc(MEMORY[0x1E696AEC0]);
        v203 = objc_opt_class();
        v46 = v45;
        v9 = v44;
        v47 = [v46 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", v203, @"clientIdentifier"];
        v319 = v47;
        v240 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v319 forKeys:&v318 count:1];
        v48 = 0;
        v24 = 0;
        *a4 = [v42 initWithDomain:v43 code:2 userInfo:?];
        goto LABEL_238;
      }

      v48 = 0;
      v24 = 0;
      goto LABEL_239;
    }

    v238 = v12;
  }

  else
  {
    v238 = 0;
  }

  v239 = a4;
  v13 = [v6 objectForKeyedSubscript:@"timestamp"];
  v240 = v13;
  if (v13 && (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v14;
      v41 = objc_alloc(MEMORY[0x1E695DF00]);
      [v40 doubleValue];
      v236 = [v41 initWithTimeIntervalSince1970:?];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v57 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v58 = v14;
        v236 = [v57 dateFromString:v58];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v24 = a4;
          if (a4)
          {
            v94 = objc_alloc(MEMORY[0x1E696ABC0]);
            v95 = *MEMORY[0x1E698F240];
            v316 = *MEMORY[0x1E696A578];
            v96 = v9;
            v97 = objc_alloc(MEMORY[0x1E696AEC0]);
            v204 = objc_opt_class();
            v98 = v97;
            v9 = v96;
            v15 = [v98 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", v204, @"timestamp"];
            v317 = v15;
            v244 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v317 forKeys:&v316 count:1];
            v47 = 0;
            v24 = 0;
            *v239 = [v94 initWithDomain:v95 code:2 userInfo:?];
            v48 = v238;

            goto LABEL_237;
          }

          v47 = 0;
          v48 = v238;
          goto LABEL_238;
        }

        v236 = v14;
      }

      v8 = 0x1E695D000;
    }
  }

  else
  {
    v236 = 0;
  }

  v15 = [v6 objectForKeyedSubscript:@"identifier"];
  v16 = [*(v8 + 4016) null];
  v17 = [v15 isEqual:v16];

  v237 = v7;
  if (v17)
  {

    v15 = 0;
LABEL_21:
    v18 = 0x1E695D000uLL;
    goto LABEL_22;
  }

  if (!v15)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  v18 = 0x1E695D000;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v239)
    {
      v19 = objc_alloc(MEMORY[0x1E696ABC0]);
      v20 = *MEMORY[0x1E698F240];
      v314 = *MEMORY[0x1E696A578];
      v243 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"identifier"];
      v315 = v243;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v315 forKeys:&v314 count:1];
      v22 = v19;
      v23 = v21;
      v24 = 0;
      *v239 = [v22 initWithDomain:v20 code:2 userInfo:v21];
      goto LABEL_56;
    }

    v24 = 0;
    v48 = v238;
    v47 = v236;
    goto LABEL_237;
  }

LABEL_22:
  v243 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v265 = 0u;
  v266 = 0u;
  v267 = 0u;
  v268 = 0u;
  v15 = v15;
  v25 = [v15 countByEnumeratingWithState:&v265 objects:v313 count:16];
  v234 = self;
  v235 = v9;
  v242 = v15;
  if (!v25)
  {
LABEL_32:

    v32 = [v6 objectForKeyedSubscript:@"startTime"];
    if (v32 && (v36 = *(v18 + 4016), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v61 = v32;
        v62 = objc_alloc(MEMORY[0x1E695DF00]);
        [v61 doubleValue];
        v23 = [v62 initWithTimeIntervalSince1970:?];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v66 = objc_alloc_init(MEMORY[0x1E696AC80]);
          v67 = v32;
          v68 = [v66 dateFromString:v67];

          v23 = v68;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v23 = v239;
            if (v239)
            {
              v134 = objc_alloc(MEMORY[0x1E696ABC0]);
              v135 = *MEMORY[0x1E698F240];
              v307 = *MEMORY[0x1E696A578];
              v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startTime"];
              v308 = v39;
              v228 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v308 forKeys:&v307 count:1];
              v136 = [v134 initWithDomain:v135 code:2 userInfo:?];
              v24 = 0;
              *v239 = v136;
              v23 = 0;
              v48 = v238;
              v47 = v236;

              goto LABEL_234;
            }

            v24 = 0;
            v48 = v238;
            v47 = v236;
LABEL_235:

            v15 = v242;
            goto LABEL_236;
          }

          v23 = v32;
        }
      }
    }

    else
    {
      v23 = 0;
    }

    v37 = [v6 objectForKeyedSubscript:@"endTime"];
    v227 = v37;
    v229 = v23;
    if (v37 && (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v63 = v38;
        v64 = objc_alloc(MEMORY[0x1E695DF00]);
        [v63 doubleValue];
        v65 = v64;
        v23 = v229;
        v39 = [v65 initWithTimeIntervalSince1970:?];
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v239)
            {
              v137 = objc_alloc(MEMORY[0x1E696ABC0]);
              v138 = *MEMORY[0x1E698F240];
              v305 = *MEMORY[0x1E696A578];
              v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endTime"];
              v306 = v139;
              v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v306 forKeys:&v305 count:1];
              v141 = v138;
              v93 = v139;
              v226 = v140;
              v142 = [v137 initWithDomain:v141 code:2 userInfo:?];
              v39 = 0;
              v24 = 0;
              *v239 = v142;
              v48 = v238;
              v47 = v236;
              goto LABEL_232;
            }

            v39 = 0;
            v24 = 0;
            v48 = v238;
            v47 = v236;
            goto LABEL_233;
          }

          v39 = v38;
          goto LABEL_73;
        }

        v63 = objc_alloc_init(MEMORY[0x1E696AC80]);
        v69 = v38;
        v39 = [v63 dateFromString:v69];

        v23 = v229;
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_73:
    v70 = [v6 objectForKeyedSubscript:@"totalCharacters"];
    v226 = v70;
    if (v70 && (v71 = v70, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v239)
        {
          v88 = objc_alloc(MEMORY[0x1E696ABC0]);
          v89 = *MEMORY[0x1E698F240];
          v303 = *MEMORY[0x1E696A578];
          v221 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"totalCharacters"];
          v304 = v221;
          v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v304 forKeys:&v303 count:1];
          v91 = v88;
          v23 = v229;
          v225 = v90;
          v92 = [v91 initWithDomain:v89 code:2 userInfo:?];
          v93 = 0;
          v24 = 0;
          *v239 = v92;
          v48 = v238;
          v47 = v236;
          goto LABEL_231;
        }

        v93 = 0;
        v24 = 0;
        v48 = v238;
        v47 = v236;
        goto LABEL_232;
      }

      v220 = v71;
    }

    else
    {
      v220 = 0;
    }

    v72 = [v6 objectForKeyedSubscript:@"addedCharacters"];
    v225 = v72;
    if (v72 && (v73 = v72, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (v239)
        {
          v99 = objc_alloc(MEMORY[0x1E696ABC0]);
          v100 = *MEMORY[0x1E698F240];
          v301 = *MEMORY[0x1E696A578];
          obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"addedCharacters"];
          v302 = obj;
          v101 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v302 forKeys:&v301 count:1];
          v102 = v99;
          v23 = v229;
          v233 = v101;
          v221 = 0;
          v24 = 0;
          *v239 = [v102 initWithDomain:v100 code:2 userInfo:?];
          v48 = v238;
          v47 = v236;
          v93 = v220;

          goto LABEL_230;
        }

        v221 = 0;
        v24 = 0;
        v48 = v238;
        v47 = v236;
        v93 = v220;
        goto LABEL_231;
      }

      v221 = v73;
    }

    else
    {
      v221 = 0;
    }

    v74 = [v6 objectForKeyedSubscript:@"usedPhotoAssets"];
    v75 = [MEMORY[0x1E695DFB0] null];
    v76 = [v74 isEqual:v75];

    if (v76)
    {

      v74 = 0;
    }

    else if (v74)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        obj = v74;
        if (v239)
        {
          v111 = objc_alloc(MEMORY[0x1E696ABC0]);
          v112 = *MEMORY[0x1E698F240];
          v299 = *MEMORY[0x1E696A578];
          v232 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"usedPhotoAssets"];
          v300 = v232;
          v113 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v300 forKeys:&v299 count:1];
          v24 = 0;
          *v239 = [v111 initWithDomain:v112 code:2 userInfo:v113];
          v114 = v113;
          v48 = v238;
          v47 = v236;
          v23 = v229;
          v93 = v220;
          self = v234;
          goto LABEL_229;
        }

        v24 = 0;
        v48 = v238;
        v47 = v236;
        v23 = v229;
        v93 = v220;
        self = v234;
        goto LABEL_230;
      }
    }

    v232 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v74, "count")}];
    v260 = 0u;
    v261 = 0u;
    v262 = 0u;
    v263 = 0u;
    obj = v74;
    v77 = [obj countByEnumeratingWithState:&v260 objects:v298 count:16];
    if (!v77)
    {
      goto LABEL_93;
    }

    v78 = v77;
    v79 = *v261;
    v216 = v6;
    while (1)
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v261 != v79)
        {
          objc_enumerationMutation(obj);
        }

        v81 = *(*(&v260 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v239)
          {
            v103 = objc_alloc(MEMORY[0x1E696ABC0]);
            v104 = *MEMORY[0x1E698F240];
            v296 = *MEMORY[0x1E696A578];
            v218 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"usedPhotoAssets"];
            v297 = v218;
            v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
            v106 = [v103 initWithDomain:v104 code:2 userInfo:v105];
            v24 = 0;
            *v239 = v106;
LABEL_114:
            v23 = v229;
            v219 = obj;
            v6 = v216;
            self = v234;
            v7 = v237;
            goto LABEL_115;
          }

LABEL_118:
          v24 = 0;
          v23 = v229;
          v114 = obj;
          v6 = v216;
          self = v234;
          v7 = v237;
          v48 = v238;
          v47 = v236;
          v93 = v220;
          goto LABEL_229;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (v239)
          {
            v107 = objc_alloc(MEMORY[0x1E696ABC0]);
            v108 = *MEMORY[0x1E698F240];
            v294 = *MEMORY[0x1E696A578];
            v218 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"usedPhotoAssets"];
            v295 = v218;
            v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
            v109 = [v107 initWithDomain:v108 code:2 userInfo:v105];
            v24 = 0;
            *v239 = v109;
            goto LABEL_114;
          }

          goto LABEL_118;
        }

        v82 = v81;
        v83 = [BMMomentsEngagementPhotosAssets alloc];
        v259 = 0;
        v84 = [(BMMomentsEngagementPhotosAssets *)v83 initWithJSONDictionary:v82 error:&v259];
        v85 = v259;
        if (v85)
        {
          v105 = v85;
          v218 = v82;
          if (v239)
          {
            v110 = v85;
            *v239 = v105;
          }

          v24 = 0;
          goto LABEL_114;
        }

        [v232 addObject:v84];
      }

      v78 = [obj countByEnumeratingWithState:&v260 objects:v298 count:16];
      v6 = v216;
      if (!v78)
      {
LABEL_93:

        v86 = [v6 objectForKeyedSubscript:@"appEntryEventType"];
        v218 = v86;
        if (!v86)
        {
          v219 = 0;
          self = v234;
          goto LABEL_126;
        }

        v87 = v86;
        objc_opt_class();
        self = v234;
        if (objc_opt_isKindOfClass())
        {
          v219 = 0;
          goto LABEL_126;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v219 = v87;
LABEL_126:
          v105 = [v6 objectForKeyedSubscript:@"bundleInterfaceTypes"];
          v115 = [MEMORY[0x1E695DFB0] null];
          v116 = [v105 isEqual:v115];

          v23 = v229;
          if (v116)
          {

            v105 = 0;
            v7 = v237;
            goto LABEL_130;
          }

          v7 = v237;
          if (!v105 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
LABEL_130:
            v222 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v105, "count")}];
            v255 = 0u;
            v256 = 0u;
            v257 = 0u;
            v258 = 0u;
            v105 = v105;
            v117 = [v105 countByEnumeratingWithState:&v255 objects:v289 count:16];
            if (!v117)
            {
LABEL_139:

              v124 = [v6 objectForKeyedSubscript:@"bundleEvergreenTypes"];
              v125 = [MEMORY[0x1E695DFB0] null];
              v126 = [v124 isEqual:v125];

              if (v126)
              {

                v124 = 0;
              }

              else if (v124)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v213 = v124;
                  if (!v239)
                  {
                    v24 = 0;
                    v23 = v229;
                    v93 = v220;
                    goto LABEL_226;
                  }

                  v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v166 = *MEMORY[0x1E698F240];
                  v283 = *MEMORY[0x1E696A578];
                  v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"bundleEvergreenTypes"];
                  v284 = v214;
                  v212 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v284 forKeys:&v283 count:1];
                  v167 = [v165 initWithDomain:v166 code:2 userInfo:?];
                  v24 = 0;
                  *v239 = v167;
                  v23 = v229;
                  v93 = v220;
                  goto LABEL_187;
                }
              }

              v214 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v124, "count")}];
              v251 = 0u;
              v252 = 0u;
              v253 = 0u;
              v254 = 0u;
              v213 = v124;
              v147 = [v213 countByEnumeratingWithState:&v251 objects:v282 count:16];
              if (!v147)
              {
                goto LABEL_169;
              }

              v148 = v147;
              v149 = *v252;
LABEL_162:
              v150 = v6;
              v151 = 0;
              while (1)
              {
                if (*v252 != v149)
                {
                  objc_enumerationMutation(v213);
                }

                v152 = *(*(&v251 + 1) + 8 * v151);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  break;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (v239)
                  {
                    v163 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v164 = *MEMORY[0x1E698F240];
                    v278 = *MEMORY[0x1E696A578];
                    v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleEvergreenTypes"];
                    v279 = v207;
                    v160 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v279 forKeys:&v278 count:1];
                    v161 = v163;
                    v162 = v164;
                    goto LABEL_179;
                  }

                  goto LABEL_183;
                }

                v153 = v152;
                [v214 addObject:v153];

                if (v148 == ++v151)
                {
                  v148 = [v213 countByEnumeratingWithState:&v251 objects:v282 count:16];
                  v6 = v150;
                  self = v234;
                  if (v148)
                  {
                    goto LABEL_162;
                  }

LABEL_169:

                  v154 = [v6 objectForKeyedSubscript:@"bundleSummary"];
                  v212 = v154;
                  if (!v154)
                  {
                    v207 = 0;
                    v23 = v229;
                    goto LABEL_189;
                  }

                  v155 = v154;
                  objc_opt_class();
                  v23 = v229;
                  if (objc_opt_isKindOfClass())
                  {
                    v207 = 0;
                    goto LABEL_189;
                  }

                  objc_opt_class();
                  v93 = v220;
                  if (objc_opt_isKindOfClass())
                  {
                    v181 = v155;
                    v182 = [BMMomentsEngagementBundleSummary alloc];
                    v250 = 0;
                    v207 = [(BMMomentsEngagementBundleSummary *)v182 initWithJSONDictionary:v181 error:&v250];
                    v183 = v250;
                    if (v183)
                    {
                      v210 = v181;
                      if (v239)
                      {
                        v183 = v183;
                        *v239 = v183;
                      }

                      v24 = 0;
                      v212 = v181;
                      goto LABEL_223;
                    }

LABEL_189:
                    v168 = [v6 objectForKeyedSubscript:@"assets"];
                    v169 = [MEMORY[0x1E695DFB0] null];
                    v170 = [v168 isEqual:v169];

                    if (v170)
                    {

                      v168 = 0;
LABEL_193:
                      v208 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v168, "count")}];
                      v246 = 0u;
                      v247 = 0u;
                      v248 = 0u;
                      v249 = 0u;
                      v210 = v168;
                      v171 = [v210 countByEnumeratingWithState:&v246 objects:v273 count:16];
                      v93 = v220;
                      if (!v171)
                      {
                        goto LABEL_203;
                      }

                      v172 = v171;
                      v173 = *v247;
                      v217 = v6;
LABEL_195:
                      v174 = 0;
                      while (1)
                      {
                        if (*v247 != v173)
                        {
                          objc_enumerationMutation(v210);
                        }

                        v175 = *(*(&v246 + 1) + 8 * v174);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          break;
                        }

                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          v6 = v217;
                          self = v234;
                          v190 = v239;
                          v23 = v229;
                          if (!v239)
                          {
                            goto LABEL_221;
                          }

                          v191 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v206 = *MEMORY[0x1E698F240];
                          v269 = *MEMORY[0x1E696A578];
                          v192 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"assets"];
                          v270 = v192;
                          v193 = MEMORY[0x1E695DF20];
                          v194 = &v270;
                          v195 = &v269;
                          goto LABEL_216;
                        }

                        v176 = v175;
                        v177 = [BMMomentsEngagementAppEntryEventComposerAsset alloc];
                        v245 = 0;
                        v178 = [(BMMomentsEngagementAppEntryEventComposerAsset *)v177 initWithJSONDictionary:v176 error:&v245];
                        v179 = v245;
                        if (v179)
                        {
                          v196 = v179;
                          v197 = v176;
                          if (v239)
                          {
                            v198 = v179;
                            *v239 = v196;
                          }

                          v6 = v217;
                          self = v234;
                          v23 = v229;
                          v192 = v197;
LABEL_220:

                          v93 = v220;
LABEL_221:

                          v24 = 0;
                          v7 = v237;
                          v180 = v208;
                          goto LABEL_222;
                        }

                        [v208 addObject:v178];

                        ++v174;
                        v93 = v220;
                        if (v172 == v174)
                        {
                          v6 = v217;
                          self = v234;
                          v172 = [v210 countByEnumeratingWithState:&v246 objects:v273 count:16];
                          if (v172)
                          {
                            goto LABEL_195;
                          }

LABEL_203:

                          v180 = v208;
                          v23 = v229;
                          self = -[BMMomentsEngagementAppEntryEvent initWithType:clientIdentifier:timestamp:identifier:startTime:endTime:totalCharacters:addedCharacters:usedPhotoAssets:appEntryEventType:bundleInterfaceTypes:bundleEvergreenTypes:bundleSummary:assets:](self, "initWithType:clientIdentifier:timestamp:identifier:startTime:endTime:totalCharacters:addedCharacters:usedPhotoAssets:appEntryEventType:bundleInterfaceTypes:bundleEvergreenTypes:bundleSummary:assets:", [v235 intValue], v238, v236, v243, v229, v39, v93, v221, v232, v219, v222, v214, v207, v208);
                          v24 = self;
                          v7 = v237;
LABEL_222:

                          goto LABEL_223;
                        }
                      }

                      v6 = v217;
                      self = v234;
                      v190 = v239;
                      v23 = v229;
                      if (!v239)
                      {
                        goto LABEL_221;
                      }

                      v191 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v206 = *MEMORY[0x1E698F240];
                      v271 = *MEMORY[0x1E696A578];
                      v192 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"assets"];
                      v272 = v192;
                      v193 = MEMORY[0x1E695DF20];
                      v194 = &v272;
                      v195 = &v271;
LABEL_216:
                      v196 = [v193 dictionaryWithObjects:v194 forKeys:v195 count:1];
                      *v190 = [v191 initWithDomain:v206 code:2 userInfo:v196];
                      goto LABEL_220;
                    }

                    if (!v168)
                    {
                      goto LABEL_193;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      goto LABEL_193;
                    }

                    v210 = v168;
                    if (v239)
                    {
                      v230 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v209 = *MEMORY[0x1E698F240];
                      v274 = *MEMORY[0x1E696A578];
                      v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"assets"];
                      v275 = v201;
                      v202 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v275 forKeys:&v274 count:1];
                      *v239 = [v230 initWithDomain:v209 code:2 userInfo:v202];
                      v180 = v201;

                      v24 = 0;
                      v93 = v220;
                      goto LABEL_222;
                    }

                    v24 = 0;
                    v93 = v220;
LABEL_223:
                    v124 = v213;
LABEL_224:

LABEL_225:
LABEL_226:

LABEL_227:
                    v87 = v218;
                    goto LABEL_228;
                  }

                  if (v239)
                  {
                    v184 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v211 = *MEMORY[0x1E698F240];
                    v276 = *MEMORY[0x1E696A578];
                    v185 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v205 = objc_opt_class();
                    v186 = v185;
                    v93 = v220;
                    v207 = [v186 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", v205, @"bundleSummary"];
                    v277 = v207;
                    v187 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v277 forKeys:&v276 count:1];
                    v188 = v211;
                    v210 = v187;
                    v189 = [v184 initWithDomain:v188 code:2 userInfo:?];
                    v24 = 0;
                    *v239 = v189;
                    v23 = v229;
                    goto LABEL_223;
                  }

                  v24 = 0;
                  v23 = v229;
LABEL_187:
                  v124 = v213;
                  goto LABEL_225;
                }
              }

              if (v239)
              {
                v158 = objc_alloc(MEMORY[0x1E696ABC0]);
                v159 = *MEMORY[0x1E698F240];
                v280 = *MEMORY[0x1E696A578];
                v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"bundleEvergreenTypes"];
                v281 = v207;
                v160 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v281 forKeys:&v280 count:1];
                v161 = v158;
                v162 = v159;
LABEL_179:
                v210 = v160;
                v6 = v150;
                v23 = v229;
                v24 = 0;
                *v239 = [v161 initWithDomain:v162 code:2 userInfo:?];
                v124 = v213;
                v212 = v213;
                self = v234;
                v93 = v220;
                goto LABEL_224;
              }

LABEL_183:
              v24 = 0;
              v124 = v213;
              v212 = v213;
              v6 = v150;
              self = v234;
              v23 = v229;
              goto LABEL_149;
            }

            v118 = v117;
            v119 = *v256;
LABEL_132:
            v120 = v6;
            v121 = 0;
            while (1)
            {
              if (*v256 != v119)
              {
                objc_enumerationMutation(v105);
              }

              v122 = *(*(&v255 + 1) + 8 * v121);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                break;
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (v239)
                {
                  v132 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v133 = *MEMORY[0x1E698F240];
                  v285 = *MEMORY[0x1E696A578];
                  v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleInterfaceTypes"];
                  v286 = v214;
                  v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v286 forKeys:&v285 count:1];
                  v130 = v132;
                  v131 = v133;
LABEL_148:
                  v212 = v129;
                  v6 = v120;
                  v23 = v229;
                  v24 = 0;
                  *v239 = [v130 initWithDomain:v131 code:2 userInfo:?];
                  v124 = v105;
                  self = v234;
LABEL_149:
                  v93 = v220;
                  goto LABEL_225;
                }

                goto LABEL_155;
              }

              v123 = v122;
              [v222 addObject:v123];

              if (v118 == ++v121)
              {
                v118 = [v105 countByEnumeratingWithState:&v255 objects:v289 count:16];
                v6 = v120;
                self = v234;
                if (!v118)
                {
                  goto LABEL_139;
                }

                goto LABEL_132;
              }
            }

            if (v239)
            {
              v127 = objc_alloc(MEMORY[0x1E696ABC0]);
              v128 = *MEMORY[0x1E698F240];
              v287 = *MEMORY[0x1E696A578];
              v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"bundleInterfaceTypes"];
              v288 = v214;
              v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v288 forKeys:&v287 count:1];
              v130 = v127;
              v131 = v128;
              goto LABEL_148;
            }

LABEL_155:
            v24 = 0;
            v124 = v105;
            v6 = v120;
            self = v234;
            v23 = v229;
LABEL_174:
            v93 = v220;
            goto LABEL_226;
          }

          if (v239)
          {
            v215 = objc_alloc(MEMORY[0x1E696ABC0]);
            v156 = *MEMORY[0x1E698F240];
            v290 = *MEMORY[0x1E696A578];
            v222 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"bundleInterfaceTypes"];
            v291 = v222;
            v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
            v157 = [v215 initWithDomain:v156 code:2 userInfo:v124];
            v24 = 0;
            *v239 = v157;
            goto LABEL_174;
          }

          v24 = 0;
LABEL_115:
          v93 = v220;
          goto LABEL_227;
        }

        v7 = v237;
        if (v239)
        {
          v223 = objc_alloc(MEMORY[0x1E696ABC0]);
          v143 = *MEMORY[0x1E698F240];
          v292 = *MEMORY[0x1E696A578];
          v105 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appEntryEventType"];
          v293 = v105;
          v144 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
          v145 = v223;
          v224 = v144;
          v146 = [v145 initWithDomain:v143 code:2 userInfo:?];
          v219 = 0;
          v24 = 0;
          *v239 = v146;
          v23 = v229;
          v93 = v220;

          goto LABEL_227;
        }

        v219 = 0;
        v24 = 0;
        v23 = v229;
        v93 = v220;
LABEL_228:

        v48 = v238;
        v47 = v236;
        v114 = v219;
LABEL_229:

LABEL_230:
LABEL_231:

LABEL_232:
LABEL_233:

LABEL_234:
        v9 = v235;
        goto LABEL_235;
      }
    }
  }

  v26 = v25;
  v27 = *v266;
LABEL_24:
  v28 = v6;
  v29 = 0;
  while (1)
  {
    if (*v266 != v27)
    {
      objc_enumerationMutation(v15);
    }

    v30 = *(*(&v265 + 1) + 8 * v29);
    v31 = *(v18 + 4016);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v49 = v239;
      if (!v239)
      {
        goto LABEL_55;
      }

      v50 = objc_alloc(MEMORY[0x1E696ABC0]);
      v51 = *MEMORY[0x1E698F240];
      v309 = *MEMORY[0x1E696A578];
      v52 = v15;
      v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"identifier"];
      v310 = v32;
      v53 = MEMORY[0x1E695DF20];
      v54 = &v310;
      v55 = &v309;
LABEL_48:
      v39 = [v53 dictionaryWithObjects:v54 forKeys:v55 count:1];
      v24 = 0;
      *v49 = [v50 initWithDomain:v51 code:2 userInfo:v39];
      v23 = v52;
LABEL_52:
      v6 = v28;
      self = v234;
      v48 = v238;
      v47 = v236;
      goto LABEL_234;
    }

    v32 = v30;
    v33 = [BMMomentsEngagementSuggestionIdentifier alloc];
    v264 = 0;
    v34 = [(BMMomentsEngagementSuggestionIdentifier *)v33 initWithJSONDictionary:v32 error:&v264];
    v35 = v264;
    if (v35)
    {
      v39 = v35;
      if (v239)
      {
        v56 = v35;
        *v239 = v39;
      }

      v24 = 0;
      v23 = v242;
      goto LABEL_52;
    }

    [v243 addObject:v34];

    ++v29;
    v15 = v242;
    v18 = 0x1E695D000uLL;
    if (v26 == v29)
    {
      v26 = [v242 countByEnumeratingWithState:&v265 objects:v313 count:16];
      v6 = v28;
      self = v234;
      v9 = v235;
      if (!v26)
      {
        goto LABEL_32;
      }

      goto LABEL_24;
    }
  }

  v49 = v239;
  if (v239)
  {
    v50 = objc_alloc(MEMORY[0x1E696ABC0]);
    v51 = *MEMORY[0x1E698F240];
    v311 = *MEMORY[0x1E696A578];
    v52 = v15;
    v32 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"identifier"];
    v312 = v32;
    v53 = MEMORY[0x1E695DF20];
    v54 = &v312;
    v55 = &v311;
    goto LABEL_48;
  }

LABEL_55:
  v24 = 0;
  v23 = v15;
  v6 = v28;
  self = v234;
  v9 = v235;
LABEL_56:
  v48 = v238;
  v47 = v236;
LABEL_236:

LABEL_237:
LABEL_238:

LABEL_239:
LABEL_240:

  v199 = *MEMORY[0x1E69E9840];
  return v24;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagementAppEntryEvent *)self writeTo:v3];
  v4 = [v3 immutableData];

  return v4;
}

- (void)writeTo:(id)a3
{
  v68 = *MEMORY[0x1E69E9840];
  v4 = a3;
  type = self->_type;
  PBDataWriterWriteUint32Field();
  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasRaw_timestamp)
  {
    raw_timestamp = self->_raw_timestamp;
    PBDataWriterWriteDoubleField();
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v7 = self->_identifier;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v59 objects:v67 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v60;
    do
    {
      v11 = 0;
      do
      {
        if (*v60 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v59 + 1) + 8 * v11);
        v58 = 0;
        PBDataWriterPlaceMark();
        [v12 writeTo:v4];
        PBDataWriterRecallMark();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v59 objects:v67 count:16];
    }

    while (v9);
  }

  if (self->_hasRaw_startTime)
  {
    raw_startTime = self->_raw_startTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_endTime)
  {
    raw_endTime = self->_raw_endTime;
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasTotalCharacters)
  {
    totalCharacters = self->_totalCharacters;
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasAddedCharacters)
  {
    addedCharacters = self->_addedCharacters;
    PBDataWriterWriteInt32Field();
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v17 = self->_usedPhotoAssets;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v55;
    do
    {
      v21 = 0;
      do
      {
        if (*v55 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v54 + 1) + 8 * v21);
        v58 = 0;
        PBDataWriterPlaceMark();
        [v22 writeTo:v4];
        PBDataWriterRecallMark();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v19);
  }

  if (self->_appEntryEventType)
  {
    PBDataWriterWriteStringField();
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v23 = self->_bundleInterfaceTypes;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v50 objects:v65 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v51;
    do
    {
      v27 = 0;
      do
      {
        if (*v51 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v50 + 1) + 8 * v27);
        PBDataWriterWriteStringField();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v50 objects:v65 count:16];
    }

    while (v25);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = self->_bundleEvergreenTypes;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v46 objects:v64 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    do
    {
      v33 = 0;
      do
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v46 + 1) + 8 * v33);
        PBDataWriterWriteStringField();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v46 objects:v64 count:16];
    }

    while (v31);
  }

  if (self->_bundleSummary)
  {
    v58 = 0;
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementBundleSummary *)self->_bundleSummary writeTo:v4];
    PBDataWriterRecallMark();
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v35 = self->_assets;
  v36 = [(NSArray *)v35 countByEnumeratingWithState:&v42 objects:v63 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v43;
    do
    {
      v39 = 0;
      do
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v42 + 1) + 8 * v39);
        v58 = 0;
        PBDataWriterPlaceMark();
        [v40 writeTo:{v4, v42}];
        PBDataWriterRecallMark();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSArray *)v35 countByEnumeratingWithState:&v42 objects:v63 count:16];
    }

    while (v37);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)a3
{
  v4 = a3;
  v77.receiver = self;
  v77.super_class = BMMomentsEngagementAppEntryEvent;
  v5 = [(BMEventBase *)&v77 init];
  if (!v5)
  {
    goto LABEL_99;
  }

  v76 = objc_opt_new();
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
      LOBYTE(v78) = 0;
      v14 = [v4 position] + 1;
      if (v14 >= [v4 position] && (v15 = objc_msgSend(v4, "position") + 1, v15 <= objc_msgSend(v4, "length")))
      {
        v16 = [v4 data];
        [v16 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v13 |= (LOBYTE(v78) & 0x7F) << v11;
      if ((LOBYTE(v78) & 0x80) == 0)
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

    switch((v18 >> 3))
    {
      case 1u:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v78) = 0;
          v22 = [v4 position] + 1;
          if (v22 >= [v4 position] && (v23 = objc_msgSend(v4, "position") + 1, v23 <= objc_msgSend(v4, "length")))
          {
            v24 = [v4 data];
            [v24 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v21 |= (LOBYTE(v78) & 0x7F) << v19;
          if ((LOBYTE(v78) & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          if (v20++ > 8)
          {
            goto LABEL_85;
          }
        }

        if (([v4 hasError] & 1) != 0 || v21 > 4)
        {
LABEL_85:
          LODWORD(v21) = 0;
        }

        v5->_type = v21;
        continue;
      case 2u:
        v33 = PBReaderReadString();
        v34 = 88;
        goto LABEL_54;
      case 3u:
        v5->_hasRaw_timestamp = 1;
        v78 = 0.0;
        v35 = [v4 position] + 8;
        if (v35 >= [v4 position] && (v36 = objc_msgSend(v4, "position") + 8, v36 <= objc_msgSend(v4, "length")))
        {
          v61 = [v4 data];
          [v61 getBytes:&v78 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_timestamp = v78;
        continue;
      case 4u:
        v78 = 0.0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_101;
        }

        v37 = [[BMMomentsEngagementSuggestionIdentifier alloc] initByReadFrom:v4];
        if (!v37)
        {
          goto LABEL_101;
        }

        v38 = v37;
        v39 = v76;
        goto LABEL_76;
      case 5u:
        v5->_hasRaw_startTime = 1;
        v78 = 0.0;
        v29 = [v4 position] + 8;
        if (v29 >= [v4 position] && (v30 = objc_msgSend(v4, "position") + 8, v30 <= objc_msgSend(v4, "length")))
        {
          v60 = [v4 data];
          [v60 getBytes:&v78 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_startTime = v78;
        continue;
      case 6u:
        v5->_hasRaw_endTime = 1;
        v78 = 0.0;
        v48 = [v4 position] + 8;
        if (v48 >= [v4 position] && (v49 = objc_msgSend(v4, "position") + 8, v49 <= objc_msgSend(v4, "length")))
        {
          v62 = [v4 data];
          [v62 getBytes:&v78 range:{objc_msgSend(v4, "position"), 8}];

          [v4 setPosition:{objc_msgSend(v4, "position") + 8}];
        }

        else
        {
          [v4 _setError];
        }

        v5->_raw_endTime = v78;
        continue;
      case 7u:
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v5->_hasTotalCharacters = 1;
        while (1)
        {
          LOBYTE(v78) = 0;
          v54 = [v4 position] + 1;
          if (v54 >= [v4 position] && (v55 = objc_msgSend(v4, "position") + 1, v55 <= objc_msgSend(v4, "length")))
          {
            v56 = [v4 data];
            [v56 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

            [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
          }

          else
          {
            [v4 _setError];
          }

          v53 |= (LOBYTE(v78) & 0x7F) << v51;
          if ((LOBYTE(v78) & 0x80) == 0)
          {
            break;
          }

          v51 += 7;
          v17 = v52++ >= 9;
          if (v17)
          {
            v57 = 0;
            goto LABEL_90;
          }
        }

        if ([v4 hasError])
        {
          v57 = 0;
        }

        else
        {
          v57 = v53;
        }

LABEL_90:
        v5->_totalCharacters = v57;
        continue;
      case 8u:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v5->_hasAddedCharacters = 1;
        break;
      case 9u:
        v78 = 0.0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_101;
        }

        v59 = [[BMMomentsEngagementPhotosAssets alloc] initByReadFrom:v4];
        if (!v59)
        {
          goto LABEL_101;
        }

        v38 = v59;
        v39 = v6;
        goto LABEL_76;
      case 0xAu:
        v33 = PBReaderReadString();
        v34 = 112;
LABEL_54:
        v47 = *(&v5->super.super.isa + v34);
        *(&v5->super.super.isa + v34) = v33;

        continue;
      case 0xBu:
        v58 = PBReaderReadString();
        if (!v58)
        {
          goto LABEL_101;
        }

        v27 = v58;
        v28 = v7;
        goto LABEL_72;
      case 0xCu:
        v26 = PBReaderReadString();
        if (!v26)
        {
          goto LABEL_101;
        }

        v27 = v26;
        v28 = v8;
LABEL_72:
        [v28 addObject:v27];

        continue;
      case 0xDu:
        v78 = 0.0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_101;
        }

        v31 = [[BMMomentsEngagementBundleSummary alloc] initByReadFrom:v4];
        if (!v31)
        {
          goto LABEL_101;
        }

        bundleSummary = v5->_bundleSummary;
        v5->_bundleSummary = v31;

        PBReaderRecallMark();
        continue;
      case 0xEu:
        v78 = 0.0;
        v79 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_101;
        }

        v50 = [[BMMomentsEngagementAppEntryEventComposerAsset alloc] initByReadFrom:v4];
        if (!v50)
        {
          goto LABEL_101;
        }

        v38 = v50;
        v39 = v9;
LABEL_76:
        [v39 addObject:v38];
        PBReaderRecallMark();

        continue;
      default:
        if (PBReaderSkipValueWithTag())
        {
          continue;
        }

LABEL_101:

        goto LABEL_98;
    }

    while (1)
    {
      LOBYTE(v78) = 0;
      v43 = [v4 position] + 1;
      if (v43 >= [v4 position] && (v44 = objc_msgSend(v4, "position") + 1, v44 <= objc_msgSend(v4, "length")))
      {
        v45 = [v4 data];
        [v45 getBytes:&v78 range:{objc_msgSend(v4, "position"), 1}];

        [v4 setPosition:{objc_msgSend(v4, "position") + 1}];
      }

      else
      {
        [v4 _setError];
      }

      v42 |= (LOBYTE(v78) & 0x7F) << v40;
      if ((LOBYTE(v78) & 0x80) == 0)
      {
        break;
      }

      v40 += 7;
      v17 = v41++ >= 9;
      if (v17)
      {
        v46 = 0;
        goto LABEL_82;
      }
    }

    if ([v4 hasError])
    {
      v46 = 0;
    }

    else
    {
      v46 = v42;
    }

LABEL_82:
    v5->_addedCharacters = v46;
  }

  v63 = [v76 copy];
  identifier = v5->_identifier;
  v5->_identifier = v63;

  v65 = [v6 copy];
  usedPhotoAssets = v5->_usedPhotoAssets;
  v5->_usedPhotoAssets = v65;

  v67 = [v7 copy];
  bundleInterfaceTypes = v5->_bundleInterfaceTypes;
  v5->_bundleInterfaceTypes = v67;

  v69 = [v8 copy];
  bundleEvergreenTypes = v5->_bundleEvergreenTypes;
  v5->_bundleEvergreenTypes = v69;

  v71 = [v9 copy];
  assets = v5->_assets;
  v5->_assets = v71;

  v73 = [v4 hasError];
  if (v73)
  {
LABEL_98:
    v74 = 0;
  }

  else
  {
LABEL_99:
    v74 = v5;
  }

  return v74;
}

- (NSString)description
{
  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v19 = BMMomentsEngagementAppEntryEventTypeAsString([(BMMomentsEngagementAppEntryEvent *)self type]);
  v18 = [(BMMomentsEngagementAppEntryEvent *)self clientIdentifier];
  v14 = [(BMMomentsEngagementAppEntryEvent *)self timestamp];
  v17 = [(BMMomentsEngagementAppEntryEvent *)self identifier];
  v3 = [(BMMomentsEngagementAppEntryEvent *)self startTime];
  v4 = [(BMMomentsEngagementAppEntryEvent *)self endTime];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementAppEntryEvent totalCharacters](self, "totalCharacters")}];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagementAppEntryEvent addedCharacters](self, "addedCharacters")}];
  v6 = [(BMMomentsEngagementAppEntryEvent *)self usedPhotoAssets];
  v7 = [(BMMomentsEngagementAppEntryEvent *)self appEntryEventType];
  v8 = [(BMMomentsEngagementAppEntryEvent *)self bundleInterfaceTypes];
  v9 = [(BMMomentsEngagementAppEntryEvent *)self bundleEvergreenTypes];
  v10 = [(BMMomentsEngagementAppEntryEvent *)self bundleSummary];
  v11 = [(BMMomentsEngagementAppEntryEvent *)self assets];
  v16 = [v15 initWithFormat:@"BMMomentsEngagementAppEntryEvent with type: %@, clientIdentifier: %@, timestamp: %@, identifier: %@, startTime: %@, endTime: %@, totalCharacters: %@, addedCharacters: %@, usedPhotoAssets: %@, appEntryEventType: %@, bundleInterfaceTypes: %@, bundleEvergreenTypes: %@, bundleSummary: %@, assets: %@", v19, v18, v14, v17, v3, v4, v5, v13, v6, v7, v8, v9, v10, v11];

  return v16;
}

- (BMMomentsEngagementAppEntryEvent)initWithType:(int)a3 clientIdentifier:(id)a4 timestamp:(id)a5 identifier:(id)a6 startTime:(id)a7 endTime:(id)a8 totalCharacters:(id)a9 addedCharacters:(id)a10 usedPhotoAssets:(id)a11 appEntryEventType:(id)a12 bundleInterfaceTypes:(id)a13 bundleEvergreenTypes:(id)a14 bundleSummary:(id)a15 assets:(id)a16
{
  v44 = a4;
  v20 = a5;
  v39 = a6;
  v43 = a6;
  v21 = a7;
  v22 = a8;
  v23 = v20;
  v24 = a9;
  v25 = a10;
  v42 = a11;
  v41 = a12;
  v26 = a13;
  v27 = a14;
  v28 = a15;
  v29 = a16;
  v45.receiver = self;
  v45.super_class = BMMomentsEngagementAppEntryEvent;
  v30 = [(BMEventBase *)&v45 init];
  if (v30)
  {
    v30->_dataVersion = [objc_opt_class() latestDataVersion];
    v30->_type = a3;
    objc_storeStrong(&v30->_clientIdentifier, a4);
    if (v23)
    {
      v30->_hasRaw_timestamp = 1;
      [v23 timeIntervalSince1970];
    }

    else
    {
      v30->_hasRaw_timestamp = 0;
      v31 = -1.0;
    }

    v30->_raw_timestamp = v31;
    objc_storeStrong(&v30->_identifier, v39);
    if (v21)
    {
      v30->_hasRaw_startTime = 1;
      [v21 timeIntervalSince1970];
    }

    else
    {
      v30->_hasRaw_startTime = 0;
      v32 = -1.0;
    }

    v30->_raw_startTime = v32;
    if (v22)
    {
      v30->_hasRaw_endTime = 1;
      [v22 timeIntervalSince1970];
    }

    else
    {
      v30->_hasRaw_endTime = 0;
      v33 = -1.0;
    }

    v30->_raw_endTime = v33;
    if (v24)
    {
      v30->_hasTotalCharacters = 1;
      v34 = [v24 intValue];
    }

    else
    {
      v30->_hasTotalCharacters = 0;
      v34 = -1;
    }

    v30->_totalCharacters = v34;
    if (v25)
    {
      v30->_hasAddedCharacters = 1;
      v35 = [v25 intValue];
    }

    else
    {
      v30->_hasAddedCharacters = 0;
      v35 = -1;
    }

    v30->_addedCharacters = v35;
    objc_storeStrong(&v30->_usedPhotoAssets, a11);
    objc_storeStrong(&v30->_appEntryEventType, a12);
    objc_storeStrong(&v30->_bundleInterfaceTypes, a13);
    objc_storeStrong(&v30->_bundleEvergreenTypes, a14);
    objc_storeStrong(&v30->_bundleSummary, a15);
    objc_storeStrong(&v30->_assets, a16);
  }

  return v30;
}

+ (id)protoFields
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"type" number:1 type:4 subMessageClass:0];
  v19[0] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientIdentifier" number:2 type:13 subMessageClass:0];
  v19[1] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"timestamp" number:3 type:0 subMessageClass:0];
  v19[2] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:4 type:14 subMessageClass:objc_opt_class()];
  v19[3] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startTime" number:5 type:0 subMessageClass:0];
  v19[4] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endTime" number:6 type:0 subMessageClass:0];
  v19[5] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"totalCharacters" number:7 type:2 subMessageClass:0];
  v19[6] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"addedCharacters" number:8 type:2 subMessageClass:0];
  v19[7] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"usedPhotoAssets" number:9 type:14 subMessageClass:objc_opt_class()];
  v19[8] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appEntryEventType" number:10 type:13 subMessageClass:0];
  v19[9] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleInterfaceTypes" number:11 type:13 subMessageClass:0];
  v19[10] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleEvergreenTypes" number:12 type:13 subMessageClass:0];
  v19[11] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleSummary" number:13 type:14 subMessageClass:objc_opt_class()];
  v19[12] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"assets" number:14 type:14 subMessageClass:objc_opt_class()];
  v19[13] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v19[14] = *MEMORY[0x1E69E9840];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"type" dataType:0 requestOnly:0 fieldNumber:1 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"clientIdentifier" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"timestamp" dataType:3 requestOnly:0 fieldNumber:3 protoDataType:0 convertedType:2];
  v15 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"identifier_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_760_51397];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startTime" dataType:3 requestOnly:0 fieldNumber:5 protoDataType:0 convertedType:2];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endTime" dataType:3 requestOnly:0 fieldNumber:6 protoDataType:0 convertedType:2];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"totalCharacters" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"addedCharacters" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"usedPhotoAssets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_762];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appEntryEventType" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bundleInterfaceTypes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_764_51398];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bundleEvergreenTypes_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_766_51399];
  v7 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bundleSummary_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_768_51400];
  v8 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"assets_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_770];
  v19[0] = v18;
  v19[1] = v17;
  v19[2] = v16;
  v19[3] = v15;
  v19[4] = v2;
  v19[5] = v3;
  v19[6] = v4;
  v19[7] = v5;
  v19[8] = v14;
  v19[9] = v13;
  v19[10] = v6;
  v19[11] = v12;
  v19[12] = v7;
  v19[13] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:14];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _assetsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 bundleSummary];
  v4 = [v3 jsonDictionary];
  v5 = BMConvertObjectToJSONString();

  return v5;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _bundleEvergreenTypesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _bundleInterfaceTypesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _usedPhotoAssetsJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __43__BMMomentsEngagementAppEntryEvent_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _identifierJSONArray];
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

    v8 = [[BMMomentsEngagementAppEntryEvent alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[17] = 0;
    }
  }

  return v4;
}

@end