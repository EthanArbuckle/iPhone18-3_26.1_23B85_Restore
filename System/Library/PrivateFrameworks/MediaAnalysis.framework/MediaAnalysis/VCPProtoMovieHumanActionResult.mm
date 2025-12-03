@interface VCPProtoMovieHumanActionResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoMovieHumanActionResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieHumanActionResult;
  v4 = [(VCPProtoMovieHumanActionResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieHumanActionResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    dictionaryRepresentation = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"timeRange"];
  }

  *&v4 = self->_absoluteScore;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v7 forKey:@"absoluteScore"];

  *&v8 = self->_relativeScore;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  [dictionary setObject:v9 forKey:@"relativeScore"];

  *&v10 = self->_humanScore;
  v11 = [MEMORY[0x1E696AD98] numberWithFloat:v10];
  [dictionary setObject:v11 forKey:@"humanScore"];

  faceId = self->_faceId;
  if (faceId)
  {
    [dictionary setObject:faceId forKey:@"faceId"];
  }

  bounds = self->_bounds;
  if (bounds)
  {
    dictionaryRepresentation2 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"bounds"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setTimeRange:self->_timeRange];
  v4 = toCopy;
  toCopy[2] = self->_absoluteScore;
  toCopy[9] = self->_relativeScore;
  toCopy[8] = self->_humanScore;
  if (self->_faceId)
  {
    [toCopy setFaceId:?];
    v4 = toCopy;
  }

  if (self->_bounds)
  {
    [toCopy setBounds:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  *(v5 + 8) = self->_absoluteScore;
  *(v5 + 36) = self->_relativeScore;
  *(v5 + 32) = self->_humanScore;
  v8 = [(NSString *)self->_faceId copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(VCPProtoBounds *)self->_bounds copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | equalCopy[5])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_absoluteScore == *(equalCopy + 2) && self->_relativeScore == *(equalCopy + 9) && self->_humanScore == *(equalCopy + 8) && ((faceId = self->_faceId, !(faceId | equalCopy[3])) || -[NSString isEqual:](faceId, "isEqual:")))
  {
    bounds = self->_bounds;
    if (bounds | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 5);
  v9 = fromCopy;
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

  fromCopy = v9;
LABEL_7:
  self->_absoluteScore = *(fromCopy + 2);
  self->_relativeScore = *(fromCopy + 9);
  self->_humanScore = *(fromCopy + 8);
  if (*(fromCopy + 3))
  {
    [(VCPProtoMovieHumanActionResult *)self setFaceId:?];
    fromCopy = v9;
  }

  bounds = self->_bounds;
  v8 = *(fromCopy + 2);
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

  fromCopy = v9;
LABEL_15:
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v16, 0, sizeof(v16));
  CMTimeRangeMakeFromDictionary(&v16, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
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
  timeRange = [(VCPProtoMovieHumanActionResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  range = v18;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieHumanActionResult *)self absoluteScore];
  v9 = [v8 numberWithFloat:?];
  [dictionary setObject:v9 forKeyedSubscript:@"absoluteScore"];

  v10 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieHumanActionResult *)self relativeScore];
  v11 = [v10 numberWithFloat:?];
  [dictionary setObject:v11 forKeyedSubscript:@"relativeScore"];

  v12 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieHumanActionResult *)self humanScore];
  v13 = [v12 numberWithFloat:?];
  [dictionary setObject:v13 forKeyedSubscript:@"humanScore"];

  if ([(VCPProtoMovieHumanActionResult *)self hasFaceId])
  {
    faceId = [(VCPProtoMovieHumanActionResult *)self faceId];
    [dictionary setObject:faceId forKeyedSubscript:@"faceIdentifier"];
  }

  if ([(VCPProtoMovieHumanActionResult *)self hasBounds:*&v18.start.value])
  {
    bounds = [(VCPProtoMovieHumanActionResult *)self bounds];
    [bounds rectValue];
    v16 = NSStringFromRect(v21);
    [dictionary setObject:v16 forKeyedSubscript:@"humanBounds"];
  }

  [v6 setObject:dictionary forKeyedSubscript:@"attributes"];

  return v6;
}

@end