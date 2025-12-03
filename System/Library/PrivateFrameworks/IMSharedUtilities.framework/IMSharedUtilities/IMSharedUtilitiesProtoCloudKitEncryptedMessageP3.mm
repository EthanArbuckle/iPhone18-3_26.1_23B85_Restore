@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageP3
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasCmmState:(BOOL)state;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedMessageP3

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP3 *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageP3;
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP3 *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasCmmState:(BOOL)state
{
  if (state)
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
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

  [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_cmmState), @"cmm_state"}];
  if (*&self->_has)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_cmmAssetOffset), @"cmm_asset_offset"}];
  }

LABEL_5:
  padding = self->_padding;
  if (padding)
  {
    [dictionary setObject:padding forKey:@"padding"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
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

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 6) = self->_version;
    *(to + 28) |= 4u;
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

  *(to + 3) = self->_cmmState;
  *(to + 28) |= 2u;
  if (*&self->_has)
  {
LABEL_4:
    *(to + 2) = self->_cmmAssetOffset;
    *(to + 28) |= 1u;
  }

LABEL_5:
  padding = self->_padding;
  if (padding)
  {
    [to setPadding:padding];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

  v6[2] = [(NSData *)self->_padding copyWithZone:zone];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 28) & 4) == 0 || self->_version != *(equal + 6))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 28) & 4) != 0)
    {
LABEL_19:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_cmmState != *(equal + 3))
      {
        goto LABEL_19;
      }
    }

    else if ((*(equal + 28) & 2) != 0)
    {
      goto LABEL_19;
    }

    if (*&self->_has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_cmmAssetOffset != *(equal + 2))
      {
        goto LABEL_19;
      }
    }

    else if (*(equal + 28))
    {
      goto LABEL_19;
    }

    padding = self->_padding;
    if (padding | *(equal + 2))
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

- (void)mergeFrom:(id)from
{
  v3 = *(from + 28);
  if ((v3 & 4) != 0)
  {
    self->_version = *(from + 6);
    *&self->_has |= 4u;
    v3 = *(from + 28);
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

  else if ((*(from + 28) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_cmmState = *(from + 3);
  *&self->_has |= 2u;
  if (*(from + 28))
  {
LABEL_4:
    self->_cmmAssetOffset = *(from + 2);
    *&self->_has |= 1u;
  }

LABEL_5:
  if (*(from + 2))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP3 *)self setPadding:?];
  }
}

@end