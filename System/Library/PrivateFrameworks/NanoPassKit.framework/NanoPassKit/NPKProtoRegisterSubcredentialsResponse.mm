@interface NPKProtoRegisterSubcredentialsResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addErrorsData:(id)data;
- (void)addPassesData:(id)data;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRegisterSubcredentialsResponse

- (void)addPassesData:(id)data
{
  dataCopy = data;
  passesDatas = self->_passesDatas;
  v8 = dataCopy;
  if (!passesDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_passesDatas;
    self->_passesDatas = v6;

    dataCopy = v8;
    passesDatas = self->_passesDatas;
  }

  [(NSMutableArray *)passesDatas addObject:dataCopy];
}

- (void)addErrorsData:(id)data
{
  dataCopy = data;
  errorsDatas = self->_errorsDatas;
  v8 = dataCopy;
  if (!errorsDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_errorsDatas;
    self->_errorsDatas = v6;

    dataCopy = v8;
    errorsDatas = self->_errorsDatas;
  }

  [(NSMutableArray *)errorsDatas addObject:dataCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRegisterSubcredentialsResponse;
  v4 = [(NPKProtoRegisterSubcredentialsResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRegisterSubcredentialsResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passesDatas = self->_passesDatas;
  if (passesDatas)
  {
    [dictionary setObject:passesDatas forKey:@"passesData"];
  }

  errorsDatas = self->_errorsDatas;
  if (errorsDatas)
  {
    [v4 setObject:errorsDatas forKey:@"errorsData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v5 = self->_passesDatas;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      v9 = 0;
      do
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_errorsDatas;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        PBDataWriterWriteDataField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoRegisterSubcredentialsResponse *)self passesDatasCount])
  {
    [toCopy clearPassesDatas];
    passesDatasCount = [(NPKProtoRegisterSubcredentialsResponse *)self passesDatasCount];
    if (passesDatasCount)
    {
      v5 = passesDatasCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoRegisterSubcredentialsResponse *)self passesDataAtIndex:i];
        [toCopy addPassesData:v7];
      }
    }
  }

  if ([(NPKProtoRegisterSubcredentialsResponse *)self errorsDatasCount])
  {
    [toCopy clearErrorsDatas];
    errorsDatasCount = [(NPKProtoRegisterSubcredentialsResponse *)self errorsDatasCount];
    if (errorsDatasCount)
    {
      v9 = errorsDatasCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoRegisterSubcredentialsResponse *)self errorsDataAtIndex:j];
        [toCopy addErrorsData:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = self->_passesDatas;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      v10 = 0;
      do
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v24 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addPassesData:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_errorsDatas;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * v16) copyWithZone:{zone, v20}];
        [v5 addErrorsData:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((passesDatas = self->_passesDatas, !(passesDatas | equalCopy[2])) || -[NSMutableArray isEqual:](passesDatas, "isEqual:")))
  {
    errorsDatas = self->_errorsDatas;
    if (errorsDatas | equalCopy[1])
    {
      v7 = [(NSMutableArray *)errorsDatas isEqual:?];
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
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoRegisterSubcredentialsResponse *)self addPassesData:*(*(&v20 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = fromCopy[1];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoRegisterSubcredentialsResponse *)self addErrorsData:*(*(&v16 + 1) + 8 * v14++), v16];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end