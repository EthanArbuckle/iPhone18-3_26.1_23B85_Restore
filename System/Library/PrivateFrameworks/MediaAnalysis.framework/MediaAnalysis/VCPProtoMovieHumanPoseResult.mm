@interface VCPProtoMovieHumanPoseResult
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

@implementation VCPProtoMovieHumanPoseResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v15, 0, sizeof(v15));
  CMTimeRangeMakeFromDictionary(&v15, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"attributes"];
  v5 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"flags"];
  v6 = [v4 objectForKeyedSubscript:@"humanConfidence"];
  v7 = [v4 objectForKeyedSubscript:@"humanBounds"];
  v8 = v7;
  if (v15.start.flags)
  {
    v9 = 0;
    if ((v15.duration.flags & 1) != 0 && !v15.duration.epoch)
    {
      v9 = 0;
      if ((v15.duration.value & 0x8000000000000000) == 0 && v6 && v7 && v5)
      {
        v11 = [v5 unsignedIntegerValue];
        v9 = objc_alloc_init(VCPProtoMovieHumanPoseResult);
        v14 = v15;
        v12 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v14];
        [(VCPProtoMovieHumanPoseResult *)v9 setTimeRange:v12];

        [v6 floatValue];
        [(VCPProtoMovieHumanPoseResult *)v9 setConfidence:?];
        v17 = NSRectFromString(v8);
        v13 = [VCPProtoBounds boundsWithCGRect:v17.origin.x, v17.origin.y, v17.size.width, v17.size.height];
        [(VCPProtoMovieHumanPoseResult *)v9 setBounds:v13];

        [(VCPProtoMovieHumanPoseResult *)v9 setFlags:v11];
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
  v17[2] = *MEMORY[0x1E69E9840];
  v3 = [(VCPProtoMovieHumanPoseResult *)self timeRange];
  v4 = v3;
  if (v3)
  {
    [v3 timeRangeValue];
  }

  else
  {
    memset(&v14, 0, sizeof(v14));
  }

  range = v14;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoMovieHumanPoseResult flags](self, "flags")}];
  [v6 setObject:v7 forKeyedSubscript:@"flags"];

  v16[0] = @"humanConfidence";
  v8 = MEMORY[0x1E696AD98];
  [(VCPProtoMovieHumanPoseResult *)self confidence];
  v9 = [v8 numberWithFloat:?];
  v17[0] = v9;
  v16[1] = @"humanBounds";
  v10 = [(VCPProtoMovieHumanPoseResult *)self bounds];
  [v10 rectValue];
  v11 = NSStringFromRect(v19);
  v17[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v6 setObject:v12 forKeyedSubscript:@"attributes"];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieHumanPoseResult;
  v4 = [(VCPProtoMovieHumanPoseResult *)&v8 description];
  v5 = [(VCPProtoMovieHumanPoseResult *)self dictionaryRepresentation];
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

  *&v4 = self->_confidence;
  v7 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v7 forKey:@"confidence"];

  bounds = self->_bounds;
  if (bounds)
  {
    v9 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"bounds"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInt:self->_flags];
  [v3 setObject:v10 forKey:@"flags"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteInt32Field();
}

- (void)copyTo:(id)a3
{
  timeRange = self->_timeRange;
  v5 = a3;
  [v5 setTimeRange:timeRange];
  *(v5 + 4) = LODWORD(self->_confidence);
  [v5 setBounds:self->_bounds];
  *(v5 + 5) = self->_flags;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 16) = self->_confidence;
  v8 = [(VCPProtoBounds *)self->_bounds copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  *(v5 + 20) = self->_flags;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = [v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(v4 + 3))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_confidence == *(v4 + 4) && ((bounds = self->_bounds, !(bounds | *(v4 + 1))) || -[VCPProtoBounds isEqual:](bounds, "isEqual:")) && self->_flags == *(v4 + 5);

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v4.i32 = floorf(confidence + 0.5);
  v7 = (confidence - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v8.i64[0] = 0x8000000080000000;
  v8.i64[1] = 0x8000000080000000;
  v4.i32[0] = vbslq_s8(v8, v5, v4).i32[0];
  v9 = 2654435761u * *v4.i32;
  v10 = v9 + v7;
  if (v7 <= 0.0)
  {
    v10 = 2654435761u * *v4.i32;
  }

  v11 = v9 - fabsf(v7);
  if (v7 < 0.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10;
  }

  return v12 ^ v3 ^ [(VCPProtoBounds *)self->_bounds hash]^ (2654435761 * self->_flags);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  timeRange = self->_timeRange;
  v6 = *(v4 + 3);
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

    [(VCPProtoMovieHumanPoseResult *)self setTimeRange:?];
  }

  v4 = v9;
LABEL_7:
  self->_confidence = *(v4 + 4);
  bounds = self->_bounds;
  v8 = *(v4 + 1);
  if (bounds)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoBounds *)bounds mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    [(VCPProtoMovieHumanPoseResult *)self setBounds:?];
  }

  v4 = v9;
LABEL_13:
  self->_flags = *(v4 + 5);
}

@end