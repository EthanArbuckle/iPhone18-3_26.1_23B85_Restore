@interface IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasShareStatus:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange *)self setOtherHandle:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange;
  [(IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasShareStatus:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", self->_shareStatus), @"share_status"}];
  if (*&self->_has)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", self->_shareDirection), @"share_direction"}];
  }

LABEL_5:
  otherHandle = self->_otherHandle;
  if (otherHandle)
  {
    [v3 setObject:otherHandle forKey:@"other_handle"];
  }

  padding = self->_padding;
  if (padding)
  {
    [v3 setObject:padding forKey:@"padding"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt64Field();
  if (*&self->_has)
  {
LABEL_4:
    PBDataWriterWriteInt64Field();
  }

LABEL_5:
  if (self->_otherHandle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_padding)
  {

    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(a3 + 10) = self->_version;
    *(a3 + 44) |= 4u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(a3 + 2) = self->_shareStatus;
  *(a3 + 44) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(a3 + 1) = self->_shareDirection;
    *(a3 + 44) |= 1u;
  }

LABEL_5:
  if (self->_otherHandle)
  {
    [a3 setOtherHandle:?];
  }

  if (self->_padding)
  {

    [a3 setPadding:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_shareStatus;
    *(v5 + 44) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 40) = self->_version;
  *(v5 + 44) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_shareDirection;
    *(v5 + 44) |= 1u;
  }

LABEL_5:

  *(v6 + 24) = [(NSString *)self->_otherHandle copyWithZone:a3];
  *(v6 + 32) = [(NSData *)self->_padding copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 44) & 4) == 0 || self->_version != *(a3 + 10))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 44) & 4) != 0)
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 44) & 2) == 0 || self->_shareStatus != *(a3 + 2))
      {
        goto LABEL_21;
      }
    }

    else if ((*(a3 + 44) & 2) != 0)
    {
      goto LABEL_21;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 44) & 1) == 0 || self->_shareDirection != *(a3 + 1))
      {
        goto LABEL_21;
      }
    }

    else if (*(a3 + 44))
    {
      goto LABEL_21;
    }

    otherHandle = self->_otherHandle;
    if (!(otherHandle | *(a3 + 3)) || (v5 = [(NSString *)otherHandle isEqual:?]) != 0)
    {
      padding = self->_padding;
      if (padding | *(a3 + 4))
      {

        LOBYTE(v5) = [(NSData *)padding isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761 * self->_version;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_shareStatus;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_shareDirection;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_otherHandle hash];
  return v6 ^ [(NSData *)self->_padding hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 44);
  if ((v5 & 4) != 0)
  {
    self->_version = *(a3 + 10);
    *&self->_has |= 4u;
    v5 = *(a3 + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a3 + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_shareStatus = *(a3 + 2);
  *&self->_has |= 2u;
  if (*(a3 + 44))
  {
LABEL_4:
    self->_shareDirection = *(a3 + 1);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(a3 + 3))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange *)self setOtherHandle:?];
  }

  if (*(a3 + 4))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedLocationShareStatusChange *)self setPadding:?];
  }
}

@end