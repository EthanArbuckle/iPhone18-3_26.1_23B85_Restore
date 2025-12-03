@interface NACListeningModesMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAvailableListeningMode:(id)mode;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NACListeningModesMessage

- (void)addAvailableListeningMode:(id)mode
{
  modeCopy = mode;
  availableListeningModes = self->_availableListeningModes;
  v8 = modeCopy;
  if (!availableListeningModes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_availableListeningModes;
    self->_availableListeningModes = v6;

    modeCopy = v8;
    availableListeningModes = self->_availableListeningModes;
  }

  [(NSMutableArray *)availableListeningModes addObject:modeCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NACListeningModesMessage;
  v4 = [(NACListeningModesMessage *)&v8 description];
  dictionaryRepresentation = [(NACListeningModesMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  availableListeningModes = self->_availableListeningModes;
  if (availableListeningModes)
  {
    [dictionary setObject:availableListeningModes forKey:@"availableListeningMode"];
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

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NACListeningModesMessage *)self availableListeningModesCount])
  {
    [toCopy clearAvailableListeningModes];
    availableListeningModesCount = [(NACListeningModesMessage *)self availableListeningModesCount];
    if (availableListeningModesCount)
    {
      v5 = availableListeningModesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NACListeningModesMessage *)self availableListeningModeAtIndex:i];
        [toCopy addAvailableListeningMode:v7];
      }
    }
  }

  if (self->_currentListeningMode)
  {
    [toCopy setCurrentListeningMode:?];
  }

  v8 = toCopy;
  if (self->_category)
  {
    [toCopy setCategory:?];
    v8 = toCopy;
  }

  if (*&self->_has)
  {
    v8[10] = self->_originIdentifier;
    *(v8 + 44) |= 1u;
  }

  if (self->_error)
  {
    [toCopy setError:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v11 = [*(*(&v20 + 1) + 8 * v10) copyWithZone:{zone, v20}];
        [v5 addAvailableListeningMode:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_currentListeningMode copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v14 = [(NSString *)self->_category copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  if (*&self->_has)
  {
    *(v5 + 40) = self->_originIdentifier;
    *(v5 + 44) |= 1u;
  }

  v16 = [(NSData *)self->_error copyWithZone:zone, v20];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  availableListeningModes = self->_availableListeningModes;
  if (availableListeningModes | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)availableListeningModes isEqual:?])
    {
      goto LABEL_15;
    }
  }

  currentListeningMode = self->_currentListeningMode;
  if (currentListeningMode | *(equalCopy + 3))
  {
    if (![(NSString *)currentListeningMode isEqual:?])
    {
      goto LABEL_15;
    }
  }

  category = self->_category;
  if (category | *(equalCopy + 2))
  {
    if (![(NSString *)category isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v8 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_originIdentifier != *(equalCopy + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 44))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  error = self->_error;
  if (error | *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 1);
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

  if (*(fromCopy + 3))
  {
    [(NACListeningModesMessage *)self setCurrentListeningMode:?];
  }

  if (*(fromCopy + 2))
  {
    [(NACListeningModesMessage *)self setCategory:?];
  }

  if (*(fromCopy + 44))
  {
    self->_originIdentifier = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(NACListeningModesMessage *)self setError:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end