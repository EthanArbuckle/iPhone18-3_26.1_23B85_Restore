@interface DRSProtoEnableDataGatheringRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoEnableDataGatheringRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoEnableDataGatheringRequest;
  v4 = [(DRSProtoEnableDataGatheringRequest *)&v8 description];
  dictionaryRepresentation = [(DRSProtoEnableDataGatheringRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  requestDescription = self->_requestDescription;
  if (requestDescription)
  {
    dictionaryRepresentation = [(DRSProtoRequestDescription *)requestDescription dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"request_description"];
  }

  logType = self->_logType;
  if (logType)
  {
    [dictionary setObject:logType forKey:@"log_type"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isContinue];
    [dictionary setObject:v7 forKey:@"is_continue"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_requestDescription)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_logType)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    isContinue = self->_isContinue;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_requestDescription)
  {
    [toCopy setRequestDescription:?];
    toCopy = v5;
  }

  if (self->_logType)
  {
    [v5 setLogType:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_isContinue;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DRSProtoRequestDescription *)self->_requestDescription copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_logType copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_isContinue;
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

  requestDescription = self->_requestDescription;
  if (requestDescription | *(equalCopy + 2))
  {
    if (![(DRSProtoRequestDescription *)requestDescription isEqual:?])
    {
      goto LABEL_8;
    }
  }

  logType = self->_logType;
  if (logType | *(equalCopy + 1))
  {
    if (![(NSString *)logType isEqual:?])
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

    if (self->_isContinue)
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
  v3 = [(DRSProtoRequestDescription *)self->_requestDescription hash];
  v4 = [(NSString *)self->_logType hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isContinue;
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
  requestDescription = self->_requestDescription;
  v6 = *(fromCopy + 2);
  v7 = fromCopy;
  if (requestDescription)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoRequestDescription *)requestDescription mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(DRSProtoEnableDataGatheringRequest *)self setRequestDescription:?];
  }

  fromCopy = v7;
LABEL_7:
  if (*(fromCopy + 1))
  {
    [(DRSProtoEnableDataGatheringRequest *)self setLogType:?];
    fromCopy = v7;
  }

  if (*(fromCopy + 28))
  {
    self->_isContinue = *(fromCopy + 24);
    *&self->_has |= 1u;
  }
}

@end