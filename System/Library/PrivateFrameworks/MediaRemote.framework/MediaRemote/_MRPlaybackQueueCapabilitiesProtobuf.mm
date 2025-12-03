@interface _MRPlaybackQueueCapabilitiesProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRequestByRange:(BOOL)range;
- (void)setHasRequestByRequest:(BOOL)request;
- (void)writeTo:(id)to;
@end

@implementation _MRPlaybackQueueCapabilitiesProtobuf

- (void)setHasRequestByRange:(BOOL)range
{
  if (range)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasRequestByRequest:(BOOL)request
{
  if (request)
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
  v8.super_class = _MRPlaybackQueueCapabilitiesProtobuf;
  v4 = [(_MRPlaybackQueueCapabilitiesProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRPlaybackQueueCapabilitiesProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_requestByRange];
    [dictionary setObject:v7 forKey:@"requestByRange"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_requestByIdentifiers];
  [dictionary setObject:v8 forKey:@"requestByIdentifiers"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_requestByRequest];
    [dictionary setObject:v5 forKey:@"requestByRequest"];
  }

LABEL_5:

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 2) != 0)
  {
    requestByRange = self->_requestByRange;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  requestByIdentifiers = self->_requestByIdentifiers;
  PBDataWriterWriteBOOLField();
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    requestByRequest = self->_requestByRequest;
    PBDataWriterWriteBOOLField();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[9] = self->_requestByRange;
    toCopy[12] |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  toCopy[8] = self->_requestByIdentifiers;
  toCopy[12] |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    toCopy[10] = self->_requestByRequest;
    toCopy[12] |= 4u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(result + 9) = self->_requestByRange;
    *(result + 12) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 8) = self->_requestByIdentifiers;
  *(result + 12) |= 1u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 10) = self->_requestByRequest;
  *(result + 12) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[12] & 2) == 0)
    {
      goto LABEL_24;
    }

    v6 = equalCopy[9];
    if (self->_requestByRange)
    {
      if ((equalCopy[9] & 1) == 0)
      {
        goto LABEL_24;
      }
    }

    else if (equalCopy[9])
    {
      goto LABEL_24;
    }
  }

  else if ((equalCopy[12] & 2) != 0)
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 1) == 0)
  {
    if ((equalCopy[12] & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_24:
    v5 = 0;
    goto LABEL_25;
  }

  if ((equalCopy[12] & 1) == 0)
  {
    goto LABEL_24;
  }

  v7 = equalCopy[8];
  if (self->_requestByIdentifiers)
  {
    if ((equalCopy[8] & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (equalCopy[8])
  {
    goto LABEL_24;
  }

LABEL_6:
  v5 = (equalCopy[12] & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[12] & 4) != 0)
    {
      if (self->_requestByRequest)
      {
        if (equalCopy[10])
        {
          goto LABEL_26;
        }
      }

      else if (!equalCopy[10])
      {
LABEL_26:
        v5 = 1;
        goto LABEL_25;
      }
    }

    goto LABEL_24;
  }

LABEL_25:

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) == 0)
  {
    v2 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_requestByRange;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_requestByIdentifiers;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_requestByRequest;
  return v3 ^ v2 ^ v4;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[12];
  if ((v5 & 2) != 0)
  {
    self->_requestByRange = fromCopy[9];
    *&self->_has |= 2u;
    v5 = fromCopy[12];
    if (!v5)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if (!fromCopy[12])
  {
    goto LABEL_3;
  }

  self->_requestByIdentifiers = fromCopy[8];
  *&self->_has |= 1u;
  if ((fromCopy[12] & 4) != 0)
  {
LABEL_4:
    self->_requestByRequest = fromCopy[10];
    *&self->_has |= 4u;
  }

LABEL_5:
}

@end