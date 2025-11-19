@interface MADProtoSceneAsset
+ (id)protoFromPhotosAsset:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)imageEmbeddingVSKAssetWithLocalIdentifier:(id)a3;
- (unint64_t)hash;
- (void)addImageEmbeddingResults:(id)a3;
- (void)addObjectSaliencyRects:(id)a3;
- (void)addSceneClassifications:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)persistToPhotosAsset:(id)a3;
- (void)setImageEmbeddingResultsFromVSKAsset:(id)a3 imageEmbeddingVersion:(signed __int16)a4;
- (void)writeTo:(id)a3;
@end

@implementation MADProtoSceneAsset

- (void)addSceneClassifications:(id)a3
{
  v4 = a3;
  sceneClassifications = self->_sceneClassifications;
  v8 = v4;
  if (!sceneClassifications)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sceneClassifications;
    self->_sceneClassifications = v6;

    v4 = v8;
    sceneClassifications = self->_sceneClassifications;
  }

  [(NSMutableArray *)sceneClassifications addObject:v4];
}

- (void)addObjectSaliencyRects:(id)a3
{
  v4 = a3;
  objectSaliencyRects = self->_objectSaliencyRects;
  v8 = v4;
  if (!objectSaliencyRects)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_objectSaliencyRects;
    self->_objectSaliencyRects = v6;

    v4 = v8;
    objectSaliencyRects = self->_objectSaliencyRects;
  }

  [(NSMutableArray *)objectSaliencyRects addObject:v4];
}

- (void)addImageEmbeddingResults:(id)a3
{
  v4 = a3;
  imageEmbeddingResults = self->_imageEmbeddingResults;
  v8 = v4;
  if (!imageEmbeddingResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_imageEmbeddingResults;
    self->_imageEmbeddingResults = v6;

    v4 = v8;
    imageEmbeddingResults = self->_imageEmbeddingResults;
  }

  [(NSMutableArray *)imageEmbeddingResults addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoSceneAsset;
  v4 = [(MADProtoSceneAsset *)&v8 description];
  v5 = [(MADProtoSceneAsset *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v110 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  assetCloudIdentifier = self->_assetCloudIdentifier;
  if (assetCloudIdentifier)
  {
    [v3 setObject:assetCloudIdentifier forKey:@"assetCloudIdentifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_assetAdjustmentTimestamp];
  [v4 setObject:v6 forKey:@"assetAdjustmentTimestamp"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_algorithmVersion];
  [v4 setObject:v7 forKey:@"algorithmVersion"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_adjustmentVersion];
  [v4 setObject:v8 forKey:@"adjustmentVersion"];

  if ([(NSMutableArray *)self->_sceneClassifications count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_sceneClassifications, "count")}];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v11 = self->_sceneClassifications;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v103 objects:v109 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v104;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v104 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v103 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v103 objects:v109 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"sceneClassifications"];
  }

  *&v9 = self->_overallAestheticScore;
  v17 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v4 setObject:v17 forKey:@"overallAestheticScore"];

  *&v18 = self->_wellFramedSubjectScore;
  v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
  [v4 setObject:v19 forKey:@"wellFramedSubjectScore"];

  *&v20 = self->_wellChosenSubjectScore;
  v21 = [MEMORY[0x1E696AD98] numberWithFloat:v20];
  [v4 setObject:v21 forKey:@"wellChosenSubjectScore"];

  *&v22 = self->_tastefullyBlurredScore;
  v23 = [MEMORY[0x1E696AD98] numberWithFloat:v22];
  [v4 setObject:v23 forKey:@"tastefullyBlurredScore"];

  *&v24 = self->_sharplyFocusedSubjectScore;
  v25 = [MEMORY[0x1E696AD98] numberWithFloat:v24];
  [v4 setObject:v25 forKey:@"sharplyFocusedSubjectScore"];

  *&v26 = self->_wellTimedShotScore;
  v27 = [MEMORY[0x1E696AD98] numberWithFloat:v26];
  [v4 setObject:v27 forKey:@"wellTimedShotScore"];

  *&v28 = self->_pleasantLightingScore;
  v29 = [MEMORY[0x1E696AD98] numberWithFloat:v28];
  [v4 setObject:v29 forKey:@"pleasantLightingScore"];

  *&v30 = self->_pleasantReflectionsScore;
  v31 = [MEMORY[0x1E696AD98] numberWithFloat:v30];
  [v4 setObject:v31 forKey:@"pleasantReflectionsScore"];

  *&v32 = self->_harmoniousColorScore;
  v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
  [v4 setObject:v33 forKey:@"harmoniousColorScore"];

  *&v34 = self->_livelyColorScore;
  v35 = [MEMORY[0x1E696AD98] numberWithFloat:v34];
  [v4 setObject:v35 forKey:@"livelyColorScore"];

  *&v36 = self->_pleasantSymmetryScore;
  v37 = [MEMORY[0x1E696AD98] numberWithFloat:v36];
  [v4 setObject:v37 forKey:@"pleasantSymmetryScore"];

  *&v38 = self->_pleasantPatternScore;
  v39 = [MEMORY[0x1E696AD98] numberWithFloat:v38];
  [v4 setObject:v39 forKey:@"pleasantPatternScore"];

  *&v40 = self->_immersivenessScore;
  v41 = [MEMORY[0x1E696AD98] numberWithFloat:v40];
  [v4 setObject:v41 forKey:@"immersivenessScore"];

  *&v42 = self->_pleasantPerspectiveScore;
  v43 = [MEMORY[0x1E696AD98] numberWithFloat:v42];
  [v4 setObject:v43 forKey:@"pleasantPerspectiveScore"];

  *&v44 = self->_pleasantPostProcessingScore;
  v45 = [MEMORY[0x1E696AD98] numberWithFloat:v44];
  [v4 setObject:v45 forKey:@"pleasantPostProcessingScore"];

  *&v46 = self->_noiseScore;
  v47 = [MEMORY[0x1E696AD98] numberWithFloat:v46];
  [v4 setObject:v47 forKey:@"noiseScore"];

  *&v48 = self->_failureScore;
  v49 = [MEMORY[0x1E696AD98] numberWithFloat:v48];
  [v4 setObject:v49 forKey:@"failureScore"];

  *&v50 = self->_pleasantCompositionScore;
  v51 = [MEMORY[0x1E696AD98] numberWithFloat:v50];
  [v4 setObject:v51 forKey:@"pleasantCompositionScore"];

  *&v52 = self->_interestingSubjectScore;
  v53 = [MEMORY[0x1E696AD98] numberWithFloat:v52];
  [v4 setObject:v53 forKey:@"interestingSubjectScore"];

  *&v54 = self->_intrusiveObjectPresenceScore;
  v55 = [MEMORY[0x1E696AD98] numberWithFloat:v54];
  [v4 setObject:v55 forKey:@"intrusiveObjectPresenceScore"];

  *&v56 = self->_pleasantCameraTiltScore;
  v57 = [MEMORY[0x1E696AD98] numberWithFloat:v56];
  [v4 setObject:v57 forKey:@"pleasantCameraTiltScore"];

  *&v58 = self->_lowLight;
  v59 = [MEMORY[0x1E696AD98] numberWithFloat:v58];
  [v4 setObject:v59 forKey:@"lowLight"];

  preferredCropRect = self->_preferredCropRect;
  if (preferredCropRect)
  {
    v61 = [(VCPProtoBounds *)preferredCropRect dictionaryRepresentation];
    [v4 setObject:v61 forKey:@"preferredCropRect"];
  }

  acceptableCropRect = self->_acceptableCropRect;
  if (acceptableCropRect)
  {
    v63 = [(VCPProtoBounds *)acceptableCropRect dictionaryRepresentation];
    [v4 setObject:v63 forKey:@"acceptableCropRect"];
  }

  if ([(NSMutableArray *)self->_objectSaliencyRects count])
  {
    v65 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_objectSaliencyRects, "count")}];
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v66 = self->_objectSaliencyRects;
    v67 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v99 objects:v108 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v100;
      do
      {
        for (j = 0; j != v68; ++j)
        {
          if (*v100 != v69)
          {
            objc_enumerationMutation(v66);
          }

          v71 = [*(*(&v99 + 1) + 8 * j) dictionaryRepresentation];
          [v65 addObject:v71];
        }

        v68 = [(NSMutableArray *)v66 countByEnumeratingWithState:&v99 objects:v108 count:16];
      }

      while (v68);
    }

    [v4 setObject:v65 forKey:@"objectSaliencyRects"];
  }

  sceneprintData = self->_sceneprintData;
  if (sceneprintData)
  {
    [v4 setObject:sceneprintData forKey:@"sceneprintData"];
  }

  *&v64 = self->_wallpaperScore;
  v73 = [MEMORY[0x1E696AD98] numberWithFloat:v64];
  [v4 setObject:v73 forKey:@"wallpaperScore"];

  colorNormalizationData = self->_colorNormalizationData;
  if (colorNormalizationData)
  {
    [v4 setObject:colorNormalizationData forKey:@"colorNormalizationData"];
  }

  *&v74 = self->_blurrinessScore;
  v76 = [MEMORY[0x1E696AD98] numberWithFloat:v74];
  [v4 setObject:v76 forKey:@"blurrinessScore"];

  *&v77 = self->_exposureScore;
  v78 = [MEMORY[0x1E696AD98] numberWithFloat:v77];
  [v4 setObject:v78 forKey:@"exposureScore"];

  v79 = [MEMORY[0x1E696AD98] numberWithInt:self->_probableRotationDirection];
  [v4 setObject:v79 forKey:@"probableRotationDirection"];

  *&v80 = self->_probableRotationDirectionConfidence;
  v81 = [MEMORY[0x1E696AD98] numberWithFloat:v80];
  [v4 setObject:v81 forKey:@"probableRotationDirectionConfidence"];

  duplicateMatchingData = self->_duplicateMatchingData;
  if (duplicateMatchingData)
  {
    [v4 setObject:duplicateMatchingData forKey:@"duplicateMatchingData"];
  }

  duplicateMatchingAlternateData = self->_duplicateMatchingAlternateData;
  if (duplicateMatchingAlternateData)
  {
    [v4 setObject:duplicateMatchingAlternateData forKey:@"duplicateMatchingAlternateData"];
  }

  *&v82 = self->_iconicScore;
  v85 = [MEMORY[0x1E696AD98] numberWithFloat:v82];
  [v4 setObject:v85 forKey:@"iconicScore"];

  if (*&self->_has)
  {
    v86 = [MEMORY[0x1E696AD98] numberWithInt:self->_imageEmbeddingVersion];
    [v4 setObject:v86 forKey:@"imageEmbeddingVersion"];
  }

  if ([(NSMutableArray *)self->_imageEmbeddingResults count])
  {
    v87 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_imageEmbeddingResults, "count")}];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v88 = self->_imageEmbeddingResults;
    v89 = [(NSMutableArray *)v88 countByEnumeratingWithState:&v95 objects:v107 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v96;
      do
      {
        for (k = 0; k != v90; ++k)
        {
          if (*v96 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = [*(*(&v95 + 1) + 8 * k) dictionaryRepresentation];
          [v87 addObject:v93];
        }

        v90 = [(NSMutableArray *)v88 countByEnumeratingWithState:&v95 objects:v107 count:16];
      }

      while (v90);
    }

    [v4 setObject:v87 forKey:@"imageEmbeddingResults"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  PBDataWriterWriteStringField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteDoubleField();
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_sceneClassifications;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_objectSaliencyRects;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  PBDataWriterWriteDataField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteDataField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteFloatField();
  if (self->_duplicateMatchingData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_duplicateMatchingAlternateData)
  {
    PBDataWriterWriteDataField();
  }

  PBDataWriterWriteFloatField();
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_imageEmbeddingResults;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)copyTo:(id)a3
{
  v17 = a3;
  [v17 setAssetCloudIdentifier:self->_assetCloudIdentifier];
  *(v17 + 2) = *&self->_assetAdjustmentTimestamp;
  *(v17 + 8) = self->_algorithmVersion;
  *(v17 + 1) = *&self->_adjustmentVersion;
  if ([(MADProtoSceneAsset *)self sceneClassificationsCount])
  {
    [v17 clearSceneClassifications];
    v4 = [(MADProtoSceneAsset *)self sceneClassificationsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(MADProtoSceneAsset *)self sceneClassificationsAtIndex:i];
        [v17 addSceneClassifications:v7];
      }
    }
  }

  *(v17 + 36) = LODWORD(self->_overallAestheticScore);
  *(v17 + 58) = LODWORD(self->_wellFramedSubjectScore);
  *(v17 + 57) = LODWORD(self->_wellChosenSubjectScore);
  *(v17 + 55) = LODWORD(self->_tastefullyBlurredScore);
  *(v17 + 54) = LODWORD(self->_sharplyFocusedSubjectScore);
  *(v17 + 59) = LODWORD(self->_wellTimedShotScore);
  *(v17 + 39) = LODWORD(self->_pleasantLightingScore);
  *(v17 + 43) = LODWORD(self->_pleasantReflectionsScore);
  *(v17 + 22) = LODWORD(self->_harmoniousColorScore);
  *(v17 + 30) = LODWORD(self->_livelyColorScore);
  *(v17 + 44) = LODWORD(self->_pleasantSymmetryScore);
  *(v17 + 40) = LODWORD(self->_pleasantPatternScore);
  *(v17 + 27) = LODWORD(self->_immersivenessScore);
  *(v17 + 41) = LODWORD(self->_pleasantPerspectiveScore);
  *(v17 + 42) = LODWORD(self->_pleasantPostProcessingScore);
  *(v17 + 32) = LODWORD(self->_noiseScore);
  *(v17 + 21) = LODWORD(self->_failureScore);
  *(v17 + 38) = LODWORD(self->_pleasantCompositionScore);
  *(v17 + 28) = LODWORD(self->_interestingSubjectScore);
  *(v17 + 29) = LODWORD(self->_intrusiveObjectPresenceScore);
  *(v17 + 37) = LODWORD(self->_pleasantCameraTiltScore);
  *(v17 + 31) = LODWORD(self->_lowLight);
  [v17 setPreferredCropRect:self->_preferredCropRect];
  [v17 setAcceptableCropRect:self->_acceptableCropRect];
  if ([(MADProtoSceneAsset *)self objectSaliencyRectsCount])
  {
    [v17 clearObjectSaliencyRects];
    v8 = [(MADProtoSceneAsset *)self objectSaliencyRectsCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(MADProtoSceneAsset *)self objectSaliencyRectsAtIndex:j];
        [v17 addObjectSaliencyRects:v11];
      }
    }
  }

  [v17 setSceneprintData:self->_sceneprintData];
  *(v17 + 56) = LODWORD(self->_wallpaperScore);
  [v17 setColorNormalizationData:self->_colorNormalizationData];
  v12 = v17;
  *(v17 + 12) = LODWORD(self->_blurrinessScore);
  *(v17 + 20) = LODWORD(self->_exposureScore);
  *(v17 + 48) = self->_probableRotationDirection;
  *(v17 + 49) = LODWORD(self->_probableRotationDirectionConfidence);
  if (self->_duplicateMatchingData)
  {
    [v17 setDuplicateMatchingData:?];
    v12 = v17;
  }

  if (self->_duplicateMatchingAlternateData)
  {
    [v17 setDuplicateMatchingAlternateData:?];
    v12 = v17;
  }

  v12[23] = LODWORD(self->_iconicScore);
  if (*&self->_has)
  {
    v12[26] = self->_imageEmbeddingVersion;
    *(v12 + 240) |= 1u;
  }

  if ([(MADProtoSceneAsset *)self imageEmbeddingResultsCount])
  {
    [v17 clearImageEmbeddingResults];
    v13 = [(MADProtoSceneAsset *)self imageEmbeddingResultsCount];
    if (v13)
    {
      v14 = v13;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(MADProtoSceneAsset *)self imageEmbeddingResultsAtIndex:k];
        [v17 addImageEmbeddingResults:v16];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_assetCloudIdentifier copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  *(v5 + 16) = self->_assetAdjustmentTimestamp;
  *(v5 + 32) = self->_algorithmVersion;
  *(v5 + 8) = self->_adjustmentVersion;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v8 = self->_sceneClassifications;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    do
    {
      v12 = 0;
      do
      {
        if (*v48 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v47 + 1) + 8 * v12) copyWithZone:a3];
        [v5 addSceneClassifications:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v10);
  }

  *(v5 + 144) = self->_overallAestheticScore;
  *(v5 + 232) = self->_wellFramedSubjectScore;
  *(v5 + 228) = self->_wellChosenSubjectScore;
  *(v5 + 220) = self->_tastefullyBlurredScore;
  *(v5 + 216) = self->_sharplyFocusedSubjectScore;
  *(v5 + 236) = self->_wellTimedShotScore;
  *(v5 + 156) = self->_pleasantLightingScore;
  *(v5 + 172) = self->_pleasantReflectionsScore;
  *(v5 + 88) = self->_harmoniousColorScore;
  *(v5 + 120) = self->_livelyColorScore;
  *(v5 + 176) = self->_pleasantSymmetryScore;
  *(v5 + 160) = self->_pleasantPatternScore;
  *(v5 + 108) = self->_immersivenessScore;
  *(v5 + 164) = self->_pleasantPerspectiveScore;
  *(v5 + 168) = self->_pleasantPostProcessingScore;
  *(v5 + 128) = self->_noiseScore;
  *(v5 + 84) = self->_failureScore;
  *(v5 + 152) = self->_pleasantCompositionScore;
  *(v5 + 112) = self->_interestingSubjectScore;
  *(v5 + 116) = self->_intrusiveObjectPresenceScore;
  *(v5 + 148) = self->_pleasantCameraTiltScore;
  *(v5 + 124) = self->_lowLight;
  v14 = [(VCPProtoBounds *)self->_preferredCropRect copyWithZone:a3];
  v15 = *(v5 + 184);
  *(v5 + 184) = v14;

  v16 = [(VCPProtoBounds *)self->_acceptableCropRect copyWithZone:a3];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v18 = self->_objectSaliencyRects;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v44;
    do
    {
      v22 = 0;
      do
      {
        if (*v44 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v43 + 1) + 8 * v22) copyWithZone:a3];
        [v5 addObjectSaliencyRects:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v20);
  }

  v24 = [(NSData *)self->_sceneprintData copyWithZone:a3];
  v25 = *(v5 + 208);
  *(v5 + 208) = v24;

  *(v5 + 224) = self->_wallpaperScore;
  v26 = [(NSData *)self->_colorNormalizationData copyWithZone:a3];
  v27 = *(v5 + 56);
  *(v5 + 56) = v26;

  *(v5 + 48) = self->_blurrinessScore;
  *(v5 + 80) = self->_exposureScore;
  *(v5 + 192) = self->_probableRotationDirection;
  *(v5 + 196) = self->_probableRotationDirectionConfidence;
  v28 = [(NSData *)self->_duplicateMatchingData copyWithZone:a3];
  v29 = *(v5 + 72);
  *(v5 + 72) = v28;

  v30 = [(NSData *)self->_duplicateMatchingAlternateData copyWithZone:a3];
  v31 = *(v5 + 64);
  *(v5 + 64) = v30;

  *(v5 + 92) = self->_iconicScore;
  if (*&self->_has)
  {
    *(v5 + 104) = self->_imageEmbeddingVersion;
    *(v5 + 240) |= 1u;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v32 = self->_imageEmbeddingResults;
  v33 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v40;
    do
    {
      v36 = 0;
      do
      {
        if (*v40 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = [*(*(&v39 + 1) + 8 * v36) copyWithZone:{a3, v39}];
        [v5 addImageEmbeddingResults:v37];

        ++v36;
      }

      while (v34 != v36);
      v34 = [(NSMutableArray *)v32 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v34);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_58;
  }

  assetCloudIdentifier = self->_assetCloudIdentifier;
  if (assetCloudIdentifier | *(v4 + 5))
  {
    if (![(NSString *)assetCloudIdentifier isEqual:?])
    {
      goto LABEL_58;
    }
  }

  if (self->_assetAdjustmentTimestamp != *(v4 + 2))
  {
    goto LABEL_58;
  }

  if (self->_algorithmVersion != *(v4 + 8))
  {
    goto LABEL_58;
  }

  if (self->_adjustmentVersion != *(v4 + 1))
  {
    goto LABEL_58;
  }

  sceneClassifications = self->_sceneClassifications;
  if (sceneClassifications | *(v4 + 25))
  {
    if (![(NSMutableArray *)sceneClassifications isEqual:?])
    {
      goto LABEL_58;
    }
  }

  if (self->_overallAestheticScore != *(v4 + 36))
  {
    goto LABEL_58;
  }

  if (self->_wellFramedSubjectScore != *(v4 + 58))
  {
    goto LABEL_58;
  }

  if (self->_wellChosenSubjectScore != *(v4 + 57))
  {
    goto LABEL_58;
  }

  if (self->_tastefullyBlurredScore != *(v4 + 55))
  {
    goto LABEL_58;
  }

  if (self->_sharplyFocusedSubjectScore != *(v4 + 54))
  {
    goto LABEL_58;
  }

  if (self->_wellTimedShotScore != *(v4 + 59))
  {
    goto LABEL_58;
  }

  if (self->_pleasantLightingScore != *(v4 + 39))
  {
    goto LABEL_58;
  }

  if (self->_pleasantReflectionsScore != *(v4 + 43))
  {
    goto LABEL_58;
  }

  if (self->_harmoniousColorScore != *(v4 + 22))
  {
    goto LABEL_58;
  }

  if (self->_livelyColorScore != *(v4 + 30))
  {
    goto LABEL_58;
  }

  if (self->_pleasantSymmetryScore != *(v4 + 44))
  {
    goto LABEL_58;
  }

  if (self->_pleasantPatternScore != *(v4 + 40))
  {
    goto LABEL_58;
  }

  if (self->_immersivenessScore != *(v4 + 27))
  {
    goto LABEL_58;
  }

  if (self->_pleasantPerspectiveScore != *(v4 + 41))
  {
    goto LABEL_58;
  }

  if (self->_pleasantPostProcessingScore != *(v4 + 42))
  {
    goto LABEL_58;
  }

  if (self->_noiseScore != *(v4 + 32))
  {
    goto LABEL_58;
  }

  if (self->_failureScore != *(v4 + 21))
  {
    goto LABEL_58;
  }

  if (self->_pleasantCompositionScore != *(v4 + 38))
  {
    goto LABEL_58;
  }

  if (self->_interestingSubjectScore != *(v4 + 28))
  {
    goto LABEL_58;
  }

  if (self->_intrusiveObjectPresenceScore != *(v4 + 29))
  {
    goto LABEL_58;
  }

  if (self->_pleasantCameraTiltScore != *(v4 + 37))
  {
    goto LABEL_58;
  }

  if (self->_lowLight != *(v4 + 31))
  {
    goto LABEL_58;
  }

  preferredCropRect = self->_preferredCropRect;
  if (preferredCropRect | *(v4 + 23))
  {
    if (![(VCPProtoBounds *)preferredCropRect isEqual:?])
    {
      goto LABEL_58;
    }
  }

  acceptableCropRect = self->_acceptableCropRect;
  if (acceptableCropRect | *(v4 + 3))
  {
    if (![(VCPProtoBounds *)acceptableCropRect isEqual:?])
    {
      goto LABEL_58;
    }
  }

  objectSaliencyRects = self->_objectSaliencyRects;
  if (objectSaliencyRects | *(v4 + 17))
  {
    if (![(NSMutableArray *)objectSaliencyRects isEqual:?])
    {
      goto LABEL_58;
    }
  }

  sceneprintData = self->_sceneprintData;
  if (sceneprintData | *(v4 + 26))
  {
    if (![(NSData *)sceneprintData isEqual:?])
    {
      goto LABEL_58;
    }
  }

  if (self->_wallpaperScore != *(v4 + 56))
  {
    goto LABEL_58;
  }

  colorNormalizationData = self->_colorNormalizationData;
  if (colorNormalizationData | *(v4 + 7))
  {
    if (![(NSData *)colorNormalizationData isEqual:?])
    {
      goto LABEL_58;
    }
  }

  if (self->_blurrinessScore != *(v4 + 12))
  {
    goto LABEL_58;
  }

  if (self->_exposureScore != *(v4 + 20))
  {
    goto LABEL_58;
  }

  if (self->_probableRotationDirection != *(v4 + 48))
  {
    goto LABEL_58;
  }

  if (self->_probableRotationDirectionConfidence != *(v4 + 49))
  {
    goto LABEL_58;
  }

  duplicateMatchingData = self->_duplicateMatchingData;
  if (duplicateMatchingData | *(v4 + 9))
  {
    if (![(NSData *)duplicateMatchingData isEqual:?])
    {
      goto LABEL_58;
    }
  }

  duplicateMatchingAlternateData = self->_duplicateMatchingAlternateData;
  if (duplicateMatchingAlternateData | *(v4 + 8))
  {
    if (![(NSData *)duplicateMatchingAlternateData isEqual:?])
    {
      goto LABEL_58;
    }
  }

  if (self->_iconicScore != *(v4 + 23))
  {
    goto LABEL_58;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 240) & 1) == 0 || self->_imageEmbeddingVersion != *(v4 + 26))
    {
      goto LABEL_58;
    }
  }

  else if (*(v4 + 240))
  {
LABEL_58:
    v15 = 0;
    goto LABEL_59;
  }

  imageEmbeddingResults = self->_imageEmbeddingResults;
  if (imageEmbeddingResults | *(v4 + 12))
  {
    v15 = [(NSMutableArray *)imageEmbeddingResults isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_59:

  return v15;
}

- (unint64_t)hash
{
  v202 = [(NSString *)self->_assetCloudIdentifier hash];
  assetAdjustmentTimestamp = self->_assetAdjustmentTimestamp;
  if (assetAdjustmentTimestamp < 0.0)
  {
    assetAdjustmentTimestamp = -assetAdjustmentTimestamp;
  }

  *v3.i64 = floor(assetAdjustmentTimestamp + 0.5);
  v6 = (assetAdjustmentTimestamp - *v3.i64) * 1.84467441e19;
  *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vbslq_s8(vnegq_f64(v7), v4, v3);
  v9 = 2654435761u * *v8.i64;
  if (v6 >= 0.0)
  {
    if (v6 > 0.0)
    {
      v9 += v6;
    }
  }

  else
  {
    v9 -= fabs(v6);
  }

  v201 = v9;
  adjustmentVersion = self->_adjustmentVersion;
  if (adjustmentVersion < 0.0)
  {
    adjustmentVersion = -adjustmentVersion;
  }

  *v8.i64 = floor(adjustmentVersion + 0.5);
  v11 = (adjustmentVersion - *v8.i64) * 1.84467441e19;
  *v4.i64 = *v8.i64 - trunc(*v8.i64 * 5.42101086e-20) * 1.84467441e19;
  v12.f64[0] = NAN;
  v12.f64[1] = NAN;
  v13 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v4, v8).i64;
  if (v11 >= 0.0)
  {
    if (v11 > 0.0)
    {
      v13 += v11;
    }
  }

  else
  {
    v13 -= fabs(v11);
  }

  algorithmVersion = self->_algorithmVersion;
  v200 = v13;
  v198 = [(NSMutableArray *)self->_sceneClassifications hash];
  overallAestheticScore = self->_overallAestheticScore;
  if (overallAestheticScore < 0.0)
  {
    overallAestheticScore = -overallAestheticScore;
  }

  *v14.i32 = floorf(overallAestheticScore + 0.5);
  v17 = (overallAestheticScore - *v14.i32) * 1.8447e19;
  *v15.i32 = *v14.i32 - (truncf(*v14.i32 * 5.421e-20) * 1.8447e19);
  v18.i64[0] = 0x8000000080000000;
  v18.i64[1] = 0x8000000080000000;
  v19 = vbslq_s8(v18, v15, v14);
  v20 = 2654435761u * *v19.i32;
  if (v17 >= 0.0)
  {
    if (v17 > 0.0)
    {
      v20 += v17;
    }
  }

  else
  {
    v20 -= fabsf(v17);
  }

  wellFramedSubjectScore = self->_wellFramedSubjectScore;
  if (wellFramedSubjectScore < 0.0)
  {
    wellFramedSubjectScore = -wellFramedSubjectScore;
  }

  *v19.i32 = floorf(wellFramedSubjectScore + 0.5);
  v22 = (wellFramedSubjectScore - *v19.i32) * 1.8447e19;
  *v15.i32 = *v19.i32 - (truncf(*v19.i32 * 5.421e-20) * 1.8447e19);
  v23.i64[0] = 0x8000000080000000;
  v23.i64[1] = 0x8000000080000000;
  v24 = vbslq_s8(v23, v15, v19);
  v25 = 2654435761u * *v24.i32;
  if (v22 >= 0.0)
  {
    if (v22 > 0.0)
    {
      v25 += v22;
    }
  }

  else
  {
    v25 -= fabsf(v22);
  }

  wellChosenSubjectScore = self->_wellChosenSubjectScore;
  if (wellChosenSubjectScore < 0.0)
  {
    wellChosenSubjectScore = -wellChosenSubjectScore;
  }

  *v24.i32 = floorf(wellChosenSubjectScore + 0.5);
  v27 = (wellChosenSubjectScore - *v24.i32) * 1.8447e19;
  *v15.i32 = *v24.i32 - (truncf(*v24.i32 * 5.421e-20) * 1.8447e19);
  v28.i64[0] = 0x8000000080000000;
  v28.i64[1] = 0x8000000080000000;
  v29 = vbslq_s8(v28, v15, v24);
  v30 = 2654435761u * *v29.i32;
  if (v27 >= 0.0)
  {
    if (v27 > 0.0)
    {
      v30 += v27;
    }
  }

  else
  {
    v30 -= fabsf(v27);
  }

  tastefullyBlurredScore = self->_tastefullyBlurredScore;
  if (tastefullyBlurredScore < 0.0)
  {
    tastefullyBlurredScore = -tastefullyBlurredScore;
  }

  *v29.i32 = floorf(tastefullyBlurredScore + 0.5);
  v32 = (tastefullyBlurredScore - *v29.i32) * 1.8447e19;
  *v15.i32 = *v29.i32 - (truncf(*v29.i32 * 5.421e-20) * 1.8447e19);
  v33.i64[0] = 0x8000000080000000;
  v33.i64[1] = 0x8000000080000000;
  v34 = vbslq_s8(v33, v15, v29);
  v35 = 2654435761u * *v34.i32;
  if (v32 >= 0.0)
  {
    if (v32 > 0.0)
    {
      v35 += v32;
    }
  }

  else
  {
    v35 -= fabsf(v32);
  }

  sharplyFocusedSubjectScore = self->_sharplyFocusedSubjectScore;
  if (sharplyFocusedSubjectScore < 0.0)
  {
    sharplyFocusedSubjectScore = -sharplyFocusedSubjectScore;
  }

  *v34.i32 = floorf(sharplyFocusedSubjectScore + 0.5);
  v37 = (sharplyFocusedSubjectScore - *v34.i32) * 1.8447e19;
  *v15.i32 = *v34.i32 - (truncf(*v34.i32 * 5.421e-20) * 1.8447e19);
  v38.i64[0] = 0x8000000080000000;
  v38.i64[1] = 0x8000000080000000;
  v39 = vbslq_s8(v38, v15, v34);
  v40 = 2654435761u * *v39.i32;
  if (v37 >= 0.0)
  {
    if (v37 > 0.0)
    {
      v40 += v37;
    }
  }

  else
  {
    v40 -= fabsf(v37);
  }

  wellTimedShotScore = self->_wellTimedShotScore;
  if (wellTimedShotScore < 0.0)
  {
    wellTimedShotScore = -wellTimedShotScore;
  }

  *v39.i32 = floorf(wellTimedShotScore + 0.5);
  v42 = (wellTimedShotScore - *v39.i32) * 1.8447e19;
  *v15.i32 = *v39.i32 - (truncf(*v39.i32 * 5.421e-20) * 1.8447e19);
  v43.i64[0] = 0x8000000080000000;
  v43.i64[1] = 0x8000000080000000;
  v44 = vbslq_s8(v43, v15, v39);
  v45 = 2654435761u * *v44.i32;
  if (v42 >= 0.0)
  {
    if (v42 > 0.0)
    {
      v45 += v42;
    }
  }

  else
  {
    v45 -= fabsf(v42);
  }

  pleasantLightingScore = self->_pleasantLightingScore;
  if (pleasantLightingScore < 0.0)
  {
    pleasantLightingScore = -pleasantLightingScore;
  }

  *v44.i32 = floorf(pleasantLightingScore + 0.5);
  v47 = (pleasantLightingScore - *v44.i32) * 1.8447e19;
  *v15.i32 = *v44.i32 - (truncf(*v44.i32 * 5.421e-20) * 1.8447e19);
  v48.i64[0] = 0x8000000080000000;
  v48.i64[1] = 0x8000000080000000;
  v49 = vbslq_s8(v48, v15, v44);
  v50 = 2654435761u * *v49.i32;
  if (v47 >= 0.0)
  {
    if (v47 > 0.0)
    {
      v50 += v47;
    }
  }

  else
  {
    v50 -= fabsf(v47);
  }

  pleasantReflectionsScore = self->_pleasantReflectionsScore;
  if (pleasantReflectionsScore < 0.0)
  {
    pleasantReflectionsScore = -pleasantReflectionsScore;
  }

  *v49.i32 = floorf(pleasantReflectionsScore + 0.5);
  v52 = (pleasantReflectionsScore - *v49.i32) * 1.8447e19;
  *v15.i32 = *v49.i32 - (truncf(*v49.i32 * 5.421e-20) * 1.8447e19);
  v53.i64[0] = 0x8000000080000000;
  v53.i64[1] = 0x8000000080000000;
  v54 = vbslq_s8(v53, v15, v49);
  v55 = 2654435761u * *v54.i32;
  if (v52 >= 0.0)
  {
    if (v52 > 0.0)
    {
      v55 += v52;
    }
  }

  else
  {
    v55 -= fabsf(v52);
  }

  harmoniousColorScore = self->_harmoniousColorScore;
  if (harmoniousColorScore < 0.0)
  {
    harmoniousColorScore = -harmoniousColorScore;
  }

  *v54.i32 = floorf(harmoniousColorScore + 0.5);
  v57 = (harmoniousColorScore - *v54.i32) * 1.8447e19;
  *v15.i32 = *v54.i32 - (truncf(*v54.i32 * 5.421e-20) * 1.8447e19);
  v58.i64[0] = 0x8000000080000000;
  v58.i64[1] = 0x8000000080000000;
  v59 = vbslq_s8(v58, v15, v54);
  v60 = 2654435761u * *v59.i32;
  if (v57 >= 0.0)
  {
    if (v57 > 0.0)
    {
      v60 += v57;
    }
  }

  else
  {
    v60 -= fabsf(v57);
  }

  livelyColorScore = self->_livelyColorScore;
  if (livelyColorScore < 0.0)
  {
    livelyColorScore = -livelyColorScore;
  }

  *v59.i32 = floorf(livelyColorScore + 0.5);
  v62 = (livelyColorScore - *v59.i32) * 1.8447e19;
  *v15.i32 = *v59.i32 - (truncf(*v59.i32 * 5.421e-20) * 1.8447e19);
  v63.i64[0] = 0x8000000080000000;
  v63.i64[1] = 0x8000000080000000;
  v64 = vbslq_s8(v63, v15, v59);
  v65 = 2654435761u * *v64.i32;
  if (v62 >= 0.0)
  {
    if (v62 > 0.0)
    {
      v65 += v62;
    }
  }

  else
  {
    v65 -= fabsf(v62);
  }

  pleasantSymmetryScore = self->_pleasantSymmetryScore;
  if (pleasantSymmetryScore < 0.0)
  {
    pleasantSymmetryScore = -pleasantSymmetryScore;
  }

  *v64.i32 = floorf(pleasantSymmetryScore + 0.5);
  v67 = (pleasantSymmetryScore - *v64.i32) * 1.8447e19;
  *v15.i32 = *v64.i32 - (truncf(*v64.i32 * 5.421e-20) * 1.8447e19);
  v68.i64[0] = 0x8000000080000000;
  v68.i64[1] = 0x8000000080000000;
  v69 = vbslq_s8(v68, v15, v64);
  v70 = 2654435761u * *v69.i32;
  if (v67 >= 0.0)
  {
    if (v67 > 0.0)
    {
      v70 += v67;
    }
  }

  else
  {
    v70 -= fabsf(v67);
  }

  pleasantPatternScore = self->_pleasantPatternScore;
  if (pleasantPatternScore < 0.0)
  {
    pleasantPatternScore = -pleasantPatternScore;
  }

  *v69.i32 = floorf(pleasantPatternScore + 0.5);
  v72 = (pleasantPatternScore - *v69.i32) * 1.8447e19;
  *v15.i32 = *v69.i32 - (truncf(*v69.i32 * 5.421e-20) * 1.8447e19);
  v73.i64[0] = 0x8000000080000000;
  v73.i64[1] = 0x8000000080000000;
  v74 = vbslq_s8(v73, v15, v69);
  v75 = 2654435761u * *v74.i32;
  if (v72 >= 0.0)
  {
    if (v72 > 0.0)
    {
      v75 += v72;
    }
  }

  else
  {
    v75 -= fabsf(v72);
  }

  immersivenessScore = self->_immersivenessScore;
  if (immersivenessScore < 0.0)
  {
    immersivenessScore = -immersivenessScore;
  }

  *v74.i32 = floorf(immersivenessScore + 0.5);
  v77 = (immersivenessScore - *v74.i32) * 1.8447e19;
  *v15.i32 = *v74.i32 - (truncf(*v74.i32 * 5.421e-20) * 1.8447e19);
  v78.i64[0] = 0x8000000080000000;
  v78.i64[1] = 0x8000000080000000;
  v79 = vbslq_s8(v78, v15, v74);
  v80 = 2654435761u * *v79.i32;
  if (v77 >= 0.0)
  {
    if (v77 > 0.0)
    {
      v80 += v77;
    }
  }

  else
  {
    v80 -= fabsf(v77);
  }

  pleasantPerspectiveScore = self->_pleasantPerspectiveScore;
  if (pleasantPerspectiveScore < 0.0)
  {
    pleasantPerspectiveScore = -pleasantPerspectiveScore;
  }

  *v79.i32 = floorf(pleasantPerspectiveScore + 0.5);
  v82 = (pleasantPerspectiveScore - *v79.i32) * 1.8447e19;
  *v15.i32 = *v79.i32 - (truncf(*v79.i32 * 5.421e-20) * 1.8447e19);
  v83.i64[0] = 0x8000000080000000;
  v83.i64[1] = 0x8000000080000000;
  v84 = vbslq_s8(v83, v15, v79);
  v85 = 2654435761u * *v84.i32;
  if (v82 >= 0.0)
  {
    if (v82 > 0.0)
    {
      v85 += v82;
    }
  }

  else
  {
    v85 -= fabsf(v82);
  }

  pleasantPostProcessingScore = self->_pleasantPostProcessingScore;
  if (pleasantPostProcessingScore < 0.0)
  {
    pleasantPostProcessingScore = -pleasantPostProcessingScore;
  }

  *v84.i32 = floorf(pleasantPostProcessingScore + 0.5);
  v87 = (pleasantPostProcessingScore - *v84.i32) * 1.8447e19;
  *v15.i32 = *v84.i32 - (truncf(*v84.i32 * 5.421e-20) * 1.8447e19);
  v88.i64[0] = 0x8000000080000000;
  v88.i64[1] = 0x8000000080000000;
  v89 = vbslq_s8(v88, v15, v84);
  v90 = 2654435761u * *v89.i32;
  if (v87 >= 0.0)
  {
    if (v87 > 0.0)
    {
      v90 += v87;
    }
  }

  else
  {
    v90 -= fabsf(v87);
  }

  noiseScore = self->_noiseScore;
  if (noiseScore < 0.0)
  {
    noiseScore = -noiseScore;
  }

  *v89.i32 = floorf(noiseScore + 0.5);
  v92 = (noiseScore - *v89.i32) * 1.8447e19;
  *v15.i32 = *v89.i32 - (truncf(*v89.i32 * 5.421e-20) * 1.8447e19);
  v93.i64[0] = 0x8000000080000000;
  v93.i64[1] = 0x8000000080000000;
  v94 = vbslq_s8(v93, v15, v89);
  v95 = 2654435761u * *v94.i32;
  if (v92 >= 0.0)
  {
    if (v92 > 0.0)
    {
      v95 += v92;
    }
  }

  else
  {
    v95 -= fabsf(v92);
  }

  failureScore = self->_failureScore;
  if (failureScore < 0.0)
  {
    failureScore = -failureScore;
  }

  *v94.i32 = floorf(failureScore + 0.5);
  v97 = (failureScore - *v94.i32) * 1.8447e19;
  *v15.i32 = *v94.i32 - (truncf(*v94.i32 * 5.421e-20) * 1.8447e19);
  v98.i64[0] = 0x8000000080000000;
  v98.i64[1] = 0x8000000080000000;
  v99 = vbslq_s8(v98, v15, v94);
  v100 = 2654435761u * *v99.i32;
  if (v97 >= 0.0)
  {
    if (v97 > 0.0)
    {
      v100 += v97;
    }
  }

  else
  {
    v100 -= fabsf(v97);
  }

  pleasantCompositionScore = self->_pleasantCompositionScore;
  if (pleasantCompositionScore < 0.0)
  {
    pleasantCompositionScore = -pleasantCompositionScore;
  }

  *v99.i32 = floorf(pleasantCompositionScore + 0.5);
  v102 = (pleasantCompositionScore - *v99.i32) * 1.8447e19;
  *v15.i32 = *v99.i32 - (truncf(*v99.i32 * 5.421e-20) * 1.8447e19);
  v103.i64[0] = 0x8000000080000000;
  v103.i64[1] = 0x8000000080000000;
  v104 = vbslq_s8(v103, v15, v99);
  v105 = 2654435761u * *v104.i32;
  if (v102 >= 0.0)
  {
    if (v102 > 0.0)
    {
      v105 += v102;
    }
  }

  else
  {
    v105 -= fabsf(v102);
  }

  interestingSubjectScore = self->_interestingSubjectScore;
  if (interestingSubjectScore < 0.0)
  {
    interestingSubjectScore = -interestingSubjectScore;
  }

  *v104.i32 = floorf(interestingSubjectScore + 0.5);
  v107 = (interestingSubjectScore - *v104.i32) * 1.8447e19;
  *v15.i32 = *v104.i32 - (truncf(*v104.i32 * 5.421e-20) * 1.8447e19);
  v108.i64[0] = 0x8000000080000000;
  v108.i64[1] = 0x8000000080000000;
  v109 = vbslq_s8(v108, v15, v104);
  v110 = 2654435761u * *v109.i32;
  if (v107 >= 0.0)
  {
    if (v107 > 0.0)
    {
      v110 += v107;
    }
  }

  else
  {
    v110 -= fabsf(v107);
  }

  intrusiveObjectPresenceScore = self->_intrusiveObjectPresenceScore;
  if (intrusiveObjectPresenceScore < 0.0)
  {
    intrusiveObjectPresenceScore = -intrusiveObjectPresenceScore;
  }

  *v109.i32 = floorf(intrusiveObjectPresenceScore + 0.5);
  v112 = (intrusiveObjectPresenceScore - *v109.i32) * 1.8447e19;
  *v15.i32 = *v109.i32 - (truncf(*v109.i32 * 5.421e-20) * 1.8447e19);
  v113.i64[0] = 0x8000000080000000;
  v113.i64[1] = 0x8000000080000000;
  v114 = vbslq_s8(v113, v15, v109);
  v115 = 2654435761u * *v114.i32;
  if (v112 >= 0.0)
  {
    if (v112 > 0.0)
    {
      v115 += v112;
    }
  }

  else
  {
    v115 -= fabsf(v112);
  }

  pleasantCameraTiltScore = self->_pleasantCameraTiltScore;
  if (pleasantCameraTiltScore < 0.0)
  {
    pleasantCameraTiltScore = -pleasantCameraTiltScore;
  }

  *v114.i32 = floorf(pleasantCameraTiltScore + 0.5);
  v117 = (pleasantCameraTiltScore - *v114.i32) * 1.8447e19;
  *v15.i32 = *v114.i32 - (truncf(*v114.i32 * 5.421e-20) * 1.8447e19);
  v118.i64[0] = 0x8000000080000000;
  v118.i64[1] = 0x8000000080000000;
  v119 = vbslq_s8(v118, v15, v114);
  v120 = 2654435761u * *v119.i32;
  if (v117 >= 0.0)
  {
    if (v117 > 0.0)
    {
      v120 += v117;
    }
  }

  else
  {
    v120 -= fabsf(v117);
  }

  v181 = v105;
  lowLight = self->_lowLight;
  if (lowLight < 0.0)
  {
    lowLight = -lowLight;
  }

  *v119.i32 = floorf(lowLight + 0.5);
  v122 = (lowLight - *v119.i32) * 1.8447e19;
  *v15.i32 = *v119.i32 - (truncf(*v119.i32 * 5.421e-20) * 1.8447e19);
  v123.i64[0] = 0x8000000080000000;
  v123.i64[1] = 0x8000000080000000;
  v124 = 2654435761u * *vbslq_s8(v123, v15, v119).i32;
  v196 = v25;
  v197 = v20;
  v194 = v40;
  v195 = v30;
  v192 = v50;
  v193 = v45;
  v190 = v60;
  v191 = v55;
  v188 = v70;
  v189 = v65;
  v186 = v80;
  v187 = v75;
  v184 = v90;
  v185 = v85;
  v182 = v100;
  v183 = v95;
  v125 = v35;
  if (v122 >= 0.0)
  {
    if (v122 > 0.0)
    {
      v124 += v122;
    }
  }

  else
  {
    v124 -= fabsf(v122);
  }

  v177 = [(VCPProtoBounds *)self->_preferredCropRect hash];
  v176 = [(VCPProtoBounds *)self->_acceptableCropRect hash];
  v175 = [(NSMutableArray *)self->_objectSaliencyRects hash];
  v174 = [(NSData *)self->_sceneprintData hash];
  wallpaperScore = self->_wallpaperScore;
  if (wallpaperScore < 0.0)
  {
    wallpaperScore = -wallpaperScore;
  }

  *v126.i32 = floorf(wallpaperScore + 0.5);
  v129 = (wallpaperScore - *v126.i32) * 1.8447e19;
  *v127.i32 = *v126.i32 - (truncf(*v126.i32 * 5.421e-20) * 1.8447e19);
  v130.i64[0] = 0x8000000080000000;
  v130.i64[1] = 0x8000000080000000;
  v131 = 2654435761u * *vbslq_s8(v130, v127, v126).i32;
  v180 = v110;
  if (v129 >= 0.0)
  {
    if (v129 > 0.0)
    {
      v131 += v129;
    }
  }

  else
  {
    v131 -= fabsf(v129);
  }

  v173 = [(NSData *)self->_colorNormalizationData hash];
  blurrinessScore = self->_blurrinessScore;
  if (blurrinessScore < 0.0)
  {
    blurrinessScore = -blurrinessScore;
  }

  *v132.i32 = floorf(blurrinessScore + 0.5);
  v135 = (blurrinessScore - *v132.i32) * 1.8447e19;
  *v133.i32 = *v132.i32 - (truncf(*v132.i32 * 5.421e-20) * 1.8447e19);
  v136.i64[0] = 0x8000000080000000;
  v136.i64[1] = 0x8000000080000000;
  v137 = vbslq_s8(v136, v133, v132);
  v138 = 2654435761u * *v137.i32;
  v179 = v115;
  if (v135 >= 0.0)
  {
    if (v135 > 0.0)
    {
      v138 += v135;
    }
  }

  else
  {
    v138 -= fabsf(v135);
  }

  exposureScore = self->_exposureScore;
  if (exposureScore < 0.0)
  {
    exposureScore = -exposureScore;
  }

  *v137.i32 = floorf(exposureScore + 0.5);
  v140 = (exposureScore - *v137.i32) * 1.8447e19;
  *v133.i32 = *v137.i32 - (truncf(*v137.i32 * 5.421e-20) * 1.8447e19);
  v141.i64[0] = 0x8000000080000000;
  v141.i64[1] = 0x8000000080000000;
  v142 = vbslq_s8(v141, v133, v137);
  v143 = 2654435761u * *v142.i32;
  if (v140 >= 0.0)
  {
    if (v140 > 0.0)
    {
      v143 += v140;
    }
  }

  else
  {
    v143 -= fabsf(v140);
  }

  v178 = v124;
  probableRotationDirectionConfidence = self->_probableRotationDirectionConfidence;
  if (probableRotationDirectionConfidence < 0.0)
  {
    probableRotationDirectionConfidence = -probableRotationDirectionConfidence;
  }

  *v142.i32 = floorf(probableRotationDirectionConfidence + 0.5);
  v145 = (probableRotationDirectionConfidence - *v142.i32) * 1.8447e19;
  *v133.i32 = *v142.i32 - (truncf(*v142.i32 * 5.421e-20) * 1.8447e19);
  v146.i64[0] = 0x8000000080000000;
  v146.i64[1] = 0x8000000080000000;
  v147 = 2654435761u * *vbslq_s8(v146, v133, v142).i32;
  v148 = v120;
  if (v145 >= 0.0)
  {
    if (v145 > 0.0)
    {
      v147 += v145;
    }
  }

  else
  {
    v147 -= fabsf(v145);
  }

  probableRotationDirection = self->_probableRotationDirection;
  v150 = [(NSData *)self->_duplicateMatchingData hash];
  v151 = [(NSData *)self->_duplicateMatchingAlternateData hash];
  iconicScore = self->_iconicScore;
  if (iconicScore < 0.0)
  {
    iconicScore = -iconicScore;
  }

  *v152.i32 = floorf(iconicScore + 0.5);
  v155 = (iconicScore - *v152.i32) * 1.8447e19;
  *v153.i32 = *v152.i32 - (truncf(*v152.i32 * 5.421e-20) * 1.8447e19);
  v156.i64[0] = 0x8000000080000000;
  v156.i64[1] = 0x8000000080000000;
  v157 = 2654435761u * *vbslq_s8(v156, v153, v152).i32;
  if (v155 >= 0.0)
  {
    v158 = v125;
    v159 = v194;
    v161 = v192;
    v160 = v193;
    v163 = v190;
    v162 = v191;
    v165 = v187;
    v164 = v188;
    v167 = v185;
    v166 = v186;
    v169 = v183;
    v168 = v184;
    v170 = v182;
    if (v155 > 0.0)
    {
      v157 += v155;
    }
  }

  else
  {
    v157 -= fabsf(v155);
    v158 = v125;
    v159 = v194;
    v161 = v192;
    v160 = v193;
    v163 = v190;
    v162 = v191;
    v165 = v187;
    v164 = v188;
    v167 = v185;
    v166 = v186;
    v169 = v183;
    v168 = v184;
    v170 = v182;
  }

  if (*&self->_has)
  {
    v171 = 2654435761 * self->_imageEmbeddingVersion;
  }

  else
  {
    v171 = 0;
  }

  return v201 ^ v202 ^ (2654435761 * algorithmVersion) ^ v200 ^ v198 ^ v197 ^ v196 ^ v195 ^ v158 ^ v159 ^ v160 ^ v161 ^ v162 ^ v163 ^ v189 ^ v164 ^ v165 ^ v166 ^ v167 ^ v168 ^ v169 ^ v170 ^ v181 ^ v180 ^ v179 ^ v148 ^ v178 ^ v177 ^ v176 ^ v175 ^ v174 ^ v131 ^ v173 ^ v138 ^ v143 ^ (2654435761 * probableRotationDirection) ^ v147 ^ v150 ^ v151 ^ v157 ^ v171 ^ [(NSMutableArray *)self->_imageEmbeddingResults hash];
}

- (void)mergeFrom:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*(v4 + 5))
  {
    [(MADProtoSceneAsset *)self setAssetCloudIdentifier:?];
  }

  self->_assetAdjustmentTimestamp = *(v4 + 2);
  self->_algorithmVersion = *(v4 + 8);
  self->_adjustmentVersion = *(v4 + 1);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = *(v4 + 25);
  v6 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MADProtoSceneAsset *)self addSceneClassifications:*(*(&v32 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  self->_overallAestheticScore = *(v4 + 36);
  self->_wellFramedSubjectScore = *(v4 + 58);
  self->_wellChosenSubjectScore = *(v4 + 57);
  self->_tastefullyBlurredScore = *(v4 + 55);
  self->_sharplyFocusedSubjectScore = *(v4 + 54);
  self->_wellTimedShotScore = *(v4 + 59);
  self->_pleasantLightingScore = *(v4 + 39);
  self->_pleasantReflectionsScore = *(v4 + 43);
  self->_harmoniousColorScore = *(v4 + 22);
  self->_livelyColorScore = *(v4 + 30);
  self->_pleasantSymmetryScore = *(v4 + 44);
  self->_pleasantPatternScore = *(v4 + 40);
  self->_immersivenessScore = *(v4 + 27);
  self->_pleasantPerspectiveScore = *(v4 + 41);
  self->_pleasantPostProcessingScore = *(v4 + 42);
  self->_noiseScore = *(v4 + 32);
  self->_failureScore = *(v4 + 21);
  self->_pleasantCompositionScore = *(v4 + 38);
  self->_interestingSubjectScore = *(v4 + 28);
  self->_intrusiveObjectPresenceScore = *(v4 + 29);
  self->_pleasantCameraTiltScore = *(v4 + 37);
  self->_lowLight = *(v4 + 31);
  preferredCropRect = self->_preferredCropRect;
  v11 = *(v4 + 23);
  if (preferredCropRect)
  {
    if (v11)
    {
      [(VCPProtoBounds *)preferredCropRect mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(MADProtoSceneAsset *)self setPreferredCropRect:?];
  }

  acceptableCropRect = self->_acceptableCropRect;
  v13 = *(v4 + 3);
  if (acceptableCropRect)
  {
    if (v13)
    {
      [(VCPProtoBounds *)acceptableCropRect mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(MADProtoSceneAsset *)self setAcceptableCropRect:?];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = *(v4 + 17);
  v15 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v14);
        }

        [(MADProtoSceneAsset *)self addObjectSaliencyRects:*(*(&v28 + 1) + 8 * j)];
      }

      v16 = [v14 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v16);
  }

  if (*(v4 + 26))
  {
    [(MADProtoSceneAsset *)self setSceneprintData:?];
  }

  self->_wallpaperScore = *(v4 + 56);
  if (*(v4 + 7))
  {
    [(MADProtoSceneAsset *)self setColorNormalizationData:?];
  }

  self->_blurrinessScore = *(v4 + 12);
  self->_exposureScore = *(v4 + 20);
  self->_probableRotationDirection = *(v4 + 48);
  self->_probableRotationDirectionConfidence = *(v4 + 49);
  if (*(v4 + 9))
  {
    [(MADProtoSceneAsset *)self setDuplicateMatchingData:?];
  }

  if (*(v4 + 8))
  {
    [(MADProtoSceneAsset *)self setDuplicateMatchingAlternateData:?];
  }

  self->_iconicScore = *(v4 + 23);
  if (*(v4 + 240))
  {
    self->_imageEmbeddingVersion = *(v4 + 26);
    *&self->_has |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v19 = *(v4 + 12);
  v20 = [v19 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v25;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v25 != v22)
        {
          objc_enumerationMutation(v19);
        }

        [(MADProtoSceneAsset *)self addImageEmbeddingResults:*(*(&v24 + 1) + 8 * k), v24];
      }

      v21 = [v19 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v21);
  }
}

+ (id)protoFromPhotosAsset:(id)a3
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MADProtoSceneAsset);
  v5 = [v3 photoLibrary];
  v6 = [v3 localIdentifier];
  v47 = 0;
  v7 = [v5 mad_cloudIdentifierForLocalIdentifier:v6 error:&v47];
  v38 = v47;
  [(MADProtoSceneAsset *)v4 setAssetCloudIdentifier:v7];

  v8 = [(MADProtoSceneAsset *)v4 assetCloudIdentifier];
  v9 = v8 == 0;

  if (v9)
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v35 = [v3 localIdentifier];
      *buf = 138412546;
      v51 = v35;
      v52 = 2112;
      v53 = v38;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to fetch asset's cloud identifier: %@", buf, 0x16u);
    }

    v34 = 0;
  }

  else
  {
    v10 = [v3 adjustmentTimestamp];
    [v10 timeIntervalSinceReferenceDate];
    [(MADProtoSceneAsset *)v4 setAssetAdjustmentTimestamp:?];

    v37 = [v3 sceneAnalysisProperties];
    -[MADProtoSceneAsset setAlgorithmVersion:](v4, "setAlgorithmVersion:", [v37 sceneAnalysisVersion]);
    v11 = [v37 sceneAnalysisTimestamp];
    [v11 timeIntervalSinceReferenceDate];
    [(MADProtoSceneAsset *)v4 setAdjustmentVersion:?];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v12 = [v3 sceneClassifications];
    v13 = [v12 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v13)
    {
      v14 = *v44;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = [MADProtoSceneClassification protoFromPhotosSceneClassification:*(*(&v43 + 1) + 8 * i)];
          [(MADProtoSceneAsset *)v4 addSceneClassifications:v16];
        }

        v13 = [v12 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v13);
    }

    [v3 overallAestheticScore];
    [(MADProtoSceneAsset *)v4 setOverallAestheticScore:?];
    v17 = [v3 aestheticProperties];
    [v17 wellFramedSubjectScore];
    [(MADProtoSceneAsset *)v4 setWellFramedSubjectScore:?];
    [v17 wellChosenSubjectScore];
    [(MADProtoSceneAsset *)v4 setWellChosenSubjectScore:?];
    [v17 tastefullyBlurredScore];
    [(MADProtoSceneAsset *)v4 setTastefullyBlurredScore:?];
    [v17 sharplyFocusedSubjectScore];
    [(MADProtoSceneAsset *)v4 setSharplyFocusedSubjectScore:?];
    [v17 wellTimedShotScore];
    [(MADProtoSceneAsset *)v4 setWellTimedShotScore:?];
    [v17 pleasantLightingScore];
    [(MADProtoSceneAsset *)v4 setPleasantLightingScore:?];
    [v17 pleasantReflectionsScore];
    [(MADProtoSceneAsset *)v4 setPleasantReflectionsScore:?];
    [v17 harmoniousColorScore];
    [(MADProtoSceneAsset *)v4 setHarmoniousColorScore:?];
    [v17 livelyColorScore];
    [(MADProtoSceneAsset *)v4 setLivelyColorScore:?];
    [v17 pleasantSymmetryScore];
    [(MADProtoSceneAsset *)v4 setPleasantSymmetryScore:?];
    [v17 pleasantPatternScore];
    [(MADProtoSceneAsset *)v4 setPleasantPatternScore:?];
    [v17 immersivenessScore];
    [(MADProtoSceneAsset *)v4 setImmersivenessScore:?];
    [v17 pleasantPerspectiveScore];
    [(MADProtoSceneAsset *)v4 setPleasantPerspectiveScore:?];
    [v17 pleasantPostProcessingScore];
    [(MADProtoSceneAsset *)v4 setPleasantPostProcessingScore:?];
    [v17 noiseScore];
    [(MADProtoSceneAsset *)v4 setNoiseScore:?];
    [v17 failureScore];
    [(MADProtoSceneAsset *)v4 setFailureScore:?];
    [v17 pleasantCompositionScore];
    [(MADProtoSceneAsset *)v4 setPleasantCompositionScore:?];
    [v17 interestingSubjectScore];
    [(MADProtoSceneAsset *)v4 setInterestingSubjectScore:?];
    [v17 intrusiveObjectPresenceScore];
    [(MADProtoSceneAsset *)v4 setIntrusiveObjectPresenceScore:?];
    [v17 pleasantCameraTiltScore];
    [(MADProtoSceneAsset *)v4 setPleasantCameraTiltScore:?];
    [v17 lowLight];
    [(MADProtoSceneAsset *)v4 setLowLight:?];
    [v3 preferredCropRect];
    v18 = [VCPProtoBounds boundsWithCGRect:?];
    [(MADProtoSceneAsset *)v4 setPreferredCropRect:v18];

    [v3 acceptableCropRect];
    v19 = [VCPProtoBounds boundsWithCGRect:?];
    [(MADProtoSceneAsset *)v4 setAcceptableCropRect:v19];

    v20 = [v3 curationProperties];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = [v20 objectSaliencyRects];
    v22 = [v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v22)
    {
      v23 = *v40;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v40 != v23)
          {
            objc_enumerationMutation(v21);
          }

          [*(*(&v39 + 1) + 8 * j) rectValue];
          v25 = [VCPProtoBounds boundsWithCGRect:?];
          [(MADProtoSceneAsset *)v4 addObjectSaliencyRects:v25];
        }

        v22 = [v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v22);
    }

    v26 = [v3 mediaAnalysisProperties];
    [v26 wallpaperScore];
    [(MADProtoSceneAsset *)v4 setWallpaperScore:?];
    v27 = [v26 colorNormalizationData];
    [(MADProtoSceneAsset *)v4 setColorNormalizationData:v27];

    [v26 blurrinessScore];
    [(MADProtoSceneAsset *)v4 setBlurrinessScore:?];
    [v26 exposureScore];
    [(MADProtoSceneAsset *)v4 setExposureScore:?];
    -[MADProtoSceneAsset setProbableRotationDirection:](v4, "setProbableRotationDirection:", [v26 probableRotationDirection]);
    [v26 probableRotationDirectionConfidence];
    [(MADProtoSceneAsset *)v4 setProbableRotationDirectionConfidence:?];
    v28 = [v3 sceneprintProperties];
    v29 = [v28 sceneprint];
    [(MADProtoSceneAsset *)v4 setSceneprintData:v29];

    v30 = [v28 duplicateMatchingData];
    [(MADProtoSceneAsset *)v4 setDuplicateMatchingData:v30];

    v31 = [v28 duplicateMatchingAlternateData];
    [(MADProtoSceneAsset *)v4 setDuplicateMatchingAlternateData:v31];

    v32 = [v3 iconicScoreProperties];
    [v32 iconicScore];
    *&v33 = v33;
    [(MADProtoSceneAsset *)v4 setIconicScore:v33];
    v34 = v4;
  }

  return v34;
}

- (void)persistToPhotosAsset:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v4 = [MEMORY[0x1E6978640] changeRequestForAsset:?];
  v5 = [MEMORY[0x1E695DFA8] set];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v6 = [(MADProtoSceneAsset *)self sceneClassifications];
  v7 = [v6 countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v7)
  {
    v8 = *v49;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v48 + 1) + 8 * i) photosSceneClassification];
        [v5 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v7);
  }

  v11 = [(MADProtoSceneAsset *)self algorithmVersion];
  v12 = MEMORY[0x1E695DF00];
  [(MADProtoSceneAsset *)self adjustmentVersion];
  v13 = [v12 dateWithTimeIntervalSinceReferenceDate:?];
  [v4 setSceneClassifications:v5 ofType:0 version:v11 timestamp:v13];

  [(MADProtoSceneAsset *)self overallAestheticScore];
  [v4 setOverallAestheticScore:?];
  [(MADProtoSceneAsset *)self wellFramedSubjectScore];
  [v4 setWellFramedSubjectScore:?];
  [(MADProtoSceneAsset *)self wellChosenSubjectScore];
  [v4 setWellChosenSubjectScore:?];
  [(MADProtoSceneAsset *)self tastefullyBlurredScore];
  [v4 setTastefullyBlurredScore:?];
  [(MADProtoSceneAsset *)self sharplyFocusedSubjectScore];
  [v4 setSharplyFocusedSubjectScore:?];
  [(MADProtoSceneAsset *)self wellTimedShotScore];
  [v4 setWellTimedShotScore:?];
  [(MADProtoSceneAsset *)self pleasantLightingScore];
  [v4 setPleasantLightingScore:?];
  [(MADProtoSceneAsset *)self pleasantReflectionsScore];
  [v4 setPleasantReflectionsScore:?];
  [(MADProtoSceneAsset *)self harmoniousColorScore];
  [v4 setHarmoniousColorScore:?];
  [(MADProtoSceneAsset *)self livelyColorScore];
  [v4 setLivelyColorScore:?];
  [(MADProtoSceneAsset *)self pleasantSymmetryScore];
  [v4 setPleasantSymmetryScore:?];
  [(MADProtoSceneAsset *)self pleasantPatternScore];
  [v4 setPleasantPatternScore:?];
  [(MADProtoSceneAsset *)self immersivenessScore];
  [v4 setImmersivenessScore:?];
  [(MADProtoSceneAsset *)self pleasantPerspectiveScore];
  [v4 setPleasantPerspectiveScore:?];
  [(MADProtoSceneAsset *)self pleasantPostProcessingScore];
  [v4 setPleasantPostProcessingScore:?];
  [(MADProtoSceneAsset *)self noiseScore];
  [v4 setNoiseScore:?];
  [(MADProtoSceneAsset *)self failureScore];
  [v4 setFailureScore:?];
  [(MADProtoSceneAsset *)self pleasantCompositionScore];
  [v4 setPleasantCompositionScore:?];
  [(MADProtoSceneAsset *)self interestingSubjectScore];
  [v4 setInterestingSubjectScore:?];
  [(MADProtoSceneAsset *)self intrusiveObjectPresenceScore];
  [v4 setIntrusiveObjectPresenceScore:?];
  [(MADProtoSceneAsset *)self pleasantCameraTiltScore];
  [v4 setPleasantCameraTiltScore:?];
  [(MADProtoSceneAsset *)self lowLight];
  [v4 setLowLight:?];
  v14 = [(MADProtoSceneAsset *)self preferredCropRect];
  [v14 rectValue];
  [v4 setPreferredCropRectWithNormalizedRect:?];

  v15 = [(MADProtoSceneAsset *)self acceptableCropRect];
  [v15 rectValue];
  [v4 setAcceptableCropRectWithNormalizedRect:?];

  v16 = [MEMORY[0x1E695DF70] array];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v17 = [(MADProtoSceneAsset *)self objectSaliencyRects];
  v18 = [v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
  if (v18)
  {
    v19 = *v45;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v45 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = MEMORY[0x1E696B098];
        [*(*(&v44 + 1) + 8 * j) rectValue];
        v22 = [v21 valueWithRect:?];
        [v16 addObject:v22];
      }

      v18 = [v17 countByEnumeratingWithState:&v44 objects:v58 count:16];
    }

    while (v18);
  }

  [v4 setObjectSaliencyRects:v16];
  v23 = [(MADProtoSceneAsset *)self sceneprintData];
  [v4 setSceneprintData:v23];

  [(MADProtoSceneAsset *)self wallpaperScore];
  [v4 setWallpaperScore:?];
  v24 = [(MADProtoSceneAsset *)self colorNormalizationData];
  [v4 setColorNormalizationData:v24];

  [(MADProtoSceneAsset *)self blurrinessScore];
  [v4 setBlurrinessScore:?];
  [(MADProtoSceneAsset *)self exposureScore];
  [v4 setExposureScore:?];
  [v4 setProbableRotationDirection:{-[MADProtoSceneAsset probableRotationDirection](self, "probableRotationDirection")}];
  [(MADProtoSceneAsset *)self probableRotationDirectionConfidence];
  [v4 setProbableRotationDirectionConfidence:?];
  v25 = [(MADProtoSceneAsset *)self duplicateMatchingData];
  if (v25)
  {
    v26 = [(MADProtoSceneAsset *)self duplicateMatchingAlternateData];
    v27 = v26 != 0;
  }

  else
  {
    v27 = 0;
  }

  v28 = [(MADProtoSceneAsset *)self duplicateMatchingData];
  v29 = [(MADProtoSceneAsset *)self duplicateMatchingAlternateData];
  [v4 setDuplicateMatchingData:v28 duplicateMatchingAlternateData:v29 processingSucceeded:v27];

  [(MADProtoSceneAsset *)self iconicScore];
  [v4 setIconicScore:v30];
  if ([v43 mad_needsImageEmbeddingProcessing])
  {
    v31 = [v43 localIdentifier];
    v32 = [(MADProtoSceneAsset *)self imageEmbeddingVSKAssetWithLocalIdentifier:v31];

    if (!v32)
    {
      v35 = 1;
      goto LABEL_26;
    }

    if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      v33 = [v43 localIdentifier];
      v34 = [(MADProtoSceneAsset *)self imageEmbeddingVersion];
      *buf = 138412546;
      v53 = v33;
      v54 = 1024;
      v55 = v34;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[MADProtoSceneAsset->Photos][%@] Persisting image embedding version %d", buf, 0x12u);
    }

    [v4 setImageEmbeddingVersion:{-[MADProtoSceneAsset imageEmbeddingVersion](self, "imageEmbeddingVersion")}];
  }

  else
  {
    v32 = 0;
  }

  v35 = 0;
LABEL_26:
  if ([v43 mad_isEligibleForComputeSync])
  {
    v36 = [(MADProtoSceneAsset *)self algorithmVersion]? v35 : 1;
    if ((v36 & 1) == 0)
    {
      v37 = [v43 mad_analysisStageAfterCompletingAnalysis:2];
      [v4 setLocalAnalysisStage:v37];
      v38 = [MADVSKEmbeddingResults resultsWithImageEmbedding:v32 imageEmbeddingVersion:[(MADProtoSceneAsset *)self imageEmbeddingVersion] videoEmbeddingAsset:0 videoEmbeddingVersion:0];
      v39 = [MADComputeSyncPayloadResults payloadDataForAsset:v43 targetStage:v37 embeddingResults:v38 fullAnalysisResults:0];
      if (v39)
      {
        [v4 setComputeSyncMediaAnalysisPayload:v39];
      }

      else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v42 = [v43 localIdentifier];
        v41 = [v43 mediaAnalysisProperties];
        v40 = [v41 localAnalysisStage];
        *buf = 138412802;
        v53 = v42;
        v54 = 1024;
        v55 = v37;
        v56 = 1024;
        v57 = v40;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
      }
    }
  }
}

- (void)setImageEmbeddingResultsFromVSKAsset:(id)a3 imageEmbeddingVersion:(signed __int16)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [VCPProtoEmbeddingResult resultsFromVSKAsset:?];
  [(MADProtoSceneAsset *)self setImageEmbeddingResults:v6];

  v7 = [(MADProtoSceneAsset *)self imageEmbeddingResults];
  if ([v7 count])
  {
    v8 = v4;
  }

  else
  {
    v8 = 0;
  }

  [(MADProtoSceneAsset *)self setImageEmbeddingVersion:v8];
}

- (id)imageEmbeddingVSKAssetWithLocalIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(MADProtoSceneAsset *)self imageEmbeddingVersion]>= 73)
  {
    v6 = [(MADProtoSceneAsset *)self imageEmbeddingResults];
    v5 = [VCPProtoEmbeddingResult imageEmbeddingVSKAssetFromResults:v6 localIdentifier:v4];
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412802;
      v9 = v4;
      v10 = 1024;
      v11 = [(MADProtoSceneAsset *)self imageEmbeddingVersion];
      v12 = 1024;
      v13 = 73;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[MADProtoSceneAsset->VSKAsset][%@] Image embedding version %d < forward compatible version %d", &v8, 0x18u);
    }

    v5 = 0;
  }

  return v5;
}

@end