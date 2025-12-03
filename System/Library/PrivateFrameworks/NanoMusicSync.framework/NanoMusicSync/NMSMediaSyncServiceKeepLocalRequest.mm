@interface NMSMediaSyncServiceKeepLocalRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEnableState:(id)state;
- (int)enableState;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NMSMediaSyncServiceKeepLocalRequest

- (int)enableState
{
  if (*&self->_has)
  {
    return self->_enableState;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsEnableState:(id)state
{
  stateCopy = state;
  if ([stateCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([stateCopy isEqualToString:@"Enabled"])
  {
    v4 = 1;
  }

  else if ([stateCopy isEqualToString:@"Disabled"])
  {
    v4 = 2;
  }

  else if ([stateCopy isEqualToString:@"Automatic"])
  {
    v4 = 3;
  }

  else if ([stateCopy isEqualToString:@"Cancelled"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NMSMediaSyncServiceKeepLocalRequest;
  v4 = [(NMSMediaSyncServiceKeepLocalRequest *)&v8 description];
  dictionaryRepresentation = [(NMSMediaSyncServiceKeepLocalRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  modelObject = self->_modelObject;
  if (modelObject)
  {
    dictionaryRepresentation = [(NMSMediaSyncServiceModelObject *)modelObject dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"modelObject"];
  }

  if (*&self->_has)
  {
    enableState = self->_enableState;
    if (enableState >= 5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_enableState];
    }

    else
    {
      v7 = off_27993EC28[enableState];
    }

    [dictionary setObject:v7 forKey:@"enableState"];
  }

  options = self->_options;
  if (options)
  {
    dictionaryRepresentation2 = [(NMSMediaSyncServiceKeepLocalOptions *)options dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"options"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_modelObject)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    enableState = self->_enableState;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_options)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_modelObject)
  {
    [toCopy setModelObject:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_enableState;
    *(toCopy + 32) |= 1u;
  }

  if (self->_options)
  {
    [v5 setOptions:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NMSMediaSyncServiceModelObject *)self->_modelObject copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_enableState;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NMSMediaSyncServiceKeepLocalOptions *)self->_options copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  modelObject = self->_modelObject;
  if (modelObject | *(equalCopy + 2))
  {
    if (![(NMSMediaSyncServiceModelObject *)modelObject isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_enableState != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  options = self->_options;
  if (options | *(equalCopy + 3))
  {
    v8 = [(NMSMediaSyncServiceKeepLocalOptions *)options isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NMSMediaSyncServiceModelObject *)self->_modelObject hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_enableState;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NMSMediaSyncServiceKeepLocalOptions *)self->_options hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  modelObject = self->_modelObject;
  v6 = *(fromCopy + 2);
  v9 = fromCopy;
  if (modelObject)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NMSMediaSyncServiceModelObject *)modelObject mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NMSMediaSyncServiceKeepLocalRequest *)self setModelObject:?];
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 32))
  {
    self->_enableState = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  options = self->_options;
  v8 = *(fromCopy + 3);
  if (options)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    options = [(NMSMediaSyncServiceKeepLocalOptions *)options mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    options = [(NMSMediaSyncServiceKeepLocalRequest *)self setOptions:?];
  }

  fromCopy = v9;
LABEL_15:

  MEMORY[0x2821F96F8](options, fromCopy);
}

@end