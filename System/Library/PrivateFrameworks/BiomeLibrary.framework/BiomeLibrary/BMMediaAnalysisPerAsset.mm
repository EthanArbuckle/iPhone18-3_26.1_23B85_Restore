@interface BMMediaAnalysisPerAsset
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMediaAnalysisPerAsset)initWithContentType:(id)type shootingCategory:(id)category shootingMode:(id)mode duration:(id)duration highlightCount:(id)count highlightDuration:(id)highlightDuration temporalFaceCount:(id)faceCount temporalSceneCount:(id)self0 containNamedPerson:(id)self1 containNamedPet:(id)self2 containNatureOrNaturalLandmarks:(id)self3 containSkyline:(id)self4 containLandmarks:(id)self5 containAction:(id)self6 containHighMotion:(id)self7 containAudioTypes:(id)self8 atFavoritedLocation:(id)self9 durationOriginal:(id)original highlightCountOriginal:(id)countOriginal highlightDurationOriginal:(id)durationOriginal temporalFaceCountOriginal:(id)faceCountOriginal temporalSceneCountOriginal:(id)sceneCountOriginal;
- (BMMediaAnalysisPerAsset)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMediaAnalysisPerAsset

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contentType = [(BMMediaAnalysisPerAsset *)self contentType];
    contentType2 = [v5 contentType];
    v8 = contentType2;
    if (contentType == contentType2)
    {
    }

    else
    {
      contentType3 = [(BMMediaAnalysisPerAsset *)self contentType];
      contentType4 = [v5 contentType];
      v11 = [contentType3 isEqual:contentType4];

      if (!v11)
      {
        goto LABEL_110;
      }
    }

    shootingCategory = [(BMMediaAnalysisPerAsset *)self shootingCategory];
    shootingCategory2 = [v5 shootingCategory];
    v15 = shootingCategory2;
    if (shootingCategory == shootingCategory2)
    {
    }

    else
    {
      shootingCategory3 = [(BMMediaAnalysisPerAsset *)self shootingCategory];
      shootingCategory4 = [v5 shootingCategory];
      v18 = [shootingCategory3 isEqual:shootingCategory4];

      if (!v18)
      {
        goto LABEL_110;
      }
    }

    shootingMode = [(BMMediaAnalysisPerAsset *)self shootingMode];
    shootingMode2 = [v5 shootingMode];
    v21 = shootingMode2;
    if (shootingMode == shootingMode2)
    {
    }

    else
    {
      shootingMode3 = [(BMMediaAnalysisPerAsset *)self shootingMode];
      shootingMode4 = [v5 shootingMode];
      v24 = [shootingMode3 isEqual:shootingMode4];

      if (!v24)
      {
        goto LABEL_110;
      }
    }

    if (!-[BMMediaAnalysisPerAsset hasDuration](self, "hasDuration") && ![v5 hasDuration] || -[BMMediaAnalysisPerAsset hasDuration](self, "hasDuration") && objc_msgSend(v5, "hasDuration") && (v25 = -[BMMediaAnalysisPerAsset duration](self, "duration"), v25 == objc_msgSend(v5, "duration")))
    {
      if (!-[BMMediaAnalysisPerAsset hasHighlightCount](self, "hasHighlightCount") && ![v5 hasHighlightCount] || -[BMMediaAnalysisPerAsset hasHighlightCount](self, "hasHighlightCount") && objc_msgSend(v5, "hasHighlightCount") && (v26 = -[BMMediaAnalysisPerAsset highlightCount](self, "highlightCount"), v26 == objc_msgSend(v5, "highlightCount")))
      {
        if (!-[BMMediaAnalysisPerAsset hasHighlightDuration](self, "hasHighlightDuration") && ![v5 hasHighlightDuration] || -[BMMediaAnalysisPerAsset hasHighlightDuration](self, "hasHighlightDuration") && objc_msgSend(v5, "hasHighlightDuration") && (v27 = -[BMMediaAnalysisPerAsset highlightDuration](self, "highlightDuration"), v27 == objc_msgSend(v5, "highlightDuration")))
        {
          if (!-[BMMediaAnalysisPerAsset hasTemporalFaceCount](self, "hasTemporalFaceCount") && ![v5 hasTemporalFaceCount] || -[BMMediaAnalysisPerAsset hasTemporalFaceCount](self, "hasTemporalFaceCount") && objc_msgSend(v5, "hasTemporalFaceCount") && (v28 = -[BMMediaAnalysisPerAsset temporalFaceCount](self, "temporalFaceCount"), v28 == objc_msgSend(v5, "temporalFaceCount")))
          {
            if (!-[BMMediaAnalysisPerAsset hasTemporalSceneCount](self, "hasTemporalSceneCount") && ![v5 hasTemporalSceneCount] || -[BMMediaAnalysisPerAsset hasTemporalSceneCount](self, "hasTemporalSceneCount") && objc_msgSend(v5, "hasTemporalSceneCount") && (v29 = -[BMMediaAnalysisPerAsset temporalSceneCount](self, "temporalSceneCount"), v29 == objc_msgSend(v5, "temporalSceneCount")))
            {
              if (!-[BMMediaAnalysisPerAsset hasContainNamedPerson](self, "hasContainNamedPerson") && ![v5 hasContainNamedPerson] || -[BMMediaAnalysisPerAsset hasContainNamedPerson](self, "hasContainNamedPerson") && objc_msgSend(v5, "hasContainNamedPerson") && (v30 = -[BMMediaAnalysisPerAsset containNamedPerson](self, "containNamedPerson"), v30 == objc_msgSend(v5, "containNamedPerson")))
              {
                if (!-[BMMediaAnalysisPerAsset hasContainNamedPet](self, "hasContainNamedPet") && ![v5 hasContainNamedPet] || -[BMMediaAnalysisPerAsset hasContainNamedPet](self, "hasContainNamedPet") && objc_msgSend(v5, "hasContainNamedPet") && (v31 = -[BMMediaAnalysisPerAsset containNamedPet](self, "containNamedPet"), v31 == objc_msgSend(v5, "containNamedPet")))
                {
                  if (!-[BMMediaAnalysisPerAsset hasContainNatureOrNaturalLandmarks](self, "hasContainNatureOrNaturalLandmarks") && ![v5 hasContainNatureOrNaturalLandmarks] || -[BMMediaAnalysisPerAsset hasContainNatureOrNaturalLandmarks](self, "hasContainNatureOrNaturalLandmarks") && objc_msgSend(v5, "hasContainNatureOrNaturalLandmarks") && (v32 = -[BMMediaAnalysisPerAsset containNatureOrNaturalLandmarks](self, "containNatureOrNaturalLandmarks"), v32 == objc_msgSend(v5, "containNatureOrNaturalLandmarks")))
                  {
                    if (!-[BMMediaAnalysisPerAsset hasContainSkyline](self, "hasContainSkyline") && ![v5 hasContainSkyline] || -[BMMediaAnalysisPerAsset hasContainSkyline](self, "hasContainSkyline") && objc_msgSend(v5, "hasContainSkyline") && (v33 = -[BMMediaAnalysisPerAsset containSkyline](self, "containSkyline"), v33 == objc_msgSend(v5, "containSkyline")))
                    {
                      if (!-[BMMediaAnalysisPerAsset hasContainLandmarks](self, "hasContainLandmarks") && ![v5 hasContainLandmarks] || -[BMMediaAnalysisPerAsset hasContainLandmarks](self, "hasContainLandmarks") && objc_msgSend(v5, "hasContainLandmarks") && (v34 = -[BMMediaAnalysisPerAsset containLandmarks](self, "containLandmarks"), v34 == objc_msgSend(v5, "containLandmarks")))
                      {
                        if (!-[BMMediaAnalysisPerAsset hasContainAction](self, "hasContainAction") && ![v5 hasContainAction] || -[BMMediaAnalysisPerAsset hasContainAction](self, "hasContainAction") && objc_msgSend(v5, "hasContainAction") && (v35 = -[BMMediaAnalysisPerAsset containAction](self, "containAction"), v35 == objc_msgSend(v5, "containAction")))
                        {
                          if (!-[BMMediaAnalysisPerAsset hasContainHighMotion](self, "hasContainHighMotion") && ![v5 hasContainHighMotion] || -[BMMediaAnalysisPerAsset hasContainHighMotion](self, "hasContainHighMotion") && objc_msgSend(v5, "hasContainHighMotion") && (v36 = -[BMMediaAnalysisPerAsset containHighMotion](self, "containHighMotion"), v36 == objc_msgSend(v5, "containHighMotion")))
                          {
                            if (!-[BMMediaAnalysisPerAsset hasContainAudioTypes](self, "hasContainAudioTypes") && ![v5 hasContainAudioTypes] || -[BMMediaAnalysisPerAsset hasContainAudioTypes](self, "hasContainAudioTypes") && objc_msgSend(v5, "hasContainAudioTypes") && (v37 = -[BMMediaAnalysisPerAsset containAudioTypes](self, "containAudioTypes"), v37 == objc_msgSend(v5, "containAudioTypes")))
                            {
                              if (!-[BMMediaAnalysisPerAsset hasAtFavoritedLocation](self, "hasAtFavoritedLocation") && ![v5 hasAtFavoritedLocation] || -[BMMediaAnalysisPerAsset hasAtFavoritedLocation](self, "hasAtFavoritedLocation") && objc_msgSend(v5, "hasAtFavoritedLocation") && (v38 = -[BMMediaAnalysisPerAsset atFavoritedLocation](self, "atFavoritedLocation"), v38 == objc_msgSend(v5, "atFavoritedLocation")))
                              {
                                if (!-[BMMediaAnalysisPerAsset hasDurationOriginal](self, "hasDurationOriginal") && ![v5 hasDurationOriginal] || -[BMMediaAnalysisPerAsset hasDurationOriginal](self, "hasDurationOriginal") && objc_msgSend(v5, "hasDurationOriginal") && (v39 = -[BMMediaAnalysisPerAsset durationOriginal](self, "durationOriginal"), v39 == objc_msgSend(v5, "durationOriginal")))
                                {
                                  if (!-[BMMediaAnalysisPerAsset hasHighlightCountOriginal](self, "hasHighlightCountOriginal") && ![v5 hasHighlightCountOriginal] || -[BMMediaAnalysisPerAsset hasHighlightCountOriginal](self, "hasHighlightCountOriginal") && objc_msgSend(v5, "hasHighlightCountOriginal") && (v40 = -[BMMediaAnalysisPerAsset highlightCountOriginal](self, "highlightCountOriginal"), v40 == objc_msgSend(v5, "highlightCountOriginal")))
                                  {
                                    if (!-[BMMediaAnalysisPerAsset hasHighlightDurationOriginal](self, "hasHighlightDurationOriginal") && ![v5 hasHighlightDurationOriginal] || -[BMMediaAnalysisPerAsset hasHighlightDurationOriginal](self, "hasHighlightDurationOriginal") && objc_msgSend(v5, "hasHighlightDurationOriginal") && (v41 = -[BMMediaAnalysisPerAsset highlightDurationOriginal](self, "highlightDurationOriginal"), v41 == objc_msgSend(v5, "highlightDurationOriginal")))
                                    {
                                      if (!-[BMMediaAnalysisPerAsset hasTemporalFaceCountOriginal](self, "hasTemporalFaceCountOriginal") && ![v5 hasTemporalFaceCountOriginal] || -[BMMediaAnalysisPerAsset hasTemporalFaceCountOriginal](self, "hasTemporalFaceCountOriginal") && objc_msgSend(v5, "hasTemporalFaceCountOriginal") && (v42 = -[BMMediaAnalysisPerAsset temporalFaceCountOriginal](self, "temporalFaceCountOriginal"), v42 == objc_msgSend(v5, "temporalFaceCountOriginal")))
                                      {
                                        if (!-[BMMediaAnalysisPerAsset hasTemporalSceneCountOriginal](self, "hasTemporalSceneCountOriginal") && ![v5 hasTemporalSceneCountOriginal])
                                        {
                                          v12 = 1;
                                          goto LABEL_111;
                                        }

                                        if (-[BMMediaAnalysisPerAsset hasTemporalSceneCountOriginal](self, "hasTemporalSceneCountOriginal") && [v5 hasTemporalSceneCountOriginal])
                                        {
                                          temporalSceneCountOriginal = [(BMMediaAnalysisPerAsset *)self temporalSceneCountOriginal];
                                          v12 = temporalSceneCountOriginal == [v5 temporalSceneCountOriginal];
LABEL_111:

                                          goto LABEL_112;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_110:
    v12 = 0;
    goto LABEL_111;
  }

  v12 = 0;
LABEL_112:

  return v12;
}

- (id)jsonDictionary
{
  v74[22] = *MEMORY[0x1E69E9840];
  contentType = [(BMMediaAnalysisPerAsset *)self contentType];
  shootingCategory = [(BMMediaAnalysisPerAsset *)self shootingCategory];
  shootingMode = [(BMMediaAnalysisPerAsset *)self shootingMode];
  if ([(BMMediaAnalysisPerAsset *)self hasDuration])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset duration](self, "duration")}];
  }

  else
  {
    v6 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasHighlightCount])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset highlightCount](self, "highlightCount")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasHighlightDuration])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset highlightDuration](self, "highlightDuration")}];
  }

  else
  {
    v8 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasTemporalFaceCount])
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset temporalFaceCount](self, "temporalFaceCount")}];
  }

  else
  {
    v9 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasTemporalSceneCount])
  {
    v72 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset temporalSceneCount](self, "temporalSceneCount")}];
  }

  else
  {
    v72 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasContainNamedPerson])
  {
    v71 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containNamedPerson](self, "containNamedPerson")}];
  }

  else
  {
    v71 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasContainNamedPet])
  {
    v70 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containNamedPet](self, "containNamedPet")}];
  }

  else
  {
    v70 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasContainNatureOrNaturalLandmarks])
  {
    v69 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containNatureOrNaturalLandmarks](self, "containNatureOrNaturalLandmarks")}];
  }

  else
  {
    v69 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasContainSkyline])
  {
    v68 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containSkyline](self, "containSkyline")}];
  }

  else
  {
    v68 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasContainLandmarks])
  {
    v67 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containLandmarks](self, "containLandmarks")}];
  }

  else
  {
    v67 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasContainAction])
  {
    v66 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containAction](self, "containAction")}];
  }

  else
  {
    v66 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasContainHighMotion])
  {
    v65 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containHighMotion](self, "containHighMotion")}];
  }

  else
  {
    v65 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasContainAudioTypes])
  {
    v64 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containAudioTypes](self, "containAudioTypes")}];
  }

  else
  {
    v64 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasAtFavoritedLocation])
  {
    v63 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset atFavoritedLocation](self, "atFavoritedLocation")}];
  }

  else
  {
    v63 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasDurationOriginal])
  {
    v62 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset durationOriginal](self, "durationOriginal")}];
  }

  else
  {
    v62 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasHighlightCountOriginal])
  {
    v61 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset highlightCountOriginal](self, "highlightCountOriginal")}];
  }

  else
  {
    v61 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasHighlightDurationOriginal])
  {
    v60 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset highlightDurationOriginal](self, "highlightDurationOriginal")}];
  }

  else
  {
    v60 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasTemporalFaceCountOriginal])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset temporalFaceCountOriginal](self, "temporalFaceCountOriginal")}];
  }

  else
  {
    v59 = 0;
  }

  if ([(BMMediaAnalysisPerAsset *)self hasTemporalSceneCountOriginal])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset temporalSceneCountOriginal](self, "temporalSceneCountOriginal")}];
  }

  else
  {
    v10 = 0;
  }

  v73[0] = @"contentType";
  null = contentType;
  if (!contentType)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v50 = null;
  v74[0] = null;
  v73[1] = @"shootingCategory";
  null2 = shootingCategory;
  if (!shootingCategory)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = null2;
  v74[1] = null2;
  v73[2] = @"shootingMode";
  null3 = shootingMode;
  if (!shootingMode)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v48 = null3;
  v74[2] = null3;
  v73[3] = @"duration";
  null4 = v6;
  if (!v6)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v47 = null4;
  v74[3] = null4;
  v73[4] = @"highlightCount";
  null5 = v7;
  if (!v7)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null5;
  v74[4] = null5;
  v73[5] = @"highlightDuration";
  null6 = v8;
  if (!v8)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null6;
  v74[5] = null6;
  v73[6] = @"temporalFaceCount";
  null7 = v9;
  if (!v9)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null7;
  v74[6] = null7;
  v73[7] = @"temporalSceneCount";
  null8 = v72;
  if (!v72)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v74[7] = null8;
  v73[8] = @"containNamedPerson";
  null9 = v71;
  if (!v71)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v74[8] = null9;
  v73[9] = @"containNamedPet";
  null10 = v70;
  if (!v70)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v54 = null10;
  v74[9] = null10;
  v73[10] = @"containNatureOrNaturalLandmarks";
  null11 = v69;
  if (!v69)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = contentType;
  v53 = null11;
  v74[10] = null11;
  v73[11] = @"containSkyline";
  null12 = v68;
  if (!v68)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v23 = null12;
  v74[11] = null12;
  v73[12] = @"containLandmarks";
  null13 = v67;
  if (!v67)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null13;
  v74[12] = null13;
  v73[13] = @"containAction";
  null14 = v66;
  if (!v66)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null14;
  v74[13] = null14;
  v73[14] = @"containHighMotion";
  null15 = v65;
  if (!v65)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null15;
  v74[14] = null15;
  v73[15] = @"containAudioTypes";
  null16 = v64;
  if (!v64)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = v9;
  v57 = v7;
  v39 = null16;
  v74[15] = null16;
  v73[16] = @"atFavoritedLocation";
  null17 = v63;
  if (!v63)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null17;
  v74[16] = null17;
  v73[17] = @"durationOriginal";
  null18 = v62;
  if (!v62)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = v10;
  v55 = v8;
  v74[17] = null18;
  v73[18] = @"highlightCountOriginal";
  null19 = v61;
  if (!v61)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null8;
  v74[18] = null19;
  v73[19] = @"highlightDurationOriginal";
  null20 = v60;
  if (!v60)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v32 = null9;
  v74[19] = null20;
  v73[20] = @"temporalFaceCountOriginal";
  null21 = v59;
  if (!v59)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v74[20] = null21;
  v73[21] = @"temporalSceneCountOriginal";
  null22 = v58;
  if (!v58)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v74[21] = null22;
  v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:22];
  if (!v58)
  {
  }

  v35 = v23;
  if (!v59)
  {

    v35 = v23;
  }

  if (!v60)
  {

    v35 = v23;
  }

  if (!v61)
  {

    v35 = v23;
  }

  if (!v62)
  {

    v35 = v23;
  }

  if (!v63)
  {

    v35 = v23;
  }

  if (!v64)
  {

    v35 = v23;
  }

  if (!v65)
  {

    v35 = v23;
  }

  if (!v66)
  {

    v35 = v23;
  }

  if (!v67)
  {

    v35 = v23;
  }

  if (!v68)
  {
  }

  if (!v69)
  {
  }

  if (!v70)
  {
  }

  if (!v71)
  {
  }

  if (v72)
  {
    if (v56)
    {
      goto LABEL_132;
    }
  }

  else
  {

    if (v56)
    {
LABEL_132:
      if (v55)
      {
        goto LABEL_133;
      }

      goto LABEL_143;
    }
  }

  if (v55)
  {
LABEL_133:
    if (v57)
    {
      goto LABEL_134;
    }

    goto LABEL_144;
  }

LABEL_143:

  if (v57)
  {
LABEL_134:
    if (v6)
    {
      goto LABEL_135;
    }

    goto LABEL_145;
  }

LABEL_144:

  if (v6)
  {
LABEL_135:
    if (shootingMode)
    {
      goto LABEL_136;
    }

    goto LABEL_146;
  }

LABEL_145:

  if (shootingMode)
  {
LABEL_136:
    if (shootingCategory)
    {
      goto LABEL_137;
    }

LABEL_147:

    if (v52)
    {
      goto LABEL_138;
    }

    goto LABEL_148;
  }

LABEL_146:

  if (!shootingCategory)
  {
    goto LABEL_147;
  }

LABEL_137:
  if (v52)
  {
    goto LABEL_138;
  }

LABEL_148:

LABEL_138:
  v36 = *MEMORY[0x1E69E9840];

  return v51;
}

- (BMMediaAnalysisPerAsset)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v261[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"contentType"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"shootingCategory"];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v215 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v215 = v8;
LABEL_7:
      v9 = [dictionaryCopy objectForKeyedSubscript:@"shootingMode"];
      if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        errorCopy2 = error;
        v214 = 0;
        goto LABEL_10;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        errorCopy2 = error;
        v214 = v9;
LABEL_10:
        v217 = [dictionaryCopy objectForKeyedSubscript:@"duration"];
        if (!v217 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v210 = 0;
          goto LABEL_13;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v210 = v217;
LABEL_13:
          v10 = [dictionaryCopy objectForKeyedSubscript:@"highlightCount"];
          v213 = v10;
          if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v211 = 0;
LABEL_16:
            v12 = [dictionaryCopy objectForKeyedSubscript:@"highlightDuration"];
            v209 = v12;
            if (!v12)
            {
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = 0;
              goto LABEL_33;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = v12;
LABEL_33:
              v17 = [dictionaryCopy objectForKeyedSubscript:@"temporalFaceCount"];
              v208 = v17;
              if (!v17 || (v18 = v17, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v207 = 0;
                goto LABEL_36;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v207 = v18;
LABEL_36:
                v19 = [dictionaryCopy objectForKeyedSubscript:@"temporalSceneCount"];
                v205 = v19;
                if (!v19 || (v20 = v19, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v204 = 0;
                  goto LABEL_39;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v204 = v20;
LABEL_39:
                  v21 = [dictionaryCopy objectForKeyedSubscript:@"containNamedPerson"];
                  v203 = v21;
                  if (!v21 || (v22 = v21, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v202 = 0;
                    goto LABEL_42;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v202 = v22;
LABEL_42:
                    v23 = [dictionaryCopy objectForKeyedSubscript:@"containNamedPet"];
                    v200 = v23;
                    if (!v23 || (v24 = v23, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                    {
                      v201 = 0;
                      goto LABEL_45;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v201 = v24;
LABEL_45:
                      v25 = [dictionaryCopy objectForKeyedSubscript:@"containNatureOrNaturalLandmarks"];
                      v198 = v25;
                      if (!v25 || (v26 = v25, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v199 = 0;
                        goto LABEL_48;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v199 = v26;
LABEL_48:
                        v27 = [dictionaryCopy objectForKeyedSubscript:@"containSkyline"];
                        v196 = v27;
                        if (!v27 || (v28 = v27, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v197 = 0;
                          goto LABEL_51;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v197 = v28;
LABEL_51:
                          v29 = [dictionaryCopy objectForKeyedSubscript:@"containLandmarks"];
                          v194 = v29;
                          if (!v29 || (v30 = v29, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                          {
                            v195 = 0;
                            goto LABEL_54;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v195 = v30;
LABEL_54:
                            v31 = [dictionaryCopy objectForKeyedSubscript:@"containAction"];
                            v192 = v31;
                            if (!v31 || (v32 = v31, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              v193 = 0;
                              goto LABEL_57;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v193 = v32;
LABEL_57:
                              v33 = [dictionaryCopy objectForKeyedSubscript:@"containHighMotion"];
                              v190 = v33;
                              if (!v33 || (v34 = v33, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                              {
                                v191 = 0;
                                goto LABEL_60;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v191 = v34;
LABEL_60:
                                v35 = [dictionaryCopy objectForKeyedSubscript:@"containAudioTypes"];
                                v188 = v35;
                                if (!v35 || (v36 = v35, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v189 = 0;
                                  goto LABEL_63;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v189 = v36;
LABEL_63:
                                  v37 = [dictionaryCopy objectForKeyedSubscript:@"atFavoritedLocation"];
                                  v186 = v37;
                                  if (!v37 || (v38 = v37, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v187 = 0;
                                    goto LABEL_66;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v187 = v38;
LABEL_66:
                                    v39 = [dictionaryCopy objectForKeyedSubscript:@"durationOriginal"];
                                    v184 = v39;
                                    if (!v39 || (v40 = v39, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v185 = 0;
                                      goto LABEL_69;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v185 = v40;
LABEL_69:
                                      v41 = [dictionaryCopy objectForKeyedSubscript:@"highlightCountOriginal"];
                                      v181 = v41;
                                      if (!v41 || (v42 = v41, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v183 = 0;
                                        goto LABEL_72;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v183 = v42;
LABEL_72:
                                        v43 = [dictionaryCopy objectForKeyedSubscript:@"highlightDurationOriginal"];
                                        v180 = v43;
                                        if (!v43 || (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v182 = 0;
                                          goto LABEL_75;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v182 = v44;
LABEL_75:
                                          v45 = [dictionaryCopy objectForKeyedSubscript:@"temporalFaceCountOriginal"];
                                          v179 = v45;
                                          if (v45)
                                          {
                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v45 = 0;
                                            }

                                            else
                                            {
                                              objc_opt_class();
                                              if ((objc_opt_isKindOfClass() & 1) == 0)
                                              {
                                                if (!errorCopy2)
                                                {
                                                  v45 = 0;
                                                  v16 = 0;
                                                  goto LABEL_184;
                                                }

                                                v164 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v165 = v7;
                                                v166 = *MEMORY[0x1E698F240];
                                                v220 = *MEMORY[0x1E696A578];
                                                v139 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"temporalFaceCountOriginal"];
                                                v221 = v139;
                                                v167 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v221 forKeys:&v220 count:1];
                                                v168 = v166;
                                                v7 = v165;
                                                v178 = v167;
                                                v169 = [v164 initWithDomain:v168 code:2 userInfo:?];
                                                v45 = 0;
                                                v16 = 0;
                                                *errorCopy2 = v169;
                                                goto LABEL_183;
                                              }

                                              v45 = v45;
                                            }
                                          }

                                          v137 = [dictionaryCopy objectForKeyedSubscript:@"temporalSceneCountOriginal"];
                                          v178 = v137;
                                          if (v137 && (v138 = v137, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                          {
                                            objc_opt_class();
                                            if ((objc_opt_isKindOfClass() & 1) == 0)
                                            {
                                              if (errorCopy2)
                                              {
                                                v170 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v171 = v7;
                                                v172 = *MEMORY[0x1E698F240];
                                                v218 = *MEMORY[0x1E696A578];
                                                v206 = v45;
                                                v173 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"temporalSceneCountOriginal"];
                                                v219 = v173;
                                                v174 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v219 forKeys:&v218 count:1];
                                                v175 = v172;
                                                v7 = v171;
                                                *errorCopy2 = [v170 initWithDomain:v175 code:2 userInfo:v174];

                                                v45 = v206;
                                              }

                                              v139 = 0;
                                              v16 = 0;
                                              goto LABEL_183;
                                            }

                                            v139 = v138;
                                          }

                                          else
                                          {
                                            v139 = 0;
                                          }

                                          v16 = [(BMMediaAnalysisPerAsset *)self initWithContentType:v7 shootingCategory:v215 shootingMode:v214 duration:v210 highlightCount:v211 highlightDuration:v12 temporalFaceCount:v207 temporalSceneCount:v204 containNamedPerson:v202 containNamedPet:v201 containNatureOrNaturalLandmarks:v199 containSkyline:v197 containLandmarks:v195 containAction:v193 containHighMotion:v191 containAudioTypes:v189 atFavoritedLocation:v187 durationOriginal:v185 highlightCountOriginal:v183 highlightDurationOriginal:v182 temporalFaceCountOriginal:v45 temporalSceneCountOriginal:v139];
                                          self = v16;
LABEL_183:

LABEL_184:
                                          v161 = v179;
                                          goto LABEL_185;
                                        }

                                        if (errorCopy2)
                                        {
                                          v158 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v159 = v7;
                                          v160 = *MEMORY[0x1E698F240];
                                          v222 = *MEMORY[0x1E696A578];
                                          v45 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightDurationOriginal"];
                                          v223 = v45;
                                          v161 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v223 forKeys:&v222 count:1];
                                          v162 = v160;
                                          v7 = v159;
                                          v163 = [v158 initWithDomain:v162 code:2 userInfo:v161];
                                          v182 = 0;
                                          v16 = 0;
                                          *errorCopy2 = v163;
LABEL_185:

                                          v54 = v210;
LABEL_186:

LABEL_187:
LABEL_188:

LABEL_189:
                                          goto LABEL_190;
                                        }

                                        v182 = 0;
                                        v16 = 0;
LABEL_213:
                                        v54 = v210;
                                        goto LABEL_186;
                                      }

                                      if (errorCopy2)
                                      {
                                        v152 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v153 = v7;
                                        v154 = *MEMORY[0x1E698F240];
                                        v224 = *MEMORY[0x1E696A578];
                                        v182 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightCountOriginal"];
                                        v225 = v182;
                                        v155 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v225 forKeys:&v224 count:1];
                                        v156 = v154;
                                        v7 = v153;
                                        v180 = v155;
                                        v157 = [v152 initWithDomain:v156 code:2 userInfo:?];
                                        v183 = 0;
                                        v16 = 0;
                                        *errorCopy2 = v157;
                                        goto LABEL_213;
                                      }

                                      v183 = 0;
                                      v16 = 0;
LABEL_211:
                                      v54 = v210;
                                      goto LABEL_187;
                                    }

                                    if (errorCopy2)
                                    {
                                      v146 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v147 = v7;
                                      v148 = *MEMORY[0x1E698F240];
                                      v226 = *MEMORY[0x1E696A578];
                                      v183 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"durationOriginal"];
                                      v227 = v183;
                                      v149 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v227 forKeys:&v226 count:1];
                                      v150 = v148;
                                      v7 = v147;
                                      v181 = v149;
                                      v151 = [v146 initWithDomain:v150 code:2 userInfo:?];
                                      v185 = 0;
                                      v16 = 0;
                                      *errorCopy2 = v151;
                                      goto LABEL_211;
                                    }

                                    v185 = 0;
                                    v16 = 0;
LABEL_209:
                                    v54 = v210;
                                    goto LABEL_188;
                                  }

                                  if (errorCopy2)
                                  {
                                    v140 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v141 = v7;
                                    v142 = *MEMORY[0x1E698F240];
                                    v228 = *MEMORY[0x1E696A578];
                                    v185 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"atFavoritedLocation"];
                                    v229 = v185;
                                    v143 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
                                    v144 = v142;
                                    v7 = v141;
                                    v184 = v143;
                                    v145 = [v140 initWithDomain:v144 code:2 userInfo:?];
                                    v187 = 0;
                                    v16 = 0;
                                    *errorCopy2 = v145;
                                    goto LABEL_209;
                                  }

                                  v187 = 0;
                                  v16 = 0;
LABEL_207:
                                  v54 = v210;
                                  goto LABEL_189;
                                }

                                if (errorCopy2)
                                {
                                  v131 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v132 = v7;
                                  v133 = *MEMORY[0x1E698F240];
                                  v230 = *MEMORY[0x1E696A578];
                                  v187 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"containAudioTypes"];
                                  v231 = v187;
                                  v134 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v231 forKeys:&v230 count:1];
                                  v135 = v133;
                                  v7 = v132;
                                  v186 = v134;
                                  v136 = [v131 initWithDomain:v135 code:2 userInfo:?];
                                  v189 = 0;
                                  v16 = 0;
                                  *errorCopy2 = v136;
                                  goto LABEL_207;
                                }

                                v189 = 0;
                                v16 = 0;
LABEL_179:
                                v54 = v210;
LABEL_190:

                                goto LABEL_191;
                              }

                              if (errorCopy2)
                              {
                                v125 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v126 = v7;
                                v127 = *MEMORY[0x1E698F240];
                                v232 = *MEMORY[0x1E696A578];
                                v189 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"containHighMotion"];
                                v233 = v189;
                                v128 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v233 forKeys:&v232 count:1];
                                v129 = v127;
                                v7 = v126;
                                v188 = v128;
                                v130 = [v125 initWithDomain:v129 code:2 userInfo:?];
                                v191 = 0;
                                v16 = 0;
                                *errorCopy2 = v130;
                                goto LABEL_179;
                              }

                              v191 = 0;
                              v16 = 0;
LABEL_175:
                              v54 = v210;
LABEL_191:

                              goto LABEL_192;
                            }

                            if (errorCopy2)
                            {
                              v119 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v120 = v7;
                              v121 = *MEMORY[0x1E698F240];
                              v234 = *MEMORY[0x1E696A578];
                              v191 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"containAction"];
                              v235 = v191;
                              v122 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v235 forKeys:&v234 count:1];
                              v123 = v121;
                              v7 = v120;
                              v190 = v122;
                              v124 = [v119 initWithDomain:v123 code:2 userInfo:?];
                              v193 = 0;
                              v16 = 0;
                              *errorCopy2 = v124;
                              goto LABEL_175;
                            }

                            v193 = 0;
                            v16 = 0;
LABEL_171:
                            v54 = v210;
LABEL_192:

                            goto LABEL_193;
                          }

                          if (errorCopy2)
                          {
                            v113 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v114 = v7;
                            v115 = *MEMORY[0x1E698F240];
                            v236 = *MEMORY[0x1E696A578];
                            v193 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"containLandmarks"];
                            v237 = v193;
                            v116 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v237 forKeys:&v236 count:1];
                            v117 = v115;
                            v7 = v114;
                            v192 = v116;
                            v118 = [v113 initWithDomain:v117 code:2 userInfo:?];
                            v195 = 0;
                            v16 = 0;
                            *errorCopy2 = v118;
                            goto LABEL_171;
                          }

                          v195 = 0;
                          v16 = 0;
LABEL_167:
                          v54 = v210;
LABEL_193:

                          goto LABEL_194;
                        }

                        if (errorCopy2)
                        {
                          v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v108 = v7;
                          v109 = *MEMORY[0x1E698F240];
                          v238 = *MEMORY[0x1E696A578];
                          v195 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"containSkyline"];
                          v239 = v195;
                          v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
                          v111 = v109;
                          v7 = v108;
                          v194 = v110;
                          v112 = [v107 initWithDomain:v111 code:2 userInfo:?];
                          v197 = 0;
                          v16 = 0;
                          *errorCopy2 = v112;
                          goto LABEL_167;
                        }

                        v197 = 0;
                        v16 = 0;
LABEL_161:
                        v54 = v210;
LABEL_194:

                        goto LABEL_195;
                      }

                      if (errorCopy2)
                      {
                        v101 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v102 = v7;
                        v103 = *MEMORY[0x1E698F240];
                        v240 = *MEMORY[0x1E696A578];
                        v197 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"containNatureOrNaturalLandmarks"];
                        v241 = v197;
                        v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v241 forKeys:&v240 count:1];
                        v105 = v103;
                        v7 = v102;
                        v196 = v104;
                        v106 = [v101 initWithDomain:v105 code:2 userInfo:?];
                        v199 = 0;
                        v16 = 0;
                        *errorCopy2 = v106;
                        goto LABEL_161;
                      }

                      v199 = 0;
                      v16 = 0;
LABEL_151:
                      v54 = v210;
LABEL_195:

                      goto LABEL_196;
                    }

                    if (errorCopy2)
                    {
                      v95 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v96 = v7;
                      v97 = *MEMORY[0x1E698F240];
                      v242 = *MEMORY[0x1E696A578];
                      v199 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"containNamedPet"];
                      v243 = v199;
                      v98 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
                      v99 = v97;
                      v7 = v96;
                      v198 = v98;
                      v100 = [v95 initWithDomain:v99 code:2 userInfo:?];
                      v201 = 0;
                      v16 = 0;
                      *errorCopy2 = v100;
                      goto LABEL_151;
                    }

                    v201 = 0;
                    v16 = 0;
LABEL_145:
                    v54 = v210;
LABEL_196:

                    goto LABEL_197;
                  }

                  if (errorCopy2)
                  {
                    v89 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v90 = v7;
                    v91 = *MEMORY[0x1E698F240];
                    v244 = *MEMORY[0x1E696A578];
                    v201 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"containNamedPerson"];
                    v245 = v201;
                    v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v245 forKeys:&v244 count:1];
                    v93 = v91;
                    v7 = v90;
                    v200 = v92;
                    v94 = [v89 initWithDomain:v93 code:2 userInfo:?];
                    v202 = 0;
                    v16 = 0;
                    *errorCopy2 = v94;
                    goto LABEL_145;
                  }

                  v202 = 0;
                  v16 = 0;
LABEL_139:
                  v54 = v210;
LABEL_197:

                  goto LABEL_198;
                }

                if (errorCopy2)
                {
                  v83 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v84 = v7;
                  v85 = *MEMORY[0x1E698F240];
                  v246 = *MEMORY[0x1E696A578];
                  v202 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"temporalSceneCount"];
                  v247 = v202;
                  v86 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v247 forKeys:&v246 count:1];
                  v87 = v85;
                  v7 = v84;
                  v203 = v86;
                  v88 = [v83 initWithDomain:v87 code:2 userInfo:?];
                  v204 = 0;
                  v16 = 0;
                  *errorCopy2 = v88;
                  goto LABEL_139;
                }

                v204 = 0;
                v16 = 0;
LABEL_133:
                v54 = v210;
LABEL_198:

                goto LABEL_199;
              }

              if (errorCopy2)
              {
                v77 = objc_alloc(MEMORY[0x1E696ABC0]);
                v78 = v7;
                v79 = *MEMORY[0x1E698F240];
                v248 = *MEMORY[0x1E696A578];
                v204 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"temporalFaceCount"];
                v249 = v204;
                v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v249 forKeys:&v248 count:1];
                v81 = v79;
                v7 = v78;
                v205 = v80;
                v82 = [v77 initWithDomain:v81 code:2 userInfo:?];
                v207 = 0;
                v16 = 0;
                *errorCopy2 = v82;
                goto LABEL_133;
              }

              v207 = 0;
              v16 = 0;
              v54 = v210;
LABEL_199:

              goto LABEL_200;
            }

            v12 = errorCopy2;
            if (errorCopy2)
            {
              v71 = objc_alloc(MEMORY[0x1E696ABC0]);
              v72 = v7;
              v73 = *MEMORY[0x1E698F240];
              v250 = *MEMORY[0x1E696A578];
              v207 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightDuration"];
              v251 = v207;
              v74 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v251 forKeys:&v250 count:1];
              v75 = v73;
              v7 = v72;
              v208 = v74;
              v76 = [v71 initWithDomain:v75 code:2 userInfo:?];
              v16 = 0;
              *errorCopy2 = v76;
              v12 = 0;
              v54 = v210;
              goto LABEL_199;
            }

            v16 = 0;
LABEL_122:
            v54 = v210;
LABEL_200:

            goto LABEL_201;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v211 = v11;
            goto LABEL_16;
          }

          if (errorCopy2)
          {
            v64 = objc_alloc(MEMORY[0x1E696ABC0]);
            v65 = v7;
            v66 = *MEMORY[0x1E698F240];
            v252 = *MEMORY[0x1E696A578];
            v67 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"highlightCount"];
            v253 = v67;
            v68 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v253 forKeys:&v252 count:1];
            v69 = v66;
            v7 = v65;
            v209 = v68;
            v70 = [v64 initWithDomain:v69 code:2 userInfo:?];
            v211 = 0;
            v16 = 0;
            *errorCopy2 = v70;
            v12 = v67;
            goto LABEL_122;
          }

          v211 = 0;
          v16 = 0;
          v54 = v210;
LABEL_201:

          goto LABEL_202;
        }

        if (errorCopy2)
        {
          v58 = objc_alloc(MEMORY[0x1E696ABC0]);
          v59 = v7;
          v60 = *MEMORY[0x1E698F240];
          v254 = *MEMORY[0x1E696A578];
          v211 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"duration"];
          v255 = v211;
          v61 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v255 forKeys:&v254 count:1];
          v62 = v60;
          v7 = v59;
          v213 = v61;
          v63 = [v58 initWithDomain:v62 code:2 userInfo:?];
          v54 = 0;
          v16 = 0;
          *errorCopy2 = v63;
          goto LABEL_201;
        }

        v54 = 0;
        v16 = 0;
LABEL_202:

        goto LABEL_203;
      }

      if (error)
      {
        v51 = objc_alloc(MEMORY[0x1E696ABC0]);
        v52 = v7;
        v53 = *MEMORY[0x1E698F240];
        v256 = *MEMORY[0x1E696A578];
        v54 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shootingMode"];
        v257 = v54;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v257 forKeys:&v256 count:1];
        v56 = v53;
        v7 = v52;
        v217 = v55;
        v57 = [v51 initWithDomain:v56 code:2 userInfo:v55];
        v214 = 0;
        v16 = 0;
        *error = v57;
        goto LABEL_202;
      }

      v214 = 0;
      v16 = 0;
LABEL_203:

      goto LABEL_204;
    }

    if (error)
    {
      v46 = objc_alloc(MEMORY[0x1E696ABC0]);
      v47 = v7;
      v48 = *MEMORY[0x1E698F240];
      v258 = *MEMORY[0x1E696A578];
      v214 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"shootingCategory"];
      v259 = v214;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v259 forKeys:&v258 count:1];
      v49 = v48;
      v7 = v47;
      v50 = [v46 initWithDomain:v49 code:2 userInfo:v9];
      v215 = 0;
      v16 = 0;
      *error = v50;
      goto LABEL_203;
    }

    v215 = 0;
    v16 = 0;
LABEL_204:

    goto LABEL_205;
  }

  if (error)
  {
    v13 = objc_alloc(MEMORY[0x1E696ABC0]);
    v14 = *MEMORY[0x1E698F240];
    v260 = *MEMORY[0x1E696A578];
    v215 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"contentType"];
    v261[0] = v215;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v261 forKeys:&v260 count:1];
    v15 = [v13 initWithDomain:v14 code:2 userInfo:v8];
    v7 = 0;
    v16 = 0;
    *error = v15;
    goto LABEL_204;
  }

  v7 = 0;
  v16 = 0;
LABEL_205:

  v176 = *MEMORY[0x1E69E9840];
  return v16;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMediaAnalysisPerAsset *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v24 = toCopy;
  if (self->_contentType)
  {
    PBDataWriterWriteStringField();
    toCopy = v24;
  }

  if (self->_shootingCategory)
  {
    PBDataWriterWriteStringField();
    toCopy = v24;
  }

  if (self->_shootingMode)
  {
    PBDataWriterWriteStringField();
    toCopy = v24;
  }

  if (self->_hasDuration)
  {
    duration = self->_duration;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }

  if (self->_hasHighlightCount)
  {
    highlightCount = self->_highlightCount;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }

  if (self->_hasHighlightDuration)
  {
    highlightDuration = self->_highlightDuration;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }

  if (self->_hasTemporalFaceCount)
  {
    temporalFaceCount = self->_temporalFaceCount;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }

  if (self->_hasTemporalSceneCount)
  {
    temporalSceneCount = self->_temporalSceneCount;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }

  if (self->_hasContainNamedPerson)
  {
    containNamedPerson = self->_containNamedPerson;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_hasContainNamedPet)
  {
    containNamedPet = self->_containNamedPet;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_hasContainNatureOrNaturalLandmarks)
  {
    containNatureOrNaturalLandmarks = self->_containNatureOrNaturalLandmarks;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_hasContainSkyline)
  {
    containSkyline = self->_containSkyline;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_hasContainLandmarks)
  {
    containLandmarks = self->_containLandmarks;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_hasContainAction)
  {
    containAction = self->_containAction;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_hasContainHighMotion)
  {
    containHighMotion = self->_containHighMotion;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_hasContainAudioTypes)
  {
    containAudioTypes = self->_containAudioTypes;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_hasAtFavoritedLocation)
  {
    atFavoritedLocation = self->_atFavoritedLocation;
    PBDataWriterWriteBOOLField();
    toCopy = v24;
  }

  if (self->_hasDurationOriginal)
  {
    durationOriginal = self->_durationOriginal;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }

  if (self->_hasHighlightCountOriginal)
  {
    highlightCountOriginal = self->_highlightCountOriginal;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }

  if (self->_hasHighlightDurationOriginal)
  {
    highlightDurationOriginal = self->_highlightDurationOriginal;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }

  if (self->_hasTemporalFaceCountOriginal)
  {
    temporalFaceCountOriginal = self->_temporalFaceCountOriginal;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }

  if (self->_hasTemporalSceneCountOriginal)
  {
    temporalSceneCountOriginal = self->_temporalSceneCountOriginal;
    PBDataWriterWriteInt32Field();
    toCopy = v24;
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v139.receiver = self;
  v139.super_class = BMMediaAnalysisPerAsset;
  v5 = [(BMEventBase *)&v139 init];
  if (!v5)
  {
    goto LABEL_259;
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
        v140 = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v140 & 0x7F) << v7;
        if ((v140 & 0x80) == 0)
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
        break;
      }

      switch((v14 >> 3))
      {
        case 1u:
          v15 = PBReaderReadString();
          v16 = 88;
          goto LABEL_103;
        case 2u:
          v15 = PBReaderReadString();
          v16 = 96;
          goto LABEL_103;
        case 3u:
          v15 = PBReaderReadString();
          v16 = 104;
LABEL_103:
          v73 = *(&v5->super.super.isa + v16);
          *(&v5->super.super.isa + v16) = v15;

          goto LABEL_256;
        case 4u:
          v61 = 0;
          v62 = 0;
          v63 = 0;
          v5->_hasDuration = 1;
          while (1)
          {
            v140 = 0;
            v64 = [fromCopy position] + 1;
            if (v64 >= [fromCopy position] && (v65 = objc_msgSend(fromCopy, "position") + 1, v65 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v63 |= (v140 & 0x7F) << v61;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v13 = v62++ >= 9;
            if (v13)
            {
              v42 = 0;
              goto LABEL_215;
            }
          }

          if ([fromCopy hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v63;
          }

LABEL_215:
          v135 = 48;
          goto LABEL_255;
        case 5u:
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v5->_hasHighlightCount = 1;
          while (1)
          {
            v140 = 0;
            v39 = [fromCopy position] + 1;
            if (v39 >= [fromCopy position] && (v40 = objc_msgSend(fromCopy, "position") + 1, v40 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v38 |= (v140 & 0x7F) << v36;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v13 = v37++ >= 9;
            if (v13)
            {
              v42 = 0;
              goto LABEL_205;
            }
          }

          if ([fromCopy hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v38;
          }

LABEL_205:
          v135 = 52;
          goto LABEL_255;
        case 6u:
          v86 = 0;
          v87 = 0;
          v88 = 0;
          v5->_hasHighlightDuration = 1;
          while (1)
          {
            v140 = 0;
            v89 = [fromCopy position] + 1;
            if (v89 >= [fromCopy position] && (v90 = objc_msgSend(fromCopy, "position") + 1, v90 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v88 |= (v140 & 0x7F) << v86;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v86 += 7;
            v13 = v87++ >= 9;
            if (v13)
            {
              v42 = 0;
              goto LABEL_231;
            }
          }

          if ([fromCopy hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v88;
          }

LABEL_231:
          v135 = 56;
          goto LABEL_255;
        case 7u:
          v104 = 0;
          v105 = 0;
          v106 = 0;
          v5->_hasTemporalFaceCount = 1;
          while (1)
          {
            v140 = 0;
            v107 = [fromCopy position] + 1;
            if (v107 >= [fromCopy position] && (v108 = objc_msgSend(fromCopy, "position") + 1, v108 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v106 |= (v140 & 0x7F) << v104;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v104 += 7;
            v13 = v105++ >= 9;
            if (v13)
            {
              v42 = 0;
              goto LABEL_241;
            }
          }

          if ([fromCopy hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v106;
          }

LABEL_241:
          v135 = 60;
          goto LABEL_255;
        case 8u:
          v67 = 0;
          v68 = 0;
          v69 = 0;
          v5->_hasTemporalSceneCount = 1;
          while (1)
          {
            v140 = 0;
            v70 = [fromCopy position] + 1;
            if (v70 >= [fromCopy position] && (v71 = objc_msgSend(fromCopy, "position") + 1, v71 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v69 |= (v140 & 0x7F) << v67;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v67 += 7;
            v13 = v68++ >= 9;
            if (v13)
            {
              v42 = 0;
              goto LABEL_219;
            }
          }

          if ([fromCopy hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v69;
          }

LABEL_219:
          v135 = 64;
          goto LABEL_255;
        case 9u:
          v122 = 0;
          v123 = 0;
          v124 = 0;
          v5->_hasContainNamedPerson = 1;
          while (1)
          {
            v140 = 0;
            v125 = [fromCopy position] + 1;
            if (v125 >= [fromCopy position] && (v126 = objc_msgSend(fromCopy, "position") + 1, v126 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v124 |= (v140 & 0x7F) << v122;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v122 += 7;
            v13 = v123++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_249;
            }
          }

          v23 = (v124 != 0) & ~[fromCopy hasError];
LABEL_249:
          v134 = 21;
          goto LABEL_250;
        case 0xAu:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v5->_hasContainNamedPet = 1;
          while (1)
          {
            v140 = 0;
            v52 = [fromCopy position] + 1;
            if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v51 |= (v140 & 0x7F) << v49;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v13 = v50++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_209;
            }
          }

          v23 = (v51 != 0) & ~[fromCopy hasError];
LABEL_209:
          v134 = 23;
          goto LABEL_250;
        case 0xBu:
          v116 = 0;
          v117 = 0;
          v118 = 0;
          v5->_hasContainNatureOrNaturalLandmarks = 1;
          while (1)
          {
            v140 = 0;
            v119 = [fromCopy position] + 1;
            if (v119 >= [fromCopy position] && (v120 = objc_msgSend(fromCopy, "position") + 1, v120 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v118 |= (v140 & 0x7F) << v116;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v116 += 7;
            v13 = v117++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_247;
            }
          }

          v23 = (v118 != 0) & ~[fromCopy hasError];
LABEL_247:
          v134 = 25;
          goto LABEL_250;
        case 0xCu:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v5->_hasContainSkyline = 1;
          while (1)
          {
            v140 = 0;
            v33 = [fromCopy position] + 1;
            if (v33 >= [fromCopy position] && (v34 = objc_msgSend(fromCopy, "position") + 1, v34 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v32 |= (v140 & 0x7F) << v30;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v13 = v31++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_201;
            }
          }

          v23 = (v32 != 0) & ~[fromCopy hasError];
LABEL_201:
          v134 = 27;
          goto LABEL_250;
        case 0xDu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasContainLandmarks = 1;
          while (1)
          {
            v140 = 0;
            v46 = [fromCopy position] + 1;
            if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v45 |= (v140 & 0x7F) << v43;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v13 = v44++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_207;
            }
          }

          v23 = (v45 != 0) & ~[fromCopy hasError];
LABEL_207:
          v134 = 29;
          goto LABEL_250;
        case 0xEu:
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v5->_hasContainAction = 1;
          while (1)
          {
            v140 = 0;
            v101 = [fromCopy position] + 1;
            if (v101 >= [fromCopy position] && (v102 = objc_msgSend(fromCopy, "position") + 1, v102 <= objc_msgSend(fromCopy, "length")))
            {
              data12 = [fromCopy data];
              [data12 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v100 |= (v140 & 0x7F) << v98;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v98 += 7;
            v13 = v99++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_237;
            }
          }

          v23 = (v100 != 0) & ~[fromCopy hasError];
LABEL_237:
          v134 = 31;
          goto LABEL_250;
        case 0xFu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v5->_hasContainHighMotion = 1;
          while (1)
          {
            v140 = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data13 = [fromCopy data];
              [data13 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v26 |= (v140 & 0x7F) << v24;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v13 = v25++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_199;
            }
          }

          v23 = (v26 != 0) & ~[fromCopy hasError];
LABEL_199:
          v134 = 33;
          goto LABEL_250;
        case 0x10u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v5->_hasContainAudioTypes = 1;
          while (1)
          {
            v140 = 0;
            v58 = [fromCopy position] + 1;
            if (v58 >= [fromCopy position] && (v59 = objc_msgSend(fromCopy, "position") + 1, v59 <= objc_msgSend(fromCopy, "length")))
            {
              data14 = [fromCopy data];
              [data14 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v57 |= (v140 & 0x7F) << v55;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v13 = v56++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_211;
            }
          }

          v23 = (v57 != 0) & ~[fromCopy hasError];
LABEL_211:
          v134 = 35;
          goto LABEL_250;
        case 0x11u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v5->_hasAtFavoritedLocation = 1;
          while (1)
          {
            v140 = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data15 = [fromCopy data];
              [data15 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (v140 & 0x7F) << v17;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v13 = v18++ >= 9;
            if (v13)
            {
              LOBYTE(v23) = 0;
              goto LABEL_197;
            }
          }

          v23 = (v19 != 0) & ~[fromCopy hasError];
LABEL_197:
          v134 = 37;
LABEL_250:
          *(&v5->super.super.isa + v134) = v23;
          goto LABEL_256;
        case 0x12u:
          v74 = 0;
          v75 = 0;
          v76 = 0;
          v5->_hasDurationOriginal = 1;
          while (1)
          {
            v140 = 0;
            v77 = [fromCopy position] + 1;
            if (v77 >= [fromCopy position] && (v78 = objc_msgSend(fromCopy, "position") + 1, v78 <= objc_msgSend(fromCopy, "length")))
            {
              data16 = [fromCopy data];
              [data16 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v76 |= (v140 & 0x7F) << v74;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v74 += 7;
            v13 = v75++ >= 9;
            if (v13)
            {
              v42 = 0;
              goto LABEL_223;
            }
          }

          if ([fromCopy hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v76;
          }

LABEL_223:
          v135 = 68;
          goto LABEL_255;
        case 0x13u:
          v110 = 0;
          v111 = 0;
          v112 = 0;
          v5->_hasHighlightCountOriginal = 1;
          while (1)
          {
            v140 = 0;
            v113 = [fromCopy position] + 1;
            if (v113 >= [fromCopy position] && (v114 = objc_msgSend(fromCopy, "position") + 1, v114 <= objc_msgSend(fromCopy, "length")))
            {
              data17 = [fromCopy data];
              [data17 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v112 |= (v140 & 0x7F) << v110;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v110 += 7;
            v13 = v111++ >= 9;
            if (v13)
            {
              v42 = 0;
              goto LABEL_245;
            }
          }

          if ([fromCopy hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v112;
          }

LABEL_245:
          v135 = 72;
          goto LABEL_255;
        case 0x14u:
          v128 = 0;
          v129 = 0;
          v130 = 0;
          v5->_hasHighlightDurationOriginal = 1;
          while (1)
          {
            v140 = 0;
            v131 = [fromCopy position] + 1;
            if (v131 >= [fromCopy position] && (v132 = objc_msgSend(fromCopy, "position") + 1, v132 <= objc_msgSend(fromCopy, "length")))
            {
              data18 = [fromCopy data];
              [data18 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v130 |= (v140 & 0x7F) << v128;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v128 += 7;
            v13 = v129++ >= 9;
            if (v13)
            {
              v42 = 0;
              goto LABEL_254;
            }
          }

          if ([fromCopy hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v130;
          }

LABEL_254:
          v135 = 76;
          goto LABEL_255;
        case 0x15u:
          v80 = 0;
          v81 = 0;
          v82 = 0;
          v5->_hasTemporalFaceCountOriginal = 1;
          while (1)
          {
            v140 = 0;
            v83 = [fromCopy position] + 1;
            if (v83 >= [fromCopy position] && (v84 = objc_msgSend(fromCopy, "position") + 1, v84 <= objc_msgSend(fromCopy, "length")))
            {
              data19 = [fromCopy data];
              [data19 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v82 |= (v140 & 0x7F) << v80;
            if ((v140 & 0x80) == 0)
            {
              break;
            }

            v80 += 7;
            v13 = v81++ >= 9;
            if (v13)
            {
              v42 = 0;
              goto LABEL_227;
            }
          }

          if ([fromCopy hasError])
          {
            v42 = 0;
          }

          else
          {
            v42 = v82;
          }

LABEL_227:
          v135 = 80;
          goto LABEL_255;
        case 0x16u:
          v92 = 0;
          v93 = 0;
          v94 = 0;
          v5->_hasTemporalSceneCountOriginal = 1;
          break;
        default:
          if (!PBReaderSkipValueWithTag())
          {
            goto LABEL_258;
          }

          goto LABEL_256;
      }

      while (1)
      {
        v140 = 0;
        v95 = [fromCopy position] + 1;
        if (v95 >= [fromCopy position] && (v96 = objc_msgSend(fromCopy, "position") + 1, v96 <= objc_msgSend(fromCopy, "length")))
        {
          data20 = [fromCopy data];
          [data20 getBytes:&v140 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v94 |= (v140 & 0x7F) << v92;
        if ((v140 & 0x80) == 0)
        {
          break;
        }

        v92 += 7;
        v13 = v93++ >= 9;
        if (v13)
        {
          v42 = 0;
          goto LABEL_235;
        }
      }

      v42 = [fromCopy hasError] ? 0 : v94;
LABEL_235:
      v135 = 84;
LABEL_255:
      *(&v5->super.super.isa + v135) = v42;
LABEL_256:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_258:
    v137 = 0;
  }

  else
  {
LABEL_259:
    v137 = v5;
  }

  return v137;
}

- (NSString)description
{
  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  contentType = [(BMMediaAnalysisPerAsset *)self contentType];
  shootingCategory = [(BMMediaAnalysisPerAsset *)self shootingCategory];
  shootingMode = [(BMMediaAnalysisPerAsset *)self shootingMode];
  v25 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset duration](self, "duration")}];
  v24 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset highlightCount](self, "highlightCount")}];
  v22 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset highlightDuration](self, "highlightDuration")}];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset temporalFaceCount](self, "temporalFaceCount")}];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset temporalSceneCount](self, "temporalSceneCount")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containNamedPerson](self, "containNamedPerson")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containNamedPet](self, "containNamedPet")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containNatureOrNaturalLandmarks](self, "containNatureOrNaturalLandmarks")}];
  v19 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containSkyline](self, "containSkyline")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containLandmarks](self, "containLandmarks")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containAction](self, "containAction")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containHighMotion](self, "containHighMotion")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset containAudioTypes](self, "containAudioTypes")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMediaAnalysisPerAsset atFavoritedLocation](self, "atFavoritedLocation")}];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset durationOriginal](self, "durationOriginal")}];
  v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset highlightCountOriginal](self, "highlightCountOriginal")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset highlightDurationOriginal](self, "highlightDurationOriginal")}];
  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset temporalFaceCountOriginal](self, "temporalFaceCountOriginal")}];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMediaAnalysisPerAsset temporalSceneCountOriginal](self, "temporalSceneCountOriginal")}];
  v18 = [v17 initWithFormat:@"BMMediaAnalysisPerAsset with contentType: %@, shootingCategory: %@, shootingMode: %@, duration: %@, highlightCount: %@, highlightDuration: %@, temporalFaceCount: %@, temporalSceneCount: %@, containNamedPerson: %@, containNamedPet: %@, containNatureOrNaturalLandmarks: %@, containSkyline: %@, containLandmarks: %@, containAction: %@, containHighMotion: %@, containAudioTypes: %@, atFavoritedLocation: %@, durationOriginal: %@, highlightCountOriginal: %@, highlightDurationOriginal: %@, temporalFaceCountOriginal: %@, temporalSceneCountOriginal: %@", contentType, shootingCategory, shootingMode, v25, v24, v22, v16, v21, v15, v20, v14, v19, v12, v11, v13, v3, v10, v4, v5, v6, v7, v8];

  return v18;
}

- (BMMediaAnalysisPerAsset)initWithContentType:(id)type shootingCategory:(id)category shootingMode:(id)mode duration:(id)duration highlightCount:(id)count highlightDuration:(id)highlightDuration temporalFaceCount:(id)faceCount temporalSceneCount:(id)self0 containNamedPerson:(id)self1 containNamedPet:(id)self2 containNatureOrNaturalLandmarks:(id)self3 containSkyline:(id)self4 containLandmarks:(id)self5 containAction:(id)self6 containHighMotion:(id)self7 containAudioTypes:(id)self8 atFavoritedLocation:(id)self9 durationOriginal:(id)original highlightCountOriginal:(id)countOriginal highlightDurationOriginal:(id)durationOriginal temporalFaceCountOriginal:(id)faceCountOriginal temporalSceneCountOriginal:(id)sceneCountOriginal
{
  typeCopy = type;
  categoryCopy = category;
  categoryCopy2 = category;
  modeCopy = mode;
  modeCopy2 = mode;
  durationCopy = duration;
  countCopy = count;
  highlightDurationCopy = highlightDuration;
  faceCountCopy = faceCount;
  sceneCountCopy = sceneCount;
  personCopy = person;
  petCopy = pet;
  landmarksCopy = landmarks;
  skylineCopy = skyline;
  containLandmarksCopy = containLandmarks;
  actionCopy = action;
  motionCopy = motion;
  typesCopy = types;
  locationCopy = location;
  originalCopy = original;
  countOriginalCopy = countOriginal;
  durationOriginalCopy = durationOriginal;
  faceCountOriginalCopy = faceCountOriginal;
  sceneCountOriginalCopy = sceneCountOriginal;
  v67.receiver = self;
  v67.super_class = BMMediaAnalysisPerAsset;
  v38 = [(BMEventBase *)&v67 init];
  if (v38)
  {
    v38->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v38->_contentType, type);
    objc_storeStrong(&v38->_shootingCategory, categoryCopy);
    objc_storeStrong(&v38->_shootingMode, modeCopy);
    if (durationCopy)
    {
      v38->_hasDuration = 1;
      intValue = [durationCopy intValue];
    }

    else
    {
      v38->_hasDuration = 0;
      intValue = -1;
    }

    v38->_duration = intValue;
    if (countCopy)
    {
      v38->_hasHighlightCount = 1;
      intValue2 = [countCopy intValue];
    }

    else
    {
      v38->_hasHighlightCount = 0;
      intValue2 = -1;
    }

    v38->_highlightCount = intValue2;
    if (highlightDurationCopy)
    {
      v38->_hasHighlightDuration = 1;
      intValue3 = [highlightDurationCopy intValue];
    }

    else
    {
      v38->_hasHighlightDuration = 0;
      intValue3 = -1;
    }

    v38->_highlightDuration = intValue3;
    if (faceCountCopy)
    {
      v38->_hasTemporalFaceCount = 1;
      intValue4 = [faceCountCopy intValue];
    }

    else
    {
      v38->_hasTemporalFaceCount = 0;
      intValue4 = -1;
    }

    v38->_temporalFaceCount = intValue4;
    if (sceneCountCopy)
    {
      v38->_hasTemporalSceneCount = 1;
      intValue5 = [sceneCountCopy intValue];
    }

    else
    {
      v38->_hasTemporalSceneCount = 0;
      intValue5 = -1;
    }

    v38->_temporalSceneCount = intValue5;
    if (personCopy)
    {
      v38->_hasContainNamedPerson = 1;
      v38->_containNamedPerson = [personCopy BOOLValue];
    }

    else
    {
      v38->_hasContainNamedPerson = 0;
      v38->_containNamedPerson = 0;
    }

    if (petCopy)
    {
      v38->_hasContainNamedPet = 1;
      v38->_containNamedPet = [petCopy BOOLValue];
    }

    else
    {
      v38->_hasContainNamedPet = 0;
      v38->_containNamedPet = 0;
    }

    if (landmarksCopy)
    {
      v38->_hasContainNatureOrNaturalLandmarks = 1;
      v38->_containNatureOrNaturalLandmarks = [landmarksCopy BOOLValue];
    }

    else
    {
      v38->_hasContainNatureOrNaturalLandmarks = 0;
      v38->_containNatureOrNaturalLandmarks = 0;
    }

    if (skylineCopy)
    {
      v38->_hasContainSkyline = 1;
      v38->_containSkyline = [skylineCopy BOOLValue];
    }

    else
    {
      v38->_hasContainSkyline = 0;
      v38->_containSkyline = 0;
    }

    if (containLandmarksCopy)
    {
      v38->_hasContainLandmarks = 1;
      v38->_containLandmarks = [containLandmarksCopy BOOLValue];
    }

    else
    {
      v38->_hasContainLandmarks = 0;
      v38->_containLandmarks = 0;
    }

    if (actionCopy)
    {
      v38->_hasContainAction = 1;
      v38->_containAction = [actionCopy BOOLValue];
    }

    else
    {
      v38->_hasContainAction = 0;
      v38->_containAction = 0;
    }

    if (motionCopy)
    {
      v38->_hasContainHighMotion = 1;
      v38->_containHighMotion = [motionCopy BOOLValue];
    }

    else
    {
      v38->_hasContainHighMotion = 0;
      v38->_containHighMotion = 0;
    }

    if (typesCopy)
    {
      v38->_hasContainAudioTypes = 1;
      v38->_containAudioTypes = [typesCopy BOOLValue];
    }

    else
    {
      v38->_hasContainAudioTypes = 0;
      v38->_containAudioTypes = 0;
    }

    if (locationCopy)
    {
      v38->_hasAtFavoritedLocation = 1;
      v38->_atFavoritedLocation = [locationCopy BOOLValue];
    }

    else
    {
      v38->_hasAtFavoritedLocation = 0;
      v38->_atFavoritedLocation = 0;
    }

    if (originalCopy)
    {
      v38->_hasDurationOriginal = 1;
      intValue6 = [originalCopy intValue];
    }

    else
    {
      v38->_hasDurationOriginal = 0;
      intValue6 = -1;
    }

    v38->_durationOriginal = intValue6;
    if (countOriginalCopy)
    {
      v38->_hasHighlightCountOriginal = 1;
      intValue7 = [countOriginalCopy intValue];
    }

    else
    {
      v38->_hasHighlightCountOriginal = 0;
      intValue7 = -1;
    }

    v38->_highlightCountOriginal = intValue7;
    if (durationOriginalCopy)
    {
      v38->_hasHighlightDurationOriginal = 1;
      intValue8 = [durationOriginalCopy intValue];
    }

    else
    {
      v38->_hasHighlightDurationOriginal = 0;
      intValue8 = -1;
    }

    v38->_highlightDurationOriginal = intValue8;
    if (faceCountOriginalCopy)
    {
      v38->_hasTemporalFaceCountOriginal = 1;
      intValue9 = [faceCountOriginalCopy intValue];
    }

    else
    {
      v38->_hasTemporalFaceCountOriginal = 0;
      intValue9 = -1;
    }

    v38->_temporalFaceCountOriginal = intValue9;
    if (sceneCountOriginalCopy)
    {
      v38->_hasTemporalSceneCountOriginal = 1;
      intValue10 = [sceneCountOriginalCopy intValue];
    }

    else
    {
      v38->_hasTemporalSceneCountOriginal = 0;
      intValue10 = -1;
    }

    v38->_temporalSceneCountOriginal = intValue10;
  }

  return v38;
}

+ (id)protoFields
{
  v27[22] = *MEMORY[0x1E69E9840];
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"contentType" number:1 type:13 subMessageClass:0];
  v27[0] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shootingCategory" number:2 type:13 subMessageClass:0];
  v27[1] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"shootingMode" number:3 type:13 subMessageClass:0];
  v27[2] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"duration" number:4 type:2 subMessageClass:0];
  v27[3] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightCount" number:5 type:2 subMessageClass:0];
  v27[4] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightDuration" number:6 type:2 subMessageClass:0];
  v27[5] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"temporalFaceCount" number:7 type:2 subMessageClass:0];
  v27[6] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"temporalSceneCount" number:8 type:2 subMessageClass:0];
  v27[7] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containNamedPerson" number:9 type:12 subMessageClass:0];
  v27[8] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containNamedPet" number:10 type:12 subMessageClass:0];
  v27[9] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containNatureOrNaturalLandmarks" number:11 type:12 subMessageClass:0];
  v27[10] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containSkyline" number:12 type:12 subMessageClass:0];
  v27[11] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containLandmarks" number:13 type:12 subMessageClass:0];
  v27[12] = v14;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containAction" number:14 type:12 subMessageClass:0];
  v27[13] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containHighMotion" number:15 type:12 subMessageClass:0];
  v27[14] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"containAudioTypes" number:16 type:12 subMessageClass:0];
  v27[15] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"atFavoritedLocation" number:17 type:12 subMessageClass:0];
  v27[16] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"durationOriginal" number:18 type:2 subMessageClass:0];
  v27[17] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightCountOriginal" number:19 type:2 subMessageClass:0];
  v27[18] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"highlightDurationOriginal" number:20 type:2 subMessageClass:0];
  v27[19] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"temporalFaceCountOriginal" number:21 type:2 subMessageClass:0];
  v27[20] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"temporalSceneCountOriginal" number:22 type:2 subMessageClass:0];
  v27[21] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:22];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

+ (id)columns
{
  v27[22] = *MEMORY[0x1E69E9840];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"contentType" dataType:2 requestOnly:0 fieldNumber:1 protoDataType:13 convertedType:0];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shootingCategory" dataType:2 requestOnly:0 fieldNumber:2 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"shootingMode" dataType:2 requestOnly:0 fieldNumber:3 protoDataType:13 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"duration" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:2 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightCount" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightDuration" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:2 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"temporalFaceCount" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:2 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"temporalSceneCount" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:2 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containNamedPerson" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containNamedPet" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containNatureOrNaturalLandmarks" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containSkyline" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containLandmarks" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containAction" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containHighMotion" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"containAudioTypes" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"atFavoritedLocation" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"durationOriginal" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:2 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightCountOriginal" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:2 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"highlightDurationOriginal" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:2 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"temporalFaceCountOriginal" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:2 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"temporalSceneCountOriginal" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:2 convertedType:0];
  v27[0] = v26;
  v27[1] = v25;
  v27[2] = v24;
  v27[3] = v14;
  v27[4] = v23;
  v27[5] = v22;
  v27[6] = v21;
  v27[7] = v20;
  v27[8] = v19;
  v27[9] = v18;
  v27[10] = v17;
  v27[11] = v16;
  v27[12] = v2;
  v27[13] = v3;
  v27[14] = v4;
  v27[15] = v15;
  v27[16] = v5;
  v27[17] = v13;
  v27[18] = v6;
  v27[19] = v12;
  v27[20] = v7;
  v27[21] = v8;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:22];

  v9 = *MEMORY[0x1E69E9840];

  return v11;
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

    v8 = [[BMMediaAnalysisPerAsset alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end