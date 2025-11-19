@interface NPKProtoStatusForShareableCredentialsResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAggregateStatus:(id)a3;
- (unint64_t)hash;
- (void)addUpdatedCredentialsData:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStatusForShareableCredentialsResponse

- (int)StringAsAggregateStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Available"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Consumed"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Revoked"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Expired"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addUpdatedCredentialsData:(id)a3
{
  v4 = a3;
  updatedCredentialsDatas = self->_updatedCredentialsDatas;
  v8 = v4;
  if (!updatedCredentialsDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_updatedCredentialsDatas;
    self->_updatedCredentialsDatas = v6;

    v4 = v8;
    updatedCredentialsDatas = self->_updatedCredentialsDatas;
  }

  [(NSMutableArray *)updatedCredentialsDatas addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStatusForShareableCredentialsResponse;
  v4 = [(NPKProtoStatusForShareableCredentialsResponse *)&v8 description];
  v5 = [(NPKProtoStatusForShareableCredentialsResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  aggregateStatus = self->_aggregateStatus;
  if (aggregateStatus >= 5)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_aggregateStatus];
  }

  else
  {
    v5 = off_279945610[aggregateStatus];
  }

  [v3 setObject:v5 forKey:@"aggregateStatus"];

  updatedCredentialsDatas = self->_updatedCredentialsDatas;
  if (updatedCredentialsDatas)
  {
    [v3 setObject:updatedCredentialsDatas forKey:@"updatedCredentialsData"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  aggregateStatus = self->_aggregateStatus;
  PBDataWriterWriteInt32Field();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_updatedCredentialsDatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  v8[2] = self->_aggregateStatus;
  if ([(NPKProtoStatusForShareableCredentialsResponse *)self updatedCredentialsDatasCount])
  {
    [v8 clearUpdatedCredentialsDatas];
    v4 = [(NPKProtoStatusForShareableCredentialsResponse *)self updatedCredentialsDatasCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStatusForShareableCredentialsResponse *)self updatedCredentialsDataAtIndex:i];
        [v8 addUpdatedCredentialsData:v7];
      }
    }
  }

  if (self->_errorData)
  {
    [v8 setErrorData:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_aggregateStatus;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_updatedCredentialsDatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v16 + 1) + 8 * v10) copyWithZone:{a3, v16}];
        [v5 addUpdatedCredentialsData:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_errorData copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_aggregateStatus == *(v4 + 2) && ((updatedCredentialsDatas = self->_updatedCredentialsDatas, !(updatedCredentialsDatas | v4[3])) || -[NSMutableArray isEqual:](updatedCredentialsDatas, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | v4[2])
    {
      v7 = [(NSData *)errorData isEqual:?];
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

- (unint64_t)hash
{
  v3 = 2654435761 * self->_aggregateStatus;
  v4 = [(NSMutableArray *)self->_updatedCredentialsDatas hash];
  return v4 ^ [(NSData *)self->_errorData hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_aggregateStatus = *(v4 + 2);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 3);
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

        [(NPKProtoStatusForShareableCredentialsResponse *)self addUpdatedCredentialsData:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 2))
  {
    [(NPKProtoStatusForShareableCredentialsResponse *)self setErrorData:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end