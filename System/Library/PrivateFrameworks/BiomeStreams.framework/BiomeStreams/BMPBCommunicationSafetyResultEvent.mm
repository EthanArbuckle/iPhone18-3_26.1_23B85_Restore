@interface BMPBCommunicationSafetyResultEvent
- (BMPBCommunicationSafetyResultEvent)initWithData:(id)data skipImage:(BOOL)image;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCommunicationSafetyResultContentType:(id)type;
- (int)StringAsCommunicationSafetyResultEventDirection:(id)direction;
- (int)StringAsCommunicationSafetyResultEventType:(id)type;
- (int)communicationSafetyResultContentType;
- (int)communicationSafetyResultEventDirection;
- (int)communicationSafetyResultEventType;
- (unint64_t)hash;
- (void)addContactHandles:(id)handles;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCommunicationSafetyResultContentType:(BOOL)type;
- (void)setHasCommunicationSafetyResultEventDirection:(BOOL)direction;
- (void)setHasCommunicationSafetyResultEventType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation BMPBCommunicationSafetyResultEvent

- (BMPBCommunicationSafetyResultEvent)initWithData:(id)data skipImage:(BOOL)image
{
  self->_skipImage = image;
  v5.receiver = self;
  v5.super_class = BMPBCommunicationSafetyResultEvent;
  return [(BMPBCommunicationSafetyResultEvent *)&v5 initWithData:data];
}

- (int)communicationSafetyResultEventDirection
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_communicationSafetyResultEventDirection;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCommunicationSafetyResultEventDirection:(BOOL)direction
{
  if (direction)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsCommunicationSafetyResultEventDirection:(id)direction
{
  directionCopy = direction;
  if ([directionCopy isEqualToString:@"Sent"])
  {
    v4 = 0;
  }

  else if ([directionCopy isEqualToString:@"Received"])
  {
    v4 = 1;
  }

  else if ([directionCopy isEqualToString:@"UnknownOrNotApplicable"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)communicationSafetyResultEventType
{
  if ((*&self->_has & 8) != 0)
  {
    return self->_communicationSafetyResultEventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCommunicationSafetyResultEventType:(BOOL)type
{
  if (type)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsCommunicationSafetyResultEventType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Sensitive"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"NonSensitive"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Deleted"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"ConversationDeleted"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int)communicationSafetyResultContentType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_communicationSafetyResultContentType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasCommunicationSafetyResultContentType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)StringAsCommunicationSafetyResultContentType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Photo"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"Message"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"Conversation"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addContactHandles:(id)handles
{
  handlesCopy = handles;
  contactHandles = self->_contactHandles;
  v8 = handlesCopy;
  if (!contactHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contactHandles;
    self->_contactHandles = v6;

    handlesCopy = v8;
    contactHandles = self->_contactHandles;
  }

  [(NSMutableArray *)contactHandles addObject:handlesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBCommunicationSafetyResultEvent;
  v4 = [(BMPBCommunicationSafetyResultEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBCommunicationSafetyResultEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [dictionary setObject:v4 forKey:@"absoluteTimestamp"];
  }

  childId = self->_childId;
  if (childId)
  {
    [dictionary setObject:childId forKey:@"childId"];
  }

  deviceId = self->_deviceId;
  if (deviceId)
  {
    [dictionary setObject:deviceId forKey:@"deviceId"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    communicationSafetyResultEventDirection = self->_communicationSafetyResultEventDirection;
    if (communicationSafetyResultEventDirection >= 3)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_communicationSafetyResultEventDirection];
    }

    else
    {
      v9 = off_1E6E544F8[communicationSafetyResultEventDirection];
    }

    [dictionary setObject:v9 forKey:@"communicationSafetyResultEventDirection"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  communicationSafetyResultEventType = self->_communicationSafetyResultEventType;
  if (communicationSafetyResultEventType >= 4)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_communicationSafetyResultEventType];
  }

  else
  {
    v11 = off_1E6E54510[communicationSafetyResultEventType];
  }

  [dictionary setObject:v11 forKey:@"communicationSafetyResultEventType"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_19:
    communicationSafetyResultContentType = self->_communicationSafetyResultContentType;
    if (communicationSafetyResultContentType >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_communicationSafetyResultContentType];
    }

    else
    {
      v13 = off_1E6E54530[communicationSafetyResultContentType];
    }

    [dictionary setObject:v13 forKey:@"communicationSafetyResultContentType"];
  }

LABEL_23:
  contactHandles = self->_contactHandles;
  if (contactHandles)
  {
    [dictionary setObject:contactHandles forKey:@"contactHandles"];
  }

  contentId = self->_contentId;
  if (contentId)
  {
    [dictionary setObject:contentId forKey:@"contentId"];
  }

  conversationId = self->_conversationId;
  if (conversationId)
  {
    [dictionary setObject:conversationId forKey:@"conversationId"];
  }

  imageData = self->_imageData;
  if (imageData)
  {
    [dictionary setObject:imageData forKey:@"imageData"];
  }

  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId)
  {
    [dictionary setObject:sourceBundleId forKey:@"sourceBundleId"];
  }

  senderHandle = self->_senderHandle;
  if (senderHandle)
  {
    [dictionary setObject:senderHandle forKey:@"senderHandle"];
  }

  contentURL = self->_contentURL;
  if (contentURL)
  {
    [dictionary setObject:contentURL forKey:@"contentURL"];
  }

  conversationURL = self->_conversationURL;
  if (conversationURL)
  {
    [dictionary setObject:conversationURL forKey:@"conversationURL"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_childId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    communicationSafetyResultEventDirection = self->_communicationSafetyResultEventDirection;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_9:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

  communicationSafetyResultEventType = self->_communicationSafetyResultEventType;
  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 2) != 0)
  {
LABEL_10:
    communicationSafetyResultContentType = self->_communicationSafetyResultContentType;
    PBDataWriterWriteInt32Field();
  }

LABEL_11:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_contactHandles;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  if (self->_contentId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_imageData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sourceBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_senderHandle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentURL)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationURL)
  {
    PBDataWriterWriteStringField();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = *&self->_absoluteTimestamp;
    *(toCopy + 112) |= 1u;
  }

  v11 = toCopy;
  if (self->_childId)
  {
    [toCopy setChildId:?];
    toCopy = v11;
  }

  if (self->_deviceId)
  {
    [v11 setDeviceId:?];
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 4) == 0)
  {
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_9;
    }

LABEL_33:
    *(toCopy + 8) = self->_communicationSafetyResultEventType;
    *(toCopy + 112) |= 8u;
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  *(toCopy + 7) = self->_communicationSafetyResultEventDirection;
  *(toCopy + 112) |= 4u;
  has = self->_has;
  if ((has & 8) != 0)
  {
    goto LABEL_33;
  }

LABEL_9:
  if ((has & 2) != 0)
  {
LABEL_10:
    *(toCopy + 6) = self->_communicationSafetyResultContentType;
    *(toCopy + 112) |= 2u;
  }

LABEL_11:
  if ([(BMPBCommunicationSafetyResultEvent *)self contactHandlesCount])
  {
    [v11 clearContactHandles];
    contactHandlesCount = [(BMPBCommunicationSafetyResultEvent *)self contactHandlesCount];
    if (contactHandlesCount)
    {
      v7 = contactHandlesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(BMPBCommunicationSafetyResultEvent *)self contactHandlesAtIndex:i];
        [v11 addContactHandles:v9];
      }
    }
  }

  if (self->_contentId)
  {
    [v11 setContentId:?];
  }

  v10 = v11;
  if (self->_conversationId)
  {
    [v11 setConversationId:?];
    v10 = v11;
  }

  if (self->_imageData)
  {
    [v11 setImageData:?];
    v10 = v11;
  }

  if (self->_sourceBundleId)
  {
    [v11 setSourceBundleId:?];
    v10 = v11;
  }

  if (self->_senderHandle)
  {
    [v11 setSenderHandle:?];
    v10 = v11;
  }

  if (self->_contentURL)
  {
    [v11 setContentURL:?];
    v10 = v11;
  }

  if (self->_conversationURL)
  {
    [v11 setConversationURL:?];
    v10 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 112) |= 1u;
  }

  v7 = [(NSString *)self->_childId copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  v9 = [(NSString *)self->_deviceId copyWithZone:zone];
  v10 = *(v6 + 80);
  *(v6 + 80) = v9;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 28) = self->_communicationSafetyResultEventDirection;
    *(v6 + 112) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v6 + 32) = self->_communicationSafetyResultEventType;
  *(v6 + 112) |= 8u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_6:
    *(v6 + 24) = self->_communicationSafetyResultContentType;
    *(v6 + 112) |= 2u;
  }

LABEL_7:
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v12 = self->_contactHandles;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v35;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v34 + 1) + 8 * i) copyWithZone:{zone, v34}];
        [v6 addContactHandles:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_contentId copyWithZone:zone];
  v19 = *(v6 + 48);
  *(v6 + 48) = v18;

  v20 = [(NSString *)self->_conversationId copyWithZone:zone];
  v21 = *(v6 + 64);
  *(v6 + 64) = v20;

  v22 = [(NSData *)self->_imageData copyWithZone:zone];
  v23 = *(v6 + 88);
  *(v6 + 88) = v22;

  v24 = [(NSString *)self->_sourceBundleId copyWithZone:zone];
  v25 = *(v6 + 104);
  *(v6 + 104) = v24;

  v26 = [(NSString *)self->_senderHandle copyWithZone:zone];
  v27 = *(v6 + 96);
  *(v6 + 96) = v26;

  v28 = [(NSString *)self->_contentURL copyWithZone:zone];
  v29 = *(v6 + 56);
  *(v6 + 56) = v28;

  v30 = [(NSString *)self->_conversationURL copyWithZone:zone];
  v31 = *(v6 + 72);
  *(v6 + 72) = v30;

  v32 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_42;
  }

  v5 = *(equalCopy + 112);
  if (*&self->_has)
  {
    if ((*(equalCopy + 112) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_42;
    }
  }

  else if (*(equalCopy + 112))
  {
LABEL_42:
    v17 = 0;
    goto LABEL_43;
  }

  childId = self->_childId;
  if (childId | *(equalCopy + 2) && ![(NSString *)childId isEqual:?])
  {
    goto LABEL_42;
  }

  deviceId = self->_deviceId;
  if (deviceId | *(equalCopy + 10))
  {
    if (![(NSString *)deviceId isEqual:?])
    {
      goto LABEL_42;
    }
  }

  v8 = *(equalCopy + 112);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 112) & 4) == 0 || self->_communicationSafetyResultEventDirection != *(equalCopy + 7))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 112) & 4) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 112) & 8) == 0 || self->_communicationSafetyResultEventType != *(equalCopy + 8))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 112) & 8) != 0)
  {
    goto LABEL_42;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 112) & 2) == 0 || self->_communicationSafetyResultContentType != *(equalCopy + 6))
    {
      goto LABEL_42;
    }
  }

  else if ((*(equalCopy + 112) & 2) != 0)
  {
    goto LABEL_42;
  }

  contactHandles = self->_contactHandles;
  if (contactHandles | *(equalCopy + 5) && ![(NSMutableArray *)contactHandles isEqual:?])
  {
    goto LABEL_42;
  }

  contentId = self->_contentId;
  if (contentId | *(equalCopy + 6))
  {
    if (![(NSString *)contentId isEqual:?])
    {
      goto LABEL_42;
    }
  }

  conversationId = self->_conversationId;
  if (conversationId | *(equalCopy + 8))
  {
    if (![(NSString *)conversationId isEqual:?])
    {
      goto LABEL_42;
    }
  }

  imageData = self->_imageData;
  if (imageData | *(equalCopy + 11))
  {
    if (![(NSData *)imageData isEqual:?])
    {
      goto LABEL_42;
    }
  }

  sourceBundleId = self->_sourceBundleId;
  if (sourceBundleId | *(equalCopy + 13))
  {
    if (![(NSString *)sourceBundleId isEqual:?])
    {
      goto LABEL_42;
    }
  }

  senderHandle = self->_senderHandle;
  if (senderHandle | *(equalCopy + 12))
  {
    if (![(NSString *)senderHandle isEqual:?])
    {
      goto LABEL_42;
    }
  }

  contentURL = self->_contentURL;
  if (contentURL | *(equalCopy + 7))
  {
    if (![(NSString *)contentURL isEqual:?])
    {
      goto LABEL_42;
    }
  }

  conversationURL = self->_conversationURL;
  if (conversationURL | *(equalCopy + 9))
  {
    v17 = [(NSString *)conversationURL isEqual:?];
  }

  else
  {
    v17 = 1;
  }

LABEL_43:

  return v17;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v2.i64 = floor(absoluteTimestamp + 0.5);
    v7 = (absoluteTimestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_childId hash];
  v10 = [(NSString *)self->_deviceId hash];
  if ((*&self->_has & 4) == 0)
  {
    v11 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    v12 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  v11 = 2654435761 * self->_communicationSafetyResultEventDirection;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = 2654435761 * self->_communicationSafetyResultEventType;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v13 = 2654435761 * self->_communicationSafetyResultContentType;
LABEL_16:
  v14 = v9 ^ v5 ^ v10 ^ v11;
  v15 = v12 ^ v13 ^ [(NSMutableArray *)self->_contactHandles hash];
  v16 = v14 ^ v15 ^ [(NSString *)self->_contentId hash];
  v17 = [(NSString *)self->_conversationId hash];
  v18 = v17 ^ [(NSData *)self->_imageData hash];
  v19 = v18 ^ [(NSString *)self->_sourceBundleId hash];
  v20 = v16 ^ v19 ^ [(NSString *)self->_senderHandle hash];
  v21 = [(NSString *)self->_contentURL hash];
  return v20 ^ v21 ^ [(NSString *)self->_conversationURL hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[14])
  {
    self->_absoluteTimestamp = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(BMPBCommunicationSafetyResultEvent *)self setChildId:?];
  }

  if (*(v5 + 10))
  {
    [(BMPBCommunicationSafetyResultEvent *)self setDeviceId:?];
  }

  v6 = *(v5 + 112);
  if ((v6 & 4) != 0)
  {
    self->_communicationSafetyResultEventDirection = *(v5 + 7);
    *&self->_has |= 4u;
    v6 = *(v5 + 112);
    if ((v6 & 8) == 0)
    {
LABEL_9:
      if ((v6 & 2) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if ((v5[14] & 8) == 0)
  {
    goto LABEL_9;
  }

  self->_communicationSafetyResultEventType = *(v5 + 8);
  *&self->_has |= 8u;
  if ((v5[14] & 2) != 0)
  {
LABEL_10:
    self->_communicationSafetyResultContentType = *(v5 + 6);
    *&self->_has |= 2u;
  }

LABEL_11:
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v5 + 5);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(BMPBCommunicationSafetyResultEvent *)self addContactHandles:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (*(v5 + 6))
  {
    [(BMPBCommunicationSafetyResultEvent *)self setContentId:?];
  }

  if (*(v5 + 8))
  {
    [(BMPBCommunicationSafetyResultEvent *)self setConversationId:?];
  }

  if (*(v5 + 11))
  {
    [(BMPBCommunicationSafetyResultEvent *)self setImageData:?];
  }

  if (*(v5 + 13))
  {
    [(BMPBCommunicationSafetyResultEvent *)self setSourceBundleId:?];
  }

  if (*(v5 + 12))
  {
    [(BMPBCommunicationSafetyResultEvent *)self setSenderHandle:?];
  }

  if (*(v5 + 7))
  {
    [(BMPBCommunicationSafetyResultEvent *)self setContentURL:?];
  }

  if (*(v5 + 9))
  {
    [(BMPBCommunicationSafetyResultEvent *)self setConversationURL:?];
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end