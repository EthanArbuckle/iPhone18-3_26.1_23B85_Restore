@interface IMSharedUtilitiesProtoCloudKitEncryptedChatP1
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIsRecovered:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedChatP1

- (void)setHasIsRecovered:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IMSharedUtilitiesProtoCloudKitEncryptedChatP1;
  v4 = [(IMSharedUtilitiesProtoCloudKitEncryptedChatP1 *)&v8 description];
  v5 = [(IMSharedUtilitiesProtoCloudKitEncryptedChatP1 *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
    [v3 setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRecovered];
    [v3 setObject:v6 forKey:@"is_recovered"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  v6 = v4;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    v4 = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[2] = self->_version;
    *(v4 + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 12) = self->_isRecovered;
    *(v4 + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  has = self->_has;
  if (has)
  {
    *(result + 2) = self->_version;
    *(result + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(result + 12) = self->_isRecovered;
    *(result + 16) |= 2u;
  }

  return result;
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
    if ((*(v4 + 16) & 1) == 0 || self->_version != *(v4 + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 16))
  {
    goto LABEL_9;
  }

  v5 = (*(v4 + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 16) & 2) == 0)
    {
LABEL_9:
      v5 = 0;
      goto LABEL_10;
    }

    if (self->_isRecovered)
    {
      if ((*(v4 + 12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(v4 + 12))
    {
      goto LABEL_9;
    }

    v5 = 1;
  }

LABEL_10:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_version;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_isRecovered;
  return v3 ^ v2;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 16);
  if (v5)
  {
    self->_version = *(v4 + 2);
    *&self->_has |= 1u;
    v5 = *(v4 + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_isRecovered = *(v4 + 12);
    *&self->_has |= 2u;
  }
}

@end