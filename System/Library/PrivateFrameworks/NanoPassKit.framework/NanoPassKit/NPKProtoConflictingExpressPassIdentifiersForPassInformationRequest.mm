@interface NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addReferenceExpressPassConfigurations:(id)configurations;
- (void)addReferenceExpressPassesInformation:(id)information;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest

- (void)addReferenceExpressPassesInformation:(id)information
{
  informationCopy = information;
  referenceExpressPassesInformations = self->_referenceExpressPassesInformations;
  v8 = informationCopy;
  if (!referenceExpressPassesInformations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_referenceExpressPassesInformations;
    self->_referenceExpressPassesInformations = v6;

    informationCopy = v8;
    referenceExpressPassesInformations = self->_referenceExpressPassesInformations;
  }

  [(NSMutableArray *)referenceExpressPassesInformations addObject:informationCopy];
}

- (void)addReferenceExpressPassConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  referenceExpressPassConfigurations = self->_referenceExpressPassConfigurations;
  v8 = configurationsCopy;
  if (!referenceExpressPassConfigurations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_referenceExpressPassConfigurations;
    self->_referenceExpressPassConfigurations = v6;

    configurationsCopy = v8;
    referenceExpressPassConfigurations = self->_referenceExpressPassConfigurations;
  }

  [(NSMutableArray *)referenceExpressPassConfigurations addObject:configurationsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest;
  v4 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  expressPassInformation = self->_expressPassInformation;
  if (expressPassInformation)
  {
    [dictionary setObject:expressPassInformation forKey:@"expressPassInformation"];
  }

  referenceExpressPassesInformations = self->_referenceExpressPassesInformations;
  if (referenceExpressPassesInformations)
  {
    [v4 setObject:referenceExpressPassesInformations forKey:@"referenceExpressPassesInformation"];
  }

  expressPassConfiguration = self->_expressPassConfiguration;
  if (expressPassConfiguration)
  {
    [v4 setObject:expressPassConfiguration forKey:@"expressPassConfiguration"];
  }

  referenceExpressPassConfigurations = self->_referenceExpressPassConfigurations;
  if (referenceExpressPassConfigurations)
  {
    [v4 setObject:referenceExpressPassConfigurations forKey:@"referenceExpressPassConfigurations"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_expressPassInformation)
  {
    PBDataWriterWriteDataField();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_referenceExpressPassesInformations;
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

  if (self->_expressPassConfiguration)
  {
    PBDataWriterWriteDataField();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_referenceExpressPassConfigurations;
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
  if (self->_expressPassInformation)
  {
    [toCopy setExpressPassInformation:?];
  }

  if ([(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self referenceExpressPassesInformationsCount])
  {
    [toCopy clearReferenceExpressPassesInformations];
    referenceExpressPassesInformationsCount = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self referenceExpressPassesInformationsCount];
    if (referenceExpressPassesInformationsCount)
    {
      v5 = referenceExpressPassesInformationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self referenceExpressPassesInformationAtIndex:i];
        [toCopy addReferenceExpressPassesInformation:v7];
      }
    }
  }

  if (self->_expressPassConfiguration)
  {
    [toCopy setExpressPassConfiguration:?];
  }

  if ([(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self referenceExpressPassConfigurationsCount])
  {
    [toCopy clearReferenceExpressPassConfigurations];
    referenceExpressPassConfigurationsCount = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self referenceExpressPassConfigurationsCount];
    if (referenceExpressPassConfigurationsCount)
    {
      v9 = referenceExpressPassConfigurationsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self referenceExpressPassConfigurationsAtIndex:j];
        [toCopy addReferenceExpressPassConfigurations:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_expressPassInformation copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = self->_referenceExpressPassesInformations;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    do
    {
      v12 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v28 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addReferenceExpressPassesInformation:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v10);
  }

  v14 = [(NSData *)self->_expressPassConfiguration copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_referenceExpressPassConfigurations;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * v20) copyWithZone:{zone, v24}];
        [v5 addReferenceExpressPassConfigurations:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((expressPassInformation = self->_expressPassInformation, !(expressPassInformation | equalCopy[2])) || -[NSData isEqual:](expressPassInformation, "isEqual:")) && ((referenceExpressPassesInformations = self->_referenceExpressPassesInformations, !(referenceExpressPassesInformations | equalCopy[4])) || -[NSMutableArray isEqual:](referenceExpressPassesInformations, "isEqual:")) && ((expressPassConfiguration = self->_expressPassConfiguration, !(expressPassConfiguration | equalCopy[1])) || -[NSData isEqual:](expressPassConfiguration, "isEqual:")))
  {
    referenceExpressPassConfigurations = self->_referenceExpressPassConfigurations;
    if (referenceExpressPassConfigurations | equalCopy[3])
    {
      v9 = [(NSMutableArray *)referenceExpressPassConfigurations isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_expressPassInformation hash];
  v4 = [(NSMutableArray *)self->_referenceExpressPassesInformations hash]^ v3;
  v5 = [(NSData *)self->_expressPassConfiguration hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_referenceExpressPassConfigurations hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self setExpressPassInformation:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(fromCopy + 4);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self addReferenceExpressPassesInformation:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self setExpressPassConfiguration:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoConflictingExpressPassIdentifiersForPassInformationRequest *)self addReferenceExpressPassConfigurations:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end