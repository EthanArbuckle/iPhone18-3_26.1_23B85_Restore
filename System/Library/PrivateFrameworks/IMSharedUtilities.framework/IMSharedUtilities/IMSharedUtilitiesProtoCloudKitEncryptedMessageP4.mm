@interface IMSharedUtilitiesProtoCloudKitEncryptedMessageP4
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasScheduleState:(BOOL)state;
- (void)setHasScheduleType:(BOOL)type;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedMessageP4

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 *)self setAssociatedMessageEmoji:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 *)self setPadding:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 *)self setActualService:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 *)self setActualParentChatId:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageP4;
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasScheduleType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasScheduleState:(BOOL)state
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
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessageP4;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 8) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
  }

  associatedMessageEmoji = self->_associatedMessageEmoji;
  if (associatedMessageEmoji)
  {
    [dictionary setObject:associatedMessageEmoji forKey:@"associated_message_emoji"];
  }

  padding = self->_padding;
  if (padding)
  {
    [dictionary setObject:padding forKey:@"padding"];
  }

  actualService = self->_actualService;
  if (actualService)
  {
    [dictionary setObject:actualService forKey:@"actual_service"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_scheduleType), @"schedule_type"}];
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_scheduleState), @"schedule_state"}];
  }

  actualParentChatId = self->_actualParentChatId;
  if (actualParentChatId)
  {
    [dictionary setObject:actualParentChatId forKey:@"actual_parent_chat_id"];
  }

  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_timeRecovered), @"time_recovered"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if ((*&self->_has & 8) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_associatedMessageEmoji)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_padding)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_actualService)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    PBDataWriterWriteUint32Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_actualParentChatId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {

    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)to
{
  if ((*&self->_has & 8) != 0)
  {
    *(to + 14) = self->_version;
    *(to + 60) |= 8u;
  }

  if (self->_associatedMessageEmoji)
  {
    [to setAssociatedMessageEmoji:?];
  }

  if (self->_padding)
  {
    [to setPadding:?];
  }

  if (self->_actualService)
  {
    [to setActualService:?];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(to + 13) = self->_scheduleType;
    *(to + 60) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(to + 12) = self->_scheduleState;
    *(to + 60) |= 2u;
  }

  if (self->_actualParentChatId)
  {
    [to setActualParentChatId:?];
  }

  if (*&self->_has)
  {
    *(to + 1) = self->_timeRecovered;
    *(to + 60) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 8) != 0)
  {
    *(v5 + 56) = self->_version;
    *(v5 + 60) |= 8u;
  }

  *(v6 + 32) = [(NSString *)self->_associatedMessageEmoji copyWithZone:zone];
  *(v6 + 40) = [(NSData *)self->_padding copyWithZone:zone];

  *(v6 + 24) = [(NSString *)self->_actualService copyWithZone:zone];
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 52) = self->_scheduleType;
    *(v6 + 60) |= 4u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v6 + 48) = self->_scheduleState;
    *(v6 + 60) |= 2u;
  }

  *(v6 + 16) = [(NSString *)self->_actualParentChatId copyWithZone:zone];
  if (*&self->_has)
  {
    *(v6 + 8) = self->_timeRecovered;
    *(v6 + 60) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 8) != 0)
    {
      if ((*(equal + 60) & 8) == 0 || self->_version != *(equal + 14))
      {
        goto LABEL_30;
      }
    }

    else if ((*(equal + 60) & 8) != 0)
    {
LABEL_30:
      LOBYTE(v5) = 0;
      return v5;
    }

    associatedMessageEmoji = self->_associatedMessageEmoji;
    if (!(associatedMessageEmoji | *(equal + 4)) || (v5 = [(NSString *)associatedMessageEmoji isEqual:?]) != 0)
    {
      padding = self->_padding;
      if (!(padding | *(equal + 5)) || (v5 = [(NSData *)padding isEqual:?]) != 0)
      {
        actualService = self->_actualService;
        if (!(actualService | *(equal + 3)) || (v5 = [(NSString *)actualService isEqual:?]) != 0)
        {
          has = self->_has;
          if ((has & 4) != 0)
          {
            if ((*(equal + 60) & 4) == 0 || self->_scheduleType != *(equal + 13))
            {
              goto LABEL_30;
            }
          }

          else if ((*(equal + 60) & 4) != 0)
          {
            goto LABEL_30;
          }

          if ((*&self->_has & 2) != 0)
          {
            if ((*(equal + 60) & 2) == 0 || self->_scheduleState != *(equal + 12))
            {
              goto LABEL_30;
            }
          }

          else if ((*(equal + 60) & 2) != 0)
          {
            goto LABEL_30;
          }

          actualParentChatId = self->_actualParentChatId;
          if (actualParentChatId | *(equal + 2))
          {
            v5 = [(NSString *)actualParentChatId isEqual:?];
            if (!v5)
            {
              return v5;
            }

            has = self->_has;
          }

          LOBYTE(v5) = (*(equal + 60) & 1) == 0;
          if (has)
          {
            if ((*(equal + 60) & 1) == 0 || self->_timeRecovered != *(equal + 1))
            {
              goto LABEL_30;
            }

            LOBYTE(v5) = 1;
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v3 = 2654435761 * self->_version;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_associatedMessageEmoji hash];
  v5 = [(NSData *)self->_padding hash];
  v6 = [(NSString *)self->_actualService hash];
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_scheduleType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_6:
      v8 = 2654435761 * self->_scheduleState;
      goto LABEL_9;
    }
  }

  v8 = 0;
LABEL_9:
  v9 = [(NSString *)self->_actualParentChatId hash];
  if (*&self->_has)
  {
    v10 = 2654435761u * self->_timeRecovered;
  }

  else
  {
    v10 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
}

- (void)mergeFrom:(id)from
{
  if ((*(from + 60) & 8) != 0)
  {
    self->_version = *(from + 14);
    *&self->_has |= 8u;
  }

  if (*(from + 4))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 *)self setAssociatedMessageEmoji:?];
  }

  if (*(from + 5))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 *)self setPadding:?];
  }

  if (*(from + 3))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 *)self setActualService:?];
  }

  v5 = *(from + 60);
  if ((v5 & 4) != 0)
  {
    self->_scheduleType = *(from + 13);
    *&self->_has |= 4u;
    v5 = *(from + 60);
  }

  if ((v5 & 2) != 0)
  {
    self->_scheduleState = *(from + 12);
    *&self->_has |= 2u;
  }

  if (*(from + 2))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessageP4 *)self setActualParentChatId:?];
  }

  if (*(from + 60))
  {
    self->_timeRecovered = *(from + 1);
    *&self->_has |= 1u;
  }
}

@end