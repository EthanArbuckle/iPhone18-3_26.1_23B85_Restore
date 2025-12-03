@interface PKProtobufCommonSharingMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)statusAsString:(int)string;
- (int)StringAsStatus:(id)status;
- (int)status;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (id)statusAsString:(int)string
{
  if (string >= 7)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E79E2680[string];
  }

  return v4;
}

- (int)StringAsStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"PENDING"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"ACCEPTED"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"EXPIRED"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"REVOKED"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"CANCELLED"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 5;
  }

  else if ([statusCopy isEqualToString:@"NOTSUPPORTED"])
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
  dictionaryRepresentation = [(PKProtobufCommonSharingMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  phoneInvitation = self->_phoneInvitation;
  if (phoneInvitation)
  {
    [dictionary setObject:phoneInvitation forKey:@"phoneInvitation"];
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

    [dictionary setObject:v7 forKey:@"status"];
  }

  dataString = self->_dataString;
  if (dataString)
  {
    [dictionary setObject:dataString forKey:@"dataString"];
  }

  watchInvitation = self->_watchInvitation;
  if (watchInvitation)
  {
    [dictionary setObject:watchInvitation forKey:@"watchInvitation"];
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    [dictionary setObject:uniqueIdentifier forKey:@"uniqueIdentifier"];
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage)
  {
    [dictionary setObject:passThumbnailImage forKey:@"passThumbnailImage"];
  }

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  topLeftTitle = self->_topLeftTitle;
  if (topLeftTitle)
  {
    [dictionary setObject:topLeftTitle forKey:@"topLeftTitle"];
  }

  topRightTitle = self->_topRightTitle;
  if (topRightTitle)
  {
    [dictionary setObject:topRightTitle forKey:@"topRightTitle"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [dictionary setObject:subtitle forKey:@"subtitle"];
  }

  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    [dictionary setObject:thumbnailImage forKey:@"thumbnailImage"];
  }

  actionURL = self->_actionURL;
  if (actionURL)
  {
    [dictionary setObject:actionURL forKey:@"actionURL"];
  }

  buttonTitle = self->_buttonTitle;
  if (buttonTitle)
  {
    [dictionary setObject:buttonTitle forKey:@"buttonTitle"];
  }

  messageType = self->_messageType;
  if (messageType)
  {
    [dictionary setObject:messageType forKey:@"messageType"];
  }

  messageData = self->_messageData;
  if (messageData)
  {
    [dictionary setObject:messageData forKey:@"messageData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (self->_phoneInvitation)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = toCopy;
  if (self->_dataString)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_watchInvitation)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_uniqueIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_passThumbnailImage)
  {
    PBDataWriterWriteDataField();
    v4 = toCopy;
  }

  if (self->_title)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_topLeftTitle)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_topRightTitle)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_thumbnailImage)
  {
    PBDataWriterWriteDataField();
    v4 = toCopy;
  }

  if (self->_actionURL)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_buttonTitle)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_messageType)
  {
    PBDataWriterWriteStringField();
    v4 = toCopy;
  }

  if (self->_messageData)
  {
    PBDataWriterWriteDataField();
    v4 = toCopy;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[30] = self->_version;
  v5 = toCopy;
  if (self->_phoneInvitation)
  {
    [toCopy setPhoneInvitation:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    toCopy[16] = self->_status;
    *(toCopy + 136) |= 1u;
  }

  if (self->_dataString)
  {
    [v5 setDataString:?];
    toCopy = v5;
  }

  if (self->_watchInvitation)
  {
    [v5 setWatchInvitation:?];
    toCopy = v5;
  }

  if (self->_uniqueIdentifier)
  {
    [v5 setUniqueIdentifier:?];
    toCopy = v5;
  }

  if (self->_passThumbnailImage)
  {
    [v5 setPassThumbnailImage:?];
    toCopy = v5;
  }

  if (self->_title)
  {
    [v5 setTitle:?];
    toCopy = v5;
  }

  if (self->_topLeftTitle)
  {
    [v5 setTopLeftTitle:?];
    toCopy = v5;
  }

  if (self->_topRightTitle)
  {
    [v5 setTopRightTitle:?];
    toCopy = v5;
  }

  if (self->_subtitle)
  {
    [v5 setSubtitle:?];
    toCopy = v5;
  }

  if (self->_thumbnailImage)
  {
    [v5 setThumbnailImage:?];
    toCopy = v5;
  }

  if (self->_actionURL)
  {
    [v5 setActionURL:?];
    toCopy = v5;
  }

  if (self->_buttonTitle)
  {
    [v5 setButtonTitle:?];
    toCopy = v5;
  }

  if (self->_messageType)
  {
    [v5 setMessageType:?];
    toCopy = v5;
  }

  if (self->_messageData)
  {
    [v5 setMessageData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 120) = self->_version;
  v6 = [(NSString *)self->_phoneInvitation copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  if (*&self->_has)
  {
    *(v5 + 64) = self->_status;
    *(v5 + 136) |= 1u;
  }

  v8 = [(NSString *)self->_dataString copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(NSString *)self->_watchInvitation copyWithZone:zone];
  v11 = *(v5 + 128);
  *(v5 + 128) = v10;

  v12 = [(NSString *)self->_uniqueIdentifier copyWithZone:zone];
  v13 = *(v5 + 112);
  *(v5 + 112) = v12;

  v14 = [(NSData *)self->_passThumbnailImage copyWithZone:zone];
  v15 = *(v5 + 48);
  *(v5 + 48) = v14;

  v16 = [(NSString *)self->_title copyWithZone:zone];
  v17 = *(v5 + 88);
  *(v5 + 88) = v16;

  v18 = [(NSString *)self->_topLeftTitle copyWithZone:zone];
  v19 = *(v5 + 96);
  *(v5 + 96) = v18;

  v20 = [(NSString *)self->_topRightTitle copyWithZone:zone];
  v21 = *(v5 + 104);
  *(v5 + 104) = v20;

  v22 = [(NSString *)self->_subtitle copyWithZone:zone];
  v23 = *(v5 + 72);
  *(v5 + 72) = v22;

  v24 = [(NSData *)self->_thumbnailImage copyWithZone:zone];
  v25 = *(v5 + 80);
  *(v5 + 80) = v24;

  v26 = [(NSString *)self->_actionURL copyWithZone:zone];
  v27 = *(v5 + 8);
  *(v5 + 8) = v26;

  v28 = [(NSString *)self->_buttonTitle copyWithZone:zone];
  v29 = *(v5 + 16);
  *(v5 + 16) = v28;

  v30 = [(NSString *)self->_messageType copyWithZone:zone];
  v31 = *(v5 + 40);
  *(v5 + 40) = v30;

  v32 = [(NSData *)self->_messageData copyWithZone:zone];
  v33 = *(v5 + 32);
  *(v5 + 32) = v32;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_36;
  }

  if (self->_version != *(equalCopy + 30))
  {
    goto LABEL_36;
  }

  phoneInvitation = self->_phoneInvitation;
  if (phoneInvitation | *(equalCopy + 7))
  {
    if (![(NSString *)phoneInvitation isEqual:?])
    {
      goto LABEL_36;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 136) & 1) == 0 || self->_status != *(equalCopy + 16))
    {
      goto LABEL_36;
    }
  }

  else if (*(equalCopy + 136))
  {
LABEL_36:
    v19 = 0;
    goto LABEL_37;
  }

  dataString = self->_dataString;
  if (dataString | *(equalCopy + 3) && ![(NSString *)dataString isEqual:?])
  {
    goto LABEL_36;
  }

  watchInvitation = self->_watchInvitation;
  if (watchInvitation | *(equalCopy + 16))
  {
    if (![(NSString *)watchInvitation isEqual:?])
    {
      goto LABEL_36;
    }
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier | *(equalCopy + 14))
  {
    if (![(NSString *)uniqueIdentifier isEqual:?])
    {
      goto LABEL_36;
    }
  }

  passThumbnailImage = self->_passThumbnailImage;
  if (passThumbnailImage | *(equalCopy + 6))
  {
    if (![(NSData *)passThumbnailImage isEqual:?])
    {
      goto LABEL_36;
    }
  }

  title = self->_title;
  if (title | *(equalCopy + 11))
  {
    if (![(NSString *)title isEqual:?])
    {
      goto LABEL_36;
    }
  }

  topLeftTitle = self->_topLeftTitle;
  if (topLeftTitle | *(equalCopy + 12))
  {
    if (![(NSString *)topLeftTitle isEqual:?])
    {
      goto LABEL_36;
    }
  }

  topRightTitle = self->_topRightTitle;
  if (topRightTitle | *(equalCopy + 13))
  {
    if (![(NSString *)topRightTitle isEqual:?])
    {
      goto LABEL_36;
    }
  }

  subtitle = self->_subtitle;
  if (subtitle | *(equalCopy + 9))
  {
    if (![(NSString *)subtitle isEqual:?])
    {
      goto LABEL_36;
    }
  }

  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage | *(equalCopy + 10))
  {
    if (![(NSData *)thumbnailImage isEqual:?])
    {
      goto LABEL_36;
    }
  }

  actionURL = self->_actionURL;
  if (actionURL | *(equalCopy + 1))
  {
    if (![(NSString *)actionURL isEqual:?])
    {
      goto LABEL_36;
    }
  }

  buttonTitle = self->_buttonTitle;
  if (buttonTitle | *(equalCopy + 2))
  {
    if (![(NSString *)buttonTitle isEqual:?])
    {
      goto LABEL_36;
    }
  }

  messageType = self->_messageType;
  if (messageType | *(equalCopy + 5))
  {
    if (![(NSString *)messageType isEqual:?])
    {
      goto LABEL_36;
    }
  }

  messageData = self->_messageData;
  if (messageData | *(equalCopy + 4))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_version = fromCopy[30];
  v5 = fromCopy;
  if (*(fromCopy + 7))
  {
    [(PKProtobufCommonSharingMessage *)self setPhoneInvitation:?];
    fromCopy = v5;
  }

  if (fromCopy[34])
  {
    self->_status = fromCopy[16];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(PKProtobufCommonSharingMessage *)self setDataString:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 16))
  {
    [(PKProtobufCommonSharingMessage *)self setWatchInvitation:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 14))
  {
    [(PKProtobufCommonSharingMessage *)self setUniqueIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 6))
  {
    [(PKProtobufCommonSharingMessage *)self setPassThumbnailImage:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 11))
  {
    [(PKProtobufCommonSharingMessage *)self setTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 12))
  {
    [(PKProtobufCommonSharingMessage *)self setTopLeftTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 13))
  {
    [(PKProtobufCommonSharingMessage *)self setTopRightTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 9))
  {
    [(PKProtobufCommonSharingMessage *)self setSubtitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 10))
  {
    [(PKProtobufCommonSharingMessage *)self setThumbnailImage:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(PKProtobufCommonSharingMessage *)self setActionURL:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 2))
  {
    [(PKProtobufCommonSharingMessage *)self setButtonTitle:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 5))
  {
    [(PKProtobufCommonSharingMessage *)self setMessageType:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 4))
  {
    [(PKProtobufCommonSharingMessage *)self setMessageData:?];
    fromCopy = v5;
  }
}

@end