@interface HDCodableStartWorkoutAppResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableStartWorkoutAppResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableStartWorkoutAppResponse;
  v4 = [(HDCodableStartWorkoutAppResponse *)&v8 description];
  dictionaryRepresentation = [(HDCodableStartWorkoutAppResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [dictionary setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [v4 setObject:v6 forKey:@"success"];
  }

  launchError = self->_launchError;
  if (launchError)
  {
    dictionaryRepresentation = [(HDCodableError *)launchError dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"launchError"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_launchError)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestIdentifier)
  {
    [toCopy setRequestIdentifier:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_success;
    toCopy[28] |= 1u;
  }

  if (self->_launchError)
  {
    [v5 setLaunchError:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_success;
    *(v5 + 28) |= 1u;
  }

  v8 = [(HDCodableError *)self->_launchError copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)requestIdentifier isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(equalCopy + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(equalCopy + 24);
  if (!self->_success)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(equalCopy + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  launchError = self->_launchError;
  if (launchError | *(equalCopy + 1))
  {
    v8 = [(HDCodableError *)launchError isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_success;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(HDCodableError *)self->_launchError hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(HDCodableStartWorkoutAppResponse *)self setRequestIdentifier:?];
    fromCopy = v7;
  }

  if (fromCopy[28])
  {
    self->_success = fromCopy[24];
    *&self->_has |= 1u;
  }

  launchError = self->_launchError;
  v6 = *(fromCopy + 1);
  if (launchError)
  {
    if (v6)
    {
      [(HDCodableError *)launchError mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableStartWorkoutAppResponse *)self setLaunchError:?];
  }

  MEMORY[0x2821F96F8]();
}

@end