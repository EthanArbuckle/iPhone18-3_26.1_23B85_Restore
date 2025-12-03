@interface BMPhotosMemoryCreation
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMPhotosMemoryCreation)initWithIdentifier:(id)identifier queryContainsPersonEntity:(id)entity queryContainsActivityEntity:(id)activityEntity queryContainsTimeEntity:(id)timeEntity queryContainsLocationEntity:(id)locationEntity queryContainsTripEntity:(id)tripEntity queryContainsMusicArtist:(id)artist queryContainsMusicSong:(id)self0 queryContainsMusicGenre:(id)self1 queryContainsMusicMood:(id)self2 globalTraits:(id)self3 memoryGenerated:(id)self4 memoryAssetCount:(int)self5 rawPrompt:(id)self6 queryActivityEntities:(id)self7 language:(id)self8 region:(id)self9 memoryPromptSuggestionSource:(int)source;
- (BMPhotosMemoryCreation)initWithIdentifier:(id)identifier queryContainsPersonEntity:(id)entity queryContainsActivityEntity:(id)activityEntity queryContainsTimeEntity:(id)timeEntity queryContainsLocationEntity:(id)locationEntity queryContainsTripEntity:(id)tripEntity queryContainsMusicArtist:(id)artist queryContainsMusicSong:(id)self0 queryContainsMusicGenre:(id)self1 queryContainsMusicMood:(id)self2 globalTraits:(id)self3 memoryGenerated:(id)self4 memoryAssetCount:(int)self5 rawPrompt:(id)self6 queryActivityEntities:(id)self7 language:(id)self8 region:(id)self9 memoryPromptSuggestionSource:(int)source version:(id)version;
- (BMPhotosMemoryCreation)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)_globalTraitsJSONArray;
- (id)_queryActivityEntitiesJSONArray;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMPhotosMemoryCreation

- (BMPhotosMemoryCreation)initWithIdentifier:(id)identifier queryContainsPersonEntity:(id)entity queryContainsActivityEntity:(id)activityEntity queryContainsTimeEntity:(id)timeEntity queryContainsLocationEntity:(id)locationEntity queryContainsTripEntity:(id)tripEntity queryContainsMusicArtist:(id)artist queryContainsMusicSong:(id)self0 queryContainsMusicGenre:(id)self1 queryContainsMusicMood:(id)self2 globalTraits:(id)self3 memoryGenerated:(id)self4 memoryAssetCount:(int)self5 rawPrompt:(id)self6 queryActivityEntities:(id)self7 language:(id)self8 region:(id)self9 memoryPromptSuggestionSource:(int)source
{
  LODWORD(v22) = 0;
  LODWORD(v21) = count;
  return [(BMPhotosMemoryCreation *)self initWithIdentifier:identifier queryContainsPersonEntity:entity queryContainsActivityEntity:activityEntity queryContainsTimeEntity:timeEntity queryContainsLocationEntity:locationEntity queryContainsTripEntity:tripEntity queryContainsMusicArtist:artist queryContainsMusicSong:song queryContainsMusicGenre:genre queryContainsMusicMood:mood globalTraits:traits memoryGenerated:generated memoryAssetCount:v21 rawPrompt:prompt queryActivityEntities:entities language:language region:region memoryPromptSuggestionSource:v22 version:0];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(BMPhotosMemoryCreation *)self identifier];
    identifier2 = [v5 identifier];
    v8 = identifier2;
    if (identifier == identifier2)
    {
    }

    else
    {
      identifier3 = [(BMPhotosMemoryCreation *)self identifier];
      identifier4 = [v5 identifier];
      v11 = [identifier3 isEqual:identifier4];

      if (!v11)
      {
        goto LABEL_84;
      }
    }

    if (-[BMPhotosMemoryCreation hasQueryContainsPersonEntity](self, "hasQueryContainsPersonEntity") || [v5 hasQueryContainsPersonEntity])
    {
      if (![(BMPhotosMemoryCreation *)self hasQueryContainsPersonEntity])
      {
        goto LABEL_84;
      }

      if (![v5 hasQueryContainsPersonEntity])
      {
        goto LABEL_84;
      }

      queryContainsPersonEntity = [(BMPhotosMemoryCreation *)self queryContainsPersonEntity];
      if (queryContainsPersonEntity != [v5 queryContainsPersonEntity])
      {
        goto LABEL_84;
      }
    }

    if (-[BMPhotosMemoryCreation hasQueryContainsActivityEntity](self, "hasQueryContainsActivityEntity") || [v5 hasQueryContainsActivityEntity])
    {
      if (![(BMPhotosMemoryCreation *)self hasQueryContainsActivityEntity])
      {
        goto LABEL_84;
      }

      if (![v5 hasQueryContainsActivityEntity])
      {
        goto LABEL_84;
      }

      queryContainsActivityEntity = [(BMPhotosMemoryCreation *)self queryContainsActivityEntity];
      if (queryContainsActivityEntity != [v5 queryContainsActivityEntity])
      {
        goto LABEL_84;
      }
    }

    if (-[BMPhotosMemoryCreation hasQueryContainsTimeEntity](self, "hasQueryContainsTimeEntity") || [v5 hasQueryContainsTimeEntity])
    {
      if (![(BMPhotosMemoryCreation *)self hasQueryContainsTimeEntity])
      {
        goto LABEL_84;
      }

      if (![v5 hasQueryContainsTimeEntity])
      {
        goto LABEL_84;
      }

      queryContainsTimeEntity = [(BMPhotosMemoryCreation *)self queryContainsTimeEntity];
      if (queryContainsTimeEntity != [v5 queryContainsTimeEntity])
      {
        goto LABEL_84;
      }
    }

    if (-[BMPhotosMemoryCreation hasQueryContainsLocationEntity](self, "hasQueryContainsLocationEntity") || [v5 hasQueryContainsLocationEntity])
    {
      if (![(BMPhotosMemoryCreation *)self hasQueryContainsLocationEntity])
      {
        goto LABEL_84;
      }

      if (![v5 hasQueryContainsLocationEntity])
      {
        goto LABEL_84;
      }

      queryContainsLocationEntity = [(BMPhotosMemoryCreation *)self queryContainsLocationEntity];
      if (queryContainsLocationEntity != [v5 queryContainsLocationEntity])
      {
        goto LABEL_84;
      }
    }

    if (-[BMPhotosMemoryCreation hasQueryContainsTripEntity](self, "hasQueryContainsTripEntity") || [v5 hasQueryContainsTripEntity])
    {
      if (![(BMPhotosMemoryCreation *)self hasQueryContainsTripEntity])
      {
        goto LABEL_84;
      }

      if (![v5 hasQueryContainsTripEntity])
      {
        goto LABEL_84;
      }

      queryContainsTripEntity = [(BMPhotosMemoryCreation *)self queryContainsTripEntity];
      if (queryContainsTripEntity != [v5 queryContainsTripEntity])
      {
        goto LABEL_84;
      }
    }

    if (-[BMPhotosMemoryCreation hasQueryContainsMusicArtist](self, "hasQueryContainsMusicArtist") || [v5 hasQueryContainsMusicArtist])
    {
      if (![(BMPhotosMemoryCreation *)self hasQueryContainsMusicArtist])
      {
        goto LABEL_84;
      }

      if (![v5 hasQueryContainsMusicArtist])
      {
        goto LABEL_84;
      }

      queryContainsMusicArtist = [(BMPhotosMemoryCreation *)self queryContainsMusicArtist];
      if (queryContainsMusicArtist != [v5 queryContainsMusicArtist])
      {
        goto LABEL_84;
      }
    }

    if (-[BMPhotosMemoryCreation hasQueryContainsMusicSong](self, "hasQueryContainsMusicSong") || [v5 hasQueryContainsMusicSong])
    {
      if (![(BMPhotosMemoryCreation *)self hasQueryContainsMusicSong])
      {
        goto LABEL_84;
      }

      if (![v5 hasQueryContainsMusicSong])
      {
        goto LABEL_84;
      }

      queryContainsMusicSong = [(BMPhotosMemoryCreation *)self queryContainsMusicSong];
      if (queryContainsMusicSong != [v5 queryContainsMusicSong])
      {
        goto LABEL_84;
      }
    }

    if (-[BMPhotosMemoryCreation hasQueryContainsMusicGenre](self, "hasQueryContainsMusicGenre") || [v5 hasQueryContainsMusicGenre])
    {
      if (![(BMPhotosMemoryCreation *)self hasQueryContainsMusicGenre])
      {
        goto LABEL_84;
      }

      if (![v5 hasQueryContainsMusicGenre])
      {
        goto LABEL_84;
      }

      queryContainsMusicGenre = [(BMPhotosMemoryCreation *)self queryContainsMusicGenre];
      if (queryContainsMusicGenre != [v5 queryContainsMusicGenre])
      {
        goto LABEL_84;
      }
    }

    if (-[BMPhotosMemoryCreation hasQueryContainsMusicMood](self, "hasQueryContainsMusicMood") || [v5 hasQueryContainsMusicMood])
    {
      if (![(BMPhotosMemoryCreation *)self hasQueryContainsMusicMood])
      {
        goto LABEL_84;
      }

      if (![v5 hasQueryContainsMusicMood])
      {
        goto LABEL_84;
      }

      queryContainsMusicMood = [(BMPhotosMemoryCreation *)self queryContainsMusicMood];
      if (queryContainsMusicMood != [v5 queryContainsMusicMood])
      {
        goto LABEL_84;
      }
    }

    globalTraits = [(BMPhotosMemoryCreation *)self globalTraits];
    globalTraits2 = [v5 globalTraits];
    v24 = globalTraits2;
    if (globalTraits == globalTraits2)
    {
    }

    else
    {
      globalTraits3 = [(BMPhotosMemoryCreation *)self globalTraits];
      globalTraits4 = [v5 globalTraits];
      v27 = [globalTraits3 isEqual:globalTraits4];

      if (!v27)
      {
        goto LABEL_84;
      }
    }

    if (-[BMPhotosMemoryCreation hasMemoryGenerated](self, "hasMemoryGenerated") || [v5 hasMemoryGenerated])
    {
      if (![(BMPhotosMemoryCreation *)self hasMemoryGenerated])
      {
        goto LABEL_84;
      }

      if (![v5 hasMemoryGenerated])
      {
        goto LABEL_84;
      }

      memoryGenerated = [(BMPhotosMemoryCreation *)self memoryGenerated];
      if (memoryGenerated != [v5 memoryGenerated])
      {
        goto LABEL_84;
      }
    }

    memoryAssetCount = [(BMPhotosMemoryCreation *)self memoryAssetCount];
    if (memoryAssetCount != [v5 memoryAssetCount])
    {
      goto LABEL_84;
    }

    rawPrompt = [(BMPhotosMemoryCreation *)self rawPrompt];
    rawPrompt2 = [v5 rawPrompt];
    v32 = rawPrompt2;
    if (rawPrompt == rawPrompt2)
    {
    }

    else
    {
      rawPrompt3 = [(BMPhotosMemoryCreation *)self rawPrompt];
      rawPrompt4 = [v5 rawPrompt];
      v35 = [rawPrompt3 isEqual:rawPrompt4];

      if (!v35)
      {
        goto LABEL_84;
      }
    }

    queryActivityEntities = [(BMPhotosMemoryCreation *)self queryActivityEntities];
    queryActivityEntities2 = [v5 queryActivityEntities];
    v38 = queryActivityEntities2;
    if (queryActivityEntities == queryActivityEntities2)
    {
    }

    else
    {
      queryActivityEntities3 = [(BMPhotosMemoryCreation *)self queryActivityEntities];
      queryActivityEntities4 = [v5 queryActivityEntities];
      v41 = [queryActivityEntities3 isEqual:queryActivityEntities4];

      if (!v41)
      {
        goto LABEL_84;
      }
    }

    language = [(BMPhotosMemoryCreation *)self language];
    language2 = [v5 language];
    v44 = language2;
    if (language == language2)
    {
    }

    else
    {
      language3 = [(BMPhotosMemoryCreation *)self language];
      language4 = [v5 language];
      v47 = [language3 isEqual:language4];

      if (!v47)
      {
        goto LABEL_84;
      }
    }

    region = [(BMPhotosMemoryCreation *)self region];
    region2 = [v5 region];
    v50 = region2;
    if (region == region2)
    {
    }

    else
    {
      region3 = [(BMPhotosMemoryCreation *)self region];
      region4 = [v5 region];
      v53 = [region3 isEqual:region4];

      if (!v53)
      {
        goto LABEL_84;
      }
    }

    memoryPromptSuggestionSource = [(BMPhotosMemoryCreation *)self memoryPromptSuggestionSource];
    if (memoryPromptSuggestionSource == [v5 memoryPromptSuggestionSource])
    {
      if (!-[BMPhotosMemoryCreation hasVersion](self, "hasVersion") && ![v5 hasVersion])
      {
        v12 = 1;
        goto LABEL_85;
      }

      if (-[BMPhotosMemoryCreation hasVersion](self, "hasVersion") && [v5 hasVersion])
      {
        version = [(BMPhotosMemoryCreation *)self version];
        v12 = version == [v5 version];
LABEL_85:

        goto LABEL_86;
      }
    }

LABEL_84:
    v12 = 0;
    goto LABEL_85;
  }

  v12 = 0;
LABEL_86:

  return v12;
}

- (id)jsonDictionary
{
  v64[19] = *MEMORY[0x1E69E9840];
  identifier = [(BMPhotosMemoryCreation *)self identifier];
  if ([(BMPhotosMemoryCreation *)self hasQueryContainsPersonEntity])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsPersonEntity](self, "queryContainsPersonEntity")}];
  }

  else
  {
    v4 = 0;
  }

  if ([(BMPhotosMemoryCreation *)self hasQueryContainsActivityEntity])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsActivityEntity](self, "queryContainsActivityEntity")}];
  }

  else
  {
    v5 = 0;
  }

  if ([(BMPhotosMemoryCreation *)self hasQueryContainsTimeEntity])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsTimeEntity](self, "queryContainsTimeEntity")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMPhotosMemoryCreation *)self hasQueryContainsLocationEntity])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsLocationEntity](self, "queryContainsLocationEntity")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMPhotosMemoryCreation *)self hasQueryContainsTripEntity])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsTripEntity](self, "queryContainsTripEntity")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMPhotosMemoryCreation *)self hasQueryContainsMusicArtist])
  {
    v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsMusicArtist](self, "queryContainsMusicArtist")}];
  }

  else
  {
    v62 = 0;
  }

  if ([(BMPhotosMemoryCreation *)self hasQueryContainsMusicSong])
  {
    v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsMusicSong](self, "queryContainsMusicSong")}];
  }

  else
  {
    v61 = 0;
  }

  if ([(BMPhotosMemoryCreation *)self hasQueryContainsMusicGenre])
  {
    v60 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsMusicGenre](self, "queryContainsMusicGenre")}];
  }

  else
  {
    v60 = 0;
  }

  if ([(BMPhotosMemoryCreation *)self hasQueryContainsMusicMood])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsMusicMood](self, "queryContainsMusicMood")}];
  }

  else
  {
    v59 = 0;
  }

  _globalTraitsJSONArray = [(BMPhotosMemoryCreation *)self _globalTraitsJSONArray];
  if ([(BMPhotosMemoryCreation *)self hasMemoryGenerated])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation memoryGenerated](self, "memoryGenerated")}];
  }

  else
  {
    v57 = 0;
  }

  v56 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosMemoryCreation memoryAssetCount](self, "memoryAssetCount")}];
  rawPrompt = [(BMPhotosMemoryCreation *)self rawPrompt];
  _queryActivityEntitiesJSONArray = [(BMPhotosMemoryCreation *)self _queryActivityEntitiesJSONArray];
  language = [(BMPhotosMemoryCreation *)self language];
  region = [(BMPhotosMemoryCreation *)self region];
  v51 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMPhotosMemoryCreation memoryPromptSuggestionSource](self, "memoryPromptSuggestionSource")}];
  if ([(BMPhotosMemoryCreation *)self hasVersion])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosMemoryCreation version](self, "version")}];
  }

  else
  {
    v9 = 0;
  }

  v63[0] = @"identifier";
  null = identifier;
  if (!identifier)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null;
  v64[0] = null;
  v63[1] = @"queryContainsPersonEntity";
  null2 = v4;
  if (!v4)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null2;
  v64[1] = null2;
  v63[2] = @"queryContainsActivityEntity";
  null3 = v5;
  if (!v5)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null3;
  v64[2] = null3;
  v63[3] = @"queryContainsTimeEntity";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null4;
  v64[3] = null4;
  v63[4] = @"queryContainsLocationEntity";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null5;
  v64[4] = null5;
  v63[5] = @"queryContainsTripEntity";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null6;
  v64[5] = null6;
  v63[6] = @"queryContainsMusicArtist";
  null7 = v62;
  if (!v62)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v64[6] = null7;
  v63[7] = @"queryContainsMusicSong";
  null8 = v61;
  if (!v61)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v64[7] = null8;
  v63[8] = @"queryContainsMusicGenre";
  null9 = v60;
  if (!v60)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v64[8] = null9;
  v63[9] = @"queryContainsMusicMood";
  null10 = v59;
  if (!v59)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null10;
  v64[9] = null10;
  v63[10] = @"globalTraits";
  null11 = _globalTraitsJSONArray;
  if (!_globalTraitsJSONArray)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v5;
  v44 = null11;
  v64[10] = null11;
  v63[11] = @"memoryGenerated";
  null12 = v57;
  if (!v57)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = v6;
  v33 = null12;
  v64[11] = null12;
  v63[12] = @"memoryAssetCount";
  null13 = v56;
  if (!v56)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v50 = identifier;
  v64[12] = null13;
  v63[13] = @"rawPrompt";
  null14 = rawPrompt;
  if (!rawPrompt)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null9;
  v47 = v4;
  v64[13] = null14;
  v63[14] = @"queryActivityEntities";
  null15 = _queryActivityEntitiesJSONArray;
  if (!_queryActivityEntitiesJSONArray)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = null7;
  v25 = v7;
  v64[14] = null15;
  v63[15] = @"language";
  null16 = language;
  if (!language)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = v8;
  v64[15] = null16;
  v63[16] = @"region";
  null17 = region;
  if (!region)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v35 = null8;
  v64[16] = null17;
  v63[17] = @"memoryPromptSuggestionSource";
  null18 = v51;
  if (!v51)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v64[17] = null18;
  v63[18] = @"version";
  null19 = v9;
  if (!v9)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v64[18] = null19;
  v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:{19, v33}];
  if (!v9)
  {
  }

  if (!v51)
  {
  }

  if (!region)
  {
  }

  if (!language)
  {
  }

  if (!_queryActivityEntitiesJSONArray)
  {
  }

  if (!rawPrompt)
  {
  }

  if (!v56)
  {
  }

  if (!v57)
  {
  }

  if (!_globalTraitsJSONArray)
  {
  }

  if (!v59)
  {
  }

  if (!v60)
  {
  }

  if (!v61)
  {
  }

  if (v62)
  {
    if (v27)
    {
      goto LABEL_98;
    }
  }

  else
  {

    if (v27)
    {
LABEL_98:
      if (v25)
      {
        goto LABEL_99;
      }

      goto LABEL_108;
    }
  }

  if (v25)
  {
LABEL_99:
    if (v48)
    {
      goto LABEL_100;
    }

    goto LABEL_109;
  }

LABEL_108:

  if (v48)
  {
LABEL_100:
    if (v49)
    {
      goto LABEL_101;
    }

    goto LABEL_110;
  }

LABEL_109:

  if (v49)
  {
LABEL_101:
    if (v47)
    {
      goto LABEL_102;
    }

LABEL_111:

    if (v50)
    {
      goto LABEL_103;
    }

    goto LABEL_112;
  }

LABEL_110:

  if (!v47)
  {
    goto LABEL_111;
  }

LABEL_102:
  if (v50)
  {
    goto LABEL_103;
  }

LABEL_112:

LABEL_103:
  v31 = *MEMORY[0x1E69E9840];

  return v43;
}

- (id)_queryActivityEntitiesJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  queryActivityEntities = [(BMPhotosMemoryCreation *)self queryActivityEntities];
  v5 = [queryActivityEntities countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(queryActivityEntities);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [queryActivityEntities countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_globalTraitsJSONArray
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  globalTraits = [(BMPhotosMemoryCreation *)self globalTraits];
  v5 = [globalTraits countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(globalTraits);
        }

        [v3 addObject:*(*(&v11 + 1) + 8 * i)];
      }

      v6 = [globalTraits countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

- (BMPhotosMemoryCreation)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v309[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
LABEL_4:
    v9 = [dictionaryCopy objectForKeyedSubscript:@"queryContainsPersonEntity"];
    if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v249 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v249 = v9;
LABEL_7:
      v10 = [dictionaryCopy objectForKeyedSubscript:@"queryContainsActivityEntity"];
      v247 = v9;
      selfCopy = self;
      v246 = v7;
      if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v250 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v250 = v10;
LABEL_10:
        v11 = [dictionaryCopy objectForKeyedSubscript:@"queryContainsTimeEntity"];
        errorCopy = error;
        if (!v11 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v12 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
LABEL_13:
          v13 = [dictionaryCopy objectForKeyedSubscript:@"queryContainsLocationEntity"];
          v243 = v8;
          v244 = v13;
          if (!v13 || (v14 = v13, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v241 = 0;
LABEL_16:
            v15 = [dictionaryCopy objectForKeyedSubscript:@"queryContainsTripEntity"];
            v242 = v15;
            if (v15 && (v16 = v15, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (errorCopy)
                {
                  v76 = v10;
                  v77 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v78 = *MEMORY[0x1E698F240];
                  v298 = *MEMORY[0x1E696A578];
                  v60 = v242;
                  v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"queryContainsTripEntity"];
                  v299 = v79;
                  v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v299 forKeys:&v298 count:1];
                  v81 = v77;
                  v10 = v76;
                  v82 = v79;
                  v240 = v80;
                  v83 = [v81 initWithDomain:v78 code:2 userInfo:?];
                  v17 = 0;
                  v25 = 0;
                  *errorCopy = v83;
                  v56 = v241;
                  goto LABEL_209;
                }

                v17 = 0;
                v25 = 0;
                v56 = v241;
                v60 = v242;
                goto LABEL_210;
              }

              v17 = v16;
            }

            else
            {
              v17 = 0;
            }

            v18 = [dictionaryCopy objectForKeyedSubscript:@"queryContainsMusicArtist"];
            v240 = v18;
            if (v18)
            {
              v19 = v18;
              objc_opt_class();
              v20 = errorCopy;
              if (objc_opt_isKindOfClass())
              {
                v233 = 0;
              }

              else
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  if (errorCopy)
                  {
                    v84 = v10;
                    v85 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v86 = *MEMORY[0x1E698F240];
                    v296 = *MEMORY[0x1E696A578];
                    v87 = v17;
                    v88 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v201 = objc_opt_class();
                    v89 = v88;
                    v17 = v87;
                    v235 = [v89 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v201, @"queryContainsMusicArtist"];
                    v297 = v235;
                    v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
                    v91 = v85;
                    v10 = v84;
                    v236 = v90;
                    v92 = [v91 initWithDomain:v86 code:2 userInfo:?];
                    v82 = 0;
                    v25 = 0;
                    *errorCopy = v92;
                    v56 = v241;
                    v60 = v242;
                    goto LABEL_208;
                  }

                  v82 = 0;
                  v25 = 0;
                  v56 = v241;
                  v60 = v242;
                  goto LABEL_209;
                }

                v233 = v19;
              }
            }

            else
            {
              v233 = 0;
              v20 = errorCopy;
            }

            v34 = [dictionaryCopy objectForKeyedSubscript:@"queryContainsMusicSong"];
            v236 = v34;
            if (v34 && (v35 = v34, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (!v20)
                {
                  v235 = 0;
                  v25 = 0;
                  v56 = v241;
                  v60 = v242;
                  v82 = v233;
                  goto LABEL_208;
                }

                v238 = v12;
                v99 = v10;
                v100 = objc_alloc(MEMORY[0x1E696ABC0]);
                v101 = *MEMORY[0x1E698F240];
                v294 = *MEMORY[0x1E696A578];
                v102 = v17;
                v103 = objc_alloc(MEMORY[0x1E696AEC0]);
                v202 = objc_opt_class();
                v104 = v103;
                v17 = v102;
                v231 = [v104 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v202, @"queryContainsMusicSong"];
                v295 = v231;
                v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v295 forKeys:&v294 count:1];
                v106 = v100;
                v10 = v99;
                v12 = v238;
                v232 = v105;
                v107 = [v106 initWithDomain:v101 code:2 userInfo:?];
                v235 = 0;
                v25 = 0;
                *v20 = v107;
                goto LABEL_114;
              }

              v235 = v35;
            }

            else
            {
              v235 = 0;
            }

            v36 = [dictionaryCopy objectForKeyedSubscript:@"queryContainsMusicGenre"];
            v232 = v36;
            if (!v36 || (v37 = v36, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v231 = 0;
              goto LABEL_47;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v231 = v37;
LABEL_47:
              v38 = [dictionaryCopy objectForKeyedSubscript:@"queryContainsMusicMood"];
              v228 = v10;
              v229 = v38;
              if (!v38 || (v39 = v38, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v230 = 0;
                goto LABEL_50;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v230 = v39;
LABEL_50:
                v40 = [dictionaryCopy objectForKeyedSubscript:@"globalTraits"];
                null = [MEMORY[0x1E695DFB0] null];
                v42 = [v40 isEqual:null];

                v43 = v250;
                v234 = v11;
                if (v42)
                {
                  v226 = v17;

                  v40 = 0;
                }

                else
                {
                  v60 = v242;
                  if (v40)
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (v20)
                      {
                        v126 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v127 = v17;
                        v128 = *MEMORY[0x1E698F240];
                        v288 = *MEMORY[0x1E696A578];
                        v252 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"globalTraits"];
                        v289 = v252;
                        v129 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v289 forKeys:&v288 count:1];
                        v130 = v128;
                        v17 = v127;
                        v131 = [v126 initWithDomain:v130 code:2 userInfo:v129];
                        v25 = 0;
                        *v20 = v131;
                        v119 = v129;
                        v56 = v241;
                        v82 = v233;
                        goto LABEL_203;
                      }

                      v25 = 0;
                      v56 = v241;
                      v82 = v233;
                      goto LABEL_205;
                    }
                  }

                  v226 = v17;
                }

                v252 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v40, "count")}];
                v258 = 0u;
                v259 = 0u;
                v260 = 0u;
                v261 = 0u;
                v40 = v40;
                v61 = [v40 countByEnumeratingWithState:&v258 objects:v287 count:16];
                v237 = v12;
                if (v61)
                {
                  v62 = v61;
                  v63 = *v259;
                  do
                  {
                    v64 = v43;
                    for (i = 0; i != v62; ++i)
                    {
                      if (*v259 != v63)
                      {
                        objc_enumerationMutation(v40);
                      }

                      v66 = *(*(&v258 + 1) + 8 * i);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v93 = errorCopy;
                        if (errorCopy)
                        {
                          v94 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v95 = *MEMORY[0x1E698F240];
                          v285 = *MEMORY[0x1E696A578];
                          v223 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"globalTraits"];
                          v286 = v223;
                          v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v286 forKeys:&v285 count:1];
                          v97 = v94;
                          v98 = v95;
LABEL_91:
                          v221 = v96;
                          v56 = v241;
                          v60 = v242;
                          v25 = 0;
                          *v93 = [v97 initWithDomain:v98 code:2 userInfo:?];
                          v224 = v40;
                          v82 = v233;
                          v11 = v234;
                          v12 = v237;
                          v17 = v226;

                          goto LABEL_202;
                        }

LABEL_95:
                        v25 = 0;
                        v119 = v40;
                        v82 = v233;
                        v11 = v234;
                        v12 = v237;
                        v56 = v241;
                        v60 = v242;
                        v17 = v226;
                        goto LABEL_203;
                      }

                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v93 = errorCopy;
                        if (errorCopy)
                        {
                          v108 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v109 = *MEMORY[0x1E698F240];
                          v283 = *MEMORY[0x1E696A578];
                          v223 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"globalTraits"];
                          v284 = v223;
                          v96 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v284 forKeys:&v283 count:1];
                          v97 = v108;
                          v98 = v109;
                          goto LABEL_91;
                        }

                        goto LABEL_95;
                      }

                      v67 = v66;
                      [v252 addObject:v67];
                    }

                    v62 = [v40 countByEnumeratingWithState:&v258 objects:v287 count:16];
                    v43 = v64;
                    v12 = v237;
                  }

                  while (v62);
                }

                v68 = [dictionaryCopy objectForKeyedSubscript:@"memoryGenerated"];
                v223 = v68;
                if (v68)
                {
                  v69 = v68;
                  objc_opt_class();
                  v60 = v242;
                  if (objc_opt_isKindOfClass())
                  {
                    v224 = 0;
                  }

                  else
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (!errorCopy)
                      {
                        v224 = 0;
                        v25 = 0;
                        v82 = v233;
                        v11 = v234;
                        v56 = v241;
                        v17 = v226;
                        goto LABEL_202;
                      }

                      v134 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v135 = *MEMORY[0x1E698F240];
                      v281 = *MEMORY[0x1E696A578];
                      v222 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"memoryGenerated"];
                      v282 = v222;
                      v220 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v282 forKeys:&v281 count:1];
                      v224 = 0;
                      v25 = 0;
                      *errorCopy = [v134 initWithDomain:v135 code:2 userInfo:?];
                      v11 = v234;
                      v56 = v241;
                      goto LABEL_183;
                    }

                    v224 = v69;
                  }
                }

                else
                {
                  v224 = 0;
                  v60 = v242;
                }

                v132 = [dictionaryCopy objectForKeyedSubscript:@"memoryAssetCount"];
                v220 = v132;
                if (!v132 || (v133 = v132, objc_opt_class(), v11 = v234, (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v222 = 0;
                  goto LABEL_123;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v222 = v133;
LABEL_122:

                  v60 = v242;
LABEL_123:
                  v137 = [dictionaryCopy objectForKeyedSubscript:@"rawPrompt"];
                  v219 = v137;
                  if (!v137 || (v138 = v137, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v216 = 0;
                    goto LABEL_126;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v216 = v138;
                    v60 = v242;
LABEL_126:
                    v139 = [dictionaryCopy objectForKeyedSubscript:@"queryActivityEntities"];
                    null2 = [MEMORY[0x1E695DFB0] null];
                    v141 = [v139 isEqual:null2];

                    if (v141)
                    {
                    }

                    else
                    {
                      v17 = v226;
                      if (v139)
                      {
                        objc_opt_class();
                        obj = v139;
                        if ((objc_opt_isKindOfClass() & 1) == 0)
                        {
                          if (!errorCopy)
                          {
                            v25 = 0;
                            v82 = v233;
                            v11 = v234;
                            v12 = v237;
                            v56 = v241;
                            v161 = v216;
                            goto LABEL_198;
                          }

                          v165 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v166 = *MEMORY[0x1E698F240];
                          v275 = *MEMORY[0x1E696A578];
                          v217 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Expecting %@ as an array", @"queryActivityEntities"];
                          v276 = v217;
                          v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v276 forKeys:&v275 count:1];
                          v168 = [v165 initWithDomain:v166 code:2 userInfo:v167];
                          v25 = 0;
                          *errorCopy = v168;
                          v162 = v167;
                          v11 = v234;
                          v12 = v237;
                          v56 = v241;
                          goto LABEL_156;
                        }

                        v142 = v139;
LABEL_132:
                        v143 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v142, "count")}];
                        v254 = 0u;
                        v255 = 0u;
                        v256 = 0u;
                        v257 = 0u;
                        v144 = v142;
                        v145 = [v144 countByEnumeratingWithState:&v254 objects:v274 count:16];
                        obj = v144;
                        v217 = v143;
                        if (!v145)
                        {
                          goto LABEL_141;
                        }

                        v146 = v145;
                        v147 = *v255;
LABEL_134:
                        v148 = 0;
                        while (1)
                        {
                          if (*v255 != v147)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v149 = *(*(&v254 + 1) + 8 * v148);
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            break;
                          }

                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            v153 = errorCopy;
                            if (errorCopy)
                            {
                              v159 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v160 = *MEMORY[0x1E698F240];
                              v270 = *MEMORY[0x1E696A578];
                              v212 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"queryActivityEntities"];
                              v271 = v212;
                              v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v271 forKeys:&v270 count:1];
                              v157 = v159;
                              v158 = v160;
                              goto LABEL_150;
                            }

                            goto LABEL_151;
                          }

                          v150 = v149;
                          [v143 addObject:v150];

                          if (v146 == ++v148)
                          {
                            v144 = obj;
                            v146 = [obj countByEnumeratingWithState:&v254 objects:v274 count:16];
                            if (v146)
                            {
                              goto LABEL_134;
                            }

LABEL_141:

                            v151 = [dictionaryCopy objectForKeyedSubscript:@"language"];
                            v212 = v151;
                            if (!v151)
                            {
                              v215 = 0;
                              v17 = v226;
                              goto LABEL_160;
                            }

                            v152 = v151;
                            objc_opt_class();
                            v17 = v226;
                            if (objc_opt_isKindOfClass())
                            {
                              v215 = 0;
                              goto LABEL_160;
                            }

                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              if (errorCopy)
                              {
                                v176 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v177 = *MEMORY[0x1E698F240];
                                v268 = *MEMORY[0x1E696A578];
                                v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"language"];
                                v269 = v214;
                                v178 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v269 forKeys:&v268 count:1];
                                v179 = v177;
                                v17 = v226;
                                v210 = v178;
                                v215 = 0;
                                v25 = 0;
                                *errorCopy = [v176 initWithDomain:v179 code:2 userInfo:?];
                                v11 = v234;
                                v12 = v237;
                                goto LABEL_228;
                              }

                              v215 = 0;
                              v25 = 0;
                              v82 = v233;
                              v11 = v234;
                              v12 = v237;
                              v56 = v241;
                              v60 = v242;
                              v161 = v216;
                              goto LABEL_195;
                            }

                            v215 = v152;
LABEL_160:
                            v169 = [dictionaryCopy objectForKeyedSubscript:@"region"];
                            v60 = v242;
                            v210 = v169;
                            if (v169)
                            {
                              v170 = v169;
                              objc_opt_class();
                              v11 = v234;
                              if (objc_opt_isKindOfClass())
                              {
                                v214 = 0;
                                goto LABEL_164;
                              }

                              objc_opt_class();
                              v12 = v237;
                              if (objc_opt_isKindOfClass())
                              {
                                v214 = v170;
                                v60 = v242;
                                goto LABEL_165;
                              }

                              if (errorCopy)
                              {
                                v180 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v227 = v17;
                                v181 = *MEMORY[0x1E698F240];
                                v266 = *MEMORY[0x1E696A578];
                                v211 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"region"];
                                v267 = v211;
                                v182 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v267 forKeys:&v266 count:1];
                                v183 = v181;
                                v17 = v227;
                                v209 = v182;
                                v214 = 0;
                                v25 = 0;
                                *errorCopy = [v180 initWithDomain:v183 code:2 userInfo:?];
                                v56 = v241;
                                v60 = v242;
                                goto LABEL_230;
                              }

                              v214 = 0;
                              v25 = 0;
LABEL_228:
                              v56 = v241;
                              v60 = v242;
                              v82 = v233;
                              v161 = v216;
LABEL_193:

LABEL_195:
                              v162 = v215;
LABEL_196:

LABEL_198:
LABEL_199:

LABEL_200:
LABEL_202:

                              v119 = v224;
LABEL_203:

LABEL_205:
                              v10 = v228;
LABEL_206:

LABEL_207:
LABEL_208:

LABEL_209:
LABEL_210:
                              error = v250;
LABEL_211:

                              v8 = v243;
                              goto LABEL_212;
                            }

                            v214 = 0;
                            v11 = v234;
LABEL_164:
                            v12 = v237;
LABEL_165:
                            v171 = [dictionaryCopy objectForKeyedSubscript:@"memoryPromptSuggestionSource"];
                            v209 = v171;
                            if (!v171 || (v172 = v171, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v211 = 0;
LABEL_187:
                              v185 = [dictionaryCopy objectForKeyedSubscript:@"version"];
                              v208 = v185;
                              if (!v185 || (v186 = v185, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v187 = 0;
                                goto LABEL_190;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v187 = v186;
LABEL_190:
                                intValue = [v222 intValue];
                                v206 = v187;
                                v207 = v187;
                                LODWORD(v205) = [v211 intValue];
                                v161 = v216;
                                LODWORD(v204) = intValue;
                                v82 = v233;
                                v56 = v241;
                                v25 = [(BMPhotosMemoryCreation *)selfCopy initWithIdentifier:v243 queryContainsPersonEntity:v249 queryContainsActivityEntity:v250 queryContainsTimeEntity:v12 queryContainsLocationEntity:v241 queryContainsTripEntity:v17 queryContainsMusicArtist:v233 queryContainsMusicSong:v235 queryContainsMusicGenre:v231 queryContainsMusicMood:v230 globalTraits:v252 memoryGenerated:v224 memoryAssetCount:v204 rawPrompt:v216 queryActivityEntities:v217 language:v215 region:v214 memoryPromptSuggestionSource:v205 version:v206];
                                selfCopy = v25;
LABEL_191:

LABEL_192:
                                goto LABEL_193;
                              }

                              if (errorCopy)
                              {
                                v191 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v192 = v17;
                                v193 = *MEMORY[0x1E698F240];
                                v262 = *MEMORY[0x1E696A578];
                                v194 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"version"];
                                v263 = v194;
                                v195 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v263 forKeys:&v262 count:1];
                                v196 = v191;
                                v197 = v193;
                                v17 = v192;
                                v60 = v242;
                                *errorCopy = [v196 initWithDomain:v197 code:2 userInfo:v195];

                                v12 = v237;
                              }

                              v207 = 0;
                              v25 = 0;
                              v56 = v241;
                              goto LABEL_226;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v211 = v172;
                            }

                            else
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0)
                              {
                                if (!errorCopy)
                                {
                                  v211 = 0;
                                  v25 = 0;
                                  v12 = v237;
                                  v56 = v241;
                                  v60 = v242;
LABEL_230:
                                  v82 = v233;
                                  v161 = v216;
                                  goto LABEL_192;
                                }

                                v198 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v199 = *MEMORY[0x1E698F240];
                                v264 = *MEMORY[0x1E696A578];
                                v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"memoryPromptSuggestionSource"];
                                v265 = v207;
                                v208 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v265 forKeys:&v264 count:1];
                                v211 = 0;
                                v25 = 0;
                                *errorCopy = [v198 initWithDomain:v199 code:2 userInfo:?];
                                v12 = v237;
                                v56 = v241;
                                v60 = v242;
LABEL_226:
                                v82 = v233;
                                v161 = v216;
                                goto LABEL_191;
                              }

                              v184 = v172;
                              v211 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosMemoryCreationMemoryPromptSuggestionSourceFromString(v184)];

                              v12 = v237;
                            }

                            v60 = v242;
                            goto LABEL_187;
                          }
                        }

                        v153 = errorCopy;
                        if (errorCopy)
                        {
                          v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v155 = *MEMORY[0x1E698F240];
                          v272 = *MEMORY[0x1E696A578];
                          v212 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type null for element of %@, must not be null", @"queryActivityEntities"];
                          v273 = v212;
                          v156 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v273 forKeys:&v272 count:1];
                          v157 = v154;
                          v158 = v155;
LABEL_150:
                          v213 = v156;
                          v56 = v241;
                          v60 = v242;
                          v17 = v226;
                          v25 = 0;
                          *v153 = [v157 initWithDomain:v158 code:2 userInfo:?];
                          v215 = obj;
                          v82 = v233;
                          v11 = v234;
                          v12 = v237;
                          v161 = v216;

                          goto LABEL_195;
                        }

LABEL_151:
                        v25 = 0;
                        v162 = obj;
                        v17 = v226;
                        v11 = v234;
                        v12 = v237;
                        v56 = v241;
                        v60 = v242;
LABEL_156:
                        v82 = v233;
                        v161 = v216;
                        goto LABEL_196;
                      }
                    }

                    v142 = 0;
                    goto LABEL_132;
                  }

                  if (errorCopy)
                  {
                    v163 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v164 = *MEMORY[0x1E698F240];
                    v277 = *MEMORY[0x1E696A578];
                    obj = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"rawPrompt"];
                    v278 = obj;
                    v218 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v278 forKeys:&v277 count:1];
                    v161 = 0;
                    v25 = 0;
                    *errorCopy = [v163 initWithDomain:v164 code:2 userInfo:?];
                    v82 = v233;
                    v11 = v234;
                    v12 = v237;
                    v56 = v241;
                    v60 = v242;
                    v17 = v226;

                    goto LABEL_198;
                  }

                  v161 = 0;
                  v25 = 0;
                  v11 = v234;
LABEL_176:
                  v12 = v237;
                  v56 = v241;
                  v60 = v242;
                  v17 = v226;
                  v82 = v233;
                  goto LABEL_199;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v136 = v133;
                  v222 = [MEMORY[0x1E696AD98] numberWithInt:BMPhotosMemoryCreationMemoryAssetCountFromString(v136)];

                  goto LABEL_122;
                }

                if (errorCopy)
                {
                  v173 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v174 = *MEMORY[0x1E698F240];
                  v279 = *MEMORY[0x1E696A578];
                  v161 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"memoryAssetCount"];
                  v280 = v161;
                  v219 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v280 forKeys:&v279 count:1];
                  v175 = [v173 initWithDomain:v174 code:2 userInfo:?];
                  v222 = 0;
                  v25 = 0;
                  *errorCopy = v175;
                  goto LABEL_176;
                }

                v222 = 0;
                v25 = 0;
                v12 = v237;
                v56 = v241;
                v60 = v242;
LABEL_183:
                v17 = v226;
                v82 = v233;
                goto LABEL_200;
              }

              if (v20)
              {
                v120 = objc_alloc(MEMORY[0x1E696ABC0]);
                v121 = v17;
                v122 = *MEMORY[0x1E698F240];
                v290 = *MEMORY[0x1E696A578];
                v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"queryContainsMusicMood"];
                v291 = v40;
                v123 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v291 forKeys:&v290 count:1];
                v124 = v122;
                v17 = v121;
                v253 = v123;
                v125 = [v120 initWithDomain:v124 code:2 userInfo:?];
                v230 = 0;
                v25 = 0;
                *v20 = v125;
                v56 = v241;
                v60 = v242;
                v82 = v233;

                goto LABEL_205;
              }

              v230 = 0;
              v25 = 0;
LABEL_116:
              v56 = v241;
              v60 = v242;
              v82 = v233;
              goto LABEL_206;
            }

            if (v20)
            {
              v239 = v12;
              v110 = v10;
              v111 = objc_alloc(MEMORY[0x1E696ABC0]);
              v112 = *MEMORY[0x1E698F240];
              v292 = *MEMORY[0x1E696A578];
              v113 = v17;
              v114 = objc_alloc(MEMORY[0x1E696AEC0]);
              v203 = objc_opt_class();
              v115 = v114;
              v17 = v113;
              v230 = [v115 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v203, @"queryContainsMusicGenre"];
              v293 = v230;
              v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v293 forKeys:&v292 count:1];
              v117 = v111;
              v10 = v110;
              v12 = v239;
              v229 = v116;
              v118 = [v117 initWithDomain:v112 code:2 userInfo:?];
              v231 = 0;
              v25 = 0;
              *v20 = v118;
              goto LABEL_116;
            }

            v231 = 0;
            v25 = 0;
LABEL_114:
            v56 = v241;
            v60 = v242;
            v82 = v233;
            goto LABEL_207;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v241 = v14;
            goto LABEL_16;
          }

          if (error)
          {
            errorCopy2 = error;
            v71 = v10;
            v72 = objc_alloc(MEMORY[0x1E696ABC0]);
            v73 = *MEMORY[0x1E698F240];
            v300 = *MEMORY[0x1E696A578];
            v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"queryContainsLocationEntity"];
            v301 = v17;
            v60 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v301 forKeys:&v300 count:1];
            v74 = v72;
            v10 = v71;
            error = v250;
            v75 = [v74 initWithDomain:v73 code:2 userInfo:v60];
            v56 = 0;
            v25 = 0;
            *errorCopy2 = v75;
            goto LABEL_211;
          }

          v56 = 0;
          v25 = 0;
          error = v250;
LABEL_212:
          v24 = v249;
          goto LABEL_213;
        }

        if (error)
        {
          v50 = v10;
          v51 = objc_alloc(MEMORY[0x1E696ABC0]);
          v52 = *MEMORY[0x1E698F240];
          v302 = *MEMORY[0x1E696A578];
          v53 = v8;
          v54 = objc_alloc(MEMORY[0x1E696AEC0]);
          v200 = objc_opt_class();
          v55 = v54;
          v8 = v53;
          v24 = v249;
          v56 = [v55 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v200, @"queryContainsTimeEntity"];
          v303 = v56;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v303 forKeys:&v302 count:1];
          v58 = v51;
          v10 = v50;
          error = v250;
          v244 = v57;
          v59 = [v58 initWithDomain:v52 code:2 userInfo:?];
          v12 = 0;
          v25 = 0;
          *errorCopy = v59;
LABEL_213:

          goto LABEL_214;
        }

        v12 = 0;
        v25 = 0;
        v24 = v249;
        error = v250;
LABEL_214:

        v9 = v247;
        self = selfCopy;
        v7 = v246;
        goto LABEL_215;
      }

      if (error)
      {
        v44 = v8;
        errorCopy3 = error;
        v46 = objc_alloc(MEMORY[0x1E696ABC0]);
        v47 = *MEMORY[0x1E698F240];
        v304 = *MEMORY[0x1E696A578];
        v48 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"queryContainsActivityEntity"];
        v305 = v48;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v305 forKeys:&v304 count:1];
        v49 = [v46 initWithDomain:v47 code:2 userInfo:v11];
        error = 0;
        v25 = 0;
        *errorCopy3 = v49;
        v8 = v44;
        v12 = v48;
        v24 = v249;
        goto LABEL_214;
      }

      v25 = 0;
      v24 = v249;
LABEL_215:

      goto LABEL_216;
    }

    if (error)
    {
      v26 = objc_alloc(MEMORY[0x1E696ABC0]);
      v27 = *MEMORY[0x1E698F240];
      v306 = *MEMORY[0x1E696A578];
      v251 = dictionaryCopy;
      v28 = v7;
      selfCopy2 = self;
      errorCopy4 = error;
      error = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"queryContainsPersonEntity"];
      errorCopy5 = error;
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&errorCopy5 forKeys:&v306 count:1];
      v32 = v26;
      v10 = v31;
      v33 = [v32 initWithDomain:v27 code:2 userInfo:v31];
      v24 = 0;
      v25 = 0;
      *errorCopy4 = v33;
      self = selfCopy2;
      v7 = v28;
      dictionaryCopy = v251;
      goto LABEL_215;
    }

    v24 = 0;
    v25 = 0;
LABEL_216:

    goto LABEL_217;
  }

  if (error)
  {
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    errorCopy6 = error;
    v23 = *MEMORY[0x1E698F240];
    v308 = *MEMORY[0x1E696A578];
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"identifier"];
    v309[0] = v24;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v309 forKeys:&v308 count:1];
    v8 = 0;
    v25 = 0;
    *errorCopy6 = [v21 initWithDomain:v23 code:2 userInfo:v9];
    goto LABEL_216;
  }

  v8 = 0;
  v25 = 0;
LABEL_217:

  v189 = *MEMORY[0x1E69E9840];
  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMPhotosMemoryCreation *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  v41 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasQueryContainsPersonEntity)
  {
    queryContainsPersonEntity = self->_queryContainsPersonEntity;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasQueryContainsActivityEntity)
  {
    queryContainsActivityEntity = self->_queryContainsActivityEntity;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasQueryContainsTimeEntity)
  {
    queryContainsTimeEntity = self->_queryContainsTimeEntity;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasQueryContainsLocationEntity)
  {
    queryContainsLocationEntity = self->_queryContainsLocationEntity;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasQueryContainsTripEntity)
  {
    queryContainsTripEntity = self->_queryContainsTripEntity;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasQueryContainsMusicArtist)
  {
    queryContainsMusicArtist = self->_queryContainsMusicArtist;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasQueryContainsMusicSong)
  {
    queryContainsMusicSong = self->_queryContainsMusicSong;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasQueryContainsMusicGenre)
  {
    queryContainsMusicGenre = self->_queryContainsMusicGenre;
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasQueryContainsMusicMood)
  {
    queryContainsMusicMood = self->_queryContainsMusicMood;
    PBDataWriterWriteBOOLField();
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = self->_globalTraits;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v36;
    do
    {
      v18 = 0;
      do
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v35 + 1) + 8 * v18);
        PBDataWriterWriteStringField();
        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v16);
  }

  if (self->_hasMemoryGenerated)
  {
    memoryGenerated = self->_memoryGenerated;
    PBDataWriterWriteBOOLField();
  }

  memoryAssetCount = self->_memoryAssetCount;
  PBDataWriterWriteUint32Field();
  if (self->_rawPrompt)
  {
    PBDataWriterWriteStringField();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v22 = self->_queryActivityEntities;
  v23 = [(NSArray *)v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v31 + 1) + 8 * v26);
        PBDataWriterWriteStringField();
        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSArray *)v22 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v24);
  }

  if (self->_language)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_region)
  {
    PBDataWriterWriteStringField();
  }

  memoryPromptSuggestionSource = self->_memoryPromptSuggestionSource;
  PBDataWriterWriteUint32Field();
  if (self->_hasVersion)
  {
    version = self->_version;
    PBDataWriterWriteUint32Field();
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v114.receiver = self;
  v114.super_class = BMPhotosMemoryCreation;
  v5 = [(BMEventBase *)&v114 init];
  if (!v5)
  {
    goto LABEL_185;
  }

  v6 = objc_opt_new();
  v7 = objc_opt_new();
  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v115 = 0;
        v12 = [fromCopy position] + 1;
        if (v12 >= [fromCopy position] && (v13 = objc_msgSend(fromCopy, "position") + 1, v13 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v11 |= (v115 & 0x7F) << v9;
        if ((v115 & 0x80) == 0)
        {
          break;
        }

        v9 += 7;
        v15 = v10++ >= 9;
        if (v15)
        {
          v16 = 0;
          goto LABEL_16;
        }
      }

      v16 = [fromCopy hasError] ? 0 : v11;
LABEL_16:
      if (([fromCopy hasError] & 1) != 0 || (v16 & 7) == 4)
      {
        break;
      }

      switch((v16 >> 3))
      {
        case 1u:
          v17 = PBReaderReadString();
          v18 = 56;
          goto LABEL_115;
        case 2u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v5->_hasQueryContainsPersonEntity = 1;
          while (1)
          {
            v115 = 0;
            v69 = [fromCopy position] + 1;
            if (v69 >= [fromCopy position] && (v70 = objc_msgSend(fromCopy, "position") + 1, v70 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v68 |= (v115 & 0x7F) << v66;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v15 = v67++ >= 9;
            if (v15)
            {
              LOBYTE(v28) = 0;
              goto LABEL_165;
            }
          }

          v28 = (v68 != 0) & ~[fromCopy hasError];
LABEL_165:
          v104 = 16;
          goto LABEL_181;
        case 3u:
          v48 = 0;
          v49 = 0;
          v50 = 0;
          v5->_hasQueryContainsActivityEntity = 1;
          while (1)
          {
            v115 = 0;
            v51 = [fromCopy position] + 1;
            if (v51 >= [fromCopy position] && (v52 = objc_msgSend(fromCopy, "position") + 1, v52 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v50 |= (v115 & 0x7F) << v48;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v48 += 7;
            v15 = v49++ >= 9;
            if (v15)
            {
              LOBYTE(v28) = 0;
              goto LABEL_159;
            }
          }

          v28 = (v50 != 0) & ~[fromCopy hasError];
LABEL_159:
          v104 = 18;
          goto LABEL_181;
        case 4u:
          v54 = 0;
          v55 = 0;
          v56 = 0;
          v5->_hasQueryContainsTimeEntity = 1;
          while (1)
          {
            v115 = 0;
            v57 = [fromCopy position] + 1;
            if (v57 >= [fromCopy position] && (v58 = objc_msgSend(fromCopy, "position") + 1, v58 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v56 |= (v115 & 0x7F) << v54;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v54 += 7;
            v15 = v55++ >= 9;
            if (v15)
            {
              LOBYTE(v28) = 0;
              goto LABEL_161;
            }
          }

          v28 = (v56 != 0) & ~[fromCopy hasError];
LABEL_161:
          v104 = 20;
          goto LABEL_181;
        case 5u:
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v5->_hasQueryContainsLocationEntity = 1;
          while (1)
          {
            v115 = 0;
            v32 = [fromCopy position] + 1;
            if (v32 >= [fromCopy position] && (v33 = objc_msgSend(fromCopy, "position") + 1, v33 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v31 |= (v115 & 0x7F) << v29;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v29 += 7;
            v15 = v30++ >= 9;
            if (v15)
            {
              LOBYTE(v28) = 0;
              goto LABEL_151;
            }
          }

          v28 = (v31 != 0) & ~[fromCopy hasError];
LABEL_151:
          v104 = 22;
          goto LABEL_181;
        case 6u:
          v77 = 0;
          v78 = 0;
          v79 = 0;
          v5->_hasQueryContainsTripEntity = 1;
          while (1)
          {
            v115 = 0;
            v80 = [fromCopy position] + 1;
            if (v80 >= [fromCopy position] && (v81 = objc_msgSend(fromCopy, "position") + 1, v81 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v79 |= (v115 & 0x7F) << v77;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v77 += 7;
            v15 = v78++ >= 9;
            if (v15)
            {
              LOBYTE(v28) = 0;
              goto LABEL_172;
            }
          }

          v28 = (v79 != 0) & ~[fromCopy hasError];
LABEL_172:
          v104 = 24;
          goto LABEL_181;
        case 7u:
          v84 = 0;
          v85 = 0;
          v86 = 0;
          v5->_hasQueryContainsMusicArtist = 1;
          while (1)
          {
            v115 = 0;
            v87 = [fromCopy position] + 1;
            if (v87 >= [fromCopy position] && (v88 = objc_msgSend(fromCopy, "position") + 1, v88 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v86 |= (v115 & 0x7F) << v84;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v84 += 7;
            v15 = v85++ >= 9;
            if (v15)
            {
              LOBYTE(v28) = 0;
              goto LABEL_174;
            }
          }

          v28 = (v86 != 0) & ~[fromCopy hasError];
LABEL_174:
          v104 = 26;
          goto LABEL_181;
        case 8u:
          v60 = 0;
          v61 = 0;
          v62 = 0;
          v5->_hasQueryContainsMusicSong = 1;
          while (1)
          {
            v115 = 0;
            v63 = [fromCopy position] + 1;
            if (v63 >= [fromCopy position] && (v64 = objc_msgSend(fromCopy, "position") + 1, v64 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v62 |= (v115 & 0x7F) << v60;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v60 += 7;
            v15 = v61++ >= 9;
            if (v15)
            {
              LOBYTE(v28) = 0;
              goto LABEL_163;
            }
          }

          v28 = (v62 != 0) & ~[fromCopy hasError];
LABEL_163:
          v104 = 28;
          goto LABEL_181;
        case 9u:
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v5->_hasQueryContainsMusicGenre = 1;
          while (1)
          {
            v115 = 0;
            v101 = [fromCopy position] + 1;
            if (v101 >= [fromCopy position] && (v102 = objc_msgSend(fromCopy, "position") + 1, v102 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v100 |= (v115 & 0x7F) << v98;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v98 += 7;
            v15 = v99++ >= 9;
            if (v15)
            {
              LOBYTE(v28) = 0;
              goto LABEL_180;
            }
          }

          v28 = (v100 != 0) & ~[fromCopy hasError];
LABEL_180:
          v104 = 30;
          goto LABEL_181;
        case 0xAu:
          v42 = 0;
          v43 = 0;
          v44 = 0;
          v5->_hasQueryContainsMusicMood = 1;
          while (1)
          {
            v115 = 0;
            v45 = [fromCopy position] + 1;
            if (v45 >= [fromCopy position] && (v46 = objc_msgSend(fromCopy, "position") + 1, v46 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v44 |= (v115 & 0x7F) << v42;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v42 += 7;
            v15 = v43++ >= 9;
            if (v15)
            {
              LOBYTE(v28) = 0;
              goto LABEL_157;
            }
          }

          v28 = (v44 != 0) & ~[fromCopy hasError];
LABEL_157:
          v104 = 32;
          goto LABEL_181;
        case 0xBu:
          v97 = PBReaderReadString();
          if (!v97)
          {
            goto LABEL_187;
          }

          v20 = v97;
          v21 = v6;
          goto LABEL_136;
        case 0xCu:
          v22 = 0;
          v23 = 0;
          v24 = 0;
          v5->_hasMemoryGenerated = 1;
          while (1)
          {
            v115 = 0;
            v25 = [fromCopy position] + 1;
            if (v25 >= [fromCopy position] && (v26 = objc_msgSend(fromCopy, "position") + 1, v26 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v24 |= (v115 & 0x7F) << v22;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v22 += 7;
            v15 = v23++ >= 9;
            if (v15)
            {
              LOBYTE(v28) = 0;
              goto LABEL_149;
            }
          }

          v28 = (v24 != 0) & ~[fromCopy hasError];
LABEL_149:
          v104 = 34;
LABEL_181:
          *(&v5->super.super.isa + v104) = v28;
          goto LABEL_182;
        case 0xDu:
          v35 = 0;
          v36 = 0;
          v37 = 0;
          while (1)
          {
            v115 = 0;
            v38 = [fromCopy position] + 1;
            if (v38 >= [fromCopy position] && (v39 = objc_msgSend(fromCopy, "position") + 1, v39 <= objc_msgSend(fromCopy, "length")))
            {
              data12 = [fromCopy data];
              [data12 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v37 |= (v115 & 0x7F) << v35;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v41 = v36++ > 8;
            if (v41)
            {
              goto LABEL_154;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v37 > 4)
          {
LABEL_154:
            LODWORD(v37) = 0;
          }

          v105 = 44;
          goto LABEL_170;
        case 0xEu:
          v17 = PBReaderReadString();
          v18 = 72;
          goto LABEL_115;
        case 0xFu:
          v19 = PBReaderReadString();
          if (!v19)
          {
            goto LABEL_187;
          }

          v20 = v19;
          v21 = v7;
LABEL_136:
          [v21 addObject:v20];

          goto LABEL_182;
        case 0x10u:
          v17 = PBReaderReadString();
          v18 = 88;
          goto LABEL_115;
        case 0x11u:
          v17 = PBReaderReadString();
          v18 = 96;
LABEL_115:
          v83 = *(&v5->super.super.isa + v18);
          *(&v5->super.super.isa + v18) = v17;

          goto LABEL_182;
        case 0x12u:
          v72 = 0;
          v73 = 0;
          v37 = 0;
          while (1)
          {
            v115 = 0;
            v74 = [fromCopy position] + 1;
            if (v74 >= [fromCopy position] && (v75 = objc_msgSend(fromCopy, "position") + 1, v75 <= objc_msgSend(fromCopy, "length")))
            {
              data13 = [fromCopy data];
              [data13 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v37 |= (v115 & 0x7F) << v72;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v72 += 7;
            v41 = v73++ > 8;
            if (v41)
            {
              goto LABEL_168;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v37 > 5)
          {
LABEL_168:
            LODWORD(v37) = 0;
          }

          v105 = 48;
LABEL_170:
          *(&v5->super.super.isa + v105) = v37;
          goto LABEL_182;
        case 0x13u:
          v90 = 0;
          v91 = 0;
          v92 = 0;
          v5->_hasVersion = 1;
          break;
        default:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_182;
          }

LABEL_187:

          goto LABEL_184;
      }

      while (1)
      {
        v115 = 0;
        v93 = [fromCopy position] + 1;
        if (v93 >= [fromCopy position] && (v94 = objc_msgSend(fromCopy, "position") + 1, v94 <= objc_msgSend(fromCopy, "length")))
        {
          data14 = [fromCopy data];
          [data14 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v92 |= (v115 & 0x7F) << v90;
        if ((v115 & 0x80) == 0)
        {
          break;
        }

        v90 += 7;
        v15 = v91++ >= 9;
        if (v15)
        {
          v96 = 0;
          goto LABEL_178;
        }
      }

      v96 = [fromCopy hasError] ? 0 : v92;
LABEL_178:
      v5->_version = v96;
LABEL_182:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  v107 = [v6 copy];
  globalTraits = v5->_globalTraits;
  v5->_globalTraits = v107;

  v109 = [v7 copy];
  queryActivityEntities = v5->_queryActivityEntities;
  v5->_queryActivityEntities = v109;

  hasError = [fromCopy hasError];
  if (hasError)
  {
LABEL_184:
    v112 = 0;
  }

  else
  {
LABEL_185:
    v112 = v5;
  }

  return v112;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  identifier = [(BMPhotosMemoryCreation *)self identifier];
  v23 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsPersonEntity](self, "queryContainsPersonEntity")}];
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsActivityEntity](self, "queryContainsActivityEntity")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsTimeEntity](self, "queryContainsTimeEntity")}];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsLocationEntity](self, "queryContainsLocationEntity")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsTripEntity](self, "queryContainsTripEntity")}];
  v21 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsMusicArtist](self, "queryContainsMusicArtist")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsMusicSong](self, "queryContainsMusicSong")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsMusicGenre](self, "queryContainsMusicGenre")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation queryContainsMusicMood](self, "queryContainsMusicMood")}];
  globalTraits = [(BMPhotosMemoryCreation *)self globalTraits];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMPhotosMemoryCreation memoryGenerated](self, "memoryGenerated")}];
  v10 = BMPhotosMemoryCreationMemoryAssetCountAsString([(BMPhotosMemoryCreation *)self memoryAssetCount]);
  rawPrompt = [(BMPhotosMemoryCreation *)self rawPrompt];
  queryActivityEntities = [(BMPhotosMemoryCreation *)self queryActivityEntities];
  language = [(BMPhotosMemoryCreation *)self language];
  region = [(BMPhotosMemoryCreation *)self region];
  v6 = BMPhotosMemoryCreationMemoryPromptSuggestionSourceAsString([(BMPhotosMemoryCreation *)self memoryPromptSuggestionSource]);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[BMPhotosMemoryCreation version](self, "version")}];
  v18 = [v17 initWithFormat:@"BMPhotosMemoryCreation with identifier: %@, queryContainsPersonEntity: %@, queryContainsActivityEntity: %@, queryContainsTimeEntity: %@, queryContainsLocationEntity: %@, queryContainsTripEntity: %@, queryContainsMusicArtist: %@, queryContainsMusicSong: %@, queryContainsMusicGenre: %@, queryContainsMusicMood: %@, globalTraits: %@, memoryGenerated: %@, memoryAssetCount: %@, rawPrompt: %@, queryActivityEntities: %@, language: %@, region: %@, memoryPromptSuggestionSource: %@, version: %@", identifier, v23, v16, v15, v22, v14, v21, v13, v20, v12, globalTraits, v11, v10, rawPrompt, queryActivityEntities, language, region, v6, v7];

  return v18;
}

- (BMPhotosMemoryCreation)initWithIdentifier:(id)identifier queryContainsPersonEntity:(id)entity queryContainsActivityEntity:(id)activityEntity queryContainsTimeEntity:(id)timeEntity queryContainsLocationEntity:(id)locationEntity queryContainsTripEntity:(id)tripEntity queryContainsMusicArtist:(id)artist queryContainsMusicSong:(id)self0 queryContainsMusicGenre:(id)self1 queryContainsMusicMood:(id)self2 globalTraits:(id)self3 memoryGenerated:(id)self4 memoryAssetCount:(int)self5 rawPrompt:(id)self6 queryActivityEntities:(id)self7 language:(id)self8 region:(id)self9 memoryPromptSuggestionSource:(int)source version:(id)version
{
  identifierCopy = identifier;
  entityCopy = entity;
  activityEntityCopy = activityEntity;
  timeEntityCopy = timeEntity;
  locationEntityCopy = locationEntity;
  tripEntityCopy = tripEntity;
  artistCopy = artist;
  songCopy = song;
  genreCopy = genre;
  moodCopy = mood;
  traitsCopy = traits;
  generatedCopy = generated;
  promptCopy = prompt;
  entitiesCopy = entities;
  languageCopy = language;
  regionCopy = region;
  versionCopy = version;
  v52.receiver = self;
  v52.super_class = BMPhotosMemoryCreation;
  v35 = [(BMEventBase *)&v52 init];
  if (v35)
  {
    v35->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v35->_identifier, identifier);
    if (entityCopy)
    {
      v35->_hasQueryContainsPersonEntity = 1;
      v35->_queryContainsPersonEntity = [entityCopy BOOLValue];
    }

    else
    {
      v35->_hasQueryContainsPersonEntity = 0;
      v35->_queryContainsPersonEntity = 0;
    }

    if (activityEntityCopy)
    {
      v35->_hasQueryContainsActivityEntity = 1;
      v35->_queryContainsActivityEntity = [activityEntityCopy BOOLValue];
    }

    else
    {
      v35->_hasQueryContainsActivityEntity = 0;
      v35->_queryContainsActivityEntity = 0;
    }

    if (timeEntityCopy)
    {
      v35->_hasQueryContainsTimeEntity = 1;
      v35->_queryContainsTimeEntity = [timeEntityCopy BOOLValue];
    }

    else
    {
      v35->_hasQueryContainsTimeEntity = 0;
      v35->_queryContainsTimeEntity = 0;
    }

    if (locationEntityCopy)
    {
      v35->_hasQueryContainsLocationEntity = 1;
      v35->_queryContainsLocationEntity = [locationEntityCopy BOOLValue];
    }

    else
    {
      v35->_hasQueryContainsLocationEntity = 0;
      v35->_queryContainsLocationEntity = 0;
    }

    if (tripEntityCopy)
    {
      v35->_hasQueryContainsTripEntity = 1;
      v35->_queryContainsTripEntity = [tripEntityCopy BOOLValue];
    }

    else
    {
      v35->_hasQueryContainsTripEntity = 0;
      v35->_queryContainsTripEntity = 0;
    }

    if (artistCopy)
    {
      v35->_hasQueryContainsMusicArtist = 1;
      v35->_queryContainsMusicArtist = [artistCopy BOOLValue];
    }

    else
    {
      v35->_hasQueryContainsMusicArtist = 0;
      v35->_queryContainsMusicArtist = 0;
    }

    if (songCopy)
    {
      v35->_hasQueryContainsMusicSong = 1;
      v35->_queryContainsMusicSong = [songCopy BOOLValue];
    }

    else
    {
      v35->_hasQueryContainsMusicSong = 0;
      v35->_queryContainsMusicSong = 0;
    }

    obja = traitsCopy;
    v36 = genreCopy;
    if (genreCopy)
    {
      v37 = songCopy;
      v35->_hasQueryContainsMusicGenre = 1;
      v38 = v36;
      v35->_queryContainsMusicGenre = [v36 BOOLValue];
    }

    else
    {
      v38 = 0;
      v37 = songCopy;
      v35->_hasQueryContainsMusicGenre = 0;
      v35->_queryContainsMusicGenre = 0;
    }

    if (moodCopy)
    {
      v35->_hasQueryContainsMusicMood = 1;
      v35->_queryContainsMusicMood = [moodCopy BOOLValue];
    }

    else
    {
      v35->_hasQueryContainsMusicMood = 0;
      v35->_queryContainsMusicMood = 0;
    }

    objc_storeStrong(&v35->_globalTraits, traits);
    if (generatedCopy)
    {
      v35->_hasMemoryGenerated = 1;
      v35->_memoryGenerated = [generatedCopy BOOLValue];
    }

    else
    {
      v35->_hasMemoryGenerated = 0;
      v35->_memoryGenerated = 0;
    }

    v35->_memoryAssetCount = count;
    objc_storeStrong(&v35->_rawPrompt, prompt);
    objc_storeStrong(&v35->_queryActivityEntities, entities);
    objc_storeStrong(&v35->_language, language);
    objc_storeStrong(&v35->_region, region);
    v35->_memoryPromptSuggestionSource = source;
    unsignedIntValue = versionCopy;
    if (versionCopy)
    {
      v35->_hasVersion = 1;
      unsignedIntValue = [versionCopy unsignedIntValue];
    }

    else
    {
      v35->_hasVersion = 0;
    }

    songCopy = v37;
    v35->_version = unsignedIntValue;
    genreCopy = v38;
    traitsCopy = obja;
  }

  return v35;
}

+ (id)protoFields
{
  v24[19] = *MEMORY[0x1E69E9840];
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"identifier" number:1 type:13 subMessageClass:0];
  v24[0] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryContainsPersonEntity" number:2 type:12 subMessageClass:0];
  v24[1] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryContainsActivityEntity" number:3 type:12 subMessageClass:0];
  v24[2] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryContainsTimeEntity" number:4 type:12 subMessageClass:0];
  v24[3] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryContainsLocationEntity" number:5 type:12 subMessageClass:0];
  v24[4] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryContainsTripEntity" number:6 type:12 subMessageClass:0];
  v24[5] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryContainsMusicArtist" number:7 type:12 subMessageClass:0];
  v24[6] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryContainsMusicSong" number:8 type:12 subMessageClass:0];
  v24[7] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryContainsMusicGenre" number:9 type:12 subMessageClass:0];
  v24[8] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryContainsMusicMood" number:10 type:12 subMessageClass:0];
  v24[9] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"globalTraits" number:11 type:13 subMessageClass:0];
  v24[10] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"memoryGenerated" number:12 type:12 subMessageClass:0];
  v24[11] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"memoryAssetCount" number:13 type:4 subMessageClass:0];
  v24[12] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"rawPrompt" number:14 type:13 subMessageClass:0];
  v24[13] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"queryActivityEntities" number:15 type:13 subMessageClass:0];
  v24[14] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"language" number:16 type:13 subMessageClass:0];
  v24[15] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"region" number:17 type:13 subMessageClass:0];
  v24[16] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"memoryPromptSuggestionSource" number:18 type:4 subMessageClass:0];
  v24[17] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"version" number:19 type:4 subMessageClass:0];
  v24[18] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:19];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v24[19] = *MEMORY[0x1E69E9840];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"identifier" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryContainsPersonEntity" dataType:0 requestOnly:0 fieldNumber:2 protoDataType:12 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryContainsActivityEntity" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryContainsTimeEntity" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryContainsLocationEntity" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryContainsTripEntity" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryContainsMusicArtist" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryContainsMusicSong" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryContainsMusicGenre" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"queryContainsMusicMood" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"globalTraits_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_128_55095];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"memoryGenerated" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"memoryAssetCount" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:4 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"rawPrompt" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"queryActivityEntities_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_130];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"language" dataType:2 requestOnly:0 fieldNumber:16 protoDataType:13 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"region" dataType:2 requestOnly:0 fieldNumber:17 protoDataType:13 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"memoryPromptSuggestionSource" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"version" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:4 convertedType:0];
  v24[0] = v23;
  v24[1] = v22;
  v24[2] = v21;
  v24[3] = v20;
  v24[4] = v19;
  v24[5] = v18;
  v24[6] = v17;
  v24[7] = v16;
  v24[8] = v15;
  v24[9] = v2;
  v24[10] = v3;
  v24[11] = v14;
  v24[12] = v13;
  v24[13] = v4;
  v24[14] = v12;
  v24[15] = v5;
  v24[16] = v11;
  v24[17] = v6;
  v24[18] = v7;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:19];

  v8 = *MEMORY[0x1E69E9840];

  return v10;
}

id __33__BMPhotosMemoryCreation_columns__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _queryActivityEntitiesJSONArray];
  v4 = BMConvertObjectToJSONString();

  return v4;
}

id __33__BMPhotosMemoryCreation_columns__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBodyKeepingBackingData:1];
  v3 = [v2 _globalTraitsJSONArray];
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

    v8 = [[BMPhotosMemoryCreation alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[10] = 0;
    }
  }

  return v4;
}

@end