@interface PKProtobufCommonSharingMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)a3;
- (int)StringAsStatus:(id)a3;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufCommonSharingMessage

- (int)status
{
  if (*&self->_has)
  {
    return self->_status;
  }

  else
  {
    return 5;
  }
}

- (id)statusAsString:(int)a3
{
  if (a3 >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    v4 = off_1E79E2680[a3];
  }

  return v4;
}

- (int)StringAsStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PENDING"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ACCEPTED"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"EXPIRED"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"REVOKED"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CANCELLED"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"UNKNOWN"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"NOTSUPPORTED"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufCommonSharingMessage;
  v4 = [(PKProtobufCommonSharingMessage *)&v8 description];
  v5 = [(PKProtobufCommonSharingMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  phoneInvitation = self->_phoneInvitation;
  if (phoneInvitation)
  {
    [v3 setObject:phoneInvitation forKey:@"phoneInvitation"];
  }

  if (*&self->_has)
  {
    status = self->_status;
    if (status >= 7)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_status];
    }

    else
    {
      v7 = off_1E79E2680[status];
    }

    [v3 setObject:v7 forKey:@"status"];
  }

  dataString = self->_dataString;
  if (dataString)
  {
    [v3 setObject:dataString forKey:@"dataString"];
  }

  watchInvitation = self->_watchInvitation;
  if (watchInvitation)
  {
    [v3 setObject:watchInvitation forKey:@"watchInvitation"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [v3 setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage)
  {
    [v3 setObject:passThumbnailImage forKey:@"passThumbnailImage"];
  }

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  topLeftTitle = self->_topLeftTitle;
  if (topLeftTitle)
  {
    [v3 setObject:topLeftTitle forKey:@"topLeftTitle"];
  }

  topRightTitle = self->_topRightTitle;
  if (topRightTitle)
  {
    [v3 setObject:topRightTitle forKey:@"topRightTitle"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v3 setObject:subtitle forKey:@"subtitle"];
  }

  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    [v3 setObject:thumbnailImage forKey:@"thumbnailImage"];
  }

  actionURL = self->_actionURL;
  if (actionURL)
  {
    [v3 setObject:actionURL forKey:@"actionURL"];
  }

  buttonTitle = self->_buttonTitle;
  if (buttonTitle)
  {
    [v3 setObject:buttonTitle forKey:@"buttonTitle"];
  }

  messageType = self->_messageType;
  if (messageType)
  {
    [v3 setObject:messageType forKey:@"messageType"];
  }

  messageData = self->_messageData;
  if (messageData)
  {
    [v3 setObject:messageData forKey:@"messageData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_phoneInvitation)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = v5;
  if (self->_dataString)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_watchInvitation)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_passThumbnailImage)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_topLeftTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_topRightTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_thumbnailImage)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_actionURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_buttonTitle)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_messageType)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_messageData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[30] = self->_version;
  v5 = v4;
  if (self->_phoneInvitation)
  {
    [v4 setPhoneInvitation:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[16] = self->_status;
    *(v4 + 136) |= 1u;
  }

  if (self->_dataString)
  {
    [v5 setDataString:?];
    v4 = v5;
  }

  if (self->_watchInvitation)
  {
    [v5 setWatchInvitation:?];
    v4 = v5;
  }

  if (self->_uniqueIdentifier)
  {
    [v5 setUniqueIdentifier:?];
    v4 = v5;
  }

  if (self->_passThumbnailImage)
  {
    [v5 setPassThumbnailImage:?];
    v4 = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    v4 = v5;
  }

  if (self->_topLeftTitle)
  {
    [v5 setTopLeftTitle:?];
    v4 = v5;
  }

  if (self->_topRightTitle)
  {
    [v5 setTopRightTitle:?];
    v4 = v5;
  }

  if (self->_subtitle)
  {
    [v5 setSubtitle:?];
    v4 = v5;
  }

  if (self->_thumbnailImage)
  {
    [v5 setThumbnailImage:?];
    v4 = v5;
  }

  if (self->_actionURL)
  {
    [v5 setActionURL:?];
    v4 = v5;
  }

  if (self->_buttonTitle)
  {
    [v5 setButtonTitle:?];
    v4 = v5;
  }

  if (self->_messageType)
  {
    [v5 setMessageType:?];
    v4 = v5;
  }

  if (self->_messageData)
  {
    [v5 setMessageData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 120) = self->_version;
  v6 = [(NSString *)self->_phoneInvitation copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  if (*&self->_has)
  {
    *(v5 + 64) = self->_status;
    *(v5 + 136) |= 1u;
  }

  v8 = [(NSString *)self->_dataString copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_watchInvitation copyWithZone:a3];
  v11 = *(v5 + 128);
  *(v5 + 128) = v10;

  v12 = [(NSString *)self->_uniqueIdentifier copyWithZone:a3];
  v13 = *(v5 + 112);
  *(v5 + 112) = v12;

  v14 = [(NSData *)self->_passThumbnailImage copyWithZone:a3];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_title copyWithZone:a3];
  v17 = *(v5 + 88);
  *(v5 + 88) = v16;

  v18 = [(NSString *)self->_topLeftTitle copyWithZone:a3];
  v19 = *(v5 + 96);
  *(v5 + 96) = v18;

  v20 = [(NSString *)self->_topRightTitle copyWithZone:a3];
  v21 = *(v5 + 104);
  *(v5 + 104) = v20;

  v22 = [(NSString *)self->_subtitle copyWithZone:a3];
  v23 = *(v5 + 72);
  *(v5 + 72) = v22;

  v24 = [(NSData *)self->_thumbnailImage copyWithZone:a3];
  v25 = *(v5 + 80);
  *(v5 + 80) = v24;

  v26 = [(NSString *)self->_actionURL copyWithZone:a3];
  v27 = *(v5 + 8);
  *(v5 + 8) = v26;

  v28 = [(NSString *)self->_buttonTitle copyWithZone:a3];
  v29 = *(v5 + 16);
  *(v5 + 16) = v28;

  v30 = [(NSString *)self->_messageType copyWithZone:a3];
  v31 = *(v5 + 40);
  *(v5 + 40) = v30;

  v32 = [(NSData *)self->_messageData copyWithZone:a3];
  v33 = *(v5 + 32);
  *(v5 + 32) = v32;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (self->_version != *(v4 + 30))
  {
    goto LABEL_36;
  }

  phoneInvitation = self->_phoneInvitation;
  if (phoneInvitation | *(v4 + 7))
  {
    if (![(NSString *)phoneInvitation isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 136) & 1) == 0 || self->_status != *(v4 + 16))
    {
      goto LABEL_36;
    }
  }

  else if (*(v4 + 136))
  {
LABEL_36:
    v19 = 0;
    goto LABEL_37;
  }

  dataString = self->_dataString;
  if (dataString | *(v4 + 3) && ![(NSString *)dataString isEqual:?])
  {
    goto LABEL_36;
  }

  watchInvitation = self->_watchInvitation;
  if (watchInvitation | *(v4 + 16))
  {
    if (![(NSString *)watchInvitation isEqual:?])
    {
      goto LABEL_36;
    }
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(v4 + 14))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage | *(v4 + 6))
  {
    if (![(NSData *)passThumbnailImage isEqual:?])
    {
      goto LABEL_36;
    }
  }

  title = self->_title;
  if (title | *(v4 + 11))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_36;
    }
  }

  topLeftTitle = self->_topLeftTitle;
  if (topLeftTitle | *(v4 + 12))
  {
    if (![(NSString *)topLeftTitle isEqual:?])
    {
      goto LABEL_36;
    }
  }

  topRightTitle = self->_topRightTitle;
  if (topRightTitle | *(v4 + 13))
  {
    if (![(NSString *)topRightTitle isEqual:?])
    {
      goto LABEL_36;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(v4 + 9))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_36;
    }
  }

  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage | *(v4 + 10))
  {
    if (![(NSData *)thumbnailImage isEqual:?])
    {
      goto LABEL_36;
    }
  }

  actionURL = self->_actionURL;
  if (actionURL | *(v4 + 1))
  {
    if (![(NSString *)actionURL isEqual:?])
    {
      goto LABEL_36;
    }
  }

  buttonTitle = self->_buttonTitle;
  if (buttonTitle | *(v4 + 2))
  {
    if (![(NSString *)buttonTitle isEqual:?])
    {
      goto LABEL_36;
    }
  }

  messageType = self->_messageType;
  if (messageType | *(v4 + 5))
  {
    if (![(NSString *)messageType isEqual:?])
    {
      goto LABEL_36;
    }
  }

  messageData = self->_messageData;
  if (messageData | *(v4 + 4))
  {
    v19 = [(NSData *)messageData isEqual:?];
  }

  else
  {
    v19 = 1;
  }

LABEL_37:

  return v19;
}

- (unint64_t)hash
{
  version = self->_version;
  v4 = [(NSString *)self->_phoneInvitation hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_status;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v5 ^ [(NSString *)self->_dataString hash];
  v7 = v6 ^ [(NSString *)self->_watchInvitation hash]^ (2654435761 * version);
  v8 = [(NSString *)self->_uniqueIdentifier hash];
  v9 = v8 ^ [(NSData *)self->_passThumbnailImage hash];
  v10 = v9 ^ [(NSString *)self->_title hash];
  v11 = v10 ^ [(NSString *)self->_topLeftTitle hash];
  v12 = v7 ^ v11 ^ [(NSString *)self->_topRightTitle hash];
  v13 = [(NSString *)self->_subtitle hash];
  v14 = v13 ^ [(NSData *)self->_thumbnailImage hash];
  v15 = v14 ^ [(NSString *)self->_actionURL hash];
  v16 = v15 ^ [(NSString *)self->_buttonTitle hash];
  v17 = v16 ^ [(NSString *)self->_messageType hash];
  return v12 ^ v17 ^ [(NSData *)self->_messageData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_version = v4[30];
  v5 = v4;
  if (*(v4 + 7))
  {
    [(PKProtobufCommonSharingMessage *)self setPhoneInvitation:?];
    v4 = v5;
  }

  if (v4[34])
  {
    self->_status = v4[16];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(PKProtobufCommonSharingMessage *)self setDataString:?];
    v4 = v5;
  }

  if (*(v4 + 16))
  {
    [(PKProtobufCommonSharingMessage *)self setWatchInvitation:?];
    v4 = v5;
  }

  if (*(v4 + 14))
  {
    [(PKProtobufCommonSharingMessage *)self setUniqueIdentifier:?];
    v4 = v5;
  }

  if (*(v4 + 6))
  {
    [(PKProtobufCommonSharingMessage *)self setPassThumbnailImage:?];
    v4 = v5;
  }

  if (*(v4 + 11))
  {
    [(PKProtobufCommonSharingMessage *)self setTitle:?];
    v4 = v5;
  }

  if (*(v4 + 12))
  {
    [(PKProtobufCommonSharingMessage *)self setTopLeftTitle:?];
    v4 = v5;
  }

  if (*(v4 + 13))
  {
    [(PKProtobufCommonSharingMessage *)self setTopRightTitle:?];
    v4 = v5;
  }

  if (*(v4 + 9))
  {
    [(PKProtobufCommonSharingMessage *)self setSubtitle:?];
    v4 = v5;
  }

  if (*(v4 + 10))
  {
    [(PKProtobufCommonSharingMessage *)self setThumbnailImage:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(PKProtobufCommonSharingMessage *)self setActionURL:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(PKProtobufCommonSharingMessage *)self setButtonTitle:?];
    v4 = v5;
  }

  if (*(v4 + 5))
  {
    [(PKProtobufCommonSharingMessage *)self setMessageType:?];
    v4 = v5;
  }

  if (*(v4 + 4))
  {
    [(PKProtobufCommonSharingMessage *)self setMessageData:?];
    v4 = v5;
  }
}

@end