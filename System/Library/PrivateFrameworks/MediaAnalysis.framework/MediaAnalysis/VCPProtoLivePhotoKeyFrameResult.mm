@interface VCPProtoLivePhotoKeyFrameResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)addFaceResults:(id)results;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasGlobalQualityScore:(BOOL)score;
- (void)setHasThumbnailScore:(BOOL)score;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoLivePhotoKeyFrameResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  v32 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v4 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v5 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
    if (v5)
    {
      v6 = objc_alloc_init(VCPProtoLivePhotoKeyFrameResult);
      v7 = [v5 objectForKeyedSubscript:@"timestamp"];
      v8 = v7;
      if (v7)
      {
        [(VCPProtoLivePhotoKeyFrameResult *)v7 doubleValue];
        [(VCPProtoLivePhotoKeyFrameResult *)v6 setTimestamp:?];
        v9 = [v5 objectForKeyedSubscript:@"frameQualityScore"];

        if (v9 && ([v9 floatValue], -[VCPProtoLivePhotoKeyFrameResult setQualityScoreForLivePhoto:](v6, "setQualityScoreForLivePhoto:"), objc_msgSend(v5, "objectForKeyedSubscript:", @"visualPleasingScore"), v10 = objc_claimAutoreleasedReturnValue(), v9, v10) && (objc_msgSend(v10, "floatValue"), -[VCPProtoLivePhotoKeyFrameResult setVisualPleasingScore:](v6, "setVisualPleasingScore:"), objc_msgSend(v5, "objectForKeyedSubscript:", @"faceQualityScore"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11) && (objc_msgSend(v11, "floatValue"), -[VCPProtoLivePhotoKeyFrameResult setOverallFaceQualityScore:](v6, "setOverallFaceQualityScore:"), objc_msgSend(v5, "objectForKeyedSubscript:", @"exposureScore"), v12 = objc_claimAutoreleasedReturnValue(), v11, v12) && (objc_msgSend(v12, "floatValue"), -[VCPProtoLivePhotoKeyFrameResult setExposureScore:](v6, "setExposureScore:"), objc_msgSend(v5, "objectForKeyedSubscript:", @"penaltyScore"), v13 = objc_claimAutoreleasedReturnValue(), v12, v13) && (objc_msgSend(v13, "floatValue"), -[VCPProtoLivePhotoKeyFrameResult setPenaltyScore:](v6, "setPenaltyScore:"), objc_msgSend(v5, "objectForKeyedSubscript:", @"textureScore"), v14 = objc_claimAutoreleasedReturnValue(), v13, v14) && (objc_msgSend(v14, "floatValue"), -[VCPProtoLivePhotoKeyFrameResult setTextureScore:](v6, "setTextureScore:"), objc_msgSend(v5, "objectForKeyedSubscript:", @"sharpnessScore"), v15 = objc_claimAutoreleasedReturnValue(), v14, v15) && (objc_msgSend(v15, "floatValue"), -[VCPProtoLivePhotoKeyFrameResult setSharpness:](v6, "setSharpness:"), objc_msgSend(v5, "objectForKeyedSubscript:", @"expressionChangeScore"), v16 = objc_claimAutoreleasedReturnValue(), v15, v16))
        {
          [v16 floatValue];
          [(VCPProtoLivePhotoKeyFrameResult *)v6 setExpressionChangeScore:?];
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v17 = [v5 objectForKeyedSubscript:{@"FaceResults", 0}];
          v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v18)
          {
            v19 = *v28;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v28 != v19)
                {
                  objc_enumerationMutation(v17);
                }

                v21 = [VCPProtoLivePhotoKeyFrameFaceResult resultFromLegacyDictionary:*(*(&v27 + 1) + 8 * i)];
                [(VCPProtoLivePhotoKeyFrameResult *)v6 addFaceResults:v21];
              }

              v18 = [v17 countByEnumeratingWithState:&v27 objects:v31 count:16];
            }

            while (v18);
          }

          v22 = [v5 objectForKeyedSubscript:@"globalQualityScore"];

          if (v22)
          {
            [v22 floatValue];
            [(VCPProtoLivePhotoKeyFrameResult *)v6 setGlobalQualityScore:?];
          }

          v23 = [v5 objectForKeyedSubscript:@"contentScore"];

          v24 = v23;
          if (v23)
          {
            [v23 floatValue];
            [(VCPProtoLivePhotoKeyFrameResult *)v6 setContentScore:?];
          }

          v25 = [v5 objectForKeyedSubscript:@"thumbnailScore"];

          if (v25)
          {
            [v25 floatValue];
            [(VCPProtoLivePhotoKeyFrameResult *)v6 setThumbnailScore:?];
          }

          v8 = v6;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)exportToLegacyDictionary
{
  v40[10] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  for (i = 0; [(VCPProtoLivePhotoKeyFrameResult *)self faceResultsCount]> i; ++i)
  {
    faceResults = [(VCPProtoLivePhotoKeyFrameResult *)self faceResults];
    v6 = [faceResults objectAtIndex:i];

    exportToLegacyDictionary = [v6 exportToLegacyDictionary];
    [array addObject:exportToLegacyDictionary];
  }

  v8 = MEMORY[0x1E695DF90];
  v39[0] = @"timestamp";
  v9 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameResult *)self timestamp];
  v36 = [v9 numberWithDouble:?];
  v40[0] = v36;
  v39[1] = @"frameQualityScore";
  v10 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameResult *)self qualityScoreForLivePhoto];
  v35 = [v10 numberWithFloat:?];
  v40[1] = v35;
  v39[2] = @"visualPleasingScore";
  v11 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameResult *)self visualPleasingScore];
  v34 = [v11 numberWithFloat:?];
  v40[2] = v34;
  v39[3] = @"faceQualityScore";
  v12 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameResult *)self overallFaceQualityScore];
  v33 = [v12 numberWithFloat:?];
  v40[3] = v33;
  v39[4] = @"exposureScore";
  v13 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameResult *)self exposureScore];
  v14 = [v13 numberWithFloat:?];
  v40[4] = v14;
  v39[5] = @"penaltyScore";
  v15 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameResult *)self penaltyScore];
  v16 = [v15 numberWithFloat:?];
  v40[5] = v16;
  v39[6] = @"textureScore";
  v17 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameResult *)self textureScore];
  v18 = [v17 numberWithFloat:?];
  v40[6] = v18;
  v39[7] = @"sharpnessScore";
  v19 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameResult *)self sharpness];
  v20 = [v19 numberWithFloat:?];
  v40[7] = v20;
  v39[8] = @"expressionChangeScore";
  v21 = MEMORY[0x1E696AD98];
  [(VCPProtoLivePhotoKeyFrameResult *)self expressionChangeScore];
  v22 = [v21 numberWithFloat:?];
  v39[9] = @"FaceResults";
  v40[8] = v22;
  v40[9] = array;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:10];
  v24 = [v8 dictionaryWithDictionary:v23];

  if ([(VCPProtoLivePhotoKeyFrameResult *)self hasGlobalQualityScore])
  {
    v25 = MEMORY[0x1E696AD98];
    [(VCPProtoLivePhotoKeyFrameResult *)self globalQualityScore];
    v26 = [v25 numberWithFloat:?];
    [v24 setObject:v26 forKeyedSubscript:@"globalQualityScore"];
  }

  if ([(VCPProtoLivePhotoKeyFrameResult *)self hasContentScore])
  {
    v27 = MEMORY[0x1E696AD98];
    [(VCPProtoLivePhotoKeyFrameResult *)self contentScore];
    v28 = [v27 numberWithFloat:?];
    [v24 setObject:v28 forKeyedSubscript:@"contentScore"];
  }

  if ([(VCPProtoLivePhotoKeyFrameResult *)self hasThumbnailScore])
  {
    v29 = MEMORY[0x1E696AD98];
    [(VCPProtoLivePhotoKeyFrameResult *)self thumbnailScore];
    v30 = [v29 numberWithFloat:?];
    [v24 setObject:v30 forKeyedSubscript:@"thumbnailScore"];
  }

  v37 = @"attributes";
  v38 = v24;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];

  return v31;
}

- (void)addFaceResults:(id)results
{
  resultsCopy = results;
  faceResults = self->_faceResults;
  v8 = resultsCopy;
  if (!faceResults)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_faceResults;
    self->_faceResults = v6;

    resultsCopy = v8;
    faceResults = self->_faceResults;
  }

  [(NSMutableArray *)faceResults addObject:resultsCopy];
}

- (void)setHasGlobalQualityScore:(BOOL)score
{
  if (score)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasThumbnailScore:(BOOL)score
{
  if (score)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoLivePhotoKeyFrameResult;
  v4 = [(VCPProtoLivePhotoKeyFrameResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoLivePhotoKeyFrameResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v39 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestamp];
  [dictionary setObject:v4 forKey:@"timestamp"];

  *&v5 = self->_qualityScoreForLivePhoto;
  v6 = [MEMORY[0x1E696AD98] numberWithFloat:v5];
  [dictionary setObject:v6 forKey:@"qualityScoreForLivePhoto"];

  *&v7 = self->_visualPleasingScore;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  [dictionary setObject:v8 forKey:@"visualPleasingScore"];

  *&v9 = self->_overallFaceQualityScore;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [dictionary setObject:v10 forKey:@"overallFaceQualityScore"];

  *&v11 = self->_exposureScore;
  v12 = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  [dictionary setObject:v12 forKey:@"exposureScore"];

  *&v13 = self->_penaltyScore;
  v14 = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  [dictionary setObject:v14 forKey:@"penaltyScore"];

  *&v15 = self->_textureScore;
  v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  [dictionary setObject:v16 forKey:@"textureScore"];

  *&v17 = self->_sharpness;
  v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
  [dictionary setObject:v18 forKey:@"sharpness"];

  if ([(NSMutableArray *)self->_faceResults count])
  {
    v20 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_faceResults, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = self->_faceResults;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v35;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v21);
          }

          dictionaryRepresentation = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          [v20 addObject:dictionaryRepresentation];
        }

        v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v23);
    }

    [dictionary setObject:v20 forKey:@"faceResults"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *&v19 = self->_globalQualityScore;
    v28 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
    [dictionary setObject:v28 forKey:@"globalQualityScore"];

    has = self->_has;
  }

  if (has)
  {
    *&v19 = self->_contentScore;
    v29 = [MEMORY[0x1E696AD98] numberWithFloat:v19];
    [dictionary setObject:v29 forKey:@"contentScore"];
  }

  *&v19 = self->_expressionChangeScore;
  v30 = [MEMORY[0x1E696AD98] numberWithFloat:{v19, v34}];
  [dictionary setObject:v30 forKey:@"expressionChangeScore"];

  if ((*&self->_has & 4) != 0)
  {
    *&v31 = self->_thumbnailScore;
    v32 = [MEMORY[0x1E696AD98] numberWithFloat:v31];
    [dictionary setObject:v32 forKey:@"thumbnailScore"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteDoubleField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_faceResults;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteFloatField();
  }

  PBDataWriterWriteFloatField();
  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteFloatField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[1] = *&self->_timestamp;
  *(toCopy + 13) = LODWORD(self->_qualityScoreForLivePhoto);
  *(toCopy + 17) = LODWORD(self->_visualPleasingScore);
  *(toCopy + 11) = LODWORD(self->_overallFaceQualityScore);
  *(toCopy + 5) = LODWORD(self->_exposureScore);
  *(toCopy + 12) = LODWORD(self->_penaltyScore);
  *(toCopy + 15) = LODWORD(self->_textureScore);
  v10 = toCopy;
  *(toCopy + 14) = LODWORD(self->_sharpness);
  if ([(VCPProtoLivePhotoKeyFrameResult *)self faceResultsCount])
  {
    [v10 clearFaceResults];
    faceResultsCount = [(VCPProtoLivePhotoKeyFrameResult *)self faceResultsCount];
    if (faceResultsCount)
    {
      v6 = faceResultsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(VCPProtoLivePhotoKeyFrameResult *)self faceResultsAtIndex:i];
        [v10 addFaceResults:v8];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 10) = LODWORD(self->_globalQualityScore);
    *(v10 + 72) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 4) = LODWORD(self->_contentScore);
    *(v10 + 72) |= 1u;
  }

  *(v10 + 6) = LODWORD(self->_expressionChangeScore);
  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 16) = LODWORD(self->_thumbnailScore);
    *(v10 + 72) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_timestamp;
  *(v5 + 52) = self->_qualityScoreForLivePhoto;
  *(v5 + 68) = self->_visualPleasingScore;
  *(v5 + 44) = self->_overallFaceQualityScore;
  *(v5 + 20) = self->_exposureScore;
  *(v5 + 48) = self->_penaltyScore;
  *(v5 + 60) = self->_textureScore;
  *(v5 + 56) = self->_sharpness;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_faceResults;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) copyWithZone:{zone, v14}];
        [v5 addFaceResults:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 40) = self->_globalQualityScore;
    *(v5 + 72) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 16) = self->_contentScore;
    *(v5 + 72) |= 1u;
  }

  *(v5 + 24) = self->_expressionChangeScore;
  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 64) = self->_thumbnailScore;
    *(v5 + 72) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  if (self->_timestamp != *(equalCopy + 1))
  {
    goto LABEL_27;
  }

  if (self->_qualityScoreForLivePhoto != *(equalCopy + 13))
  {
    goto LABEL_27;
  }

  if (self->_visualPleasingScore != *(equalCopy + 17))
  {
    goto LABEL_27;
  }

  if (self->_overallFaceQualityScore != *(equalCopy + 11))
  {
    goto LABEL_27;
  }

  if (self->_exposureScore != *(equalCopy + 5))
  {
    goto LABEL_27;
  }

  if (self->_penaltyScore != *(equalCopy + 12))
  {
    goto LABEL_27;
  }

  if (self->_textureScore != *(equalCopy + 15))
  {
    goto LABEL_27;
  }

  if (self->_sharpness != *(equalCopy + 14))
  {
    goto LABEL_27;
  }

  faceResults = self->_faceResults;
  if (faceResults | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)faceResults isEqual:?])
    {
      goto LABEL_27;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 72) & 2) == 0 || self->_globalQualityScore != *(equalCopy + 10))
    {
      goto LABEL_27;
    }
  }

  else if ((*(equalCopy + 72) & 2) != 0)
  {
    goto LABEL_27;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 72) & 1) == 0 || self->_contentScore != *(equalCopy + 4))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_27;
  }

  if (self->_expressionChangeScore != *(equalCopy + 6))
  {
LABEL_27:
    v6 = 0;
    goto LABEL_28;
  }

  v6 = (*(equalCopy + 72) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 72) & 4) == 0 || self->_thumbnailScore != *(equalCopy + 16))
    {
      goto LABEL_27;
    }

    v6 = 1;
  }

LABEL_28:

  return v6;
}

- (unint64_t)hash
{
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v2.i64 = floor(timestamp + 0.5);
  v6 = (timestamp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  v8 = vbslq_s8(vnegq_f64(v7), v3, v2);
  v9 = 2654435761u * *v8.i64;
  v10 = v9 + v6;
  if (v6 <= 0.0)
  {
    v10 = 2654435761u * *v8.i64;
  }

  *v8.i64 = fabs(v6);
  v11 = v9 - *v8.i64;
  v12 = v6 < 0.0;
  qualityScoreForLivePhoto = self->_qualityScoreForLivePhoto;
  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (qualityScoreForLivePhoto < 0.0)
  {
    qualityScoreForLivePhoto = -qualityScoreForLivePhoto;
  }

  *v8.i32 = floorf(qualityScoreForLivePhoto + 0.5);
  v15 = (qualityScoreForLivePhoto - *v8.i32) * 1.8447e19;
  *v3.i32 = *v8.i32 - (truncf(*v8.i32 * 5.421e-20) * 1.8447e19);
  v16.i64[0] = 0x8000000080000000;
  v16.i64[1] = 0x8000000080000000;
  v17 = vbslq_s8(v16, v3, v8);
  v18 = 2654435761u * *v17.i32;
  v19 = v18 + v15;
  if (v15 <= 0.0)
  {
    v19 = 2654435761u * *v17.i32;
  }

  v20 = v18 - fabsf(v15);
  if (v15 < 0.0)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  visualPleasingScore = self->_visualPleasingScore;
  if (visualPleasingScore < 0.0)
  {
    visualPleasingScore = -visualPleasingScore;
  }

  *v17.i32 = floorf(visualPleasingScore + 0.5);
  v23 = (visualPleasingScore - *v17.i32) * 1.8447e19;
  *v3.i32 = *v17.i32 - (truncf(*v17.i32 * 5.421e-20) * 1.8447e19);
  v24 = vbslq_s8(v16, v3, v17);
  v25 = 2654435761u * *v24.i32;
  v26 = v25 + v23;
  if (v23 <= 0.0)
  {
    v26 = 2654435761u * *v24.i32;
  }

  v27 = v25 - fabsf(v23);
  if (v23 < 0.0)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  overallFaceQualityScore = self->_overallFaceQualityScore;
  if (overallFaceQualityScore < 0.0)
  {
    overallFaceQualityScore = -overallFaceQualityScore;
  }

  *v24.i32 = floorf(overallFaceQualityScore + 0.5);
  v30 = (overallFaceQualityScore - *v24.i32) * 1.8447e19;
  *v3.i32 = *v24.i32 - (truncf(*v24.i32 * 5.421e-20) * 1.8447e19);
  v31 = vbslq_s8(v16, v3, v24);
  v32 = 2654435761u * *v31.i32;
  v33 = v32 + v30;
  if (v30 <= 0.0)
  {
    v33 = 2654435761u * *v31.i32;
  }

  v34 = v32 - fabsf(v30);
  if (v30 < 0.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = v33;
  }

  exposureScore = self->_exposureScore;
  if (exposureScore < 0.0)
  {
    exposureScore = -exposureScore;
  }

  *v31.i32 = floorf(exposureScore + 0.5);
  v37 = (exposureScore - *v31.i32) * 1.8447e19;
  *v3.i32 = *v31.i32 - (truncf(*v31.i32 * 5.421e-20) * 1.8447e19);
  v38 = vbslq_s8(v16, v3, v31);
  v39 = 2654435761u * *v38.i32;
  v40 = v39 + v37;
  if (v37 <= 0.0)
  {
    v40 = 2654435761u * *v38.i32;
  }

  v41 = v39 - fabsf(v37);
  if (v37 < 0.0)
  {
    v42 = v41;
  }

  else
  {
    v42 = v40;
  }

  penaltyScore = self->_penaltyScore;
  if (penaltyScore < 0.0)
  {
    penaltyScore = -penaltyScore;
  }

  *v38.i32 = floorf(penaltyScore + 0.5);
  v44 = (penaltyScore - *v38.i32) * 1.8447e19;
  *v3.i32 = *v38.i32 - (truncf(*v38.i32 * 5.421e-20) * 1.8447e19);
  v45 = vbslq_s8(v16, v3, v38);
  v46 = 2654435761u * *v45.i32;
  v47 = v46 + v44;
  if (v44 <= 0.0)
  {
    v47 = 2654435761u * *v45.i32;
  }

  v48 = v46 - fabsf(v44);
  if (v44 < 0.0)
  {
    v49 = v48;
  }

  else
  {
    v49 = v47;
  }

  textureScore = self->_textureScore;
  if (textureScore < 0.0)
  {
    textureScore = -textureScore;
  }

  *v45.i32 = floorf(textureScore + 0.5);
  v51 = (textureScore - *v45.i32) * 1.8447e19;
  *v3.i32 = *v45.i32 - (truncf(*v45.i32 * 5.421e-20) * 1.8447e19);
  v52 = vbslq_s8(v16, v3, v45);
  v53 = 2654435761u * *v52.i32;
  v54 = v53 + v51;
  if (v51 <= 0.0)
  {
    v54 = 2654435761u * *v52.i32;
  }

  v55 = v53 - fabsf(v51);
  if (v51 < 0.0)
  {
    v56 = v55;
  }

  else
  {
    v56 = v54;
  }

  sharpness = self->_sharpness;
  if (sharpness < 0.0)
  {
    sharpness = -sharpness;
  }

  *v52.i32 = floorf(sharpness + 0.5);
  v58 = (sharpness - *v52.i32) * 1.8447e19;
  *v3.i32 = *v52.i32 - (truncf(*v52.i32 * 5.421e-20) * 1.8447e19);
  v52.i32[0] = vbslq_s8(v16, v3, v52).i32[0];
  v59 = 2654435761u * *v52.i32;
  v60 = v59 + v58;
  if (v58 <= 0.0)
  {
    v60 = 2654435761u * *v52.i32;
  }

  v61 = v59 - fabsf(v58);
  if (v58 < 0.0)
  {
    v62 = v61;
  }

  else
  {
    v62 = v60;
  }

  v63 = [(NSMutableArray *)self->_faceResults hash];
  if ((*&self->_has & 2) != 0)
  {
    globalQualityScore = self->_globalQualityScore;
    if (globalQualityScore < 0.0)
    {
      globalQualityScore = -globalQualityScore;
    }

    *v65.i32 = floorf(globalQualityScore + 0.5);
    v70 = (globalQualityScore - *v65.i32) * 1.8447e19;
    *v66.i32 = *v65.i32 - (truncf(*v65.i32 * 5.421e-20) * 1.8447e19);
    v67.i64[0] = 0x8000000080000000;
    v67.i64[1] = 0x8000000080000000;
    v65 = vbslq_s8(v67, v66, v65);
    v68 = 2654435761u * *v65.i32;
    if (v70 >= 0.0)
    {
      if (v70 > 0.0)
      {
        v68 += v70;
      }

      if ((*&self->_has & 1) == 0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v68 -= fabsf(v70);
      if ((*&self->_has & 1) == 0)
      {
LABEL_74:
        v75 = 0;
        goto LABEL_75;
      }
    }
  }

  else
  {
    v68 = 0;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_74;
    }
  }

  contentScore = self->_contentScore;
  if (contentScore < 0.0)
  {
    contentScore = -contentScore;
  }

  *v65.i32 = floorf(contentScore + 0.5);
  v72 = (contentScore - *v65.i32) * 1.8447e19;
  *v66.i32 = *v65.i32 - (truncf(*v65.i32 * 5.421e-20) * 1.8447e19);
  v67.i64[0] = 0x8000000080000000;
  v67.i64[1] = 0x8000000080000000;
  v65.i32[0] = vbslq_s8(v67, v66, v65).i32[0];
  v73 = 2654435761u * *v65.i32;
  v74 = v73 + v72;
  if (v72 <= 0.0)
  {
    v74 = 2654435761u * *v65.i32;
  }

  v75 = v73 - fabsf(v72);
  if (v72 >= 0.0)
  {
    v75 = v74;
  }

LABEL_75:
  expressionChangeScore = self->_expressionChangeScore;
  v77 = -expressionChangeScore;
  if (expressionChangeScore >= 0.0)
  {
    v77 = self->_expressionChangeScore;
  }

  *v66.i32 = floorf(v77 + 0.5);
  v78 = (v77 - *v66.i32) * 1.8447e19;
  *v67.i32 = *v66.i32 - (truncf(*v66.i32 * 5.421e-20) * 1.8447e19);
  v79.i64[0] = 0x8000000080000000;
  v79.i64[1] = 0x8000000080000000;
  v66.i32[0] = vbslq_s8(v79, v67, v66).i32[0];
  v80 = 2654435761u * *v66.i32;
  v81 = v80 + v78;
  if (v78 <= 0.0)
  {
    v81 = 2654435761u * *v66.i32;
  }

  v82 = v80 - fabsf(v78);
  if (v78 >= 0.0)
  {
    v82 = v81;
  }

  if ((*&self->_has & 4) != 0)
  {
    thumbnailScore = self->_thumbnailScore;
    if (thumbnailScore < 0.0)
    {
      thumbnailScore = -thumbnailScore;
    }

    *v64.i32 = floorf(thumbnailScore + 0.5);
    v85 = (thumbnailScore - *v64.i32) * 1.8447e19;
    *v67.i32 = *v64.i32 - (truncf(*v64.i32 * 5.421e-20) * 1.8447e19);
    v64.i32[0] = vbslq_s8(v79, v67, v64).i32[0];
    v86 = 2654435761u * *v64.i32;
    v87 = v86 + v85;
    if (v85 <= 0.0)
    {
      v87 = 2654435761u * *v64.i32;
    }

    v83 = v86 - fabsf(v85);
    if (v85 >= 0.0)
    {
      v83 = v87;
    }
  }

  else
  {
    v83 = 0;
  }

  return v21 ^ v14 ^ v28 ^ v35 ^ v42 ^ v49 ^ v56 ^ v62 ^ v63 ^ v68 ^ v75 ^ v82 ^ v83;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  self->_timestamp = *(fromCopy + 1);
  self->_qualityScoreForLivePhoto = *(fromCopy + 13);
  self->_visualPleasingScore = *(fromCopy + 17);
  self->_overallFaceQualityScore = *(fromCopy + 11);
  self->_exposureScore = *(fromCopy + 5);
  self->_penaltyScore = *(fromCopy + 12);
  self->_textureScore = *(fromCopy + 15);
  self->_sharpness = *(fromCopy + 14);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 4);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(VCPProtoLivePhotoKeyFrameResult *)self addFaceResults:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *(fromCopy + 72);
  if ((v10 & 2) != 0)
  {
    self->_globalQualityScore = *(fromCopy + 10);
    *&self->_has |= 2u;
    v10 = *(fromCopy + 72);
  }

  if (v10)
  {
    self->_contentScore = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  self->_expressionChangeScore = *(fromCopy + 6);
  if ((*(fromCopy + 72) & 4) != 0)
  {
    self->_thumbnailScore = *(fromCopy + 16);
    *&self->_has |= 4u;
  }
}

@end