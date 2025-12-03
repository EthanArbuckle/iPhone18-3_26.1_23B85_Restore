@interface VCPProtoMoviePetsResult
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

@implementation VCPProtoMoviePetsResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"attributes"];
  memset(&v14, 0, sizeof(v14));
  CMTimeRangeMakeFromDictionary(&v14, dictionaryCopy);
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
  timeRange = [(VCPProtoMoviePetsResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  range = v13;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v15[0] = @"petsBounds";
  bounds = [(VCPProtoMoviePetsResult *)self bounds];
  [bounds rectValue];
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
  dictionaryRepresentation = [(VCPProtoMoviePetsResult *)self dictionaryRepresentation];
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

  bounds = self->_bounds;
  if (bounds)
  {
    dictionaryRepresentation2 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"bounds"];
  }

  *&v4 = self->_confidence;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v4];
  [dictionary setObject:v9 forKey:@"confidence"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteFloatField();
}

- (void)copyTo:(id)to
{
  timeRange = self->_timeRange;
  toCopy = to;
  [toCopy setTimeRange:timeRange];
  [toCopy setBounds:self->_bounds];
  toCopy[4] = self->_confidence;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(VCPProtoBounds *)self->_bounds copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  *(v5 + 16) = self->_confidence;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = [equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(equalCopy + 3))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && ((bounds = self->_bounds, !(bounds | *(equalCopy + 1))) || -[VCPProtoBounds isEqual:](bounds, "isEqual:")) && self->_confidence == *(equalCopy + 4);

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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 3);
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

    [(VCPProtoMoviePetsResult *)self setTimeRange:?];
  }

  fromCopy = v9;
LABEL_7:
  bounds = self->_bounds;
  v8 = *(fromCopy + 1);
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

  fromCopy = v9;
LABEL_13:
  self->_confidence = *(fromCopy + 4);
}

@end