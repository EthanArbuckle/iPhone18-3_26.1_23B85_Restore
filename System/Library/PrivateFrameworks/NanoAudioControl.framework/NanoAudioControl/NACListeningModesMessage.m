@interface NACListeningModesMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAvailableListeningMode:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NACListeningModesMessage

- (void)addAvailableListeningMode:(id)a3
{
  v4 = a3;
  availableListeningModes = self->_availableListeningModes;
  v8 = v4;
  if (!availableListeningModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_availableListeningModes;
    self->_availableListeningModes = v6;

    v4 = v8;
    availableListeningModes = self->_availableListeningModes;
  }

  [(NSMutableArray *)availableListeningModes addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NACListeningModesMessage;
  v4 = [(NACListeningModesMessage *)&v8 description];
  v5 = [(NACListeningModesMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  availableListeningModes = self->_availableListeningModes;
  if (availableListeningModes)
  {
    [v3 setObject:availableListeningModes forKey:@"availableListeningMode"];
  }

  currentListeningMode = self->_currentListeningMode;
  if (currentListeningMode)
  {
    [v4 setObject:currentListeningMode forKey:@"currentListeningMode"];
  }

  category = self->_category;
  if (category)
  {
    [v4 setObject:category forKey:@"category"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_originIdentifier];
    [v4 setObject:v8 forKey:@"originIdentifier"];
  }

  error = self->_error;
  if (error)
  {
    [v4 setObject:error forKey:@"error"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_availableListeningModes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_currentListeningMode)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_category)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    originIdentifier = self->_originIdentifier;
    PBDataWriterWriteInt32Field();
  }

  if (self->_error)
  {
    PBDataWriterWriteDataField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(NACListeningModesMessage *)self availableListeningModesCount])
  {
    [v9 clearAvailableListeningModes];
    v4 = [(NACListeningModesMessage *)self availableListeningModesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NACListeningModesMessage *)self availableListeningModeAtIndex:i];
        [v9 addAvailableListeningMode:v7];
      }
    }
  }

  if (self->_currentListeningMode)
  {
    [v9 setCurrentListeningMode:?];
  }

  v8 = v9;
  if (self->_category)
  {
    [v9 setCategory:?];
    v8 = v9;
  }

  if (*&self->_has)
  {
    v8[10] = self->_originIdentifier;
    *(v8 + 44) |= 1u;
  }

  if (self->_error)
  {
    [v9 setError:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_availableListeningModes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) copyWithZone:{a3, v20}];
        [v5 addAvailableListeningMode:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_currentListeningMode copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_category copyWithZone:a3];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_originIdentifier;
    *(v5 + 44) |= 1u;
  }

  v16 = [(NSData *)self->_error copyWithZone:a3, v20];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  availableListeningModes = self->_availableListeningModes;
  if (availableListeningModes | *(v4 + 1))
  {
    if (![(NSMutableArray *)availableListeningModes isEqual:?])
    {
      goto LABEL_15;
    }
  }

  currentListeningMode = self->_currentListeningMode;
  if (currentListeningMode | *(v4 + 3))
  {
    if (![(NSString *)currentListeningMode isEqual:?])
    {
      goto LABEL_15;
    }
  }

  category = self->_category;
  if (category | *(v4 + 2))
  {
    if (![(NSString *)category isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_originIdentifier != *(v4 + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  error = self->_error;
  if (error | *(v4 + 4))
  {
    v10 = [(NSData *)error isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_availableListeningModes hash];
  v4 = [(NSString *)self->_currentListeningMode hash];
  v5 = [(NSString *)self->_category hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_originIdentifier;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ [(NSData *)self->_error hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(v4 + 1);
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

        [(NACListeningModesMessage *)self addAvailableListeningMode:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 3))
  {
    [(NACListeningModesMessage *)self setCurrentListeningMode:?];
  }

  if (*(v4 + 2))
  {
    [(NACListeningModesMessage *)self setCategory:?];
  }

  if (*(v4 + 44))
  {
    self->_originIdentifier = *(v4 + 10);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(NACListeningModesMessage *)self setError:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end