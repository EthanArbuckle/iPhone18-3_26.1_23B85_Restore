@interface DRSProtoEnableDataGatheringRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation DRSProtoEnableDataGatheringRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoEnableDataGatheringRequest;
  v4 = [(DRSProtoEnableDataGatheringRequest *)&v8 description];
  v5 = [(DRSProtoEnableDataGatheringRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  requestDescription = self->_requestDescription;
  if (requestDescription)
  {
    v5 = [(DRSProtoRequestDescription *)requestDescription dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"request_description"];
  }

  logType = self->_logType;
  if (logType)
  {
    [v3 setObject:logType forKey:@"log_type"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isContinue];
    [v3 setObject:v7 forKey:@"is_continue"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_requestDescription)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_logType)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    isContinue = self->_isContinue;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestDescription)
  {
    [v4 setRequestDescription:?];
    v4 = v5;
  }

  if (self->_logType)
  {
    [v5 setLogType:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_isContinue;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(DRSProtoRequestDescription *)self->_requestDescription copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_logType copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_isContinue;
    *(v5 + 28) |= 1u;
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

  requestDescription = self->_requestDescription;
  if (requestDescription | *(v4 + 2))
  {
    if (![(DRSProtoRequestDescription *)requestDescription isEqual:?])
    {
      goto LABEL_8;
    }
  }

  logType = self->_logType;
  if (logType | *(v4 + 1))
  {
    if (![(NSString *)logType isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_9;
    }

    if (self->_isContinue)
    {
      if ((*(v4 + 24) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  requestDescription = self->_requestDescription;
  v6 = *(v4 + 2);
  v7 = v4;
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

  v4 = v7;
LABEL_7:
  if (*(v4 + 1))
  {
    [(DRSProtoEnableDataGatheringRequest *)self setLogType:?];
    v4 = v7;
  }

  if (*(v4 + 28))
  {
    self->_isContinue = *(v4 + 24);
    *&self->_has |= 1u;
  }
}

@end