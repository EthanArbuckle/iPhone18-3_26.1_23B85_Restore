@interface VCPProtoLivePhotoVariationParams
+ (id)resultFromLegacyDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)exportToLegacyDictionary;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLoopPeriod:(BOOL)a3;
- (void)setHasLoopStart:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCPProtoLivePhotoVariationParams

- (void)setHasLoopPeriod:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasLoopStart:(BOOL)a3
{
  if (a3)
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
  v5 = [(VCPProtoLivePhotoVariationParams *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_errorCode];
  [v3 setObject:v4 forKey:@"errorCode"];

  has = self->_has;
  if (has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_loopFadeLen];
    [v3 setObject:v8 forKey:@"loopFadeLen"];

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
  [v3 setObject:v9 forKey:@"loopPeriod"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_loopStart];
    [v3 setObject:v6 forKey:@"loopStart"];
  }

LABEL_5:

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[2] = self->_errorCode;
  has = self->_has;
  if (has)
  {
    v4[3] = self->_loopFadeLen;
    *(v4 + 24) |= 1u;
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

  v4[4] = self->_loopPeriod;
  *(v4 + 24) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v4[5] = self->_loopStart;
    *(v4 + 24) |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_errorCode != *(v4 + 2))
  {
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_loopFadeLen != *(v4 + 3))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) == 0 || self->_loopPeriod != *(v4 + 4))
    {
      goto LABEL_17;
    }
  }

  else if ((*(v4 + 24) & 2) != 0)
  {
    goto LABEL_17;
  }

  v5 = (*(v4 + 24) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 24) & 4) == 0 || self->_loopStart != *(v4 + 5))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_errorCode = v4[2];
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_loopFadeLen = v4[3];
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
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

  else if ((v4[6] & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_loopPeriod = v4[4];
  *&self->_has |= 2u;
  if ((v4[6] & 4) != 0)
  {
LABEL_4:
    self->_loopStart = v4[5];
    *&self->_has |= 4u;
  }

LABEL_5:
}

+ (id)resultFromLegacyDictionary:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(VCPProtoLivePhotoVariationParams);
    v5 = [v3 objectForKeyedSubscript:@"Params"];
    v6 = [v3 objectForKeyedSubscript:@"ErrorCode"];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[VCPProtoLivePhotoVariationParams errorCode](self, "errorCode")}];
  [v3 setObject:v4 forKeyedSubscript:@"ErrorCode"];

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

    [v3 setObject:v8 forKeyedSubscript:@"Params"];
  }

  return v3;
}

@end