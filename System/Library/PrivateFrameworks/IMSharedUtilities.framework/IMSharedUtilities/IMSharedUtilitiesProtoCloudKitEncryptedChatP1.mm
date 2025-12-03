@interface IMSharedUtilitiesProtoCloudKitEncryptedChatP1
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsRecovered:(BOOL)recovered;
- (void)writeTo:(id)to;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedChatP1

- (void)setHasIsRecovered:(BOOL)recovered
{
  if (recovered)
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
  dictionaryRepresentation = [(IMSharedUtilitiesProtoCloudKitEncryptedChatP1 *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
    [dictionary setObject:v5 forKey:@"version"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isRecovered];
    [dictionary setObject:v6 forKey:@"is_recovered"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteUint32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[2] = self->_version;
    *(toCopy + 16) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 12) = self->_isRecovered;
    *(toCopy + 16) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) == 0 || self->_version != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 16))
  {
    goto LABEL_9;
  }

  v5 = (*(equalCopy + 16) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 16) & 2) == 0)
    {
LABEL_9:
      v5 = 0;
      goto LABEL_10;
    }

    if (self->_isRecovered)
    {
      if ((*(equalCopy + 12) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (*(equalCopy + 12))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 16);
  if (v5)
  {
    self->_version = *(fromCopy + 2);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 16);
  }

  if ((v5 & 2) != 0)
  {
    self->_isRecovered = *(fromCopy + 12);
    *&self->_has |= 2u;
  }
}

@end