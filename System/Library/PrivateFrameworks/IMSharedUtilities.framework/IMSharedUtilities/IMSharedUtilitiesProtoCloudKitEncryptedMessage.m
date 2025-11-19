@interface IMSharedUtilitiesProtoCloudKitEncryptedMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasAssociatedMessageRangeLength:(BOOL)a3;
- (void)setHasAssociatedMessageRangeLocation:(BOOL)a3;
- (void)setHasExpireState:(BOOL)a3;
- (void)setHasTimeDelivered:(BOOL)a3;
- (void)setHasTimeExpressiveSentPlayed:(BOOL)a3;
- (void)setHasTimePlayed:(BOOL)a3;
- (void)setHasTimeRead:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation IMSharedUtilitiesProtoCloudKitEncryptedMessage

- (void)dealloc
{
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setMessageSubject:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setMessageBody:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setMessageBodyData:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setBaloonBundleId:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setPayloadData:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setMessageSummaryInfo:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setExpressiveSendId:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setPadding:0];
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setAssociatedMessageGuid:0];
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessage;
  [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)&v3 dealloc];
}

- (void)setHasVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasTimeRead:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasTimePlayed:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasTimeExpressiveSentPlayed:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasTimeDelivered:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasExpireState:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasAssociatedMessageRangeLocation:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasAssociatedMessageRangeLength:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = IMSharedUtilitiesProtoCloudKitEncryptedMessage;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[IMSharedUtilitiesProtoCloudKitEncryptedMessage description](&v3, sel_description), -[IMSharedUtilitiesProtoCloudKitEncryptedMessage dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 0x100) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_version), @"version"}];
  }

  messageSubject = self->_messageSubject;
  if (messageSubject)
  {
    [v3 setObject:messageSubject forKey:@"message_subject"];
  }

  messageBody = self->_messageBody;
  if (messageBody)
  {
    [v3 setObject:messageBody forKey:@"message_body"];
  }

  messageBodyData = self->_messageBodyData;
  if (messageBodyData)
  {
    [v3 setObject:messageBodyData forKey:@"message_body_data"];
  }

  baloonBundleId = self->_baloonBundleId;
  if (baloonBundleId)
  {
    [v3 setObject:baloonBundleId forKey:@"baloon_bundle_id"];
  }

  payloadData = self->_payloadData;
  if (payloadData)
  {
    [v3 setObject:payloadData forKey:@"payload_data"];
  }

  messageSummaryInfo = self->_messageSummaryInfo;
  if (messageSummaryInfo)
  {
    [v3 setObject:messageSummaryInfo forKey:@"message_summary_info"];
  }

  expressiveSendId = self->_expressiveSendId;
  if (expressiveSendId)
  {
    [v3 setObject:expressiveSendId forKey:@"expressive_send_id"];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_timeRead), @"time_read"}];
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_19:
      if ((has & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_19;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_timePlayed), @"time_played"}];
  if ((*&self->_has & 8) != 0)
  {
LABEL_20:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_timeExpressiveSentPlayed), @"time_expressive_sent_played"}];
  }

LABEL_21:
  padding = self->_padding;
  if (padding)
  {
    [v3 setObject:padding forKey:@"padding"];
  }

  v13 = self->_has;
  if ((v13 & 4) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_timeDelivered), @"time_delivered"}];
    v13 = self->_has;
    if ((v13 & 2) == 0)
    {
LABEL_25:
      if ((v13 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v13 & 2) == 0)
  {
    goto LABEL_25;
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedLongLong:", self->_expireState), @"expire_state"}];
  if (*&self->_has)
  {
LABEL_26:
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithLongLong:", self->_associatedMessageType), @"associated_message_type"}];
  }

LABEL_27:
  associatedMessageGuid = self->_associatedMessageGuid;
  if (associatedMessageGuid)
  {
    [v3 setObject:associatedMessageGuid forKey:@"associated_message_guid"];
  }

  v15 = self->_has;
  if ((v15 & 0x80) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_associatedMessageRangeLocation), @"associated_message_range_location"}];
    v15 = self->_has;
  }

  if ((v15 & 0x40) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_associatedMessageRangeLength), @"associated_message_range_length"}];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if ((*&self->_has & 0x100) != 0)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_messageSubject)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageBody)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageBodyData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_baloonBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_payloadData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_messageSummaryInfo)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_expressiveSendId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_19:
      if ((has & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_19;
  }

  PBDataWriterWriteUint64Field();
  if ((*&self->_has & 8) != 0)
  {
LABEL_20:
    PBDataWriterWriteUint64Field();
  }

LABEL_21:
  if (self->_padding)
  {
    PBDataWriterWriteDataField();
  }

  v5 = self->_has;
  if ((v5 & 4) != 0)
  {
    PBDataWriterWriteUint64Field();
    v5 = self->_has;
    if ((v5 & 2) == 0)
    {
LABEL_25:
      if ((v5 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_25;
  }

  PBDataWriterWriteUint64Field();
  if (*&self->_has)
  {
LABEL_26:
    PBDataWriterWriteInt64Field();
  }

LABEL_27:
  if (self->_associatedMessageGuid)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x80) != 0)
  {
    PBDataWriterWriteUint32Field();
    v6 = self->_has;
  }

  if ((v6 & 0x40) != 0)
  {

    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  if ((*&self->_has & 0x100) != 0)
  {
    *(a3 + 34) = self->_version;
    *(a3 + 70) |= 0x100u;
  }

  if (self->_messageSubject)
  {
    [a3 setMessageSubject:?];
  }

  if (self->_messageBody)
  {
    [a3 setMessageBody:?];
  }

  if (self->_messageBodyData)
  {
    [a3 setMessageBodyData:?];
  }

  if (self->_baloonBundleId)
  {
    [a3 setBaloonBundleId:?];
  }

  if (self->_payloadData)
  {
    [a3 setPayloadData:?];
  }

  if (self->_messageSummaryInfo)
  {
    [a3 setMessageSummaryInfo:?];
  }

  if (self->_expressiveSendId)
  {
    [a3 setExpressiveSendId:?];
  }

  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(a3 + 6) = self->_timeRead;
    *(a3 + 70) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_19:
      if ((has & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_19;
  }

  *(a3 + 5) = self->_timePlayed;
  *(a3 + 70) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_20:
    *(a3 + 4) = self->_timeExpressiveSentPlayed;
    *(a3 + 70) |= 8u;
  }

LABEL_21:
  if (self->_padding)
  {
    [a3 setPadding:?];
  }

  v6 = self->_has;
  if ((v6 & 4) != 0)
  {
    *(a3 + 3) = self->_timeDelivered;
    *(a3 + 70) |= 4u;
    v6 = self->_has;
    if ((v6 & 2) == 0)
    {
LABEL_25:
      if ((v6 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_25;
  }

  *(a3 + 2) = self->_expireState;
  *(a3 + 70) |= 2u;
  if (*&self->_has)
  {
LABEL_26:
    *(a3 + 1) = self->_associatedMessageType;
    *(a3 + 70) |= 1u;
  }

LABEL_27:
  if (self->_associatedMessageGuid)
  {
    [a3 setAssociatedMessageGuid:?];
  }

  v7 = self->_has;
  if ((v7 & 0x80) != 0)
  {
    *(a3 + 17) = self->_associatedMessageRangeLocation;
    *(a3 + 70) |= 0x80u;
    v7 = self->_has;
  }

  if ((v7 & 0x40) != 0)
  {
    *(a3 + 16) = self->_associatedMessageRangeLength;
    *(a3 + 70) |= 0x40u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 0x100) != 0)
  {
    *(v5 + 136) = self->_version;
    *(v5 + 140) |= 0x100u;
  }

  *(v6 + 104) = [(NSString *)self->_messageSubject copyWithZone:a3];
  *(v6 + 88) = [(NSString *)self->_messageBody copyWithZone:a3];

  *(v6 + 96) = [(NSData *)self->_messageBodyData copyWithZone:a3];
  *(v6 + 72) = [(NSString *)self->_baloonBundleId copyWithZone:a3];

  *(v6 + 128) = [(NSData *)self->_payloadData copyWithZone:a3];
  *(v6 + 112) = [(NSData *)self->_messageSummaryInfo copyWithZone:a3];

  *(v6 + 80) = [(NSString *)self->_expressiveSendId copyWithZone:a3];
  has = self->_has;
  if ((has & 0x20) != 0)
  {
    *(v6 + 48) = self->_timeRead;
    *(v6 + 140) |= 0x20u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_5:
      if ((has & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((has & 0x10) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 40) = self->_timePlayed;
  *(v6 + 140) |= 0x10u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_6:
    *(v6 + 32) = self->_timeExpressiveSentPlayed;
    *(v6 + 140) |= 8u;
  }

LABEL_7:

  *(v6 + 120) = [(NSData *)self->_padding copyWithZone:a3];
  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    *(v6 + 24) = self->_timeDelivered;
    *(v6 + 140) |= 4u;
    v8 = self->_has;
    if ((v8 & 2) == 0)
    {
LABEL_9:
      if ((v8 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v8 & 2) == 0)
  {
    goto LABEL_9;
  }

  *(v6 + 16) = self->_expireState;
  *(v6 + 140) |= 2u;
  if (*&self->_has)
  {
LABEL_10:
    *(v6 + 8) = self->_associatedMessageType;
    *(v6 + 140) |= 1u;
  }

LABEL_11:

  *(v6 + 56) = [(NSString *)self->_associatedMessageGuid copyWithZone:a3];
  v9 = self->_has;
  if ((v9 & 0x80) != 0)
  {
    *(v6 + 68) = self->_associatedMessageRangeLocation;
    *(v6 + 140) |= 0x80u;
    v9 = self->_has;
  }

  if ((v9 & 0x40) != 0)
  {
    *(v6 + 64) = self->_associatedMessageRangeLength;
    *(v6 + 140) |= 0x40u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if ((*&self->_has & 0x100) != 0)
    {
      if ((*(a3 + 70) & 0x100) == 0 || self->_version != *(a3 + 34))
      {
        goto LABEL_66;
      }
    }

    else if ((*(a3 + 70) & 0x100) != 0)
    {
LABEL_66:
      LOBYTE(v5) = 0;
      return v5;
    }

    messageSubject = self->_messageSubject;
    if (!(messageSubject | *(a3 + 13)) || (v5 = [(NSString *)messageSubject isEqual:?]) != 0)
    {
      messageBody = self->_messageBody;
      if (!(messageBody | *(a3 + 11)) || (v5 = [(NSString *)messageBody isEqual:?]) != 0)
      {
        messageBodyData = self->_messageBodyData;
        if (!(messageBodyData | *(a3 + 12)) || (v5 = [(NSData *)messageBodyData isEqual:?]) != 0)
        {
          baloonBundleId = self->_baloonBundleId;
          if (!(baloonBundleId | *(a3 + 9)) || (v5 = [(NSString *)baloonBundleId isEqual:?]) != 0)
          {
            payloadData = self->_payloadData;
            if (!(payloadData | *(a3 + 16)) || (v5 = [(NSData *)payloadData isEqual:?]) != 0)
            {
              messageSummaryInfo = self->_messageSummaryInfo;
              if (!(messageSummaryInfo | *(a3 + 14)) || (v5 = [(NSData *)messageSummaryInfo isEqual:?]) != 0)
              {
                expressiveSendId = self->_expressiveSendId;
                if (!(expressiveSendId | *(a3 + 10)) || (v5 = [(NSString *)expressiveSendId isEqual:?]) != 0)
                {
                  has = self->_has;
                  v14 = *(a3 + 70);
                  if ((has & 0x20) != 0)
                  {
                    if ((v14 & 0x20) == 0 || self->_timeRead != *(a3 + 6))
                    {
                      goto LABEL_66;
                    }
                  }

                  else if ((v14 & 0x20) != 0)
                  {
                    goto LABEL_66;
                  }

                  if ((has & 0x10) != 0)
                  {
                    if ((v14 & 0x10) == 0 || self->_timePlayed != *(a3 + 5))
                    {
                      goto LABEL_66;
                    }
                  }

                  else if ((v14 & 0x10) != 0)
                  {
                    goto LABEL_66;
                  }

                  if ((has & 8) != 0)
                  {
                    if ((v14 & 8) == 0 || self->_timeExpressiveSentPlayed != *(a3 + 4))
                    {
                      goto LABEL_66;
                    }
                  }

                  else if ((v14 & 8) != 0)
                  {
                    goto LABEL_66;
                  }

                  padding = self->_padding;
                  if (padding | *(a3 + 15))
                  {
                    v5 = [(NSData *)padding isEqual:?];
                    if (!v5)
                    {
                      return v5;
                    }

                    has = self->_has;
                  }

                  v16 = *(a3 + 70);
                  if ((has & 4) != 0)
                  {
                    if ((v16 & 4) == 0 || self->_timeDelivered != *(a3 + 3))
                    {
                      goto LABEL_66;
                    }
                  }

                  else if ((v16 & 4) != 0)
                  {
                    goto LABEL_66;
                  }

                  if ((has & 2) != 0)
                  {
                    if ((v16 & 2) == 0 || self->_expireState != *(a3 + 2))
                    {
                      goto LABEL_66;
                    }
                  }

                  else if ((v16 & 2) != 0)
                  {
                    goto LABEL_66;
                  }

                  if (has)
                  {
                    if ((v16 & 1) == 0 || self->_associatedMessageType != *(a3 + 1))
                    {
                      goto LABEL_66;
                    }
                  }

                  else if (v16)
                  {
                    goto LABEL_66;
                  }

                  associatedMessageGuid = self->_associatedMessageGuid;
                  if (associatedMessageGuid | *(a3 + 7))
                  {
                    v5 = [(NSString *)associatedMessageGuid isEqual:?];
                    if (!v5)
                    {
                      return v5;
                    }

                    has = self->_has;
                  }

                  v18 = *(a3 + 70);
                  if ((has & 0x80) != 0)
                  {
                    if ((v18 & 0x80) == 0 || self->_associatedMessageRangeLocation != *(a3 + 17))
                    {
                      goto LABEL_66;
                    }
                  }

                  else if ((v18 & 0x80) != 0)
                  {
                    goto LABEL_66;
                  }

                  LOBYTE(v5) = (v18 & 0x40) == 0;
                  if ((has & 0x40) != 0)
                  {
                    if ((v18 & 0x40) == 0 || self->_associatedMessageRangeLength != *(a3 + 16))
                    {
                      goto LABEL_66;
                    }

                    LOBYTE(v5) = 1;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 0x100) != 0)
  {
    v25 = 2654435761 * self->_version;
  }

  else
  {
    v25 = 0;
  }

  v24 = [(NSString *)self->_messageSubject hash];
  v23 = [(NSString *)self->_messageBody hash];
  v22 = [(NSData *)self->_messageBodyData hash];
  v21 = [(NSString *)self->_baloonBundleId hash];
  v20 = [(NSData *)self->_payloadData hash];
  v19 = [(NSData *)self->_messageSummaryInfo hash];
  v17 = [(NSString *)self->_expressiveSendId hash];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
    v4 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v5 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v4 = 2654435761u * self->_timeRead;
  if ((has & 0x10) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  v5 = 2654435761u * self->_timePlayed;
  if ((has & 8) != 0)
  {
LABEL_7:
    v6 = 2654435761u * self->_timeExpressiveSentPlayed;
    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
LABEL_11:
  v7 = [(NSData *)self->_padding hash];
  v8 = self->_has;
  if ((v8 & 4) == 0)
  {
    v9 = 0;
    if ((v8 & 2) != 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    v10 = 0;
    if (v8)
    {
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  v9 = 2654435761u * self->_timeDelivered;
  if ((v8 & 2) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v10 = 2654435761u * self->_expireState;
  if (v8)
  {
LABEL_14:
    v11 = 2654435761 * self->_associatedMessageType;
    goto LABEL_18;
  }

LABEL_17:
  v11 = 0;
LABEL_18:
  v12 = [(NSString *)self->_associatedMessageGuid hash];
  v13 = self->_has;
  if ((v13 & 0x80) != 0)
  {
    v14 = 2654435761 * self->_associatedMessageRangeLocation;
    if ((v13 & 0x40) != 0)
    {
      goto LABEL_20;
    }

LABEL_22:
    v15 = 0;
    return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15;
  }

  v14 = 0;
  if ((v13 & 0x40) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  v15 = 2654435761 * self->_associatedMessageRangeLength;
  return v24 ^ v25 ^ v23 ^ v22 ^ v21 ^ v20 ^ v19 ^ v18 ^ v4 ^ v5 ^ v6 ^ v7 ^ v9 ^ v10 ^ v11 ^ v12 ^ v14 ^ v15;
}

- (void)mergeFrom:(id)a3
{
  if ((*(a3 + 70) & 0x100) != 0)
  {
    self->_version = *(a3 + 34);
    *&self->_has |= 0x100u;
  }

  if (*(a3 + 13))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setMessageSubject:?];
  }

  if (*(a3 + 11))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setMessageBody:?];
  }

  if (*(a3 + 12))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setMessageBodyData:?];
  }

  if (*(a3 + 9))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setBaloonBundleId:?];
  }

  if (*(a3 + 16))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setPayloadData:?];
  }

  if (*(a3 + 14))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setMessageSummaryInfo:?];
  }

  if (*(a3 + 10))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setExpressiveSendId:?];
  }

  v5 = *(a3 + 70);
  if ((v5 & 0x20) != 0)
  {
    self->_timeRead = *(a3 + 6);
    *&self->_has |= 0x20u;
    v5 = *(a3 + 70);
    if ((v5 & 0x10) == 0)
    {
LABEL_19:
      if ((v5 & 8) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 0x10) == 0)
  {
    goto LABEL_19;
  }

  self->_timePlayed = *(a3 + 5);
  *&self->_has |= 0x10u;
  if ((*(a3 + 70) & 8) != 0)
  {
LABEL_20:
    self->_timeExpressiveSentPlayed = *(a3 + 4);
    *&self->_has |= 8u;
  }

LABEL_21:
  if (*(a3 + 15))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setPadding:?];
  }

  v6 = *(a3 + 70);
  if ((v6 & 4) != 0)
  {
    self->_timeDelivered = *(a3 + 3);
    *&self->_has |= 4u;
    v6 = *(a3 + 70);
    if ((v6 & 2) == 0)
    {
LABEL_25:
      if ((v6 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_25;
  }

  self->_expireState = *(a3 + 2);
  *&self->_has |= 2u;
  if (*(a3 + 70))
  {
LABEL_26:
    self->_associatedMessageType = *(a3 + 1);
    *&self->_has |= 1u;
  }

LABEL_27:
  if (*(a3 + 7))
  {
    [(IMSharedUtilitiesProtoCloudKitEncryptedMessage *)self setAssociatedMessageGuid:?];
  }

  v7 = *(a3 + 70);
  if ((v7 & 0x80) != 0)
  {
    self->_associatedMessageRangeLocation = *(a3 + 17);
    *&self->_has |= 0x80u;
    v7 = *(a3 + 70);
  }

  if ((v7 & 0x40) != 0)
  {
    self->_associatedMessageRangeLength = *(a3 + 16);
    *&self->_has |= 0x40u;
  }
}

@end