@interface BLTPBContact
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBContact

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBContact;
  v4 = [(BLTPBContact *)&v8 description];
  v5 = [(BLTPBContact *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  handle = self->_handle;
  if (handle)
  {
    [v3 setObject:handle forKey:@"handle"];
  }

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_handleType];
  [v4 setObject:v6 forKey:@"handleType"];

  serviceName = self->_serviceName;
  if (serviceName)
  {
    [v4 setObject:serviceName forKey:@"serviceName"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  cnContactIdentifier = self->_cnContactIdentifier;
  if (cnContactIdentifier)
  {
    [v4 setObject:cnContactIdentifier forKey:@"cnContactIdentifier"];
  }

  cnContactFullname = self->_cnContactFullname;
  if (cnContactFullname)
  {
    [v4 setObject:cnContactFullname forKey:@"cnContactFullname"];
  }

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_cnContactIdentifierSuggested];
  [v4 setObject:v11 forKey:@"cnContactIdentifierSuggested"];

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_displayNameSuggested];
    [v4 setObject:v12 forKey:@"displayNameSuggested"];
  }

  customIdentifier = self->_customIdentifier;
  if (customIdentifier)
  {
    [v4 setObject:customIdentifier forKey:@"customIdentifier"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  if (self->_handle)
  {
    PBDataWriterWriteStringField();
  }

  handleType = self->_handleType;
  PBDataWriterWriteUint32Field();
  if (self->_serviceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cnContactIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cnContactFullname)
  {
    PBDataWriterWriteStringField();
  }

  cnContactIdentifierSuggested = self->_cnContactIdentifierSuggested;
  PBDataWriterWriteBOOLField();
  if (*&self->_has)
  {
    displayNameSuggested = self->_displayNameSuggested;
    PBDataWriterWriteBOOLField();
  }

  v7 = v8;
  if (self->_customIdentifier)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_handle)
  {
    [v4 setHandle:?];
    v4 = v5;
  }

  *(v4 + 12) = self->_handleType;
  if (self->_serviceName)
  {
    [v5 setServiceName:?];
    v4 = v5;
  }

  if (self->_displayName)
  {
    [v5 setDisplayName:?];
    v4 = v5;
  }

  if (self->_cnContactIdentifier)
  {
    [v5 setCnContactIdentifier:?];
    v4 = v5;
  }

  if (self->_cnContactFullname)
  {
    [v5 setCnContactFullname:?];
    v4 = v5;
  }

  *(v4 + 64) = self->_cnContactIdentifierSuggested;
  if (*&self->_has)
  {
    *(v4 + 65) = self->_displayNameSuggested;
    *(v4 + 68) |= 1u;
  }

  if (self->_customIdentifier)
  {
    [v5 setCustomIdentifier:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_handle copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  *(v5 + 48) = self->_handleType;
  v8 = [(NSString *)self->_serviceName copyWithZone:a3];
  v9 = *(v5 + 56);
  *(v5 + 56) = v8;

  v10 = [(NSString *)self->_displayName copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_cnContactIdentifier copyWithZone:a3];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v14 = [(NSString *)self->_cnContactFullname copyWithZone:a3];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  *(v5 + 64) = self->_cnContactIdentifierSuggested;
  if (*&self->_has)
  {
    *(v5 + 65) = self->_displayNameSuggested;
    *(v5 + 68) |= 1u;
  }

  v16 = [(NSString *)self->_customIdentifier copyWithZone:a3];
  v17 = *(v5 + 24);
  *(v5 + 24) = v16;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  handle = self->_handle;
  if (handle | *(v4 + 5))
  {
    if (![(NSString *)handle isEqual:?])
    {
      goto LABEL_22;
    }
  }

  if (self->_handleType != *(v4 + 12))
  {
    goto LABEL_22;
  }

  serviceName = self->_serviceName;
  if (serviceName | *(v4 + 7))
  {
    if (![(NSString *)serviceName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  displayName = self->_displayName;
  if (displayName | *(v4 + 4))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_22;
    }
  }

  cnContactIdentifier = self->_cnContactIdentifier;
  if (cnContactIdentifier | *(v4 + 2))
  {
    if (![(NSString *)cnContactIdentifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  cnContactFullname = self->_cnContactFullname;
  if (cnContactFullname | *(v4 + 1))
  {
    if (![(NSString *)cnContactFullname isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v10 = *(v4 + 64);
  if (self->_cnContactIdentifierSuggested)
  {
    if ((*(v4 + 64) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 64))
  {
    goto LABEL_22;
  }

  v11 = *(v4 + 68);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_18;
  }

  if ((*(v4 + 68) & 1) == 0)
  {
    goto LABEL_22;
  }

  v11 = *(v4 + 65);
  if (!self->_displayNameSuggested)
  {
LABEL_18:
    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  if ((*(v4 + 65) & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  customIdentifier = self->_customIdentifier;
  if (customIdentifier | *(v4 + 3))
  {
    v13 = [(NSString *)customIdentifier isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_23:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_handle hash];
  handleType = self->_handleType;
  v5 = [(NSString *)self->_serviceName hash];
  v6 = [(NSString *)self->_displayName hash];
  v7 = [(NSString *)self->_cnContactIdentifier hash];
  v8 = [(NSString *)self->_cnContactFullname hash];
  if (*&self->_has)
  {
    v10 = 2654435761 * self->_displayNameSuggested;
  }

  else
  {
    v10 = 0;
  }

  cnContactIdentifierSuggested = self->_cnContactIdentifierSuggested;
  return (2654435761 * handleType) ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ (2654435761 * cnContactIdentifierSuggested) ^ v10 ^ [(NSString *)self->_customIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 5))
  {
    [(BLTPBContact *)self setHandle:?];
    v4 = v5;
  }

  self->_handleType = *(v4 + 12);
  if (*(v4 + 7))
  {
    [(BLTPBContact *)self setServiceName:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(BLTPBContact *)self setDisplayName:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(BLTPBContact *)self setCnContactIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(BLTPBContact *)self setCnContactFullname:?];
    v4 = v5;
  }

  self->_cnContactIdentifierSuggested = *(v4 + 64);
  if (*(v4 + 68))
  {
    self->_displayNameSuggested = *(v4 + 65);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(BLTPBContact *)self setCustomIdentifier:?];
    v4 = v5;
  }
}

@end