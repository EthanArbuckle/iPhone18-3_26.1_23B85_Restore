@interface VCPProtoMovieCameraMotionResult
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoMovieCameraMotionResult

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  memset(&v14, 0, sizeof(v14));
  CMTimeRangeMakeFromDictionary(&v14, dictionaryCopy);
  v4 = [(__CFDictionary *)dictionaryCopy objectForKeyedSubscript:@"flags"];
  v5 = v4;
  if ((v14.start.flags & 1) == 0)
  {
    v6 = 0;
    goto LABEL_3;
  }

  v6 = 0;
  if ((v14.duration.flags & 1) != 0 && !v14.duration.epoch)
  {
    v6 = 0;
    if ((v14.duration.value & 0x8000000000000000) == 0)
    {
      if (v4)
      {
        v6 = objc_alloc_init(VCPProtoMovieCameraMotionResult);
        v13 = v14;
        v8 = [VCPProtoTimeRange timeRangeWithCMTimeRange:&v13];
        [(VCPProtoMovieCameraMotionResult *)v6 setTimeRange:v8];

        unsignedIntegerValue = [v5 unsignedIntegerValue];
        v10 = unsignedIntegerValue;
        [(VCPProtoMovieCameraMotionResult *)v6 setIsFast:(unsignedIntegerValue >> 16) & 1];
        v11 = v10 & 0xFFC0;
        if (v11 <= 0x3FF)
        {
          if ((v10 & 0xFFC0u) > 0xFF)
          {
            if (v11 == 256)
            {
              v12 = 3;
              goto LABEL_32;
            }

            if (v11 == 512)
            {
              v12 = 4;
              goto LABEL_32;
            }
          }

          else
          {
            if (v11 == 64)
            {
              v12 = 1;
              goto LABEL_32;
            }

            if (v11 == 128)
            {
              v12 = 2;
              goto LABEL_32;
            }
          }
        }

        else if ((v10 & 0xFFC0u) <= 0xFFF)
        {
          if (v11 == 1024)
          {
            v12 = 5;
            goto LABEL_32;
          }

          if (v11 == 2048)
          {
            v12 = 6;
            goto LABEL_32;
          }
        }

        else
        {
          switch(v11)
          {
            case 0x1000u:
              v12 = 7;
              goto LABEL_32;
            case 0x2000u:
              v12 = 8;
              goto LABEL_32;
            case 0x4000u:
              v12 = 9;
LABEL_32:
              [(VCPProtoMovieCameraMotionResult *)v6 setMotionType:v12];
              goto LABEL_3;
          }
        }

        v12 = 0;
        goto LABEL_32;
      }
    }
  }

LABEL_3:

  return v6;
}

- (id)exportToLegacyDictionary
{
  if ([(VCPProtoMovieCameraMotionResult *)self isFast])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(VCPProtoMovieCameraMotionResult *)self motionType]- 1;
  if (v4 > 8)
  {
    v5 = 0x8000;
  }

  else
  {
    v5 = qword_1C9F62DA8[v4];
  }

  timeRange = [(VCPProtoMovieCameraMotionResult *)self timeRange];
  v7 = timeRange;
  if (timeRange)
  {
    [timeRange timeRangeValue];
  }

  else
  {
    memset(&v12, 0, sizeof(v12));
  }

  range = v12;
  v8 = CMTimeRangeCopyAsDictionary(&range, 0);
  v9 = [(__CFDictionary *)v8 mutableCopy];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v3 | v5];
  [v9 setObject:v10 forKeyedSubscript:@"flags"];

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = VCPProtoMovieCameraMotionResult;
  v4 = [(VCPProtoMovieCameraMotionResult *)&v8 description];
  dictionaryRepresentation = [(VCPProtoMovieCameraMotionResult *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_motionType];
  [dictionary setObject:v6 forKey:@"motionType"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFast];
  [dictionary setObject:v7 forKey:@"isFast"];

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteSubmessage();
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  timeRange = self->_timeRange;
  toCopy = to;
  [toCopy setTimeRange:timeRange];
  *(toCopy + 2) = self->_motionType;
  *(toCopy + 24) = self->_isFast;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(VCPProtoTimeRange *)self->_timeRange copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 8) = self->_motionType;
  *(v5 + 24) = self->_isFast;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = [equalCopy isMemberOfClass:objc_opt_class()] && ((timeRange = self->_timeRange, !(timeRange | *(equalCopy + 2))) || -[VCPProtoTimeRange isEqual:](timeRange, "isEqual:")) && self->_motionType == *(equalCopy + 2) && self->_isFast == equalCopy[24];

  return v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  timeRange = self->_timeRange;
  v6 = *(fromCopy + 2);
  if (timeRange)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoTimeRange *)timeRange mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(VCPProtoMovieCameraMotionResult *)self setTimeRange:?];
  }

  fromCopy = v7;
LABEL_7:
  self->_motionType = *(fromCopy + 2);
  self->_isFast = *(fromCopy + 24);
}

@end