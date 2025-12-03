@interface BMSafariBrowsingAssistantDimensionContext
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMSafariBrowsingAssistantDimensionContext)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMSafariBrowsingAssistantDimensionContext)initWithWebpageViewIdentifier:(id)identifier systemLocale:(id)locale currentCountry:(id)country build:(id)build osType:(id)type productType:(id)productType buildType:(int)buildType duEnabled:(id)self0 searchBarPosition:(int)self1 prefixStoreVersion:(id)self2 trialExperiment:(id)self3;
- (BMSafariBrowsingAssistantDimensionContext)initWithWebpageViewIdentifier:(id)identifier systemLocale:(id)locale currentCountry:(id)country build:(id)build osType:(id)type productType:(id)productType buildType:(int)buildType duEnabled:(id)self0 searchBarPosition:(int)self1 prefixStoreVersion:(id)self2 trialExperiment:(id)self3 isInternalTest:(id)self4;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_trialExperimentJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMSafariBrowsingAssistantDimensionContext

- (BMSafariBrowsingAssistantDimensionContext)initWithWebpageViewIdentifier:(id)identifier systemLocale:(id)locale currentCountry:(id)country build:(id)build osType:(id)type productType:(id)productType buildType:(int)buildType duEnabled:(id)self0 searchBarPosition:(int)self1 prefixStoreVersion:(id)self2 trialExperiment:(id)self3
{
  LODWORD(v15) = position;
  LODWORD(v14) = buildType;
  return [(BMSafariBrowsingAssistantDimensionContext *)self initWithWebpageViewIdentifier:identifier systemLocale:locale currentCountry:country build:build osType:type productType:productType buildType:v14 duEnabled:enabled searchBarPosition:v15 prefixStoreVersion:version trialExperiment:experiment isInternalTest:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    webpageViewIdentifier = [(BMSafariBrowsingAssistantDimensionContext *)self webpageViewIdentifier];
    webpageViewIdentifier2 = [v5 webpageViewIdentifier];
    v8 = webpageViewIdentifier2;
    if (webpageViewIdentifier == webpageViewIdentifier2)
    {
    }

    else
    {
      webpageViewIdentifier3 = [(BMSafariBrowsingAssistantDimensionContext *)self webpageViewIdentifier];
      webpageViewIdentifier4 = [v5 webpageViewIdentifier];
      v11 = [webpageViewIdentifier3 isEqual:webpageViewIdentifier4];

      if (!v11)
      {
        goto LABEL_47;
      }
    }

    systemLocale = [(BMSafariBrowsingAssistantDimensionContext *)self systemLocale];
    systemLocale2 = [v5 systemLocale];
    v15 = systemLocale2;
    if (systemLocale == systemLocale2)
    {
    }

    else
    {
      systemLocale3 = [(BMSafariBrowsingAssistantDimensionContext *)self systemLocale];
      systemLocale4 = [v5 systemLocale];
      v18 = [systemLocale3 isEqual:systemLocale4];

      if (!v18)
      {
        goto LABEL_47;
      }
    }

    currentCountry = [(BMSafariBrowsingAssistantDimensionContext *)self currentCountry];
    currentCountry2 = [v5 currentCountry];
    v21 = currentCountry2;
    if (currentCountry == currentCountry2)
    {
    }

    else
    {
      currentCountry3 = [(BMSafariBrowsingAssistantDimensionContext *)self currentCountry];
      currentCountry4 = [v5 currentCountry];
      v24 = [currentCountry3 isEqual:currentCountry4];

      if (!v24)
      {
        goto LABEL_47;
      }
    }

    build = [(BMSafariBrowsingAssistantDimensionContext *)self build];
    build2 = [v5 build];
    v27 = build2;
    if (build == build2)
    {
    }

    else
    {
      build3 = [(BMSafariBrowsingAssistantDimensionContext *)self build];
      build4 = [v5 build];
      v30 = [build3 isEqual:build4];

      if (!v30)
      {
        goto LABEL_47;
      }
    }

    osType = [(BMSafariBrowsingAssistantDimensionContext *)self osType];
    osType2 = [v5 osType];
    v33 = osType2;
    if (osType == osType2)
    {
    }

    else
    {
      osType3 = [(BMSafariBrowsingAssistantDimensionContext *)self osType];
      osType4 = [v5 osType];
      v36 = [osType3 isEqual:osType4];

      if (!v36)
      {
        goto LABEL_47;
      }
    }

    productType = [(BMSafariBrowsingAssistantDimensionContext *)self productType];
    productType2 = [v5 productType];
    v39 = productType2;
    if (productType == productType2)
    {
    }

    else
    {
      productType3 = [(BMSafariBrowsingAssistantDimensionContext *)self productType];
      productType4 = [v5 productType];
      v42 = [productType3 isEqual:productType4];

      if (!v42)
      {
        goto LABEL_47;
      }
    }

    buildType = [(BMSafariBrowsingAssistantDimensionContext *)self buildType];
    if (buildType != [v5 buildType])
    {
      goto LABEL_47;
    }

    if (-[BMSafariBrowsingAssistantDimensionContext hasDuEnabled](self, "hasDuEnabled") || [v5 hasDuEnabled])
    {
      if (![(BMSafariBrowsingAssistantDimensionContext *)self hasDuEnabled])
      {
        goto LABEL_47;
      }

      if (![v5 hasDuEnabled])
      {
        goto LABEL_47;
      }

      duEnabled = [(BMSafariBrowsingAssistantDimensionContext *)self duEnabled];
      if (duEnabled != [v5 duEnabled])
      {
        goto LABEL_47;
      }
    }

    searchBarPosition = [(BMSafariBrowsingAssistantDimensionContext *)self searchBarPosition];
    if (searchBarPosition != [v5 searchBarPosition])
    {
      goto LABEL_47;
    }

    prefixStoreVersion = [(BMSafariBrowsingAssistantDimensionContext *)self prefixStoreVersion];
    prefixStoreVersion2 = [v5 prefixStoreVersion];
    v48 = prefixStoreVersion2;
    if (prefixStoreVersion == prefixStoreVersion2)
    {
    }

    else
    {
      prefixStoreVersion3 = [(BMSafariBrowsingAssistantDimensionContext *)self prefixStoreVersion];
      prefixStoreVersion4 = [v5 prefixStoreVersion];
      v51 = [prefixStoreVersion3 isEqual:prefixStoreVersion4];

      if (!v51)
      {
        goto LABEL_47;
      }
    }

    trialExperiment = [(BMSafariBrowsingAssistantDimensionContext *)self trialExperiment];
    trialExperiment2 = [v5 trialExperiment];
    v54 = trialExperiment2;
    if (trialExperiment == trialExperiment2)
    {
    }

    else
    {
      trialExperiment3 = [(BMSafariBrowsingAssistantDimensionContext *)self trialExperiment];
      trialExperiment4 = [v5 trialExperiment];
      v57 = [trialExperiment3 isEqual:trialExperiment4];

      if (!v57)
      {
        goto LABEL_47;
      }
    }

    if (!-[BMSafariBrowsingAssistantDimensionContext hasIsInternalTest](self, "hasIsInternalTest") && ![v5 hasIsInternalTest])
    {
      LOBYTE(v12) = 1;
      goto LABEL_48;
    }

    if (-[BMSafariBrowsingAssistantDimensionContext hasIsInternalTest](self, "hasIsInternalTest") && [v5 hasIsInternalTest])
    {
      isInternalTest = [(BMSafariBrowsingAssistantDimensionContext *)self isInternalTest];
      v12 = isInternalTest ^ [v5 isInternalTest] ^ 1;
LABEL_48:

      goto LABEL_49;
    }

LABEL_47:
    LOBYTE(v12) = 0;
    goto LABEL_48;
  }

  LOBYTE(v12) = 0;
LABEL_49:

  return v12;
}

- (id)jsonDictionary
{
  v41[12] = *MEMORY[0x1E69E9840];
  webpageViewIdentifier = [(BMSafariBrowsingAssistantDimensionContext *)self webpageViewIdentifier];
  v4 = [webpageViewIdentifier base64EncodedStringWithOptions:0];

  systemLocale = [(BMSafariBrowsingAssistantDimensionContext *)self systemLocale];
  currentCountry = [(BMSafariBrowsingAssistantDimensionContext *)self currentCountry];
  build = [(BMSafariBrowsingAssistantDimensionContext *)self build];
  osType = [(BMSafariBrowsingAssistantDimensionContext *)self osType];
  productType = [(BMSafariBrowsingAssistantDimensionContext *)self productType];
  v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantDimensionContext buildType](self, "buildType")}];
  v9 = 0;
  if ([(BMSafariBrowsingAssistantDimensionContext *)self hasDuEnabled])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariBrowsingAssistantDimensionContext duEnabled](self, "duEnabled")}];
  }

  v37 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMSafariBrowsingAssistantDimensionContext searchBarPosition](self, "searchBarPosition")}];
  prefixStoreVersion = [(BMSafariBrowsingAssistantDimensionContext *)self prefixStoreVersion];
  _trialExperimentJSONArray = [(BMSafariBrowsingAssistantDimensionContext *)self _trialExperimentJSONArray];
  if ([(BMSafariBrowsingAssistantDimensionContext *)self hasIsInternalTest])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariBrowsingAssistantDimensionContext isInternalTest](self, "isInternalTest")}];
  }

  else
  {
    v10 = 0;
  }

  v40[0] = @"webpageViewIdentifier";
  null = v4;
  if (!v4)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v29 = null;
  v41[0] = null;
  v40[1] = @"systemLocale";
  null2 = systemLocale;
  if (!systemLocale)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v28 = null2;
  v41[1] = null2;
  v40[2] = @"currentCountry";
  null3 = currentCountry;
  if (!currentCountry)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = null3;
  v41[2] = null3;
  v40[3] = @"build";
  null4 = build;
  if (!build)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v4;
  v26 = null4;
  v41[3] = null4;
  v40[4] = @"osType";
  null5 = osType;
  if (!osType)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v33 = systemLocale;
  v25 = null5;
  v41[4] = null5;
  v40[5] = @"productType";
  null6 = productType;
  if (!productType)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = currentCountry;
  v41[5] = null6;
  v40[6] = @"buildType";
  null7 = v38;
  if (!v38)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = build;
  v41[6] = null7;
  v40[7] = @"duEnabled";
  null8 = v9;
  if (!v9)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v41[7] = null8;
  v40[8] = @"searchBarPosition";
  null9 = v37;
  if (!v37)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v41[8] = null9;
  v40[9] = @"prefixStoreVersion";
  null10 = prefixStoreVersion;
  if (!prefixStoreVersion)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v41[9] = null10;
  v40[10] = @"trialExperiment";
  null11 = _trialExperimentJSONArray;
  if (!_trialExperimentJSONArray)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v41[10] = null11;
  v40[11] = @"isInternalTest";
  null12 = v10;
  if (!v10)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v41[11] = null12;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:12];
  if (!v10)
  {
  }

  if (!_trialExperimentJSONArray)
  {
  }

  if (!prefixStoreVersion)
  {
  }

  if (v37)
  {
    if (v9)
    {
      goto LABEL_38;
    }
  }

  else
  {

    if (v9)
    {
      goto LABEL_38;
    }
  }

LABEL_38:
  if (!v38)
  {
  }

  if (!productType)
  {
  }

  if (!osType)
  {
  }

  if (v31)
  {
    if (v32)
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (v32)
    {
LABEL_46:
      if (v33)
      {
        goto LABEL_47;
      }

LABEL_55:

      if (v34)
      {
        goto LABEL_48;
      }

      goto LABEL_56;
    }
  }

  if (!v33)
  {
    goto LABEL_55;
  }

LABEL_47:
  if (v34)
  {
    goto LABEL_48;
  }

LABEL_56:

LABEL_48:
  v23 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)_trialExperimentJSONArray
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  trialExperiment = [(BMSafariBrowsingAssistantDimensionContext *)self trialExperiment];
  v5 = [trialExperiment countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(trialExperiment);
        }

        jsonDictionary = [*(*(&v12 + 1) + 8 * i) jsonDictionary];
        [v3 addObject:jsonDictionary];
      }

      v6 = [trialExperiment countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMSafariBrowsingAssistantDimensionContext)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v188[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"webpageViewIdentifier"];
  v152 = v6;
  if (v6)
  {
    v7 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
        goto LABEL_4;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v7 options:0];
        if (v8)
        {
          goto LABEL_4;
        }

        errorCopy2 = error;
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = *MEMORY[0x1E698F240];
          v187 = *MEMORY[0x1E696A578];
          v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected format for value of field '%@', expected base64 encoding", @"webpageViewIdentifier"];
          v188[0] = v26;
          v27 = MEMORY[0x1E695DF20];
          v28 = v188;
          v29 = &v187;
LABEL_60:
          v60 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
          v61 = v24;
          v9 = v60;
          v62 = [v61 initWithDomain:v25 code:2 userInfo:v60];
          v8 = 0;
          v38 = 0;
          *errorCopy2 = v62;
          goto LABEL_133;
        }
      }

      else
      {
        errorCopy2 = error;
        if (error)
        {
          v24 = objc_alloc(MEMORY[0x1E696ABC0]);
          v25 = *MEMORY[0x1E698F240];
          v185 = *MEMORY[0x1E696A578];
          v57 = dictionaryCopy;
          v58 = objc_alloc(MEMORY[0x1E696AEC0]);
          v126 = objc_opt_class();
          v59 = v58;
          dictionaryCopy = v57;
          v26 = [v59 initWithFormat:@"Unexpected type (%@) for value of field '%@', expected NSData or base64 encoded NSString", v126, @"webpageViewIdentifier"];
          v186 = v26;
          v27 = MEMORY[0x1E695DF20];
          v28 = &v186;
          v29 = &v185;
          goto LABEL_60;
        }
      }

      v8 = 0;
      v38 = 0;
      goto LABEL_134;
    }
  }

  v8 = 0;
LABEL_4:
  v9 = [dictionaryCopy objectForKeyedSubscript:@"systemLocale"];
  v148 = v8;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        selfCopy = self;
        v31 = v9;
        v32 = objc_alloc(MEMORY[0x1E696ABC0]);
        v33 = *MEMORY[0x1E698F240];
        v183 = *MEMORY[0x1E696A578];
        v34 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"systemLocale"];
        v184 = v34;
        v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v184 forKeys:&v183 count:1];
        v36 = v32;
        v9 = v31;
        self = selfCopy;
        v149 = v35;
        v37 = [v36 initWithDomain:v33 code:2 userInfo:?];
        v26 = 0;
        v38 = 0;
        *error = v37;
        goto LABEL_131;
      }

      v26 = 0;
      v38 = 0;
      goto LABEL_133;
    }

    v147 = v9;
  }

  else
  {
    v147 = 0;
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"currentCountry"];
  v149 = v10;
  if (v10 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v39 = v9;
        v40 = objc_alloc(MEMORY[0x1E696ABC0]);
        v41 = *MEMORY[0x1E698F240];
        v181 = *MEMORY[0x1E696A578];
        v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"currentCountry"];
        v182 = v42;
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v182 forKeys:&v181 count:1];
        v43 = v40;
        v9 = v39;
        v44 = [v43 initWithDomain:v41 code:2 userInfo:v12];
        v34 = 0;
        v38 = 0;
        *error = v44;
        v26 = v147;
        goto LABEL_130;
      }

      v34 = 0;
      v38 = 0;
      v26 = v147;
      goto LABEL_132;
    }

    v145 = v11;
  }

  else
  {
    v145 = 0;
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"build"];
  selfCopy2 = self;
  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v45 = v9;
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v179 = *MEMORY[0x1E696A578];
        v144 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"build"];
        v180 = v144;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v180 forKeys:&v179 count:1];
        v48 = v46;
        v9 = v45;
        v49 = [v48 initWithDomain:v47 code:2 userInfo:v13];
        v42 = 0;
        v38 = 0;
        *error = v49;
        v26 = v147;
        v34 = v145;
        goto LABEL_129;
      }

      v42 = 0;
      v38 = 0;
      v26 = v147;
      v34 = v145;
      goto LABEL_130;
    }

    v143 = v12;
  }

  else
  {
    v143 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"osType"];
  if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v50 = v9;
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = *MEMORY[0x1E698F240];
        v177 = *MEMORY[0x1E696A578];
        v53 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"osType"];
        v178 = v53;
        v54 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v178 forKeys:&v177 count:1];
        v55 = v51;
        v9 = v50;
        v142 = v54;
        v56 = [v55 initWithDomain:v52 code:2 userInfo:?];
        v144 = 0;
        v38 = 0;
        *error = v56;
        v26 = v147;
        v34 = v145;
        v42 = v143;
        goto LABEL_128;
      }

      v144 = 0;
      v38 = 0;
      v26 = v147;
      v34 = v145;
      v42 = v143;
      goto LABEL_129;
    }

    v144 = v13;
  }

  else
  {
    v144 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
  v142 = v14;
  v140 = v12;
  if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v63 = v9;
        v64 = objc_alloc(MEMORY[0x1E696ABC0]);
        v65 = *MEMORY[0x1E698F240];
        v175 = *MEMORY[0x1E696A578];
        v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"productType"];
        v176 = v17;
        v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v176 forKeys:&v175 count:1];
        v66 = v64;
        v9 = v63;
        v67 = [v66 initWithDomain:v65 code:2 userInfo:v16];
        v141 = 0;
        v38 = 0;
        *error = v67;
        v26 = v147;
        v34 = v145;
        v42 = v143;
        goto LABEL_127;
      }

      v38 = 0;
      v26 = v147;
      v34 = v145;
      v42 = v143;
      v53 = 0;
      goto LABEL_128;
    }

    v141 = v15;
  }

  else
  {
    v141 = 0;
  }

  v16 = [dictionaryCopy objectForKeyedSubscript:@"buildType"];
  v137 = v13;
  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v16;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          v106 = v9;
          v107 = objc_alloc(MEMORY[0x1E696ABC0]);
          v108 = *MEMORY[0x1E698F240];
          v173 = *MEMORY[0x1E696A578];
          v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"buildType"];
          v174 = v139;
          v109 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v174 forKeys:&v173 count:1];
          v110 = v107;
          v9 = v106;
          v138 = v109;
          v111 = [v110 initWithDomain:v108 code:2 userInfo:?];
          v17 = 0;
          v38 = 0;
          *error = v111;
          v26 = v147;
          v34 = v145;
          v42 = v143;
          goto LABEL_126;
        }

        v38 = 0;
        v26 = v147;
        v34 = v145;
        v42 = v143;
        v17 = 0;
        goto LABEL_127;
      }

      v17 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantBuildTypeFromString(v16)];
    }
  }

  else
  {
    v17 = 0;
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"duEnabled"];
  v138 = v18;
  if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        v68 = v9;
        v69 = objc_alloc(MEMORY[0x1E696ABC0]);
        v70 = *MEMORY[0x1E698F240];
        v171 = *MEMORY[0x1E696A578];
        v136 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"duEnabled"];
        v172 = v136;
        v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v172 forKeys:&v171 count:1];
        v72 = v69;
        v9 = v68;
        v135 = v71;
        v73 = [v72 initWithDomain:v70 code:2 userInfo:?];
        v139 = 0;
        v38 = 0;
        *error = v73;
        v26 = v147;
        v34 = v145;
        v42 = v143;
        goto LABEL_125;
      }

      v139 = 0;
      v38 = 0;
      v26 = v147;
      v34 = v145;
      v42 = v143;
      goto LABEL_126;
    }

    v139 = v19;
  }

  else
  {
    v139 = 0;
  }

  v20 = [dictionaryCopy objectForKeyedSubscript:@"searchBarPosition"];
  v134 = v16;
  v135 = v20;
  if (v20 && (v21 = v20, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v22 = v17;
      v136 = v21;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v136 = 0;
          v38 = 0;
          v26 = v147;
          v34 = v145;
          v42 = v143;
          goto LABEL_125;
        }

        v22 = v17;
        v116 = v9;
        v117 = objc_alloc(MEMORY[0x1E696ABC0]);
        v118 = *MEMORY[0x1E698F240];
        v169 = *MEMORY[0x1E696A578];
        v74 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"searchBarPosition"];
        v170 = v74;
        v119 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v170 forKeys:&v169 count:1];
        v120 = v117;
        v9 = v116;
        v133 = v119;
        v121 = [v120 initWithDomain:v118 code:2 userInfo:?];
        v136 = 0;
        v38 = 0;
        *error = v121;
        v26 = v147;
        v34 = v145;
        v42 = v143;
        goto LABEL_139;
      }

      v22 = v17;
      v136 = [MEMORY[0x1E696AD98] numberWithInt:BMSafariBrowsingAssistantSearchBarPositionFromString(v21)];
    }
  }

  else
  {
    v22 = v17;
    v136 = 0;
  }

  v74 = [dictionaryCopy objectForKeyedSubscript:@"prefixStoreVersion"];
  v132 = v9;
  v133 = v74;
  if (v74)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v74 = 0;
      goto LABEL_75;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v74 = v74;
      goto LABEL_75;
    }

    selfCopy3 = self;
    if (error)
    {
      v89 = objc_alloc(MEMORY[0x1E696ABC0]);
      v90 = v22;
      v91 = *MEMORY[0x1E698F240];
      v167 = *MEMORY[0x1E696A578];
      v75 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"prefixStoreVersion"];
      v168 = v75;
      v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v168 forKeys:&v167 count:1];
      v93 = v91;
      v22 = v90;
      self = selfCopy3;
      v150 = v92;
      v94 = [v89 initWithDomain:v93 code:2 userInfo:?];
      v74 = 0;
      v38 = 0;
      *error = v94;
      v26 = v147;
      v34 = v145;
      v16 = v134;
      goto LABEL_122;
    }

    v74 = 0;
    v38 = 0;
    v26 = v147;
    v34 = v145;
    v42 = v143;
LABEL_139:
    v16 = v134;
    goto LABEL_124;
  }

LABEL_75:
  v75 = [dictionaryCopy objectForKeyedSubscript:@"trialExperiment"];
  null = [MEMORY[0x1E695DFB0] null];
  v77 = [v75 isEqual:null];

  v130 = v74;
  v131 = v22;
  if (v77)
  {
    v129 = dictionaryCopy;

    v75 = 0;
  }

  else
  {
    if (v75)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (!error)
        {
          v38 = 0;
          v26 = v147;
          v34 = v145;
          v42 = v143;
          goto LABEL_123;
        }

        v103 = objc_alloc(MEMORY[0x1E696ABC0]);
        v104 = *MEMORY[0x1E698F240];
        v165 = *MEMORY[0x1E696A578];
        v150 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"trialExperiment"];
        v166 = v150;
        v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v166 forKeys:&v165 count:1];
        v105 = [v103 initWithDomain:v104 code:2 userInfo:v87];
        v38 = 0;
        *error = v105;
LABEL_111:
        v26 = v147;
        v34 = v145;
        v16 = v134;
        goto LABEL_121;
      }
    }

    v129 = dictionaryCopy;
  }

  v150 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v75, "count")}];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v75 = v75;
  v78 = [v75 countByEnumeratingWithState:&v154 objects:v164 count:16];
  if (!v78)
  {
    goto LABEL_90;
  }

  v79 = v78;
  v80 = *v155;
  while (2)
  {
    for (i = 0; i != v79; ++i)
    {
      if (*v155 != v80)
      {
        objc_enumerationMutation(v75);
      }

      v82 = *(*(&v154 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy4 = error;
        if (error)
        {
          v96 = objc_alloc(MEMORY[0x1E696ABC0]);
          v97 = *MEMORY[0x1E698F240];
          v162 = *MEMORY[0x1E696A578];
          v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"trialExperiment"];
          v163 = v83;
          v98 = MEMORY[0x1E695DF20];
          v99 = &v163;
          v100 = &v162;
LABEL_101:
          v101 = [v98 dictionaryWithObjects:v99 forKeys:v100 count:1];
          *errorCopy4 = [v96 initWithDomain:v97 code:2 userInfo:v101];
LABEL_105:

          v38 = 0;
          v87 = v75;
          dictionaryCopy = v129;
          v26 = v147;
          v34 = v145;
          v16 = v134;
          goto LABEL_120;
        }

        goto LABEL_110;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        errorCopy4 = error;
        if (error)
        {
          v96 = objc_alloc(MEMORY[0x1E696ABC0]);
          v97 = *MEMORY[0x1E698F240];
          v160 = *MEMORY[0x1E696A578];
          v83 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"trialExperiment"];
          v161 = v83;
          v98 = MEMORY[0x1E695DF20];
          v99 = &v161;
          v100 = &v160;
          goto LABEL_101;
        }

LABEL_110:
        v38 = 0;
        v87 = v75;
        dictionaryCopy = v129;
        goto LABEL_111;
      }

      v83 = v82;
      v84 = [BMSafariBrowsingAssistantTrialExperiment alloc];
      v153 = 0;
      v85 = [(BMSafariBrowsingAssistantTrialExperiment *)v84 initWithJSONDictionary:v83 error:&v153];
      v86 = v153;
      if (v86)
      {
        v101 = v86;
        if (error)
        {
          v102 = v86;
          *error = v101;
        }

        goto LABEL_105;
      }

      [v150 addObject:v85];
    }

    v79 = [v75 countByEnumeratingWithState:&v154 objects:v164 count:16];
    v16 = v134;
    if (v79)
    {
      continue;
    }

    break;
  }

LABEL_90:

  dictionaryCopy = v129;
  v83 = [v129 objectForKeyedSubscript:@"isInternalTest"];
  if (!v83)
  {
    v87 = 0;
    v26 = v147;
    v112 = v148;
    v34 = v145;
    goto LABEL_119;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v87 = 0;
    v26 = v147;
    v34 = v145;
    goto LABEL_118;
  }

  objc_opt_class();
  v26 = v147;
  v34 = v145;
  if (objc_opt_isKindOfClass())
  {
    v87 = v83;
LABEL_118:
    v112 = v148;
LABEL_119:
    intValue = [v131 intValue];
    LODWORD(v127) = [v136 intValue];
    LODWORD(v125) = intValue;
    v38 = [(BMSafariBrowsingAssistantDimensionContext *)selfCopy2 initWithWebpageViewIdentifier:v112 systemLocale:v26 currentCountry:v34 build:v143 osType:v144 productType:v141 buildType:v125 duEnabled:v139 searchBarPosition:v127 prefixStoreVersion:v130 trialExperiment:v150 isInternalTest:v87];
    selfCopy2 = v38;
  }

  else
  {
    if (error)
    {
      v122 = objc_alloc(MEMORY[0x1E696ABC0]);
      v128 = *MEMORY[0x1E698F240];
      v158 = *MEMORY[0x1E696A578];
      v123 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isInternalTest"];
      v159 = v123;
      v124 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v159 forKeys:&v158 count:1];
      *error = [v122 initWithDomain:v128 code:2 userInfo:v124];
    }

    v87 = 0;
    v38 = 0;
  }

LABEL_120:

LABEL_121:
  self = selfCopy2;
  v74 = v130;
  v22 = v131;
LABEL_122:

  v42 = v143;
LABEL_123:

  v9 = v132;
LABEL_124:

  v17 = v22;
  v13 = v137;
LABEL_125:

LABEL_126:
LABEL_127:

  v12 = v140;
  v53 = v141;
LABEL_128:

LABEL_129:
LABEL_130:

LABEL_131:
  v8 = v148;
LABEL_132:

LABEL_133:
  v7 = v152;
LABEL_134:

  v114 = *MEMORY[0x1E69E9840];
  return v38;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMSafariBrowsingAssistantDimensionContext *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v21 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_webpageViewIdentifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_systemLocale)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_currentCountry)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_osType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_productType)
  {
    PBDataWriterWriteStringField();
  }

  buildType = self->_buildType;
  PBDataWriterWriteUint32Field();
  if (self->_hasDuEnabled)
  {
    duEnabled = self->_duEnabled;
    PBDataWriterWriteBOOLField();
  }

  searchBarPosition = self->_searchBarPosition;
  PBDataWriterWriteUint32Field();
  if (self->_prefixStoreVersion)
  {
    PBDataWriterWriteStringField();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_trialExperiment;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterPlaceMark();
        [v13 writeTo:toCopy];
        PBDataWriterRecallMark();
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  if (self->_hasIsInternalTest)
  {
    isInternalTest = self->_isInternalTest;
    PBDataWriterWriteBOOLField();
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v55.receiver = self;
  v55.super_class = BMSafariBrowsingAssistantDimensionContext;
  v5 = [(BMEventBase *)&v55 init];
  if (!v5)
  {
    goto LABEL_99;
  }

  v6 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    while (1)
    {
      if ([fromCopy hasError])
      {
        goto LABEL_97;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        LOBYTE(v56[0]) = 0;
        v11 = [fromCopy position] + 1;
        if (v11 >= [fromCopy position] && (v12 = objc_msgSend(fromCopy, "position") + 1, v12 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:v56 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v10 |= (v56[0] & 0x7F) << v8;
        if ((v56[0] & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          goto LABEL_16;
        }
      }

      v15 = [fromCopy hasError] ? 0 : v10;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v15 & 7) == 4)
      {
        goto LABEL_97;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) <= 6)
      {
        if (v16 > 3)
        {
          switch(v16)
          {
            case 4:
              v17 = PBReaderReadString();
              v18 = 56;
              goto LABEL_76;
            case 5:
              v17 = PBReaderReadString();
              v18 = 64;
              goto LABEL_76;
            case 6:
              v17 = PBReaderReadString();
              v18 = 72;
              goto LABEL_76;
          }
        }

        else
        {
          switch(v16)
          {
            case 1:
              v17 = PBReaderReadData();
              v18 = 32;
              goto LABEL_76;
            case 2:
              v17 = PBReaderReadString();
              v18 = 40;
              goto LABEL_76;
            case 3:
              v17 = PBReaderReadString();
              v18 = 48;
LABEL_76:
              v44 = *(&v5->super.super.isa + v18);
              *(&v5->super.super.isa + v18) = v17;

              goto LABEL_96;
          }
        }

        goto LABEL_80;
      }

      if (v16 <= 9)
      {
        break;
      }

      if (v16 == 10)
      {
        v17 = PBReaderReadString();
        v18 = 80;
        goto LABEL_76;
      }

      if (v16 != 11)
      {
        if (v16 == 12)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v5->_hasIsInternalTest = 1;
          while (1)
          {
            LOBYTE(v56[0]) = 0;
            v29 = [fromCopy position] + 1;
            if (v29 >= [fromCopy position] && (v30 = objc_msgSend(fromCopy, "position") + 1, v30 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:v56 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v28 |= (v56[0] & 0x7F) << v26;
            if ((v56[0] & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v14 = v27++ >= 9;
            if (v14)
            {
              LOBYTE(v32) = 0;
              goto LABEL_87;
            }
          }

          v32 = (v28 != 0) & ~[fromCopy hasError];
LABEL_87:
          v48 = 18;
          goto LABEL_95;
        }

LABEL_80:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_101;
        }

        goto LABEL_96;
      }

      v56[0] = 0;
      v56[1] = 0;
      if (!PBReaderPlaceMark() || (v45 = [[BMSafariBrowsingAssistantTrialExperiment alloc] initByReadFrom:fromCopy]) == 0)
      {
LABEL_101:

        goto LABEL_98;
      }

      v46 = v45;
      [v6 addObject:v45];
      PBReaderRecallMark();

LABEL_96:
      position2 = [fromCopy position];
      if (position2 >= [fromCopy length])
      {
        goto LABEL_97;
      }
    }

    switch(v16)
    {
      case 7:
        v33 = 0;
        v34 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v35 = [fromCopy position] + 1;
          if (v35 >= [fromCopy position] && (v36 = objc_msgSend(fromCopy, "position") + 1, v36 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:v56 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (v56[0] & 0x7F) << v33;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v25 = v34++ > 8;
          if (v25)
          {
            goto LABEL_90;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v21 > 4)
        {
LABEL_90:
          LODWORD(v21) = 0;
        }

        v47 = 24;
        goto LABEL_92;
      case 8:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v5->_hasDuEnabled = 1;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v41 = [fromCopy position] + 1;
          if (v41 >= [fromCopy position] && (v42 = objc_msgSend(fromCopy, "position") + 1, v42 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:v56 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v40 |= (v56[0] & 0x7F) << v38;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v14 = v39++ >= 9;
          if (v14)
          {
            LOBYTE(v32) = 0;
            goto LABEL_94;
          }
        }

        v32 = (v40 != 0) & ~[fromCopy hasError];
LABEL_94:
        v48 = 16;
LABEL_95:
        *(&v5->super.super.isa + v48) = v32;
        goto LABEL_96;
      case 9:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        while (1)
        {
          LOBYTE(v56[0]) = 0;
          v22 = [fromCopy position] + 1;
          if (v22 >= [fromCopy position] && (v23 = objc_msgSend(fromCopy, "position") + 1, v23 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:v56 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v21 |= (v56[0] & 0x7F) << v19;
          if ((v56[0] & 0x80) == 0)
          {
            break;
          }

          v19 += 7;
          v25 = v20++ > 8;
          if (v25)
          {
            goto LABEL_84;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v21 > 2)
        {
LABEL_84:
          LODWORD(v21) = 0;
        }

        v47 = 28;
LABEL_92:
        *(&v5->super.super.isa + v47) = v21;
        goto LABEL_96;
    }

    goto LABEL_80;
  }

LABEL_97:
  v50 = [v6 copy];
  trialExperiment = v5->_trialExperiment;
  v5->_trialExperiment = v50;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_98:
    v53 = 0;
  }

  else
  {
LABEL_99:
    v53 = v5;
  }

  return v53;
}

- (NSString)description
{
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  webpageViewIdentifier = [(BMSafariBrowsingAssistantDimensionContext *)self webpageViewIdentifier];
  systemLocale = [(BMSafariBrowsingAssistantDimensionContext *)self systemLocale];
  currentCountry = [(BMSafariBrowsingAssistantDimensionContext *)self currentCountry];
  build = [(BMSafariBrowsingAssistantDimensionContext *)self build];
  osType = [(BMSafariBrowsingAssistantDimensionContext *)self osType];
  productType = [(BMSafariBrowsingAssistantDimensionContext *)self productType];
  v5 = BMSafariBrowsingAssistantBuildTypeAsString([(BMSafariBrowsingAssistantDimensionContext *)self buildType]);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariBrowsingAssistantDimensionContext duEnabled](self, "duEnabled")}];
  v7 = BMSafariBrowsingAssistantSearchBarPositionAsString([(BMSafariBrowsingAssistantDimensionContext *)self searchBarPosition]);
  prefixStoreVersion = [(BMSafariBrowsingAssistantDimensionContext *)self prefixStoreVersion];
  trialExperiment = [(BMSafariBrowsingAssistantDimensionContext *)self trialExperiment];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMSafariBrowsingAssistantDimensionContext isInternalTest](self, "isInternalTest")}];
  v15 = [v14 initWithFormat:@"BMSafariBrowsingAssistantDimensionContext with webpageViewIdentifier: %@, systemLocale: %@, currentCountry: %@, build: %@, osType: %@, productType: %@, buildType: %@, duEnabled: %@, searchBarPosition: %@, prefixStoreVersion: %@, trialExperiment: %@, isInternalTest: %@", webpageViewIdentifier, systemLocale, currentCountry, build, osType, productType, v5, v6, v7, prefixStoreVersion, trialExperiment, v10];

  return v15;
}

- (BMSafariBrowsingAssistantDimensionContext)initWithWebpageViewIdentifier:(id)identifier systemLocale:(id)locale currentCountry:(id)country build:(id)build osType:(id)type productType:(id)productType buildType:(int)buildType duEnabled:(id)self0 searchBarPosition:(int)self1 prefixStoreVersion:(id)self2 trialExperiment:(id)self3 isInternalTest:(id)self4
{
  identifierCopy = identifier;
  localeCopy = locale;
  countryCopy = country;
  buildCopy = build;
  typeCopy = type;
  typeCopy2 = type;
  v21 = identifierCopy;
  v32 = typeCopy2;
  productTypeCopy = productType;
  enabledCopy = enabled;
  versionCopy = version;
  experimentCopy = experiment;
  testCopy = test;
  v36.receiver = self;
  v36.super_class = BMSafariBrowsingAssistantDimensionContext;
  v26 = [(BMEventBase *)&v36 init];
  if (v26)
  {
    v26->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v26->_webpageViewIdentifier, identifier);
    objc_storeStrong(&v26->_systemLocale, locale);
    objc_storeStrong(&v26->_currentCountry, country);
    objc_storeStrong(&v26->_build, build);
    objc_storeStrong(&v26->_osType, typeCopy);
    objc_storeStrong(&v26->_productType, productType);
    v26->_buildType = buildType;
    if (enabledCopy)
    {
      v26->_hasDuEnabled = 1;
      v26->_duEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v26->_hasDuEnabled = 0;
      v26->_duEnabled = 0;
    }

    v26->_searchBarPosition = position;
    objc_storeStrong(&v26->_prefixStoreVersion, version);
    objc_storeStrong(&v26->_trialExperiment, experiment);
    if (testCopy)
    {
      v26->_hasIsInternalTest = 1;
      v26->_isInternalTest = [testCopy BOOLValue];
    }

    else
    {
      v26->_hasIsInternalTest = 0;
      v26->_isInternalTest = 0;
    }
  }

  return v26;
}

+ (id)protoFields
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"webpageViewIdentifier" number:1 type:14 subMessageClass:0];
  v17[0] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"systemLocale" number:2 type:13 subMessageClass:0];
  v17[1] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"currentCountry" number:3 type:13 subMessageClass:0];
  v17[2] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"build" number:4 type:13 subMessageClass:0];
  v17[3] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"osType" number:5 type:13 subMessageClass:0];
  v17[4] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"productType" number:6 type:13 subMessageClass:0];
  v17[5] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"buildType" number:7 type:4 subMessageClass:0];
  v17[6] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"duEnabled" number:8 type:12 subMessageClass:0];
  v17[7] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"searchBarPosition" number:9 type:4 subMessageClass:0];
  v17[8] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"prefixStoreVersion" number:10 type:13 subMessageClass:0];
  v17[9] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"trialExperiment" number:11 type:14 subMessageClass:objc_opt_class()];
  v17[10] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isInternalTest" number:12 type:12 subMessageClass:0];
  v17[11] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v17[12] = *MEMORY[0x1E69E9840];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"webpageViewIdentifier" dataType:4 requestOnly:0 fieldNumber:1 protoDataType:14 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"systemLocale" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"currentCountry" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"build" dataType:2 requestOnly:0 fieldNumber:4 protoDataType:13 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"osType" dataType:2 requestOnly:0 fieldNumber:5 protoDataType:13 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"productType" dataType:2 requestOnly:0 fieldNumber:6 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"buildType" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"duEnabled" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"searchBarPosition" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:4 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"prefixStoreVersion" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v9 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"trialExperiment_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_295];
  v10 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isInternalTest" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v17[0] = v16;
  v17[1] = v15;
  v17[2] = v2;
  v17[3] = v3;
  v17[4] = v4;
  v17[5] = v5;
  v17[6] = v6;
  v17[7] = v7;
  v17[8] = v8;
  v17[9] = v14;
  v17[10] = v9;
  v17[11] = v10;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:12];

  v11 = *MEMORY[0x1E69E9840];

  return v13;
}

id __52__BMSafariBrowsingAssistantDimensionContext_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _trialExperimentJSONArray];
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

    v8 = [[BMSafariBrowsingAssistantDimensionContext alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[5] = 0;
    }
  }

  return v4;
}

@end