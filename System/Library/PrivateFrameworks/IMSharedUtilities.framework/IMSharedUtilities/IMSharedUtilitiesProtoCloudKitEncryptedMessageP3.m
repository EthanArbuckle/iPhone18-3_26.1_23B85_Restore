@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageP3
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasCmmState:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedMessageP3

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP3 *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageP3;
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP3 *)&v3 dealloc];
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

- (void)setHasCmmState:(BOOL)a3
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
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageP3;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedMessageP3 description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedMessageP3 dictionaryRepresentation](self, "dictionaryRepresentation")];
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

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_cmmState), @"cmm_state"}];
  if (*&self->_has)
  {
LABEL_4:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_cmmAssetOffset), @"cmm_asset_offset"}];
  }

LABEL_5:
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

  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
LABEL_4:
    PBDataWriterWriteUint32Field();
  }

LABEL_5:
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
    *(a3 + 6) = self->_version;
    *(a3 + 28) |= 4u;
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

  *(a3 + 3) = self->_cmmState;
  *(a3 + 28) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(a3 + 2) = self->_cmmAssetOffset;
    *(a3 + 28) |= 1u;
  }

LABEL_5:
  padding = self->_padding;
  if (padding)
  {
    [a3 setPadding:padding];
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
    *(v5 + 12) = self->_cmmState;
    *(v5 + 28) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 24) = self->_version;
  *(v5 + 28) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (has)
  {
LABEL_4:
    *(v5 + 8) = self->_cmmAssetOffset;
    *(v5 + 28) |= 1u;
  }

LABEL_5:

  v6[2] = [(NSData *)self->_padding copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(a3 + 28) & 4) == 0 || self->_version != *(a3 + 6))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 28) & 4) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 28) & 2) == 0 || self->_cmmState != *(a3 + 3))
      {
        goto LABEL_19;
      }
    }

    else if ((*(a3 + 28) & 2) != 0)
    {
      goto LABEL_19;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 28) & 1) == 0 || self->_cmmAssetOffset != *(a3 + 2))
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 28))
    {
      goto LABEL_19;
    }

    padding = self->_padding;
    if (padding | *(a3 + 2))
    {

      LOBYTE(v5) = [(NSData *)padding isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_7:
    v8 = 0;
    return v7 ^ v6 ^ v8 ^ [(NSData *)self->_padding hash:v3];
  }

  v6 = 2654435761 * self->_version;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 2654435761 * self->_cmmState;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v8 = 2654435761 * self->_cmmAssetOffset;
  return v7 ^ v6 ^ v8 ^ [(NSData *)self->_padding hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 28);
  if ((v3 & 4) != 0)
  {
    self->_version = *(a3 + 6);
    *&self->_has |= 4u;
    v3 = *(a3 + 28);
    if ((v3 & 2) == 0)
    {
LABEL_3:
      if ((v3 & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a3 + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_cmmState = *(a3 + 3);
  *&self->_has |= 2u;
  if (*(a3 + 28))
  {
LABEL_4:
    self->_cmmAssetOffset = *(a3 + 2);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(a3 + 2))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP3 *)self setPadding:?];
  }
}

@end