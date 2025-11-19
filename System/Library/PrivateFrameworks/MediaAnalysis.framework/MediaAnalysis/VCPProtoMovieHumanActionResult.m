@interface VCPProtoMovieHumanActionResult
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoMovieHumanActionResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieHumanActionResult;
  v4 = [(VCPProtoMovieHumanActionResult *)&v8 description];
  v5 = [(VCPProtoMovieHumanActionResult *)self dictionaryRepresentation];
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

  *&v4 = self->_absoluteScore;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v7 forKey:@"absoluteScore"];

  *&v8 = self->_relativeScore;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [v3 setObject:v9 forKey:@"relativeScore"];

  *&v10 = self->_humanScore;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  [v3 setObject:v11 forKey:@"humanScore"];

  faceId = self->_faceId;
  if (faceId)
  {
    [v3 setObject:faceId forKey:@"faceId"];
  }

  bounds = self->_bounds;
  if (bounds)
  {
    v14 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"bounds"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  if (self->_faceId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bounds)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setTimeRange:self->_timeRange];
  v4 = v5;
  v5[2] = self->_absoluteScore;
  v5[9] = self->_relativeScore;
  v5[8] = self->_humanScore;
  if (self->_faceId)
  {
    [v5 setFaceId:?];
    v4 = v5;
  }

  if (self->_bounds)
  {
    [v5 setBounds:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  *(v5 + 8) = self->_absoluteScore;
  *(v5 + 36) = self->_relativeScore;
  *(v5 + 32) = self->_humanScore;
  v8 = [(NSString *)self->_faceId copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(VCPProtoBounds *)self->_bounds copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | v4[5])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_absoluteScore == *(v4 + 2) && self->_relativeScore == *(v4 + 9) && self->_humanScore == *(v4 + 8) && ((faceId = self->_faceId, !(faceId | v4[3])) || -[NSString isEqual:](faceId, "isEqual:")))
  {
    bounds = self->_bounds;
    if (bounds | v4[2])
    {
      v8 = [(VCPProtoBounds *)bounds isEqual:?];
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
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  v7.i32[0] = LODWORD(self->_absoluteScore);
  absoluteScore = -*v7.i32;
  if (*v7.i32 >= 0.0)
  {
    absoluteScore = self->_absoluteScore;
  }

  *v4.i32 = floorf(absoluteScore + 0.5);
  v9 = (absoluteScore - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v4.i32[0] = vbslq_s8(v10, v5, v4).i32[0];
  v11 = 2654435761u * *v4.i32;
  v12 = v11 + v9;
  if (v9 <= 0.0)
  {
    v12 = 2654435761u * *v4.i32;
  }

  v13 = v11 - fabsf(v9);
  if (v9 >= 0.0)
  {
    v13 = v12;
  }

  relativeScore = self->_relativeScore;
  if (relativeScore < 0.0)
  {
    relativeScore = -relativeScore;
  }

  *v5.i32 = floorf(relativeScore + 0.5);
  v15 = (relativeScore - *v5.i32) * 1.8447e19;
  *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
  v16 = vbslq_s8(v10, v6, v5);
  v17 = 2654435761u * *v16.i32;
  v18 = v17 + v15;
  if (v15 <= 0.0)
  {
    v18 = 2654435761u * *v16.i32;
  }

  v19 = v17 - fabsf(v15);
  if (v15 >= 0.0)
  {
    v19 = v18;
  }

  humanScore = self->_humanScore;
  if (humanScore < 0.0)
  {
    humanScore = -humanScore;
  }

  *v7.i32 = floorf(humanScore + 0.5);
  v21 = (humanScore - *v7.i32) * 1.8447e19;
  *v16.i32 = *v7.i32 - (truncf(*v7.i32 * 5.421e-20) * 1.8447e19);
  v7.i32[0] = vbslq_s8(v10, v16, v7).i32[0];
  v22 = 2654435761u * *v7.i32;
  v23 = v22 + v21;
  if (v21 <= 0.0)
  {
    v23 = 2654435761u * *v7.i32;
  }

  v24 = v22 - fabsf(v21);
  if (v21 >= 0.0)
  {
    v24 = v23;
  }

  v25 = v13 ^ v3 ^ v19 ^ v24;
  v26 = [(NSString *)self->_faceId hash];
  return v25 ^ v26 ^ [(VCPProtoBounds *)self->_bounds hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 5);
  v9 = v4;
  if (timeRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoTimeRange *)timeRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(VCPProtoMovieHumanActionResult *)self setTimeRange:?];
  }

  v4 = v9;
LABEL_7:
  self->_absoluteScore = *(v4 + 2);
  self->_relativeScore = *(v4 + 9);
  self->_humanScore = *(v4 + 8);
  if (*(v4 + 3))
  {
    [(VCPProtoMovieHumanActionResult *)self setFaceId:?];
    v4 = v9;
  }

  bounds = self->_bounds;
  v8 = *(v4 + 2);
  if (bounds)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(VCPProtoBounds *)bounds mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    [(VCPProtoMovieHumanActionResult *)self setBounds:?];
  }

  v4 = v9;
LABEL_15:
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v16, 0, sizeof(v16));
  CMTimeRangeMakeFromDictionary(&v16, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"absoluteScore"];
  v6 = [v4 objectForKeyedSubscript:@"relativeScore"];
  v7 = [v4 objectForKeyedSubscript:@"humanScore"];
  v8 = v7;
  if (v16.start.flags)
  {
    v9 = 0;
    if ((v16.duration.flags & 1) != 0 && !v16.duration.epoch)
    {
      v9 = 0;
      if ((v16.duration.value & 0x8000000000000000) == 0 && v5 && v6 && v7)
      {
        v11 = [v4 objectForKeyedSubscript:@"humanBounds"];
        v12 = [v4 objectForKeyedSubscript:@"faceIdentifier"];
        v9 = objc_alloc_init(VCPProtoMovieHumanActionResult);
        v15 = v16;
        v13 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v15];
        [(VCPProtoMovieHumanActionResult *)v9 setTimeRange:v13];

        [v5 floatValue];
        [(VCPProtoMovieHumanActionResult *)v9 setAbsoluteScore:?];
        [v6 floatValue];
        [(VCPProtoMovieHumanActionResult *)v9 setRelativeScore:?];
        [v8 floatValue];
        [(VCPProtoMovieHumanActionResult *)v9 setHumanScore:?];
        if (v11)
        {
          v18 = NSRectFromString(v11);
          v14 = [VCPProtoBounds boundsWithCGRect:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
          [(VCPProtoMovieHumanActionResult *)v9 setBounds:v14];
        }

        if (v12)
        {
          [(VCPProtoMovieHumanActionResult *)v9 setFaceId:v12];
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
  v3 = [(VCPProtoMovieHumanActionResult *)self timeRange];
  v4 = v3;
  if (v3)
  {
    [v3 timeRangeValue];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  range = v18;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieHumanActionResult *)self absoluteScore];
  v9 = [v8 numberWithFloat:?];
  [v7 setObject:v9 forKeyedSubscript:@"absoluteScore"];

  v10 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieHumanActionResult *)self relativeScore];
  v11 = [v10 numberWithFloat:?];
  [v7 setObject:v11 forKeyedSubscript:@"relativeScore"];

  v12 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieHumanActionResult *)self humanScore];
  v13 = [v12 numberWithFloat:?];
  [v7 setObject:v13 forKeyedSubscript:@"humanScore"];

  if ([(VCPProtoMovieHumanActionResult *)self hasFaceId])
  {
    v14 = [(VCPProtoMovieHumanActionResult *)self faceId];
    [v7 setObject:v14 forKeyedSubscript:@"faceIdentifier"];
  }

  if ([(VCPProtoMovieHumanActionResult *)self hasBounds:*&v18.start.value])
  {
    v15 = [(VCPProtoMovieHumanActionResult *)self bounds];
    [v15 rectValue];
    v16 = NSStringFromRect(v21);
    [v7 setObject:v16 forKeyedSubscript:@"humanBounds"];
  }

  [v6 setObject:v7 forKeyedSubscript:@"attributes"];

  return v6;
}

@end