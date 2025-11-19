@interface MADProtoAssetOCRAnalysis
+ (id)protoFromPhotosAsset:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)persistToPhotosAsset:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MADProtoAssetOCRAnalysis

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = MADProtoAssetOCRAnalysis;
  v4 = [(MADProtoAssetOCRAnalysis *)&v8 description];
  v5 = [(MADProtoAssetOCRAnalysis *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
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

- (void)writeTo:(id)a3
{
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setAssetCloudIdentifier:self->_assetCloudIdentifier];
  v4 = v5;
  *(v5 + 2) = *&self->_assetAdjustmentTimestamp;
  *(v5 + 6) = self->_algorithmVersion;
  *(v5 + 1) = *&self->_adjustmentVersion;
  if (self->_characterRecognitionData)
  {
    [v5 setCharacterRecognitionData:?];
    v4 = v5;
  }

  if (self->_machineReadableCodeData)
  {
    [v5 setMachineReadableCodeData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_assetCloudIdentifier copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  *(v5 + 16) = self->_assetAdjustmentTimestamp;
  *(v5 + 24) = self->_algorithmVersion;
  *(v5 + 8) = self->_adjustmentVersion;
  v8 = [(NSData *)self->_characterRecognitionData copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSData *)self->_machineReadableCodeData copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((assetCloudIdentifier = self->_assetCloudIdentifier, !(assetCloudIdentifier | v4[4])) || -[NSString isEqual:](assetCloudIdentifier, "isEqual:")) && self->_assetAdjustmentTimestamp == *(v4 + 2) && self->_algorithmVersion == *(v4 + 6) && self->_adjustmentVersion == *(v4 + 1) && ((characterRecognitionData = self->_characterRecognitionData, !(characterRecognitionData | v4[5])) || -[NSData isEqual:](characterRecognitionData, "isEqual:")))
  {
    machineReadableCodeData = self->_machineReadableCodeData;
    if (machineReadableCodeData | v4[6])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 4))
  {
    [(MADProtoAssetOCRAnalysis *)self setAssetCloudIdentifier:?];
    v4 = v5;
  }

  self->_assetAdjustmentTimestamp = *(v4 + 2);
  self->_algorithmVersion = *(v4 + 6);
  self->_adjustmentVersion = *(v4 + 1);
  if (*(v4 + 5))
  {
    [(MADProtoAssetOCRAnalysis *)self setCharacterRecognitionData:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(MADProtoAssetOCRAnalysis *)self setMachineReadableCodeData:?];
    v4 = v5;
  }
}

+ (id)protoFromPhotosAsset:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MADProtoAssetOCRAnalysis);
  v5 = [v3 photoLibrary];
  v6 = [v3 localIdentifier];
  v18 = 0;
  v7 = [v5 mad_cloudIdentifierForLocalIdentifier:v6 error:&v18];
  v8 = v18;
  [(MADProtoAssetOCRAnalysis *)v4 setAssetCloudIdentifier:v7];

  v9 = [(MADProtoAssetOCRAnalysis *)v4 assetCloudIdentifier];

  if (v9)
  {
    v10 = [v3 adjustmentTimestamp];
    [v10 timeIntervalSinceReferenceDate];
    [(MADProtoAssetOCRAnalysis *)v4 setAssetAdjustmentTimestamp:?];

    v11 = [v3 characterRecognitionProperties];
    -[MADProtoAssetOCRAnalysis setAlgorithmVersion:](v4, "setAlgorithmVersion:", [v11 algorithmVersion]);
    v12 = [v11 adjustmentVersion];
    [v12 timeIntervalSinceReferenceDate];
    [(MADProtoAssetOCRAnalysis *)v4 setAdjustmentVersion:?];

    v13 = [v11 characterRecognitionData];
    [(MADProtoAssetOCRAnalysis *)v4 setCharacterRecognitionData:v13];

    v14 = [v11 machineReadableCodeData];
    [(MADProtoAssetOCRAnalysis *)v4 setMachineReadableCodeData:v14];

    v15 = v4;
  }

  else
  {
    if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v16 = [v3 localIdentifier];
      *buf = 138412546;
      v20 = v16;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[%@] Failed to fetch asset's cloud identifier: %@", buf, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

- (void)persistToPhotosAsset:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E6978640] changeRequestForAsset:v4];
  v6 = [(MADProtoAssetOCRAnalysis *)self characterRecognitionData];
  v7 = [(MADProtoAssetOCRAnalysis *)self machineReadableCodeData];
  v8 = [(MADProtoAssetOCRAnalysis *)self algorithmVersion];
  v9 = MEMORY[0x1E695DF00];
  [(MADProtoAssetOCRAnalysis *)self adjustmentVersion];
  v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
  [v5 setCharacterRecognitionData:v6 machineReadableCodeData:v7 algorithmVersion:v8 adjustmentVersion:v10];

  if ([v4 mad_isEligibleForComputeSync])
  {
    v11 = [v4 mad_analysisStageAfterCompletingAnalysis:10];
    [v5 setLocalAnalysisStage:v11];
    v12 = [MADComputeSyncPayloadResults payloadDataForAsset:v4 targetStage:v11 embeddingResults:0 fullAnalysisResults:0];
    if (v12)
    {
      [v5 setComputeSyncMediaAnalysisPayload:v12];
    }

    else if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v4 localIdentifier];
      v14 = [v4 mediaAnalysisProperties];
      v15 = 138412802;
      v16 = v13;
      v17 = 1024;
      v18 = v11;
      v19 = 1024;
      v20 = [v14 localAnalysisStage];
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[%@] No compute sync payload generated for target stage %d (current stage %d)", &v15, 0x18u);
    }
  }
}

@end