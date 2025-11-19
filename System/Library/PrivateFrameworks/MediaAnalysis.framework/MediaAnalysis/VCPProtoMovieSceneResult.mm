@interface VCPProtoMovieSceneResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFlickerScore:(BOOL)a3;
- (void)setHasSceneprintDistanceToPreviousScene:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoMovieSceneResult

- (void)setHasFlickerScore:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSceneprintDistanceToPreviousScene:(BOOL)a3
{
  if (a3)
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
  v8.super_class = VCPProtoMovieSceneResult;
  v4 = [(VCPProtoMovieSceneResult *)&v8 description];
  v5 = [(VCPProtoMovieSceneResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    v6 = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"timeRange"];
  }

  *&v4 = self->_qualityScore;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v7 forKey:@"qualityScore"];

  has = self->_has;
  if (has)
  {
    *&v8 = self->_distanceToPreviousScene;
    v12 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    [v3 setObject:v12 forKey:@"distanceToPreviousScene"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_5:
      if ((has & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

  *&v8 = self->_flickerScore;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [v3 setObject:v13 forKey:@"flickerScore"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_6:
    *&v8 = self->_sceneprintDistanceToPreviousScene;
    v10 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
    [v3 setObject:v10 forKey:@"sceneprintDistanceToPreviousScene"];
  }

LABEL_7:

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteFloatField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteFloatField();
  }

LABEL_5:
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setTimeRange:self->_timeRange];
  *(v5 + 4) = LODWORD(self->_qualityScore);
  has = self->_has;
  if (has)
  {
    *(v5 + 2) = LODWORD(self->_distanceToPreviousScene);
    *(v5 + 32) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 3) = LODWORD(self->_flickerScore);
  *(v5 + 32) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 5) = LODWORD(self->_sceneprintDistanceToPreviousScene);
    *(v5 + 32) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 16) = self->_qualityScore;
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 12) = self->_flickerScore;
    *(v5 + 32) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_distanceToPreviousScene;
  *(v5 + 32) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 20) = self->_sceneprintDistanceToPreviousScene;
    *(v5 + 32) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  timeRange = self->_timeRange;
  if (timeRange | *(v4 + 3))
  {
    if (![(VCPProtoTimeRange *)timeRange isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (self->_qualityScore != *(v4 + 4))
  {
    goto LABEL_19;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_distanceToPreviousScene != *(v4 + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_19:
    v6 = 0;
    goto LABEL_20;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_flickerScore != *(v4 + 3))
    {
      goto LABEL_19;
    }
  }

  else if ((*(v4 + 32) & 2) != 0)
  {
    goto LABEL_19;
  }

  v6 = (*(v4 + 32) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 32) & 4) == 0 || self->_sceneprintDistanceToPreviousScene != *(v4 + 5))
    {
      goto LABEL_19;
    }

    v6 = 1;
  }

LABEL_20:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  qualityScore = self->_qualityScore;
  v7 = -qualityScore;
  if (qualityScore >= 0.0)
  {
    v7 = self->_qualityScore;
  }

  *v4.i32 = floorf(v7 + 0.5);
  v8 = (v7 - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = vbslq_s8(v9, v5, v4);
  v11 = 2654435761u * *v10.i32;
  v12 = v11 + v8;
  if (v8 <= 0.0)
  {
    v12 = 2654435761u * *v10.i32;
  }

  v13 = v11 - fabsf(v8);
  if (v8 >= 0.0)
  {
    v13 = v12;
  }

  if (*&self->_has)
  {
    v10.i32[0] = LODWORD(self->_distanceToPreviousScene);
    if (*v10.i32 < 0.0)
    {
      *v10.i32 = -*v10.i32;
    }

    *v5.i32 = floorf(*v10.i32 + 0.5);
    v15 = (*v10.i32 - *v5.i32) * 1.8447e19;
    *v10.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
    v9 = vbslq_s8(v9, v10, v5);
    v14 = 2654435761u * *v9.i32;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v14 += v15;
      }
    }

    else
    {
      v14 -= fabsf(v15);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    flickerScore = self->_flickerScore;
    if (flickerScore < 0.0)
    {
      flickerScore = -flickerScore;
    }

    *v9.i32 = floorf(flickerScore + 0.5);
    v18 = (flickerScore - *v9.i32) * 1.8447e19;
    *v10.i32 = *v9.i32 - (truncf(*v9.i32 * 5.421e-20) * 1.8447e19);
    v19.i64[0] = 0x8000000080000000;
    v19.i64[1] = 0x8000000080000000;
    v9 = vbslq_s8(v19, v10, v9);
    v16 = 2654435761u * *v9.i32;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }

      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v16 -= fabsf(v18);
      if ((*&self->_has & 4) == 0)
      {
LABEL_32:
        v25 = 0;
        return v13 ^ v3 ^ v14 ^ v16 ^ v25;
      }
    }
  }

  else
  {
    v16 = 0;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_32;
    }
  }

  sceneprintDistanceToPreviousScene = self->_sceneprintDistanceToPreviousScene;
  if (sceneprintDistanceToPreviousScene < 0.0)
  {
    sceneprintDistanceToPreviousScene = -sceneprintDistanceToPreviousScene;
  }

  *v9.i32 = floorf(sceneprintDistanceToPreviousScene + 0.5);
  v21 = (sceneprintDistanceToPreviousScene - *v9.i32) * 1.8447e19;
  *v10.i32 = *v9.i32 - (truncf(*v9.i32 * 5.421e-20) * 1.8447e19);
  v22.i64[0] = 0x8000000080000000;
  v22.i64[1] = 0x8000000080000000;
  v9.i32[0] = vbslq_s8(v22, v10, v9).i32[0];
  v23 = 2654435761u * *v9.i32;
  v24 = v23 + v21;
  if (v21 <= 0.0)
  {
    v24 = 2654435761u * *v9.i32;
  }

  v25 = v23 - fabsf(v21);
  if (v21 >= 0.0)
  {
    v25 = v24;
  }

  return v13 ^ v3 ^ v14 ^ v16 ^ v25;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 3);
  if (timeRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(VCPProtoTimeRange *)timeRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v8 = v4;
    [(VCPProtoMovieSceneResult *)self setTimeRange:?];
  }

  v4 = v8;
LABEL_7:
  self->_qualityScore = *(v4 + 4);
  v7 = *(v4 + 32);
  if (v7)
  {
    self->_distanceToPreviousScene = *(v4 + 2);
    *&self->_has |= 1u;
    v7 = *(v4 + 32);
    if ((v7 & 2) == 0)
    {
LABEL_9:
      if ((v7 & 4) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v4 + 32) & 2) == 0)
  {
    goto LABEL_9;
  }

  self->_flickerScore = *(v4 + 3);
  *&self->_has |= 2u;
  if ((*(v4 + 32) & 4) != 0)
  {
LABEL_10:
    self->_sceneprintDistanceToPreviousScene = *(v4 + 5);
    *&self->_has |= 4u;
  }

LABEL_11:
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"attributes"];
  memset(&v13, 0, sizeof(v13));
  CMTimeRangeMakeFromDictionary(&v13, v3);
  v5 = [v3 objectForKeyedSubscript:@"quality"];
  v6 = [v4 objectForKeyedSubscript:@"distance"];
  v7 = [v4 objectForKeyedSubscript:@"slowMoFlicker"];
  v8 = [v4 objectForKeyedSubscript:@"sceneprintDistance"];
  if (v13.start.flags)
  {
    v9 = 0;
    if ((v13.duration.flags & 1) != 0 && !v13.duration.epoch)
    {
      v9 = 0;
      if ((v13.duration.value & 0x8000000000000000) == 0)
      {
        if (v5)
        {
          v9 = objc_alloc_init(VCPProtoMovieSceneResult);
          v12 = v13;
          v11 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v12];
          [(VCPProtoMovieSceneResult *)v9 setTimeRange:v11];

          [v5 floatValue];
          [(VCPProtoMovieSceneResult *)v9 setQualityScore:?];
          if (v6)
          {
            [v6 floatValue];
            [(VCPProtoMovieSceneResult *)v9 setDistanceToPreviousScene:?];
          }

          if (v8)
          {
            [v8 floatValue];
            [(VCPProtoMovieSceneResult *)v9 setSceneprintDistanceToPreviousScene:?];
          }

          if (v7)
          {
            [v7 floatValue];
            [(VCPProtoMovieSceneResult *)v9 setFlickerScore:?];
          }
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)exportToLegacyDictionary
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(VCPProtoMovieSceneResult *)self hasDistanceToPreviousScene])
  {
    v4 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieSceneResult *)self distanceToPreviousScene];
    v5 = [v4 numberWithFloat:?];
    [v3 setObject:v5 forKeyedSubscript:@"distance"];
  }

  if ([(VCPProtoMovieSceneResult *)self hasSceneprintDistanceToPreviousScene])
  {
    v6 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieSceneResult *)self sceneprintDistanceToPreviousScene];
    v7 = [v6 numberWithFloat:?];
    [v3 setObject:v7 forKeyedSubscript:@"sceneprintDistance"];
  }

  if ([(VCPProtoMovieSceneResult *)self hasFlickerScore])
  {
    v8 = MEMORY[0x1E696AD98];
    [(VCPProtoMovieSceneResult *)self flickerScore];
    v9 = [v8 numberWithFloat:?];
    [v3 setObject:v9 forKeyedSubscript:@"slowMoFlicker"];
  }

  v10 = [(VCPProtoMovieSceneResult *)self timeRange];
  v11 = v10;
  if (v10)
  {
    [v10 timeRangeValue];
  }

  else
  {
    memset(&v17, 0, sizeof(v17));
  }

  range = v17;
  v12 = CMTimeRangeCopyAsDictionary(&range, 0);
  v13 = [(__CFDictionary *)v12 mutableCopy];

  v14 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieSceneResult *)self qualityScore];
  v15 = [v14 numberWithFloat:?];
  [v13 setObject:v15 forKeyedSubscript:@"quality"];

  if ([v3 count])
  {
    [v13 setObject:v3 forKeyedSubscript:@"attributes"];
  }

  return v13;
}

@end