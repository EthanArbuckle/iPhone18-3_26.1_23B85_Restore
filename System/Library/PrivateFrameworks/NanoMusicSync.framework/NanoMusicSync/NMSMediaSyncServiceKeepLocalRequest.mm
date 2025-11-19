@interface NMSMediaSyncServiceKeepLocalRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsEnableState:(id)a3;
- (int)enableState;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsEnableState:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Enabled"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Disabled"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Automatic"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Cancelled"])
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
  v5 = [(NMSMediaSyncServiceKeepLocalRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  modelObject = self->_modelObject;
  if (modelObject)
  {
    v5 = [(NMSMediaSyncServiceModelObject *)modelObject dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"modelObject"];
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

    [v3 setObject:v7 forKey:@"enableState"];
  }

  options = self->_options;
  if (options)
  {
    v9 = [(NMSMediaSyncServiceKeepLocalOptions *)options dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"options"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_modelObject)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    enableState = self->_enableState;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_options)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_modelObject)
  {
    [v4 setModelObject:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_enableState;
    *(v4 + 32) |= 1u;
  }

  if (self->_options)
  {
    [v5 setOptions:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NMSMediaSyncServiceModelObject *)self->_modelObject copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_enableState;
    *(v5 + 32) |= 1u;
  }

  v8 = [(NMSMediaSyncServiceKeepLocalOptions *)self->_options copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  modelObject = self->_modelObject;
  if (modelObject | *(v4 + 2))
  {
    if (![(NMSMediaSyncServiceModelObject *)modelObject isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_enableState != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  options = self->_options;
  if (options | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  modelObject = self->_modelObject;
  v6 = *(v4 + 2);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  if (*(v4 + 32))
  {
    self->_enableState = *(v4 + 2);
    *&self->_has |= 1u;
  }

  options = self->_options;
  v8 = *(v4 + 3);
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

  v4 = v9;
LABEL_15:

  MEMORY[0x2821F96F8](options, v4);
}

@end