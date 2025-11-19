@interface MXRequestMitigated
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsMitigationType:(id)a3;
- (int)mitigationType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MXRequestMitigated

- (int)mitigationType
{
  if (*&self->_has)
  {
    return self->_mitigationType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsMitigationType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"UNKNOWN_MITIGATION_TYPE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ACOUSTIC_ID_DETECTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"WATERMARK_DETECTED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"FINGERPRINT_DETECTED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"FALSE_TRIGGER_DETECTED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"LENIENT_PROMPT_SILENCE"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"NON_PROMPT_SILENCE"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"NON_VOX_SILENCE"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXRequestMitigated;
  v4 = [(MXRequestMitigated *)&v8 description];
  v5 = [(MXRequestMitigated *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestId = self->_requestId;
  if (requestId)
  {
    [v3 setObject:requestId forKey:@"request_id"];
  }

  if (*&self->_has)
  {
    mitigationType = self->_mitigationType;
    if (mitigationType >= 8)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_mitigationType];
    }

    else
    {
      v7 = off_27991BD78[mitigationType];
    }

    [v4 setObject:v7 forKey:@"mitigation_type"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    mitigationType = self->_mitigationType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (self->_requestId)
  {
    v5 = v4;
    [v4 setRequestId:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_mitigationType;
    *(v4 + 24) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestId copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_mitigationType;
    *(v5 + 24) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  requestId = self->_requestId;
  if (requestId | *(v4 + 2))
  {
    if (![(NSString *)requestId isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v6 = (*(v4 + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) != 0 && self->_mitigationType == *(v4 + 2))
    {
      v6 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_mitigationType;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (*(v4 + 2))
  {
    v5 = v4;
    [(MXRequestMitigated *)self setRequestId:?];
    v4 = v5;
  }

  if (v4[6])
  {
    self->_mitigationType = v4[2];
    *&self->_has |= 1u;
  }
}

@end