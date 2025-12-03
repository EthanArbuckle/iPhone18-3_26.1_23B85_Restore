@interface VCPProtoLivePhotoVariationParams
+ (id)resultFromLegacyDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasLoopPeriod:(BOOL)period;
- (void)setHasLoopStart:(BOOL)start;
- (void)writeTo:(id)to;
@end

@implementation VCPProtoLivePhotoVariationParams

- (void)setHasLoopPeriod:(BOOL)period
{
  if (period)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasLoopStart:(BOOL)start
{
  if (start)
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
  v8.super_class = VCPProtoLivePhotoVariationParams;
  v4 = [(VCPProtoLivePhotoVariationParams *)&v8 description];
  dictionaryRepresentation = [(VCPProtoLivePhotoVariationParams *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_errorCode];
  [dictionary setObject:v4 forKey:@"errorCode"];

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_loopFadeLen];
    [dictionary setObject:v8 forKey:@"loopFadeLen"];

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

  v9 = [MEMORY[0x1E696AD98] numberWithInt:self->_loopPeriod];
  [dictionary setObject:v9 forKey:@"loopPeriod"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_loopStart];
    [dictionary setObject:v6 forKey:@"loopStart"];
  }

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
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

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[2] = self->_errorCode;
  has = self->_has;
  if (has)
  {
    toCopy[3] = self->_loopFadeLen;
    *(toCopy + 24) |= 1u;
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

  toCopy[4] = self->_loopPeriod;
  *(toCopy + 24) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[5] = self->_loopStart;
    *(toCopy + 24) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->_errorCode;
  has = self->_has;
  if (has)
  {
    *(result + 3) = self->_loopFadeLen;
    *(result + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(result + 4) = self->_loopPeriod;
  *(result + 24) |= 2u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 5) = self->_loopStart;
  *(result + 24) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_errorCode != *(equalCopy + 2))
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_loopFadeLen != *(equalCopy + 3))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_loopPeriod != *(equalCopy + 4))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_17;
  }

  v5 = (*(equalCopy + 24) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_loopStart != *(equalCopy + 5))
    {
      goto LABEL_17;
    }

    v5 = 1;
  }

LABEL_18:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_loopFadeLen;
  }

  else
  {
    v2 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_loopPeriod;
  }

  else
  {
    v3 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v4 = 2654435761 * self->_loopStart;
  }

  else
  {
    v4 = 0;
  }

  return v2 ^ v3 ^ v4 ^ (2654435761 * self->_errorCode);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_errorCode = fromCopy[2];
  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_loopFadeLen = fromCopy[3];
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((fromCopy[6] & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_loopPeriod = fromCopy[4];
  *&self->_has |= 2u;
  if ((fromCopy[6] & 4) != 0)
  {
LABEL_4:
    self->_loopStart = fromCopy[5];
    *&self->_has |= 4u;
  }

LABEL_5:
}

+ (id)resultFromLegacyDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v4 = objc_alloc_init(VCPProtoLivePhotoVariationParams);
    v5 = [dictionaryCopy objectForKeyedSubscript:@"Params"];
    v6 = [dictionaryCopy objectForKeyedSubscript:@"ErrorCode"];
    -[VCPProtoLivePhotoVariationParams setErrorCode:](v4, "setErrorCode:", [v6 intValue]);

    if (![(VCPProtoLivePhotoVariationParams *)v4 errorCode]&& v5)
    {
      v7 = [v5 objectForKeyedSubscript:@"loopFadeLen"];
      -[VCPProtoLivePhotoVariationParams setLoopFadeLen:](v4, "setLoopFadeLen:", [v7 intValue]);

      v8 = [v5 objectForKeyedSubscript:@"loopPeriod"];
      -[VCPProtoLivePhotoVariationParams setLoopPeriod:](v4, "setLoopPeriod:", [v8 intValue]);

      v9 = [v5 objectForKeyedSubscript:@"loopStart"];
      -[VCPProtoLivePhotoVariationParams setLoopStart:](v4, "setLoopStart:", [v9 intValue]);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)exportToLegacyDictionary
{
  v11[3] = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoVariationParams errorCode](self, "errorCode")}];
  [dictionary setObject:v4 forKeyedSubscript:@"ErrorCode"];

  if (![(VCPProtoLivePhotoVariationParams *)self errorCode])
  {
    v10[0] = @"loopFadeLen";
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoVariationParams loopFadeLen](self, "loopFadeLen")}];
    v11[0] = v5;
    v10[1] = @"loopPeriod";
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoVariationParams loopPeriod](self, "loopPeriod")}];
    v11[1] = v6;
    v10[2] = @"loopStart";
    v7 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoVariationParams loopStart](self, "loopStart")}];
    v11[2] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

    [dictionary setObject:v8 forKeyedSubscript:@"Params"];
  }

  return dictionary;
}

@end