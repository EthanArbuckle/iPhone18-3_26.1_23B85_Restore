@interface VCPProtoMovieAnimalResult
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

@implementation VCPProtoMovieAnimalResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieAnimalResult;
  v4 = [(VCPProtoMovieAnimalResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieAnimalResult *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_animalID];
  [dictionary setObject:v6 forKey:@"animalID"];

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
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteSubmessage();
}

- (void)copyTo:(id)to
{
  timeRange = self->_timeRange;
  toCopy = to;
  [toCopy setTimeRange:timeRange];
  toCopy[2] = self->_animalID;
  [toCopy setBounds:self->_bounds];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 8) = self->_animalID;
  v8 = [(VCPProtoBounds *)self->_bounds copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | equalCopy[3])) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_animalID == *(equalCopy + 2))
  {
    bounds = self->_bounds;
    if (bounds | equalCopy[2])
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

    [(VCPProtoMovieAnimalResult *)self setTimeRange:?];
  }

  fromCopy = v9;
LABEL_7:
  self->_animalID = *(fromCopy + 2);
  bounds = self->_bounds;
  v8 = *(fromCopy + 2);
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

  fromCopy = v9;
LABEL_13:
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v14, 0, sizeof(v14));
  CMTimeRangeMakeFromDictionary(&v14, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
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
  timeRange = [(VCPProtoMovieAnimalResult *)self timeRange];
  v4 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  range = v12;
  v5 = CMTimeRangeCopyAsDictionary(&range, 0);
  v6 = [(__CFDictionary *)v5 mutableCopy];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[VCPProtoMovieAnimalResult animalID](self, "animalID")}];
  [dictionary setObject:v8 forKeyedSubscript:@"animalId"];

  bounds = [(VCPProtoMovieAnimalResult *)self bounds];
  [bounds rectValue];
  v10 = NSStringFromRect(v15);
  [dictionary setObject:v10 forKeyedSubscript:@"faceBounds"];

  [v6 setObject:dictionary forKeyedSubscript:@"attributes"];

  return v6;
}

@end