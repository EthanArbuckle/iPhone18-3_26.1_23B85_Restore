@interface NNMKMessage
+ (BOOL)isMessageURL:(id)l;
+ (BOOL)messageHasMultipleRecipients:(id)recipients;
+ (id)URLForMessageId:(id)id;
+ (id)URLForMessageId:(id)id attachmentID:(id)d;
+ (id)attachmentIdForURL:(id)l;
+ (id)generateMessageHashForMessage:(id)message;
+ (id)messageIdForURL:(id)l;
+ (id)messageIdsFromMessages:(id)messages;
+ (id)serverIdsFromMessages:(id)messages;
+ (id)stringFromMailboxItemState:(unint64_t)state;
+ (unint64_t)removeState:(unint64_t)state fromStatus:(unint64_t)status;
- (BOOL)checkState:(unint64_t)state;
- (NNMKMessage)initWithCoder:(id)coder;
- (NSString)description;
- (NSString)mailboxId;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addState:(unint64_t)state;
- (void)encodeWithCoder:(id)coder;
- (void)removeState:(unint64_t)state;
@end

@implementation NNMKMessage

- (NSString)mailboxId
{
  mailboxId = self->_mailboxId;
  if (!mailboxId)
  {
    mailboxId = @"-1";
  }

  v3 = mailboxId;

  return v3;
}

- (BOOL)checkState:(unint64_t)state
{
  v5 = objc_opt_class();
  status = [(NNMKMessage *)self status];

  return [v5 checkStatus:status stateToCheck:state];
}

+ (id)stringFromMailboxItemState:(unint64_t)state
{
  v4 = objc_opt_new();
  for (i = 0; i != 2048; ++i)
  {
    if (![NNMKMessage checkStatus:state stateToCheck:i])
    {
      continue;
    }

    if (i > 31)
    {
      if (i > 255)
      {
        switch(i)
        {
          case 0x400:
            v6 = @"archived";
            break;
          case 0x200:
            v6 = @"deleted";
            break;
          case 0x100:
            v6 = @"junk";
            break;
          default:
            continue;
        }
      }

      else
      {
        switch(i)
        {
          case 0x20:
            v6 = @"includesMe";
            break;
          case 0x40:
            v6 = @"vipSender";
            break;
          case 0x80:
            v6 = @"notify";
            break;
          default:
            continue;
        }
      }
    }

    else if (i > 3)
    {
      switch(i)
      {
        case 4:
          v6 = @"forwarded";
          break;
        case 8:
          v6 = @"flagged";
          break;
        case 0x10:
          v6 = @"hasAttachments";
          break;
        default:
          continue;
      }
    }

    else if (i)
    {
      if (i == 1)
      {
        v6 = @"unread";
      }

      else
      {
        if (i != 2)
        {
          continue;
        }

        v6 = @"replied";
      }
    }

    else
    {
      v6 = @"none";
    }

    if ([v4 length])
    {
      [v4 appendFormat:@", %@", v6];
    }

    else
    {
      [v4 appendString:v6];
    }
  }

  return v4;
}

- (void)addState:(unint64_t)state
{
  v4 = [(NNMKMessage *)self status]| state;

  [(NNMKMessage *)self setStatus:v4];
}

- (void)removeState:(unint64_t)state
{
  if ([(NNMKMessage *)self checkState:?])
  {
    v5 = [(NNMKMessage *)self status]^ state;

    [(NNMKMessage *)self setStatus:v5];
  }
}

+ (unint64_t)removeState:(unint64_t)state fromStatus:(unint64_t)status
{
  if ([self checkStatus:status stateToCheck:state])
  {
    stateCopy = state;
  }

  else
  {
    stateCopy = 0;
  }

  return stateCopy ^ status;
}

+ (BOOL)messageHasMultipleRecipients:(id)recipients
{
  recipientsCopy = recipients;
  v4 = [recipientsCopy to];
  v5 = [v4 count];
  v6 = [recipientsCopy cc];

  LOBYTE(recipientsCopy) = ([v6 count] + v5) > 1;
  return recipientsCopy;
}

+ (BOOL)isMessageURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"x-apple-mail"])
  {
    v5 = 1;
  }

  else
  {
    scheme2 = [lCopy scheme];
    v5 = [scheme2 isEqualToString:@"x-apple-mail-message-attachment"];
  }

  return v5;
}

+ (id)URLForMessageId:(id)id
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"x-apple-mail", id];
  v5 = [v3 URLWithString:v4];

  return v5;
}

+ (id)URLForMessageId:(id)id attachmentID:(id)d
{
  v5 = MEMORY[0x277CCACE0];
  dCopy = d;
  idCopy = id;
  v8 = objc_alloc_init(v5);
  [v8 setScheme:@"x-apple-mail-message-attachment"];
  [v8 setHost:idCopy];

  dCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/%@", dCopy];
  [v8 setPath:dCopy];

  v10 = [v8 URL];

  return v10;
}

+ (id)messageIdForURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v5 = [scheme isEqualToString:@"x-apple-mail"];

  if (v5)
  {
    resourceSpecifier = [lCopy resourceSpecifier];
LABEL_5:
    v9 = resourceSpecifier;
    goto LABEL_7;
  }

  scheme2 = [lCopy scheme];
  v8 = [scheme2 isEqualToString:@"x-apple-mail-message-attachment"];

  if (v8)
  {
    resourceSpecifier = [lCopy host];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)attachmentIdForURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  v5 = [scheme isEqualToString:@"x-apple-mail-message-attachment"];

  if (v5)
  {
    lastPathComponent = [lCopy lastPathComponent];
  }

  else
  {
    lastPathComponent = 0;
  }

  return lastPathComponent;
}

+ (id)generateMessageHashForMessage:(id)message
{
  v32 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = [messageCopy to];
  if (v4)
  {
    v5 = [messageCopy to];
    if ([v5 count])
    {
      v6 = [messageCopy to];
      v7 = [v6 componentsJoinedByString:@"#"];
    }

    else
    {
      v7 = &stru_286C69F68;
    }
  }

  else
  {
    v7 = &stru_286C69F68;
  }

  v8 = [messageCopy cc];
  if (v8)
  {
    v9 = [messageCopy cc];
    if ([v9 count])
    {
      v10 = [messageCopy cc];
      v11 = [v10 componentsJoinedByString:@"#"];
    }

    else
    {
      v11 = &stru_286C69F68;
    }
  }

  else
  {
    v11 = &stru_286C69F68;
  }

  v12 = [messageCopy bcc];
  if (v12)
  {
    v13 = [messageCopy bcc];
    if ([v13 count])
    {
      v14 = [messageCopy bcc];
      v15 = [v14 componentsJoinedByString:@"#"];
    }

    else
    {
      v15 = &stru_286C69F68;
    }
  }

  else
  {
    v15 = &stru_286C69F68;
  }

  v16 = MEMORY[0x277CCACA8];
  mailboxId = [messageCopy mailboxId];
  from = [messageCopy from];
  dateSent = [messageCopy dateSent];
  [dateSent timeIntervalSinceReferenceDate];
  v21 = v20;
  dateReceived = [messageCopy dateReceived];
  [dateReceived timeIntervalSinceReferenceDate];
  v24 = [v16 stringWithFormat:@"%@#%@#%@#%@#%@#%lu#%lu", mailboxId, from, v7, v11, v15, v21, v23];

  uTF8String = [v24 UTF8String];
  v26 = strlen(uTF8String);
  CC_SHA256(uTF8String, v26, md);
  v27 = objc_alloc_init(MEMORY[0x277CCAB68]);
  for (i = 0; i != 32; ++i)
  {
    [v27 appendFormat:@"%02x", md[i]];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

- (NNMKMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v52.receiver = self;
  v52.super_class = NNMKMessage;
  v5 = [(NNMKMessage *)&v52 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySubject"];
    subject = v5->_subject;
    v5->_subject = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyDateReceived"];
    dateReceived = v5->_dateReceived;
    v5->_dateReceived = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyPreview"];
    preview = v5->_preview;
    v5->_preview = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyStatus"];
    v5->_status = [v12 unsignedIntegerValue];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyStatusVersion"];
    v5->_statusVersion = [v13 unsignedIntegerValue];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySource"];
    v5->_source = [v14 unsignedIntegerValue];

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMailboxId"];
    mailboxId = v5->_mailboxId;
    v5->_mailboxId = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMessageId"];
    messageId = v5->_messageId;
    v5->_messageId = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyServerId"];
    serverId = v5->_serverId;
    v5->_serverId = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountId"];
    accountId = v5->_accountId;
    v5->_accountId = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyConversationId"];
    conversationId = v5->_conversationId;
    v5->_conversationId = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFrom"];
    from = v5->_from;
    v5->_from = v25;

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [coderCopy decodeObjectOfClasses:v29 forKey:@"kNSCodingKeyTo"];
    to = v5->_to;
    v5->_to = v30;

    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [coderCopy decodeObjectOfClasses:v34 forKey:@"kNSCodingKeyCC"];
    cc = v5->_cc;
    v5->_cc = v35;

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [coderCopy decodeObjectOfClasses:v39 forKey:@"kNSCodingKeyBCC"];
    bcc = v5->_bcc;
    v5->_bcc = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyDateSent"];
    dateSent = v5->_dateSent;
    v5->_dateSent = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMessageIdHeader"];
    messageIdHeader = v5->_messageIdHeader;
    v5->_messageIdHeader = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyNotificationMessageId"];
    notificationMessageId = v5->_notificationMessageId;
    v5->_notificationMessageId = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyPublishedBulletinId"];
    publisherBulletinId = v5->_publisherBulletinId;
    v5->_publisherBulletinId = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyReplaceStandaloneNotification"];
    v5->_replaceStandaloneNotification = [v50 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  subject = self->_subject;
  coderCopy = coder;
  [coderCopy encodeObject:subject forKey:@"kNSCodingKeySubject"];
  [coderCopy encodeObject:self->_dateReceived forKey:@"kNSCodingKeyDateReceived"];
  [coderCopy encodeObject:self->_preview forKey:@"kNSCodingKeyPreview"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_status];
  [coderCopy encodeObject:v6 forKey:@"kNSCodingKeyStatus"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_statusVersion];
  [coderCopy encodeObject:v7 forKey:@"kNSCodingKeyStatusVersion"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_source];
  [coderCopy encodeObject:v8 forKey:@"kNSCodingKeySource"];

  [coderCopy encodeObject:self->_messageId forKey:@"kNSCodingKeyMessageId"];
  [coderCopy encodeObject:self->_serverId forKey:@"kNSCodingKeyServerId"];
  [coderCopy encodeObject:self->_mailboxId forKey:@"kNSCodingKeyMailboxId"];
  [coderCopy encodeObject:self->_accountId forKey:@"kNSCodingKeyAccountId"];
  [coderCopy encodeObject:self->_conversationId forKey:@"kNSCodingKeyConversationId"];
  [coderCopy encodeObject:self->_from forKey:@"kNSCodingKeyFrom"];
  [coderCopy encodeObject:self->_to forKey:@"kNSCodingKeyTo"];
  [coderCopy encodeObject:self->_cc forKey:@"kNSCodingKeyCC"];
  [coderCopy encodeObject:self->_bcc forKey:@"kNSCodingKeyBCC"];
  [coderCopy encodeObject:self->_dateSent forKey:@"kNSCodingKeyDateSent"];
  [coderCopy encodeObject:self->_messageIdHeader forKey:@"kNSCodingKeyMessageIdHeader"];
  [coderCopy encodeObject:self->_notificationMessageId forKey:@"kNSCodingKeyNotificationMessageId"];
  [coderCopy encodeObject:self->_publisherBulletinId forKey:@"kNSCodingKeyPublishedBulletinId"];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_replaceStandaloneNotification];
  [coderCopy encodeObject:v9 forKey:@"kNSCodingKeyReplaceStandaloneNotification"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(NNMKMessage);
  subject = [(NNMKMessage *)self subject];
  v6 = [subject copy];
  [(NNMKMessage *)v4 setSubject:v6];

  dateReceived = [(NNMKMessage *)self dateReceived];
  v8 = [dateReceived copy];
  [(NNMKMessage *)v4 setDateReceived:v8];

  preview = [(NNMKMessage *)self preview];
  v10 = [preview copy];
  [(NNMKMessage *)v4 setPreview:v10];

  [(NNMKMessage *)v4 setStatus:[(NNMKMessage *)self status]];
  [(NNMKMessage *)v4 setStatusVersion:[(NNMKMessage *)self statusVersion]];
  messageId = [(NNMKMessage *)self messageId];
  v12 = [messageId copy];
  [(NNMKMessage *)v4 setMessageId:v12];

  serverId = [(NNMKMessage *)self serverId];
  v14 = [serverId copy];
  [(NNMKMessage *)v4 setServerId:v14];

  mailboxId = [(NNMKMessage *)self mailboxId];
  v16 = [mailboxId copy];
  [(NNMKMessage *)v4 setMailboxId:v16];

  accountId = [(NNMKMessage *)self accountId];
  v18 = [accountId copy];
  [(NNMKMessage *)v4 setAccountId:v18];

  conversationId = [(NNMKMessage *)self conversationId];
  v20 = [conversationId copy];
  [(NNMKMessage *)v4 setConversationId:v20];

  from = [(NNMKMessage *)self from];
  v22 = [from copy];
  [(NNMKMessage *)v4 setFrom:v22];

  v23 = [(NNMKMessage *)self to];
  v24 = [v23 copy];
  [(NNMKMessage *)v4 setTo:v24];

  v25 = [(NNMKMessage *)self cc];
  v26 = [v25 copy];
  [(NNMKMessage *)v4 setCc:v26];

  v27 = [(NNMKMessage *)self bcc];
  v28 = [v27 copy];
  [(NNMKMessage *)v4 setBcc:v28];

  dateSent = [(NNMKMessage *)self dateSent];
  v30 = [dateSent copy];
  [(NNMKMessage *)v4 setDateSent:v30];

  messageIdHeader = [(NNMKMessage *)self messageIdHeader];
  v32 = [messageIdHeader copy];
  [(NNMKMessage *)v4 setMessageIdHeader:v32];

  notificationMessageId = [(NNMKMessage *)self notificationMessageId];
  v34 = [notificationMessageId copy];
  [(NNMKMessage *)v4 setNotificationMessageId:v34];

  [(NNMKMessage *)v4 setIsSpecialMailboxSpecific:[(NNMKMessage *)self isSpecialMailboxSpecific]];
  [(NNMKMessage *)v4 setIsThreadSpecific:[(NNMKMessage *)self isThreadSpecific]];
  [(NNMKMessage *)v4 setSource:[(NNMKMessage *)self source]];
  publisherBulletinId = [(NNMKMessage *)self publisherBulletinId];
  [(NNMKMessage *)v4 setPublisherBulletinId:publisherBulletinId];

  [(NNMKMessage *)v4 setReplaceStandaloneNotification:[(NNMKMessage *)self replaceStandaloneNotification]];
  return v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  conversationId = self->_conversationId;
  from = self->_from;
  subject = self->_subject;
  dateReceived = self->_dateReceived;
  messageId = self->_messageId;
  v9 = [NNMKMessage stringFromMailboxItemState:self->_status];
  statusVersion = self->_statusVersion;
  v11 = [v3 stringWithFormat:@"Message Id: %@\nConversation Id: %@\nFrom: %@\nSubject: %@\nDate Received: %@\nStatus: %@\n, status version: %lu\n, mailbox id: %@", messageId, conversationId, from, subject, dateReceived, v9, statusVersion, self->_mailboxId];

  return v11;
}

+ (id)messageIdsFromMessages:(id)messages
{
  v18 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = messagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        messageId = [*(*(&v13 + 1) + 8 * i) messageId];
        [v4 addObject:messageId];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)serverIdsFromMessages:(id)messages
{
  v20 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(messagesCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = messagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        serverId = [v10 serverId];

        if (serverId)
        {
          serverId2 = [v10 serverId];
          [v4 addObject:serverId2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

@end