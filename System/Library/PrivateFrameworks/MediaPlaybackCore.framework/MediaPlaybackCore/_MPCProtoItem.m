@interface _MPCProtoItem
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation _MPCProtoItem

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_mediaType;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(_MPCProtoItemIdentifierSet *)self->_identifierSet hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_excludeFromShuffle;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_mediaType != *(v4 + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_12;
  }

  identifierSet = self->_identifierSet;
  if (identifierSet | *(v4 + 1))
  {
    if (![(_MPCProtoItemIdentifierSet *)identifierSet isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
    v6 = *(v4 + 24);
  }

  v8 = (v6 & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((v6 & 2) != 0)
    {
      if (self->_excludeFromShuffle)
      {
        if ((*(v4 + 20) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(v4 + 20))
      {
        goto LABEL_12;
      }

      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_mediaType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(_MPCProtoItemIdentifierSet *)self->_identifierSet copyWithZone:a3];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 20) = self->_excludeFromShuffle;
    *(v6 + 24) |= 2u;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    v4 = v5;
  }

  if (self->_identifierSet)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v5;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_mediaType];
    [v3 setObject:v4 forKey:@"mediaType"];
  }

  identifierSet = self->_identifierSet;
  if (identifierSet)
  {
    v6 = [(_MPCProtoItemIdentifierSet *)identifierSet dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"identifierSet"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_excludeFromShuffle];
    [v3 setObject:v7 forKey:@"excludeFromShuffle"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoItem;
  v4 = [(_MPCProtoItem *)&v8 description];
  v5 = [(_MPCProtoItem *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end