@interface NPKProtoRelevantPassTuple
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRelevantPassTuple

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRelevantPassTuple;
  v4 = [(NPKProtoRelevantPassTuple *)&v8 description];
  v5 = [(NPKProtoRelevantPassTuple *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passID = self->_passID;
  if (passID)
  {
    [v3 setObject:passID forKey:@"passID"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_passID)
  {
    [NPKProtoRelevantPassTuple writeTo:];
  }

  v6 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setPassID:self->_passID];
  if (self->_relevantText)
  {
    [v4 setRelevantText:?];
  }

  if (*&self->_has)
  {
    v4[24] = self->_shouldSuppressLiveActivity;
    v4[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passID copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v8 = [(NSString *)self->_relevantText copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_shouldSuppressLiveActivity;
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

  passID = self->_passID;
  if (passID | *(v4 + 1))
  {
    if (![(NSString *)passID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  relevantText = self->_relevantText;
  if (relevantText | *(v4 + 2))
  {
    if (![(NSString *)relevantText isEqual:?])
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

    if (self->_shouldSuppressLiveActivity)
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 1))
  {
    [(NPKProtoRelevantPassTuple *)self setPassID:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoRelevantPassTuple *)self setRelevantText:?];
    v4 = v5;
  }

  if (v4[28])
  {
    self->_shouldSuppressLiveActivity = v4[24];
    *&self->_has |= 1u;
  }
}

@end