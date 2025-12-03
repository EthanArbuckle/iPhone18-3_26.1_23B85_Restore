@interface _MPCProtoItemIdentifierSet
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _MPCProtoItemIdentifierSet

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_delegateInfoID;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_contentItemID hash];
  if ((*&self->_has & 8) != 0)
  {
    v5 = 2654435761 * self->_storeAdamID;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_6:
      v6 = 2654435761 * self->_storeSubscriptionAdamID;
      if (*&self->_has)
      {
        goto LABEL_7;
      }

LABEL_11:
      v7 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      v8 = 0;
      return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_cloudUniversalLibraryID hash];
    }
  }

  else
  {
    v5 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_6;
    }
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  v7 = 2654435761 * self->_cloudID;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_12;
  }

LABEL_8:
  v8 = 2654435761 * self->_purchaseHistoryID;
  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ [(NSString *)self->_cloudUniversalLibraryID hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  has = self->_has;
  v6 = *(equalCopy + 64);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 64) & 2) == 0 || self->_delegateInfoID != *(equalCopy + 2))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 64) & 2) != 0)
  {
    goto LABEL_32;
  }

  contentItemID = self->_contentItemID;
  if (contentItemID | *(equalCopy + 7))
  {
    if (![(NSString *)contentItemID isEqual:?])
    {
LABEL_32:
      v9 = 0;
      goto LABEL_33;
    }

    has = self->_has;
    v6 = *(equalCopy + 64);
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_storeAdamID != *(equalCopy + 4))
    {
      goto LABEL_32;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_32;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_storeSubscriptionAdamID != *(equalCopy + 5))
    {
      goto LABEL_32;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_32;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_cloudID != *(equalCopy + 1))
    {
      goto LABEL_32;
    }
  }

  else if (v6)
  {
    goto LABEL_32;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_purchaseHistoryID != *(equalCopy + 3))
    {
      goto LABEL_32;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_32;
  }

  cloudUniversalLibraryID = self->_cloudUniversalLibraryID;
  if (cloudUniversalLibraryID | *(equalCopy + 6))
  {
    v9 = [(NSString *)cloudUniversalLibraryID isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_33:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_delegateInfoID;
    *(v5 + 64) |= 2u;
  }

  v7 = [(NSString *)self->_contentItemID copyWithZone:zone];
  v8 = *(v6 + 56);
  *(v6 + 56) = v7;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v6 + 32) = self->_storeAdamID;
    *(v6 + 64) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

LABEL_11:
      *(v6 + 8) = self->_cloudID;
      *(v6 + 64) |= 1u;
      if ((*&self->_has & 4) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 40) = self->_storeSubscriptionAdamID;
  *(v6 + 64) |= 0x10u;
  has = self->_has;
  if (has)
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((has & 4) != 0)
  {
LABEL_7:
    *(v6 + 24) = self->_purchaseHistoryID;
    *(v6 + 64) |= 4u;
  }

LABEL_8:
  v10 = [(NSString *)self->_cloudUniversalLibraryID copyWithZone:zone];
  v11 = *(v6 + 48);
  *(v6 + 48) = v10;

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

  if (self->_contentItemID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    PBDataWriterWriteInt64Field();
    toCopy = v6;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  PBDataWriterWriteInt64Field();
  toCopy = v6;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  PBDataWriterWriteInt64Field();
  toCopy = v6;
  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    PBDataWriterWriteInt64Field();
    toCopy = v6;
  }

LABEL_10:
  if (self->_cloudUniversalLibraryID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_delegateInfoID];
    [dictionary setObject:v4 forKey:@"delegateInfoID"];
  }

  contentItemID = self->_contentItemID;
  if (contentItemID)
  {
    [dictionary setObject:contentItemID forKey:@"contentItemID"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_storeAdamID];
    [dictionary setObject:v10 forKey:@"storeAdamID"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_7:
      if ((has & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_7;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_storeSubscriptionAdamID];
  [dictionary setObject:v11 forKey:@"storeSubscriptionAdamID"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_17:
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_cloudID];
  [dictionary setObject:v12 forKey:@"cloudID"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_9:
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_purchaseHistoryID];
    [dictionary setObject:v7 forKey:@"purchaseHistoryID"];
  }

LABEL_10:
  cloudUniversalLibraryID = self->_cloudUniversalLibraryID;
  if (cloudUniversalLibraryID)
  {
    [dictionary setObject:cloudUniversalLibraryID forKey:@"cloudUniversalLibraryID"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MPCProtoItemIdentifierSet;
  v4 = [(_MPCProtoItemIdentifierSet *)&v8 description];
  dictionaryRepresentation = [(_MPCProtoItemIdentifierSet *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

@end