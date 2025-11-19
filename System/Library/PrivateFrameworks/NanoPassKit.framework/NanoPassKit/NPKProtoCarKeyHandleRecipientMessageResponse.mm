@interface NPKProtoCarKeyHandleRecipientMessageResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoCarKeyHandleRecipientMessageResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoCarKeyHandleRecipientMessageResponse;
  v4 = [(NPKProtoCarKeyHandleRecipientMessageResponse *)&v8 description];
  v5 = [(NPKProtoCarKeyHandleRecipientMessageResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  resultData = self->_resultData;
  if (resultData)
  {
    [v3 setObject:resultData forKey:@"resultData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_resultData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  resultData = self->_resultData;
  if (resultData)
  {
    [a3 setResultData:resultData];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_resultData copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    resultData = self->_resultData;
    if (resultData | v4[1])
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(NPKProtoCarKeyHandleRecipientMessageResponse *)self setResultData:?];
  }
}

@end