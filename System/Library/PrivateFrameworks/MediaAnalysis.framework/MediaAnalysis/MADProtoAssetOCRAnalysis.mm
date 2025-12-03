@interface MADProtoAssetOCRAnalysis
+ (id)protoFromPhotosAsset:(id)asset;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)persistToPhotosAsset:(id)asset;
- (void)writeTo:(id)to;
@end

@implementation MADProtoAssetOCRAnalysis

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoAssetOCRAnalysis;
  v4 = [(MADProtoAssetOCRAnalysis *)&v8 description];
  dictionaryRepresentation = [(MADProtoAssetOCRAnalysis *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  assetCloudIdentifier = self->_assetCloudIdentifier;
  if (assetCloudIdentifier)
  {
    [dictionary setObject:assetCloudIdentifier forKey:@"assetCloudIdentifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_assetAdjustmentTimestamp];
  [v4 setObject:v6 forKey:@"assetAdjustmentTimestamp"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_algorithmVersion];
  [v4 setObject:v7 forKey:@"algorithmVersion"];

  v8 = [MEMORY[0x1E696AD98] numberWithDouble:self->_adjustmentVersion];
  [v4 setObject:v8 forKey:@"adjustmentVersion"];

  characterRecognitionData = self->_characterRecognitionData;
  if (characterRecognitionData)
  {
    [v4 setObject:characterRecognitionData forKey:@"characterRecognitionData"];
  }

  machineReadableCodeData = self->_machineReadableCodeData;
  if (machineReadableCodeData)
  {
    [v4 setObject:machineReadableCodeData forKey:@"machineReadableCodeData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteStringField();
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteDoubleField();
  if (self->_characterRecognitionData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_machineReadableCodeData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setAssetCloudIdentifier:self->_assetCloudIdentifier];
  v4 = toCopy;
  *(toCopy + 2) = *&self->_assetAdjustmentTimestamp;
  *(toCopy + 6) = self->_algorithmVersion;
  *(toCopy + 1) = *&self->_adjustmentVersion;
  if (self->_characterRecognitionData)
  {
    [toCopy setCharacterRecognitionData:?];
    v4 = toCopy;
  }

  if (self->_machineReadableCodeData)
  {
    [toCopy setMachineReadableCodeData:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_assetCloudIdentifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  *(v5 + 16) = self->_assetAdjustmentTimestamp;
  *(v5 + 24) = self->_algorithmVersion;
  *(v5 + 8) = self->_adjustmentVersion;
  v8 = [(NSData *)self->_characterRecognitionData copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSData *)self->_machineReadableCodeData copyWithZone:zone];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((assetCloudIdentifier = self->_assetCloudIdentifier, !(assetCloudIdentifier | equalCopy[4])) || -[NSString isEqual:](assetCloudIdentifier, "isEqual:")) && self->_assetAdjustmentTimestamp == *(equalCopy + 2) && self->_algorithmVersion == *(equalCopy + 6) && self->_adjustmentVersion == *(equalCopy + 1) && ((characterRecognitionData = self->_characterRecognitionData, !(characterRecognitionData | equalCopy[5])) || -[NSData isEqual:](characterRecognitionData, "isEqual:")))
  {
    machineReadableCodeData = self->_machineReadableCodeData;
    if (machineReadableCodeData | equalCopy[6])
    {
      v8 = [(NSData *)machineReadableCodeData isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_assetCloudIdentifier hash];
  assetAdjustmentTimestamp = self->_assetAdjustmentTimestamp;
  if (assetAdjustmentTimestamp < 0.0)
  {
    assetAdjustmentTimestamp = -assetAdjustmentTimestamp;
  }

  *v5.i64 = floor(assetAdjustmentTimestamp + 0.5);
  v8 = (assetAdjustmentTimestamp - *v5.i64) * 1.84467441e19;
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = vnegq_f64(v9);
  v11 = vbslq_s8(v10, v6, v5);
  v12 = 2654435761u * *v11.i64;
  v13 = v12 + v8;
  if (v8 <= 0.0)
  {
    v13 = 2654435761u * *v11.i64;
  }

  v14 = v12 - fabs(v8);
  if (v8 >= 0.0)
  {
    v14 = v13;
  }

  adjustmentVersion = self->_adjustmentVersion;
  if (adjustmentVersion < 0.0)
  {
    adjustmentVersion = -adjustmentVersion;
  }

  *v4.i64 = floor(adjustmentVersion + 0.5);
  v16 = (adjustmentVersion - *v4.i64) * 1.84467441e19;
  *v11.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v17 = 2654435761u * *vbslq_s8(v10, v11, v4).i64;
  v18 = v17 + v16;
  v19 = fabs(v16);
  if (v16 <= 0.0)
  {
    v18 = v17;
  }

  v20 = v17 - v19;
  if (v16 >= 0.0)
  {
    v20 = v18;
  }

  v21 = v14 ^ v3 ^ (2654435761 * self->_algorithmVersion) ^ v20;
  v22 = [(NSData *)self->_characterRecognitionData hash];
  return v21 ^ v22 ^ [(NSData *)self->_machineReadableCodeData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 4))
  {
    [(MADProtoAssetOCRAnalysis *)self setAssetCloudIdentifier:?];
    fromCopy = v5;
  }

  self->_assetAdjustmentTimestamp = *(fromCopy + 2);
  self->_algorithmVersion = *(fromCopy + 6);
  self->_adjustmentVersion = *(fromCopy + 1);
  if (*(fromCopy + 5))
  {
    [(MADProtoAssetOCRAnalysis *)self setCharacterRecognitionData:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(MADProtoAssetOCRAnalysis *)self setMachineReadableCodeData:?];
    fromCopy = v5;
  }
}

+ (id)protoFromPhotosAsset:(id)asset
{
  v23 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = objc_alloc_init(MADProtoAssetOCRAnalysis);
  photoLibrary = [assetCopy photoLibrary];
  localIdentifier = [assetCopy localIdentifier];
  v18 = 0;
  v7 = [photoLibrary mad_cloudIdentifierForLocalIdentifier:localIdentifier error:&v18];
  v8 = v18;
  [(MADProtoAssetOCRAnalysis *)v4 setAssetCloudIdentifier:v7];

  assetCloudIdentifier = [(MADProtoAssetOCRAnalysis *)v4 assetCloudIdentifier];

  if (assetCloudIdentifier)
  {
    adjustmentTimestamp = [assetCopy adjustmentTimestamp];
    [adjustmentTimestamp timeIntervalSinceReferenceDate];
    [(MADProtoAssetOCRAnalysis *)v4 setAssetAdjustmentTimestamp:?];

    characterRecognitionProperties = [assetCopy characterRecognitionProperties];
    -[MADProtoAssetOCRAnalysis setAlgorithmVersion:](v4, "setAlgorithmVersion:", [characterRecognitionProperties algorithmVersion]);
    adjustmentVersion = [characterRecognitionProperties adjustmentVersion];
    [adjustmentVersion timeIntervalSinceReferenceDate];
    [(MADProtoAssetOCRAnalysis *)v4 setAdjustmentVersion:?];

    characterRecognitionData = [characterRecognitionProperties characterRecognitionData];
    [(MADProtoAssetOCRAnalysis *)v4 setCharacterRecognitionData:characterRecognitionData];

    machineReadableCodeData = [characterRecognitionProperties machineReadableCodeData];
    [(MADProtoAssetOCRAnalysis *)v4 setMachineReadableCodeData:machineReadableCodeData];

    v15 = v4;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      localIdentifier2 = [assetCopy localIdentifier];
      *buf = 138412546;
      v20 = localIdentifier2;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to fetch asset's cloud identifier: %@", buf, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)persistToPhotosAsset:(id)asset
{
  v21 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v5 = [MEMORY[0x1E6978640] changeRequestForAsset:assetCopy];
  characterRecognitionData = [(MADProtoAssetOCRAnalysis *)self characterRecognitionData];
  machineReadableCodeData = [(MADProtoAssetOCRAnalysis *)self machineReadableCodeData];
  algorithmVersion = [(MADProtoAssetOCRAnalysis *)self algorithmVersion];
  v9 = MEMORY[0x1E695DF00];
  [(MADProtoAssetOCRAnalysis *)self adjustmentVersion];
  v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
  [v5 setCharacterRecognitionData:characterRecognitionData machineReadableCodeData:machineReadableCodeData algorithmVersion:algorithmVersion adjustmentVersion:v10];

  if ([assetCopy mad_isEligibleForComputeSync])
  {
    v11 = [assetCopy mad_analysisStageAfterCompletingAnalysis:10];
    [v5 setLocalAnalysisStage:v11];
    v12 = [MADComputeSyncPayloadResults payloadDataForAsset:assetCopy targetStage:v11 embeddingResults:0 fullAnalysisResults:0];
    if (v12)
    {
      [v5 setComputeSyncMediaAnalysisPayload:v12];
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      localIdentifier = [assetCopy localIdentifier];
      mediaAnalysisProperties = [assetCopy mediaAnalysisProperties];
      v15 = 138412802;
      v16 = localIdentifier;
      v17 = 1024;
      v18 = v11;
      v19 = 1024;
      localAnalysisStage = [mediaAnalysisProperties localAnalysisStage];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] No compute sync payload generated for target stage %d (current stage %d)", &v15, 0x18u);
    }
  }
}

@end