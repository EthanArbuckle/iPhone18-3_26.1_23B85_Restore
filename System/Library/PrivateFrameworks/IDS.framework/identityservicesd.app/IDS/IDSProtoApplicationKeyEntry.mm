@interface IDSProtoApplicationKeyEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)keyIndexAsString:(int)a3;
- (int)StringAsKeyIndex:(id)a3;
- (int)keyIndex;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSProtoApplicationKeyEntry

- (int)keyIndex
{
  if (*&self->_has)
  {
    return self->_keyIndex;
  }

  else
  {
    return 0;
  }
}

- (id)keyIndexAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"Gelato";
    }

    else
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", *&a3];
    }
  }

  else
  {
    v4 = @"None";
  }

  return v4;
}

- (int)StringAsKeyIndex:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:@"Gelato"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IDSProtoApplicationKeyEntry;
  v3 = [(IDSProtoApplicationKeyEntry *)&v7 description];
  v4 = [(IDSProtoApplicationKeyEntry *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    keyIndex = self->_keyIndex;
    if (keyIndex)
    {
      if (keyIndex == 1)
      {
        v5 = @"Gelato";
      }

      else
      {
        v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_keyIndex];
      }
    }

    else
    {
      v5 = @"None";
    }

    [v3 setObject:v5 forKey:@"key_index"];
  }

  publicIdentity = self->_publicIdentity;
  if (publicIdentity)
  {
    [v3 setObject:publicIdentity forKey:@"public_identity"];
  }

  return v3;
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

  if (self->_publicIdentity)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[2] = self->_keyIndex;
    *(v4 + 24) |= 1u;
  }

  if (self->_publicIdentity)
  {
    v5 = v4;
    [v4 setPublicIdentity:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_keyIndex;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_publicIdentity copyWithZone:a3];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_keyIndex != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  publicIdentity = self->_publicIdentity;
  if (publicIdentity | *(v4 + 2))
  {
    v6 = [(NSData *)publicIdentity isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_keyIndex;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_publicIdentity hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    self->_keyIndex = v4[2];
    *&self->_has |= 1u;
  }

  if (*(v4 + 2))
  {
    v5 = v4;
    [(IDSProtoApplicationKeyEntry *)self setPublicIdentity:?];
    v4 = v5;
  }
}

@end