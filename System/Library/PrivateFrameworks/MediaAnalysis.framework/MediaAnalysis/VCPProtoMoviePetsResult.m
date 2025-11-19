@interface VCPProtoMoviePetsResult
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

@implementation VCPProtoMoviePetsResult

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"attributes"];
  memset(&v14, 0, sizeof(v14));
  CMTimeRangeMakeFromDictionary(&v14, v3);
  v5 = [v4 objectForKeyedSubscript:@"petsBounds"];
  v6 = [v4 objectForKeyedSubscript:@"petsConfidence"];
  v7 = v6;
  if (v14.start.flags)
  {
    v8 = 0;
    if ((v14.duration.flags & 1) != 0 && !v14.duration.epoch)
    {
      v8 = 0;
      if ((v14.duration.value & 0x8000000000000000) == 0 && v5 && v6 != 0)
      {
        v8 = objc_alloc_init(VCPProtoMoviePetsResult);
        v13 = v14;
        v11 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v13];
        [(VCPProtoMoviePetsResult *)v8 setTimeRange:v11];

        v16 = NSRectFromString(v5);
        v12 = [VCPProtoBounds boundsWithCGRect:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
        [(VCPProtoMoviePetsResult *)v8 setBounds:v12];

        [v7 floatValue];
        [(VCPProtoMoviePetsResult *)v8 setConfidence:?];
      }
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
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = [(VCPProtoMoviePetsResult *)self timeRange];
  v4 = v3;
  if (v3)
  {
    [v3 timeRangeValue];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  range = v13;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v15[0] = @"petsBounds";
  v7 = [(VCPProtoMoviePetsResult *)self bounds];
  [v7 rectValue];
  v8 = NSStringFromRect(v18);
  v16[0] = v8;
  v15[1] = @"petsConfidence";
  v9 = MEMORY[0x1E696AD98];
  [(VCPProtoMoviePetsResult *)self confidence];
  v10 = [v9 numberWithFloat:?];
  v16[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v6 setObject:v11 forKeyedSubscript:@"attributes"];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMoviePetsResult;
  v4 = [(VCPProtoMoviePetsResult *)&v8 description];
  v5 = [(VCPProtoMoviePetsResult *)self dictionaryRepresentation];
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

  bounds = self->_bounds;
  if (bounds)
  {
    v8 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"bounds"];
  }

  *&v4 = self->_confidence;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [v3 setObject:v9 forKey:@"confidence"];

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)a3
{
  timeRange = self->_timeRange;
  v5 = a3;
  [v5 setTimeRange:timeRange];
  [v5 setBounds:self->_bounds];
  v5[4] = self->_confidence;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(VCPProtoBounds *)self->_bounds copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  *(v5 + 16) = self->_confidence;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = [v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(v4 + 3))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && ((bounds = self->_bounds, !(bounds | *(v4 + 1))) || -[VCPProtoBounds isEqual:](bounds, "isEqual:")) && self->_confidence == *(v4 + 4);

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  v4 = [(VCPProtoBounds *)self->_bounds hash];
  confidence = self->_confidence;
  if (confidence < 0.0)
  {
    confidence = -confidence;
  }

  *v5.i32 = floorf(confidence + 0.5);
  v8 = (confidence - *v5.i32) * 1.8447e19;
  *v6.i32 = *v5.i32 - (truncf(*v5.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v10 = 2654435761u * *vbslq_s8(v9, v6, v5).i32;
  v11 = v10 + v8;
  v12 = fabsf(v8);
  if (v8 <= 0.0)
  {
    v11 = v10;
  }

  v13 = v10 - v12;
  if (v8 >= 0.0)
  {
    v13 = v11;
  }

  return v4 ^ v3 ^ v13;
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

    [(VCPProtoMoviePetsResult *)self setTimeRange:?];
  }

  v4 = v9;
LABEL_7:
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

    [(VCPProtoMoviePetsResult *)self setBounds:?];
  }

  v4 = v9;
LABEL_13:
  self->_confidence = *(v4 + 4);
}

@end