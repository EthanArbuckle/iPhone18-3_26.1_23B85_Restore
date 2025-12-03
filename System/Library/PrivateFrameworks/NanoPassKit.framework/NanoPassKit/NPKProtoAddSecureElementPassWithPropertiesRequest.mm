@interface NPKProtoAddSecureElementPassWithPropertiesRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addPayloadData:(id)data;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoAddSecureElementPassWithPropertiesRequest

- (void)addPayloadData:(id)data
{
  dataCopy = data;
  payloadDatas = self->_payloadDatas;
  v8 = dataCopy;
  if (!payloadDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_payloadDatas;
    self->_payloadDatas = v6;

    dataCopy = v8;
    payloadDatas = self->_payloadDatas;
  }

  [(NSMutableArray *)payloadDatas addObject:dataCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAddSecureElementPassWithPropertiesRequest;
  v4 = [(NPKProtoAddSecureElementPassWithPropertiesRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoAddSecureElementPassWithPropertiesRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passUniqueID = self->_passUniqueID;
  if (passUniqueID)
  {
    [dictionary setObject:passUniqueID forKey:@"passUniqueID"];
  }

  payloadDatas = self->_payloadDatas;
  if (payloadDatas)
  {
    [v4 setObject:payloadDatas forKey:@"payloadData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_passUniqueID)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_payloadDatas;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_passUniqueID)
  {
    [toCopy setPassUniqueID:?];
  }

  if ([(NPKProtoAddSecureElementPassWithPropertiesRequest *)self payloadDatasCount])
  {
    [toCopy clearPayloadDatas];
    payloadDatasCount = [(NPKProtoAddSecureElementPassWithPropertiesRequest *)self payloadDatasCount];
    if (payloadDatasCount)
    {
      v5 = payloadDatasCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoAddSecureElementPassWithPropertiesRequest *)self payloadDataAtIndex:i];
        [toCopy addPayloadData:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_passUniqueID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_payloadDatas;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{zone, v16}];
        [v5 addPayloadData:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((passUniqueID = self->_passUniqueID, !(passUniqueID | equalCopy[1])) || -[NSString isEqual:](passUniqueID, "isEqual:")))
  {
    payloadDatas = self->_payloadDatas;
    if (payloadDatas | equalCopy[2])
    {
      v7 = [(NSMutableArray *)payloadDatas isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(NPKProtoAddSecureElementPassWithPropertiesRequest *)self setPassUniqueID:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 2);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoAddSecureElementPassWithPropertiesRequest *)self addPayloadData:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end