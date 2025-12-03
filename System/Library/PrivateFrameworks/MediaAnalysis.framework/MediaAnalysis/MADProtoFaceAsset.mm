@interface MADProtoFaceAsset
+ (id)protoFromPhotosAsset:(id)asset;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDetectedFaces:(id)faces;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)persistToPhotosAsset:(id)asset;
- (void)setHasAlgorithmVersion:(BOOL)version;
- (void)setHasAssetAdjustmentTimestamp:(BOOL)timestamp;
- (void)writeTo:(id)to;
@end

@implementation MADProtoFaceAsset

+ (id)protoFromPhotosAsset:(id)asset
{
  v35 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = objc_alloc_init(MADProtoFaceAsset);
  localIdentifier = [assetCopy localIdentifier];
  [(MADProtoFaceAsset *)v4 setAssetLocalIdentifier:localIdentifier];

  photoLibrary = [assetCopy photoLibrary];
  localIdentifier2 = [assetCopy localIdentifier];
  v29 = 0;
  v8 = [photoLibrary mad_cloudIdentifierForLocalIdentifier:localIdentifier2 error:&v29];
  v9 = v29;
  [(MADProtoFaceAsset *)v4 setAssetCloudIdentifier:v8];

  assetCloudIdentifier = [(MADProtoFaceAsset *)v4 assetCloudIdentifier];

  if (assetCloudIdentifier)
  {
    adjustmentTimestamp = [assetCopy adjustmentTimestamp];
    [adjustmentTimestamp timeIntervalSinceReferenceDate];
    [(MADProtoFaceAsset *)v4 setAssetAdjustmentTimestamp:?];

    -[MADProtoFaceAsset setAlgorithmVersion:](v4, "setAlgorithmVersion:", [assetCopy faceAnalysisVersion]);
    faceAdjustmentVersion = [assetCopy faceAdjustmentVersion];
    [faceAdjustmentVersion timeIntervalSinceReferenceDate];
    [(MADProtoFaceAsset *)v4 setAdjustmentVersion:?];

    photoLibrary2 = [assetCopy photoLibrary];
    mad_allFacesFetchOptions = [photoLibrary2 mad_allFacesFetchOptions];

    v15 = *MEMORY[0x1E6978D70];
    v30[0] = *MEMORY[0x1E6978D80];
    v30[1] = v15;
    v30[2] = *MEMORY[0x1E6978D68];
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    [mad_allFacesFetchOptions setFetchPropertySets:v16];

    v17 = [MEMORY[0x1E69787D0] fetchFacesInAsset:assetCopy options:mad_allFacesFetchOptions];
    array = [MEMORY[0x1E695DF70] array];
    if ([v17 count])
    {
      v19 = 0;
      do
      {
        v20 = objc_autoreleasePoolPush();
        v21 = [v17 objectAtIndexedSubscript:v19];
        v22 = [MADProtoDetectedFace protoFromPhotosFace:v21];
        [array addObject:v22];

        objc_autoreleasePoolPop(v20);
        ++v19;
      }

      while (v19 < [v17 count]);
    }

    [(MADProtoFaceAsset *)v4 setValue:array forKey:@"detectedFaces"];
    if (MediaAnalysisLogLevel() > 6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      localIdentifier3 = [assetCopy localIdentifier];
      detectedFaces = [(MADProtoFaceAsset *)v4 detectedFaces];
      v25 = [detectedFaces count];
      *buf = 138412546;
      v32 = localIdentifier3;
      v33 = 1024;
      LODWORD(v34) = v25;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Backed up %d faces", buf, 0x12u);
    }

    v26 = v4;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier4 = [assetCopy localIdentifier];
      *buf = 138412546;
      v32 = localIdentifier4;
      v33 = 2112;
      v34 = v9;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to fetch asset cloud identifier: %@", buf, 0x16u);
    }

    v26 = 0;
  }

  return v26;
}

- (void)persistToPhotosAsset:(id)asset
{
  v93[3] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v81 = [MEMORY[0x1E6978640] changeRequestForAsset:assetCopy];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    localIdentifier = [assetCopy localIdentifier];
    detectedFaces = [(MADProtoFaceAsset *)self detectedFaces];
    *buf = 138412546;
    v90 = localIdentifier;
    v91 = 1024;
    *v92 = [detectedFaces count];
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Restoring %d faces", buf, 0x12u);
  }

  detectedFaces2 = [(MADProtoFaceAsset *)self detectedFaces];
  v8 = [detectedFaces2 count];

  if (!v8)
  {
LABEL_54:
    v61 = MEMORY[0x1E695DF00];
    [(MADProtoFaceAsset *)self adjustmentVersion];
    v62 = [v61 dateWithTimeIntervalSinceReferenceDate:?];
    v63 = v81;
    [v81 setFaceAdjustmentVersion:v62];

    [v81 setFaceAnalysisVersion:{-[MADProtoFaceAsset algorithmVersion](self, "algorithmVersion")}];
    if ([assetCopy mad_isEligibleForComputeSync])
    {
      faceAnalysisVersion = [v81 faceAnalysisVersion];
      photoLibrary = [assetCopy photoLibrary];
      mad_faceProcessingInternalVersion = [photoLibrary mad_faceProcessingInternalVersion];

      if (mad_faceProcessingInternalVersion == faceAnalysisVersion)
      {
        v67 = [assetCopy mad_analysisStageAfterCompletingAnalysis:3];
        [v81 setLocalAnalysisStage:v67];
        v68 = [MADComputeSyncPayloadResults payloadDataForAsset:assetCopy targetStage:v67 embeddingResults:0 fullAnalysisResults:0];
        if (v68)
        {
          [v81 setComputeSyncMediaAnalysisPayload:v68];
        }

        else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          localIdentifier2 = [assetCopy localIdentifier];
          mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
          localAnalysisStage = [mediaAnalysisProperties localAnalysisStage];
          *buf = 138412802;
          v90 = localIdentifier2;
          v91 = 1024;
          *v92 = v67;
          *&v92[4] = 1024;
          *&v92[6] = localAnalysisStage;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] No compute sync payload generated for target stage %d (current stage %d)", buf, 0x18u);
        }
      }
    }

    goto LABEL_67;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E9C10];
  v80 = *MEMORY[0x1E6978D80];
  v79 = *MEMORY[0x1E6978D70];
  v78 = *MEMORY[0x1E6978D68];
  v83 = assetCopy;
  selfCopy = self;
  while (1)
  {
    v11 = objc_autoreleasePoolPush();
    detectedFaces3 = [(MADProtoFaceAsset *)self detectedFaces];
    v13 = [detectedFaces3 objectAtIndexedSubscript:v9];
    vcpPhotosFace = [v13 vcpPhotosFace];

    photoLibrary2 = [assetCopy photoLibrary];
    mad_allFacesFetchOptions = [photoLibrary2 mad_allFacesFetchOptions];

    v93[0] = v80;
    v93[1] = v79;
    v93[2] = v78;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:3];
    [mad_allFacesFetchOptions setFetchPropertySets:v17];

    v18 = [MEMORY[0x1E69787D0] fetchFacesInAsset:assetCopy options:mad_allFacesFetchOptions];
    v84 = v18;
    if (![v18 count])
    {
      break;
    }

    v19 = [VCPPhotosFace facesFromPHFetchResult:v18 copyOption:1];
    [vcpPhotosFace size];
    v21 = v20;
    v22 = MediaAnalysisLogLevel();
    if (v21 == 0.0)
    {
      if (v22 >= 7 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        localIdentifier3 = [assetCopy localIdentifier];
        [vcpPhotosFace gist];
        v35 = v34 = v19;
        *buf = 138412546;
        v90 = localIdentifier3;
        v91 = 2112;
        *v92 = v35;
        _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_DEBUG, "[%@] Face not present in restored face (%@), finding matching torso", buf, 0x16u);

        v19 = v34;
      }

      v85 = 0;
      v26 = &v85;
      v27 = [MEMORY[0x1E69C07E0] sortedViableMergeCandidateTorsosFor:vcpPhotosFace from:v19 ignoreSourceAssetDimensions:0 matchScores:&v85];
    }

    else
    {
      if (v22 >= 7 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        localIdentifier4 = [assetCopy localIdentifier];
        [vcpPhotosFace gist];
        v25 = v24 = v19;
        *buf = 138412546;
        v90 = localIdentifier4;
        v91 = 2112;
        *v92 = v25;
        _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_DEBUG, "[%@] Face present in restored face (%@), finding matching face", buf, 0x16u);

        v19 = v24;
      }

      v86 = 0;
      v26 = &v86;
      v27 = [MEMORY[0x1E69C07E0] sortedViableMergeCandidateFacesFor:vcpPhotosFace from:v19 ignoreSourceAssetDimensions:0 matchScores:&v86];
    }

    v36 = v27;
    v82 = *v26;
    if ([v36 count])
    {
      v76 = v19;
      v29 = v11;
      if ([v36 count])
      {
        v37 = 0;
        while (1)
        {
          v38 = [v36 objectAtIndexedSubscript:v37];
          detectionType = [vcpPhotosFace detectionType];
          detectionType2 = [v38 detectionType];
          v41 = MediaAnalysisLogLevel();
          if (detectionType == detectionType2)
          {
            break;
          }

          if (v41 >= 6 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            localIdentifier5 = [v83 localIdentifier];
            gist = [vcpPhotosFace gist];
            gist2 = [v38 gist];
            *buf = 138412802;
            v90 = localIdentifier5;
            v91 = 2112;
            *v92 = gist;
            *&v92[8] = 2112;
            *&v92[10] = gist2;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, " [%@] Mismatching detection type for detected face (%@) and existing face (%@), skip merging", buf, 0x20u);

            v10 = MEMORY[0x1E69E9C10];
          }

          if (++v37 >= [v36 count])
          {
            v38 = 0;
            assetCopy = v83;
            goto LABEL_38;
          }
        }

        assetCopy = v83;
        if (v41 >= 6 && os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          localIdentifier6 = [v83 localIdentifier];
          v73 = [v36 count];
          gist3 = [v38 gist];
          v48 = [v82 objectAtIndexedSubscript:v37];
          *buf = 138413058;
          v90 = localIdentifier6;
          v91 = 1024;
          *v92 = v73;
          assetCopy = v83;
          *&v92[4] = 2112;
          *&v92[6] = gist3;
          *&v92[14] = 2112;
          *&v92[16] = v48;
          _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_INFO, "[%@] %d viable merge candidates, merging with the most matching one (%@, distanceScore: %@)", buf, 0x26u);
        }
      }

      else
      {
        v38 = 0;
      }

LABEL_38:
      v32 = [VCPFaceUtils phFaceFromVCPPhotosFace:v38 withFetchOptions:mad_allFacesFetchOptions];
      v46 = v32 == 0;
      v49 = MediaAnalysisLogLevel();
      if (v32)
      {
        if (v49 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          localIdentifier7 = [assetCopy localIdentifier];
          gist4 = [vcpPhotosFace gist];
          gist5 = [v38 gist];
          *buf = 138412802;
          v90 = localIdentifier7;
          v91 = 2112;
          *v92 = gist4;
          *&v92[8] = 2112;
          *&v92[10] = gist5;
          v52 = gist5;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[%@] Merging restored face (%@) with existing face (%@)", buf, 0x20u);

          assetCopy = v83;
        }

        creationRequestForFace = [MEMORY[0x1E69787E0] changeRequestForFace:v32];
      }

      else
      {
        if (v49 >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          localIdentifier8 = [assetCopy localIdentifier];
          gist6 = [v38 gist];
          *buf = 138412546;
          v90 = localIdentifier8;
          v91 = 2112;
          *v92 = gist6;
          _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to find matching PHFace (%@), creating new face for restored face", buf, 0x16u);

          assetCopy = v83;
        }

        creationRequestForFace = [MEMORY[0x1E69787E0] creationRequestForFace];
      }

      creationRequestForFace2 = creationRequestForFace;

      v19 = v76;
    }

    else
    {
      v29 = v11;
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        localIdentifier9 = [assetCopy localIdentifier];
        *buf = 138412290;
        v90 = localIdentifier9;
        _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_ERROR, "[%@] No viable merge candidate, creating new face for restored face", buf, 0xCu);
      }

      creationRequestForFace2 = [MEMORY[0x1E69787E0] creationRequestForFace];
      v32 = 0;
      v46 = 1;
    }

    if (!creationRequestForFace2)
    {
      goto LABEL_59;
    }

    [VCPFaceUtils assignPropertiesOfVCPPhotosFace:vcpPhotosFace toPHFaceChangeRequest:creationRequestForFace2];
    if (!v46)
    {
      v87 = v32;
      v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v87 count:1];
      [v81 addFaces:v58];

      [creationRequestForFace2 setVuObservationID:0];
      v10 = MEMORY[0x1E69E9C10];
      goto LABEL_53;
    }

    v10 = MEMORY[0x1E69E9C10];
LABEL_51:
    placeholderForCreatedFace = [creationRequestForFace2 placeholderForCreatedFace];
    v88 = placeholderForCreatedFace;
    v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v88 count:1];
    [v81 addFaces:v57];

LABEL_53:
    objc_autoreleasePoolPop(v29);
    ++v9;
    self = selfCopy;
    detectedFaces4 = [(MADProtoFaceAsset *)selfCopy detectedFaces];
    v60 = [detectedFaces4 count];

    if (v9 >= v60)
    {
      goto LABEL_54;
    }
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    localIdentifier10 = [assetCopy localIdentifier];
    *buf = 138412290;
    v90 = localIdentifier10;
    _os_log_impl(&dword_1C9B70000, v10, OS_LOG_TYPE_DEBUG, "[%@] No existing face, creating new face for restored face", buf, 0xCu);
  }

  v29 = v11;
  creationRequestForFace3 = [MEMORY[0x1E69787E0] creationRequestForFace];
  if (creationRequestForFace3)
  {
    creationRequestForFace2 = creationRequestForFace3;
    [VCPFaceUtils assignPropertiesOfVCPPhotosFace:vcpPhotosFace toPHFaceChangeRequest:creationRequestForFace3];
    v32 = 0;
    goto LABEL_51;
  }

  v32 = 0;
LABEL_59:
  if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    localIdentifier11 = [assetCopy localIdentifier];
    *buf = 138412290;
    v90 = localIdentifier11;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to create PHFaceChangeRequest; skipping", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v29);
  v63 = v81;
LABEL_67:
}

- (void)setHasAssetAdjustmentTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasAlgorithmVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addDetectedFaces:(id)faces
{
  facesCopy = faces;
  detectedFaces = self->_detectedFaces;
  v8 = facesCopy;
  if (!detectedFaces)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_detectedFaces;
    self->_detectedFaces = v6;

    facesCopy = v8;
    detectedFaces = self->_detectedFaces;
  }

  [(NSMutableArray *)detectedFaces addObject:facesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoFaceAsset;
  v4 = [(MADProtoFaceAsset *)&v8 description];
  dictionaryRepresentation = [(MADProtoFaceAsset *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  assetLocalIdentifier = self->_assetLocalIdentifier;
  if (assetLocalIdentifier)
  {
    [dictionary setObject:assetLocalIdentifier forKey:@"assetLocalIdentifier"];
  }

  assetCloudIdentifier = self->_assetCloudIdentifier;
  if (assetCloudIdentifier)
  {
    [v4 setObject:assetCloudIdentifier forKey:@"assetCloudIdentifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_assetAdjustmentTimestamp];
    [v4 setObject:v17 forKey:@"assetAdjustmentTimestamp"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithInt:self->_algorithmVersion];
  [v4 setObject:v18 forKey:@"algorithmVersion"];

  if (*&self->_has)
  {
LABEL_8:
    v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_adjustmentVersion];
    [v4 setObject:v8 forKey:@"adjustmentVersion"];
  }

LABEL_9:
  if ([(NSMutableArray *)self->_detectedFaces count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_detectedFaces, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = self->_detectedFaces;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"detectedFaces"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_assetLocalIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_assetCloudIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_8:
    PBDataWriterWriteDoubleField();
  }

LABEL_9:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_detectedFaces;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_assetLocalIdentifier)
  {
    [toCopy setAssetLocalIdentifier:?];
    toCopy = v10;
  }

  if (self->_assetCloudIdentifier)
  {
    [v10 setAssetCloudIdentifier:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_17:
    *(toCopy + 6) = self->_algorithmVersion;
    *(toCopy + 56) |= 4u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(toCopy + 2) = *&self->_assetAdjustmentTimestamp;
  *(toCopy + 56) |= 2u;
  has = self->_has;
  if ((has & 4) != 0)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (has)
  {
LABEL_8:
    *(toCopy + 1) = *&self->_adjustmentVersion;
    *(toCopy + 56) |= 1u;
  }

LABEL_9:
  if ([(MADProtoFaceAsset *)self detectedFacesCount])
  {
    [v10 clearDetectedFaces];
    detectedFacesCount = [(MADProtoFaceAsset *)self detectedFacesCount];
    if (detectedFacesCount)
    {
      v7 = detectedFacesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(MADProtoFaceAsset *)self detectedFacesAtIndex:i];
        [v10 addDetectedFaces:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_assetLocalIdentifier copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSString *)self->_assetCloudIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_assetAdjustmentTimestamp;
    *(v5 + 56) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 24) = self->_algorithmVersion;
  *(v5 + 56) |= 4u;
  if (*&self->_has)
  {
LABEL_4:
    *(v5 + 8) = self->_adjustmentVersion;
    *(v5 + 56) |= 1u;
  }

LABEL_5:
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_detectedFaces;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{zone, v18}];
        [v5 addDetectedFaces:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  assetLocalIdentifier = self->_assetLocalIdentifier;
  if (assetLocalIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)assetLocalIdentifier isEqual:?])
    {
      goto LABEL_23;
    }
  }

  assetCloudIdentifier = self->_assetCloudIdentifier;
  if (assetCloudIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)assetCloudIdentifier isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_assetAdjustmentTimestamp != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
LABEL_23:
    v8 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_algorithmVersion != *(equalCopy + 6))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_adjustmentVersion != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_23;
  }

  detectedFaces = self->_detectedFaces;
  if (detectedFaces | *(equalCopy + 6))
  {
    v8 = [(NSMutableArray *)detectedFaces isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_24:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_assetLocalIdentifier hash];
  v4 = [(NSString *)self->_assetCloudIdentifier hash];
  if ((*&self->_has & 2) != 0)
  {
    assetAdjustmentTimestamp = self->_assetAdjustmentTimestamp;
    if (assetAdjustmentTimestamp < 0.0)
    {
      assetAdjustmentTimestamp = -assetAdjustmentTimestamp;
    }

    *v5.i64 = floor(assetAdjustmentTimestamp + 0.5);
    v9 = (assetAdjustmentTimestamp - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_algorithmVersion;
    if (*&self->_has)
    {
      goto LABEL_11;
    }

LABEL_16:
    v15 = 0;
    return v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ [(NSMutableArray *)self->_detectedFaces hash];
  }

  v11 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  adjustmentVersion = self->_adjustmentVersion;
  if (adjustmentVersion < 0.0)
  {
    adjustmentVersion = -adjustmentVersion;
  }

  *v5.i64 = floor(adjustmentVersion + 0.5);
  v13 = (adjustmentVersion - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v15 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
  if (v13 >= 0.0)
  {
    if (v13 > 0.0)
    {
      v15 += v13;
    }
  }

  else
  {
    v15 -= fabs(v13);
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ [(NSMutableArray *)self->_detectedFaces hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(MADProtoFaceAsset *)self setAssetLocalIdentifier:?];
  }

  if (*(fromCopy + 4))
  {
    [(MADProtoFaceAsset *)self setAssetCloudIdentifier:?];
  }

  v5 = *(fromCopy + 56);
  if ((v5 & 2) != 0)
  {
    self->_assetAdjustmentTimestamp = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 56);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*(fromCopy + 56) & 4) == 0)
  {
    goto LABEL_7;
  }

  self->_algorithmVersion = *(fromCopy + 6);
  *&self->_has |= 4u;
  if (*(fromCopy + 56))
  {
LABEL_8:
    self->_adjustmentVersion = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

LABEL_9:
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(fromCopy + 6);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(MADProtoFaceAsset *)self addDetectedFaces:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end