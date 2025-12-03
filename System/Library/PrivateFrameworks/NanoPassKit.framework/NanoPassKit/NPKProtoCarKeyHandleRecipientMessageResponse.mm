@interface NPKProtoCarKeyHandleRecipientMessageResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoCarKeyHandleRecipientMessageResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyHandleRecipientMessageResponse;
  v4 = [(NPKProtoCarKeyHandleRecipientMessageResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoCarKeyHandleRecipientMessageResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  resultData = self->_resultData;
  if (resultData)
  {
    [dictionary setObject:resultData forKey:@"resultData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_resultData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  resultData = self->_resultData;
  if (resultData)
  {
    [to setResultData:resultData];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_resultData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    resultData = self->_resultData;
    if (resultData | equalCopy[1])
    {
      v6 = [(NSData *)resultData isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(NPKProtoCarKeyHandleRecipientMessageResponse *)self setResultData:?];
  }
}

@end