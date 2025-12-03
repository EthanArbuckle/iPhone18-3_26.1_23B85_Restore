@interface IDSProtoApplicationKeyEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)keyIndexAsString:(int)string;
- (int)StringAsKeyIndex:(id)index;
- (int)keyIndex;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (id)keyIndexAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"Gelato";
    }

    else
    {
      v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
    }
  }

  else
  {
    v4 = @"None";
  }

  return v4;
}

- (int)StringAsKeyIndex:(id)index
{
  indexCopy = index;
  if ([indexCopy isEqualToString:@"None"])
  {
    v4 = 0;
  }

  else
  {
    v4 = [indexCopy isEqualToString:@"Gelato"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = IDSProtoApplicationKeyEntry;
  v3 = [(IDSProtoApplicationKeyEntry *)&v7 description];
  dictionaryRepresentation = [(IDSProtoApplicationKeyEntry *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_publicIdentity)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_keyIndex;
    *(toCopy + 24) |= 1u;
  }

  if (self->_publicIdentity)
  {
    v5 = toCopy;
    [toCopy setPublicIdentity:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 2) = self->_keyIndex;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_publicIdentity copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_keyIndex != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  publicIdentity = self->_publicIdentity;
  if (publicIdentity | *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    self->_keyIndex = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(IDSProtoApplicationKeyEntry *)self setPublicIdentity:?];
    fromCopy = v5;
  }
}

@end