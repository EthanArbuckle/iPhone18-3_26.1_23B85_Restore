@interface VCPProtoMovieFaceResult
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

@implementation VCPProtoMovieFaceResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v19, 0, sizeof(v19));
  CMTimeRangeMakeFromDictionary(&v19, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"attributes"];
  v5 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"flags"];
  v6 = [v4 objectForKeyedSubscript:@"facePosition"];
  v7 = [v4 objectForKeyedSubscript:@"faceBounds"];
  v8 = [v4 objectForKeyedSubscript:@"faceId"];
  v9 = v8;
  if (v19.start.flags)
  {
    v10 = 0;
    if ((v19.duration.flags & 1) != 0 && !v19.duration.epoch)
    {
      v10 = 0;
      if ((v19.duration.value & 0x8000000000000000) == 0 && v5 && v6 && v7 && v8)
      {
        v10 = objc_alloc_init(VCPProtoMovieFaceResult);
        v18 = v19;
        v12 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v18];
        [(VCPProtoMovieFaceResult *)v10 setTimeRange:v12];

        unsignedIntegerValue = [v5 unsignedIntegerValue];
        [(VCPProtoMovieFaceResult *)v10 setMouthExpression:(unsignedIntegerValue >> 1) & 1];
        -[VCPProtoMovieFaceResult setPosition:](v10, "setPosition:", [v6 intValue]);
        v21 = NSRectFromString(v7);
        v14 = [VCPProtoBounds boundsWithCGRect:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
        [(VCPProtoMovieFaceResult *)v10 setBounds:v14];

        [(VCPProtoMovieFaceResult *)v10 setIsCloseup:(unsignedIntegerValue >> 4) & 1];
        -[VCPProtoMovieFaceResult setFaceID:](v10, "setFaceID:", [v9 unsignedIntValue]);
        v15 = [v4 objectForKeyedSubscript:@"humanBounds"];
        v16 = v15;
        if (v15)
        {
          v22 = NSRectFromString(v15);
          v17 = [VCPProtoBounds boundsWithCGRect:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
          [(VCPProtoMovieFaceResult *)v10 setHumanBounds:v17];
        }
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)exportToLegacyDictionary
{
  v3 = [(VCPProtoMovieFaceResult *)self mouthExpression]== 1;
  if ([(VCPProtoMovieFaceResult *)self isCloseup])
  {
    v4 = (2 * v3) | 0x10;
  }

  else
  {
    v4 = 2 * v3;
  }

  timeRange = [(VCPProtoMovieFaceResult *)self timeRange];
  v6 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v18, 0, sizeof(v18));
  }

  range = v18;
  v7 = CMTimeRangeCopyAsDictionary(&range, 0);
  v8 = [(__CFDictionary *)v7 mutableCopy];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoMovieFaceResult position](self, "position")}];
  [dictionary setObject:v10 forKeyedSubscript:@"facePosition"];

  bounds = [(VCPProtoMovieFaceResult *)self bounds];
  [bounds rectValue];
  v12 = NSStringFromRect(v21);
  [dictionary setObject:v12 forKeyedSubscript:@"faceBounds"];

  v13 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoMovieFaceResult faceID](self, "faceID")}];
  [dictionary setObject:v13 forKeyedSubscript:@"faceId"];

  if ([(VCPProtoMovieFaceResult *)self hasHumanBounds])
  {
    humanBounds = [(VCPProtoMovieFaceResult *)self humanBounds];
    [humanBounds rectValue];
    v15 = NSStringFromRect(v22);
    [dictionary setObject:v15 forKeyedSubscript:@"humanBounds"];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{v4, *&v18.start.value, *&v18.start.epoch, *&v18.duration.timescale}];
  [v8 setObject:v16 forKeyedSubscript:@"flags"];

  [v8 setObject:dictionary forKeyedSubscript:@"attributes"];

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieFaceResult;
  v4 = [(VCPProtoMovieFaceResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieFaceResult *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_mouthExpression];
  [dictionary setObject:v6 forKey:@"mouthExpression"];

  v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_position];
  [dictionary setObject:v7 forKey:@"position"];

  bounds = self->_bounds;
  if (bounds)
  {
    dictionaryRepresentation2 = [(VCPProtoBounds *)bounds dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"bounds"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_isCloseup];
  [dictionary setObject:v10 forKey:@"isCloseup"];

  v11 = [MEMORY[0x1E696AD98] numberWithInt:self->_faceID];
  [dictionary setObject:v11 forKey:@"faceID"];

  humanBounds = self->_humanBounds;
  if (humanBounds)
  {
    dictionaryRepresentation3 = [(VCPProtoBounds *)humanBounds dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"humanBounds"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteBOOLField();
  PBDataWriterWriteInt32Field();
  if (self->_humanBounds)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setTimeRange:self->_timeRange];
  *(toCopy + 8) = self->_mouthExpression;
  *(toCopy + 9) = self->_position;
  [toCopy setBounds:self->_bounds];
  v4 = toCopy;
  *(toCopy + 48) = self->_isCloseup;
  *(toCopy + 4) = self->_faceID;
  if (self->_humanBounds)
  {
    [toCopy setHumanBounds:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  *(v5 + 32) = self->_mouthExpression;
  *(v5 + 36) = self->_position;
  v8 = [(VCPProtoBounds *)self->_bounds copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  *(v5 + 48) = self->_isCloseup;
  *(v5 + 16) = self->_faceID;
  v10 = [(VCPProtoBounds *)self->_humanBounds copyWithZone:zone];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  timeRange = self->_timeRange;
  if (timeRange | *(equalCopy + 5))
  {
    if (![(VCPProtoTimeRange *)timeRange isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (self->_mouthExpression != *(equalCopy + 8))
  {
    goto LABEL_15;
  }

  if (self->_position != *(equalCopy + 9))
  {
    goto LABEL_15;
  }

  bounds = self->_bounds;
  if (bounds | *(equalCopy + 1))
  {
    if (![(VCPProtoBounds *)bounds isEqual:?])
    {
      goto LABEL_15;
    }
  }

  if (self->_isCloseup)
  {
    if ((*(equalCopy + 48) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  if (self->_faceID != *(equalCopy + 4))
  {
    goto LABEL_15;
  }

  humanBounds = self->_humanBounds;
  if (humanBounds | *(equalCopy + 3))
  {
    v8 = [(VCPProtoBounds *)humanBounds isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_16:

  return v8;
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_mouthExpression) ^ [(VCPProtoTimeRange *)self->_timeRange hash];
  v4 = 2654435761 * self->_position;
  v5 = v3 ^ v4 ^ [(VCPProtoBounds *)self->_bounds hash];
  v6 = (2654435761 * self->_isCloseup) ^ (2654435761 * self->_faceID);
  return v5 ^ v6 ^ [(VCPProtoBounds *)self->_humanBounds hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 5);
  v11 = fromCopy;
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

    [(VCPProtoMovieFaceResult *)self setTimeRange:?];
  }

  fromCopy = v11;
LABEL_7:
  self->_mouthExpression = *(fromCopy + 8);
  self->_position = *(fromCopy + 9);
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

    [(VCPProtoMovieFaceResult *)self setBounds:?];
  }

  fromCopy = v11;
LABEL_13:
  self->_isCloseup = *(fromCopy + 48);
  self->_faceID = *(fromCopy + 4);
  humanBounds = self->_humanBounds;
  v10 = *(fromCopy + 3);
  if (humanBounds)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(VCPProtoBounds *)humanBounds mergeFrom:?];
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    [(VCPProtoMovieFaceResult *)self setHumanBounds:?];
  }

  fromCopy = v11;
LABEL_19:
}

@end