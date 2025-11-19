@interface VCPProtoMovieAnimalResult
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

@implementation VCPProtoMovieAnimalResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieAnimalResult;
  v4 = [(VCPProtoMovieAnimalResult *)&v8 description];
  v5 = [(VCPProtoMovieAnimalResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  timeRange = self->_timeRange;
  if (timeRange)
  {
    v5 = [(VCPProtoTimeRange *)timeRange dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"timeRange"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_animalID];
  [v3 setObject:v6 forKey:@"animalID"];

  bounds = self->_bounds;
  if (bounds)
  {
    v8 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"bounds"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v3 = a3;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)a3
{
  timeRange = self->_timeRange;
  v5 = a3;
  [v5 setTimeRange:timeRange];
  v5[2] = self->_animalID;
  [v5 setBounds:self->_bounds];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_animalID;
  v8 = [(VCPProtoBounds *)self->_bounds copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | v4[3])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_animalID == *(v4 + 2))
  {
    bounds = self->_bounds;
    if (bounds | v4[2])
    {
      v7 = [(VCPProtoBounds *)bounds isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = [(VCPProtoTimeRange *)self->_timeRange hash];
  v4 = 2654435761 * self->_animalID;
  return v4 ^ v3 ^ [(VCPProtoBounds *)self->_bounds hash];
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

    [(VCPProtoMovieAnimalResult *)self setTimeRange:?];
  }

  v4 = v9;
LABEL_7:
  self->_animalID = *(v4 + 2);
  bounds = self->_bounds;
  v8 = *(v4 + 2);
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

    [(VCPProtoMovieAnimalResult *)self setBounds:?];
  }

  v4 = v9;
LABEL_13:
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  memset(&v14, 0, sizeof(v14));
  CMTimeRangeMakeFromDictionary(&v14, v3);
  v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:@"attributes"];
  v5 = [v4 objectForKeyedSubscript:@"animalId"];
  v6 = [v4 objectForKeyedSubscript:@"faceBounds"];
  v7 = v6;
  if (v14.start.flags)
  {
    v8 = 0;
    if ((v14.duration.flags & 1) != 0 && !v14.duration.epoch)
    {
      v8 = 0;
      if ((v14.duration.value & 0x8000000000000000) == 0 && v5 && v6 != 0)
      {
        v8 = objc_alloc_init(VCPProtoMovieAnimalResult);
        v13 = v14;
        v11 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v13];
        [(VCPProtoMovieAnimalResult *)v8 setTimeRange:v11];

        -[VCPProtoMovieAnimalResult setAnimalID:](v8, "setAnimalID:", [v5 unsignedIntValue]);
        v16 = NSRectFromString(v7);
        v12 = [VCPProtoBounds boundsWithCGRect:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
        [(VCPProtoMovieAnimalResult *)v8 setBounds:v12];
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
  v3 = [(VCPProtoMovieAnimalResult *)self timeRange];
  v4 = v3;
  if (v3)
  {
    [v3 timeRangeValue];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  range = v12;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  v7 = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoMovieAnimalResult animalID](self, "animalID")}];
  [v7 setObject:v8 forKeyedSubscript:@"animalId"];

  v9 = [(VCPProtoMovieAnimalResult *)self bounds];
  [v9 rectValue];
  v10 = NSStringFromRect(v15);
  [v7 setObject:v10 forKeyedSubscript:@"faceBounds"];

  [v6 setObject:v7 forKeyedSubscript:@"attributes"];

  return v6;
}

@end