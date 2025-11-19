@interface IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange *)self setOtherHandle:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange *)self setPadding:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange;
  [(IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)a3
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
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", self->_participantChangeType), @"participant_change_type"}];
  }

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
  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt64Field();
  }

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
  if ((has & 2) != 0)
  {
    *(a3 + 8) = self->_version;
    *(a3 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(a3 + 1) = self->_participantChangeType;
    *(a3 + 36) |= 1u;
  }

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
  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_version;
    *(v5 + 36) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_participantChangeType;
    *(v5 + 36) |= 1u;
  }

  *(v6 + 16) = [(NSString *)self->_otherHandle copyWithZone:a3];
  *(v6 + 24) = [(NSData *)self->_padding copyWithZone:a3];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 2) != 0)
    {
      if ((*(a3 + 36) & 2) == 0 || self->_version != *(a3 + 8))
      {
        goto LABEL_16;
      }
    }

    else if ((*(a3 + 36) & 2) != 0)
    {
LABEL_16:
      LOBYTE(v5) = 0;
      return v5;
    }

    if (*&self->_has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_participantChangeType != *(a3 + 1))
      {
        goto LABEL_16;
      }
    }

    else if (*(a3 + 36))
    {
      goto LABEL_16;
    }

    otherHandle = self->_otherHandle;
    if (!(otherHandle | *(a3 + 2)) || (v5 = [(NSString *)otherHandle isEqual:?]) != 0)
    {
      padding = self->_padding;
      if (padding | *(a3 + 3))
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
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_participantChangeType;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_otherHandle hash];
  return v5 ^ [(NSData *)self->_padding hash];
}

- (void)mergeFrom:(id)a3
{
  v5 = *(a3 + 36);
  if ((v5 & 2) != 0)
  {
    self->_version = *(a3 + 8);
    *&self->_has |= 2u;
    v5 = *(a3 + 36);
  }

  if (v5)
  {
    self->_participantChangeType = *(a3 + 1);
    *&self->_has |= 1u;
  }

  if (*(a3 + 2))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange *)self setOtherHandle:?];
  }

  if (*(a3 + 3))
  {

    [(IMSharedUtilitiesProtoCloudKitEncryptedParticipantChange *)self setPadding:?];
  }
}

@end