@interface BLTPBCommunicationContext
- (BOOL)isEqual:(id)equal;
- (NSURL)contentURLLocalFileLocation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRecipients:(id)recipients;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCapability:(BOOL)capability;
- (void)setHasMentionsCurrentUser:(BOOL)user;
- (void)setHasNotifyRecipientAnyway:(BOOL)anyway;
- (void)setHasRecipientCount:(BOOL)count;
- (void)setHasReplyToCurrentUser:(BOOL)user;
- (void)setHasSystemImage:(BOOL)image;
- (void)writeTo:(id)to;
@end

@implementation BLTPBCommunicationContext

- (void)addRecipients:(id)recipients
{
  recipientsCopy = recipients;
  recipients = self->_recipients;
  v8 = recipientsCopy;
  if (!recipients)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_recipients;
    self->_recipients = v6;

    recipientsCopy = v8;
    recipients = self->_recipients;
  }

  [(NSMutableArray *)recipients addObject:recipientsCopy];
}

- (void)setHasMentionsCurrentUser:(BOOL)user
{
  if (user)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNotifyRecipientAnyway:(BOOL)anyway
{
  if (anyway)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasReplyToCurrentUser:(BOOL)user
{
  if (user)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasRecipientCount:(BOOL)count
{
  if (count)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSystemImage:(BOOL)image
{
  if (image)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasCapability:(BOOL)capability
{
  if (capability)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBCommunicationContext;
  v4 = [(BLTPBCommunicationContext *)&v8 description];
  dictionaryRepresentation = [(BLTPBCommunicationContext *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [v4 setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  associatedObjectUriData = self->_associatedObjectUriData;
  if (associatedObjectUriData)
  {
    [v4 setObject:associatedObjectUriData forKey:@"associatedObjectUriData"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [v4 setObject:displayName forKey:@"displayName"];
  }

  sender = self->_sender;
  if (sender)
  {
    dictionaryRepresentation = [(BLTPBContact *)sender dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"sender"];
  }

  if ([(NSMutableArray *)self->_recipients count])
  {
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_recipients, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = self->_recipients;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v31 + 1) + 8 * i) dictionaryRepresentation];
          [v11 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v14);
    }

    [v4 setObject:v11 forKey:@"recipients"];
  }

  contentURLData = self->_contentURLData;
  if (contentURLData)
  {
    [v4 setObject:contentURLData forKey:@"contentURLData"];
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    v26 = [MEMORY[0x277CCABB0] numberWithBool:self->_mentionsCurrentUser];
    [v4 setObject:v26 forKey:@"mentionsCurrentUser"];

    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_24:
      if ((has & 0x20) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_38;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_24;
  }

  v27 = [MEMORY[0x277CCABB0] numberWithBool:{self->_notifyRecipientAnyway, v31}];
  [v4 setObject:v27 forKey:@"notifyRecipientAnyway"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_25:
    if ((has & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_38:
  v28 = [MEMORY[0x277CCABB0] numberWithBool:{self->_replyToCurrentUser, v31}];
  [v4 setObject:v28 forKey:@"replyToCurrentUser"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_26:
    v20 = [MEMORY[0x277CCABB0] numberWithInt:{self->_recipientCount, v31}];
    [v4 setObject:v20 forKey:@"recipientCount"];
  }

LABEL_27:
  imageName = self->_imageName;
  if (imageName)
  {
    [v4 setObject:imageName forKey:@"imageName"];
  }

  v22 = self->_has;
  if ((v22 & 0x40) != 0)
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:self->_systemImage];
    [v4 setObject:v29 forKey:@"systemImage"];

    v22 = self->_has;
    if ((v22 & 2) == 0)
    {
LABEL_31:
      if ((v22 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_31;
  }

  v30 = [MEMORY[0x277CCABB0] numberWithInt:{self->_capability, v31}];
  [v4 setObject:v30 forKey:@"capability"];

  if (*&self->_has)
  {
LABEL_32:
    v23 = [MEMORY[0x277CCABB0] numberWithInt:{self->_capabilities, v31}];
    [v4 setObject:v23 forKey:@"capabilities"];
  }

LABEL_33:
  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)to
{
  v26 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  if (!self->_bundleIdentifier)
  {
    [BLTPBCommunicationContext writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_associatedObjectUriData)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sender)
  {
    PBDataWriterWriteSubmessage();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_recipients;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v7);
  }

  if (self->_contentURLData)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if ((has & 8) != 0)
  {
    mentionsCurrentUser = self->_mentionsCurrentUser;
    PBDataWriterWriteBOOLField();
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_21:
      if ((has & 0x20) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_33;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_21;
  }

  notifyRecipientAnyway = self->_notifyRecipientAnyway;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_22:
    if ((has & 4) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_33:
  replyToCurrentUser = self->_replyToCurrentUser;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_23:
    recipientCount = self->_recipientCount;
    PBDataWriterWriteInt32Field();
  }

LABEL_24:
  if (self->_imageName)
  {
    PBDataWriterWriteStringField();
  }

  v13 = self->_has;
  if ((v13 & 0x40) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_28;
    }

LABEL_36:
    capability = self->_capability;
    PBDataWriterWriteInt32Field();
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  systemImage = self->_systemImage;
  PBDataWriterWriteBOOLField();
  v13 = self->_has;
  if ((v13 & 2) != 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  if (v13)
  {
LABEL_29:
    capabilities = self->_capabilities;
    PBDataWriterWriteInt32Field();
  }

LABEL_30:

  v15 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v12;
  }

  [toCopy setBundleIdentifier:self->_bundleIdentifier];
  if (self->_associatedObjectUriData)
  {
    [v12 setAssociatedObjectUriData:?];
  }

  if (self->_displayName)
  {
    [v12 setDisplayName:?];
  }

  if (self->_sender)
  {
    [v12 setSender:?];
  }

  if ([(BLTPBCommunicationContext *)self recipientsCount])
  {
    [v12 clearRecipients];
    recipientsCount = [(BLTPBCommunicationContext *)self recipientsCount];
    if (recipientsCount)
    {
      v6 = recipientsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BLTPBCommunicationContext *)self recipientsAtIndex:i];
        [v12 addRecipients:v8];
      }
    }
  }

  if (self->_contentURLData)
  {
    [v12 setContentURLData:?];
  }

  has = self->_has;
  v10 = v12;
  if ((has & 8) != 0)
  {
    *(v12 + 88) = self->_mentionsCurrentUser;
    *(v12 + 92) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_17:
      if ((has & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_31;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_17;
  }

  *(v12 + 89) = self->_notifyRecipientAnyway;
  *(v12 + 92) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_18:
    if ((has & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_31:
  *(v12 + 90) = self->_replyToCurrentUser;
  *(v12 + 92) |= 0x20u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_19:
    *(v12 + 16) = self->_recipientCount;
    *(v12 + 92) |= 4u;
  }

LABEL_20:
  if (self->_imageName)
  {
    [v12 setImageName:?];
    v10 = v12;
  }

  v11 = self->_has;
  if ((v11 & 0x40) != 0)
  {
    v10[91] = self->_systemImage;
    v10[92] |= 0x40u;
    v11 = self->_has;
    if ((v11 & 2) == 0)
    {
LABEL_24:
      if ((v11 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_24;
  }

  *(v10 + 7) = self->_capability;
  v10[92] |= 2u;
  if (*&self->_has)
  {
LABEL_25:
    *(v10 + 6) = self->_capabilities;
    v10[92] |= 1u;
  }

LABEL_26:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  v8 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  v10 = [(NSString *)self->_associatedObjectUriData copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_displayName copyWithZone:zone];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(BLTPBContact *)self->_sender copyWithZone:zone];
  v15 = *(v5 + 80);
  *(v5 + 80) = v14;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = self->_recipients;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v31;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v31 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v30 + 1) + 8 * i) copyWithZone:{zone, v30}];
        [v5 addRecipients:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v18);
  }

  v22 = [(NSData *)self->_contentURLData copyWithZone:zone];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v5 + 88) = self->_mentionsCurrentUser;
    *(v5 + 92) |= 8u;
    has = self->_has;
    if ((has & 0x10) == 0)
    {
LABEL_10:
      if ((has & 0x20) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_20;
    }
  }

  else if ((*&self->_has & 0x10) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 89) = self->_notifyRecipientAnyway;
  *(v5 + 92) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_11:
    if ((has & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_20:
  *(v5 + 90) = self->_replyToCurrentUser;
  *(v5 + 92) |= 0x20u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_12:
    *(v5 + 64) = self->_recipientCount;
    *(v5 + 92) |= 4u;
  }

LABEL_13:
  v25 = [(NSString *)self->_imageName copyWithZone:zone, v30];
  v26 = *(v5 + 56);
  *(v5 + 56) = v25;

  v27 = self->_has;
  if ((v27 & 0x40) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_15;
    }

LABEL_23:
    *(v5 + 28) = self->_capability;
    *(v5 + 92) |= 2u;
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  *(v5 + 91) = self->_systemImage;
  *(v5 + 92) |= 0x40u;
  v27 = self->_has;
  if ((v27 & 2) != 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if (v27)
  {
LABEL_16:
    *(v5 + 24) = self->_capabilities;
    *(v5 + 92) |= 1u;
  }

LABEL_17:
  v28 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 6))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_66;
    }
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 2))
  {
    if (![(NSString *)bundleIdentifier isEqual:?])
    {
      goto LABEL_66;
    }
  }

  associatedObjectUriData = self->_associatedObjectUriData;
  if (associatedObjectUriData | *(equalCopy + 1))
  {
    if (![(NSString *)associatedObjectUriData isEqual:?])
    {
      goto LABEL_66;
    }
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 5))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_66;
    }
  }

  sender = self->_sender;
  if (sender | *(equalCopy + 10))
  {
    if (![(BLTPBContact *)sender isEqual:?])
    {
      goto LABEL_66;
    }
  }

  recipients = self->_recipients;
  if (recipients | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)recipients isEqual:?])
    {
      goto LABEL_66;
    }
  }

  contentURLData = self->_contentURLData;
  if (contentURLData | *(equalCopy + 4))
  {
    if (![(NSData *)contentURLData isEqual:?])
    {
      goto LABEL_66;
    }
  }

  has = self->_has;
  v13 = *(equalCopy + 92);
  if ((has & 8) != 0)
  {
    if ((*(equalCopy + 92) & 8) == 0)
    {
      goto LABEL_66;
    }

    v14 = *(equalCopy + 88);
    if (self->_mentionsCurrentUser)
    {
      if ((*(equalCopy + 88) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 88))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 92) & 8) != 0)
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(equalCopy + 92) & 0x10) == 0)
    {
      goto LABEL_66;
    }

    v15 = *(equalCopy + 89);
    if (self->_notifyRecipientAnyway)
    {
      if ((*(equalCopy + 89) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 89))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 92) & 0x10) != 0)
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    if ((*(equalCopy + 92) & 0x20) == 0)
    {
      goto LABEL_66;
    }

    v16 = *(equalCopy + 90);
    if (self->_replyToCurrentUser)
    {
      if ((*(equalCopy + 90) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 90))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 92) & 0x20) != 0)
  {
    goto LABEL_66;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 92) & 4) == 0 || self->_recipientCount != *(equalCopy + 16))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 92) & 4) != 0)
  {
    goto LABEL_66;
  }

  imageName = self->_imageName;
  if (imageName | *(equalCopy + 7))
  {
    if (![(NSString *)imageName isEqual:?])
    {
      goto LABEL_66;
    }

    has = self->_has;
  }

  if ((has & 0x40) == 0)
  {
    if ((*(equalCopy + 92) & 0x40) == 0)
    {
      goto LABEL_48;
    }

LABEL_66:
    v19 = 0;
    goto LABEL_67;
  }

  if ((*(equalCopy + 92) & 0x40) == 0)
  {
    goto LABEL_66;
  }

  v18 = *(equalCopy + 91);
  if (self->_systemImage)
  {
    if ((*(equalCopy + 91) & 1) == 0)
    {
      goto LABEL_66;
    }
  }

  else if (*(equalCopy + 91))
  {
    goto LABEL_66;
  }

LABEL_48:
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 92) & 2) == 0 || self->_capability != *(equalCopy + 7))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 92) & 2) != 0)
  {
    goto LABEL_66;
  }

  if (has)
  {
    if ((*(equalCopy + 92) & 1) == 0 || self->_capabilities != *(equalCopy + 6))
    {
      goto LABEL_66;
    }

    v19 = 1;
  }

  else
  {
    v19 = (*(equalCopy + 92) & 1) == 0;
  }

LABEL_67:

  return v19;
}

- (unint64_t)hash
{
  v18 = [(NSString *)self->_identifier hash];
  v17 = [(NSString *)self->_bundleIdentifier hash];
  v16 = [(NSString *)self->_associatedObjectUriData hash];
  v15 = [(NSString *)self->_displayName hash];
  v3 = [(BLTPBContact *)self->_sender hash];
  v4 = [(NSMutableArray *)self->_recipients hash];
  v5 = [(NSData *)self->_contentURLData hash];
  if ((*&self->_has & 8) != 0)
  {
    v6 = 2654435761 * self->_mentionsCurrentUser;
    if ((*&self->_has & 0x10) != 0)
    {
LABEL_3:
      v7 = 2654435761 * self->_notifyRecipientAnyway;
      if ((*&self->_has & 0x20) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v8 = 0;
      if ((*&self->_has & 4) != 0)
      {
        goto LABEL_5;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if ((*&self->_has & 0x10) != 0)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
  if ((*&self->_has & 0x20) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v8 = 2654435761 * self->_replyToCurrentUser;
  if ((*&self->_has & 4) != 0)
  {
LABEL_5:
    v9 = 2654435761 * self->_recipientCount;
    goto LABEL_10;
  }

LABEL_9:
  v9 = 0;
LABEL_10:
  v10 = [(NSString *)self->_imageName hash];
  if ((*&self->_has & 0x40) == 0)
  {
    v11 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v12 = 0;
    if (*&self->_has)
    {
      goto LABEL_13;
    }

LABEL_16:
    v13 = 0;
    return v17 ^ v18 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
  }

  v11 = 2654435761 * self->_systemImage;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v12 = 2654435761 * self->_capability;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v13 = 2654435761 * self->_capabilities;
  return v17 ^ v18 ^ v16 ^ v15 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 6))
  {
    [(BLTPBCommunicationContext *)self setIdentifier:?];
  }

  if (*(fromCopy + 2))
  {
    [(BLTPBCommunicationContext *)self setBundleIdentifier:?];
  }

  if (*(fromCopy + 1))
  {
    [(BLTPBCommunicationContext *)self setAssociatedObjectUriData:?];
  }

  if (*(fromCopy + 5))
  {
    [(BLTPBCommunicationContext *)self setDisplayName:?];
  }

  sender = self->_sender;
  v6 = *(fromCopy + 10);
  if (sender)
  {
    if (v6)
    {
      [(BLTPBContact *)sender mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(BLTPBCommunicationContext *)self setSender:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(fromCopy + 9);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(BLTPBCommunicationContext *)self addRecipients:*(*(&v15 + 1) + 8 * i), v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 4))
  {
    [(BLTPBCommunicationContext *)self setContentURLData:?];
  }

  v12 = *(fromCopy + 92);
  if ((v12 & 8) != 0)
  {
    self->_mentionsCurrentUser = *(fromCopy + 88);
    *&self->_has |= 8u;
    v12 = *(fromCopy + 92);
    if ((v12 & 0x10) == 0)
    {
LABEL_25:
      if ((v12 & 0x20) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_37;
    }
  }

  else if ((*(fromCopy + 92) & 0x10) == 0)
  {
    goto LABEL_25;
  }

  self->_notifyRecipientAnyway = *(fromCopy + 89);
  *&self->_has |= 0x10u;
  v12 = *(fromCopy + 92);
  if ((v12 & 0x20) == 0)
  {
LABEL_26:
    if ((v12 & 4) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_37:
  self->_replyToCurrentUser = *(fromCopy + 90);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 92) & 4) != 0)
  {
LABEL_27:
    self->_recipientCount = *(fromCopy + 16);
    *&self->_has |= 4u;
  }

LABEL_28:
  if (*(fromCopy + 7))
  {
    [(BLTPBCommunicationContext *)self setImageName:?];
  }

  v13 = *(fromCopy + 92);
  if ((v13 & 0x40) == 0)
  {
    if ((*(fromCopy + 92) & 2) == 0)
    {
      goto LABEL_32;
    }

LABEL_40:
    self->_capability = *(fromCopy + 7);
    *&self->_has |= 2u;
    if ((*(fromCopy + 92) & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  self->_systemImage = *(fromCopy + 91);
  *&self->_has |= 0x40u;
  v13 = *(fromCopy + 92);
  if ((v13 & 2) != 0)
  {
    goto LABEL_40;
  }

LABEL_32:
  if (v13)
  {
LABEL_33:
    self->_capabilities = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

LABEL_34:

  v14 = *MEMORY[0x277D85DE8];
}

- (NSURL)contentURLLocalFileLocation
{
  contentURLData = [(BLTPBCommunicationContext *)self contentURLData];
  blt_sha256String = [contentURLData blt_sha256String];
  blt_filenameSafe = [blt_sha256String blt_filenameSafe];

  if (blt_filenameSafe)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    blt_contactImagesDirectory = [defaultManager blt_contactImagesDirectory];

    if (blt_contactImagesDirectory)
    {
      v7 = [blt_contactImagesDirectory URLByAppendingPathComponent:blt_filenameSafe];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end