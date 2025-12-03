@interface NPKProtoRelevantPassTuple
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRelevantPassTuple

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRelevantPassTuple;
  v4 = [(NPKProtoRelevantPassTuple *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRelevantPassTuple *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passID = self->_passID;
  if (passID)
  {
    [dictionary setObject:passID forKey:@"passID"];
  }

  relevantText = self->_relevantText;
  if (relevantText)
  {
    [v4 setObject:relevantText forKey:@"relevantText"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_shouldSuppressLiveActivity];
    [v4 setObject:v7 forKey:@"shouldSuppressLiveActivity"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_passID)
  {
    [NPKProtoRelevantPassTuple writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_relevantText)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    shouldSuppressLiveActivity = self->_shouldSuppressLiveActivity;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPassID:self->_passID];
  if (self->_relevantText)
  {
    [toCopy setRelevantText:?];
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_shouldSuppressLiveActivity;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passID copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_relevantText copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_shouldSuppressLiveActivity;
    *(v5 + 28) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  passID = self->_passID;
  if (passID | *(equalCopy + 1))
  {
    if (![(NSString *)passID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  relevantText = self->_relevantText;
  if (relevantText | *(equalCopy + 2))
  {
    if (![(NSString *)relevantText isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(equalCopy + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_shouldSuppressLiveActivity)
    {
      if ((*(equalCopy + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_8;
    }

    v7 = 1;
  }

LABEL_9:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_passID hash];
  v4 = [(NSString *)self->_relevantText hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_shouldSuppressLiveActivity;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(NPKProtoRelevantPassTuple *)self setPassID:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoRelevantPassTuple *)self setRelevantText:?];
    fromCopy = v5;
  }

  if (fromCopy[28])
  {
    self->_shouldSuppressLiveActivity = fromCopy[24];
    *&self->_has |= 1u;
  }
}

@end