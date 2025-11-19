@interface NNMKMessage
+ (BOOL)isMessageURL:(id)a3;
+ (BOOL)messageHasMultipleRecipients:(id)a3;
+ (id)URLForMessageId:(id)a3;
+ (id)URLForMessageId:(id)a3 attachmentID:(id)a4;
+ (id)attachmentIdForURL:(id)a3;
+ (id)generateMessageHashForMessage:(id)a3;
+ (id)messageIdForURL:(id)a3;
+ (id)messageIdsFromMessages:(id)a3;
+ (id)serverIdsFromMessages:(id)a3;
+ (id)stringFromMailboxItemState:(unint64_t)a3;
+ (unint64_t)removeState:(unint64_t)a3 fromStatus:(unint64_t)a4;
- (BOOL)checkState:(unint64_t)a3;
- (NNMKMessage)initWithCoder:(id)a3;
- (NSString)description;
- (NSString)mailboxId;
- (id)copyWithZone:(_NSZone *)a3;
- (void)addState:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeState:(unint64_t)a3;
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

- (BOOL)checkState:(unint64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(NNMKMessage *)self status];

  return [v5 checkStatus:v6 stateToCheck:a3];
}

+ (id)stringFromMailboxItemState:(unint64_t)a3
{
  v4 = objc_opt_new();
  for (i = 0; i != 2048; ++i)
  {
    if (![NNMKMessage checkStatus:a3 stateToCheck:i])
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

- (void)addState:(unint64_t)a3
{
  v4 = [(NNMKMessage *)self status]| a3;

  [(NNMKMessage *)self setStatus:v4];
}

- (void)removeState:(unint64_t)a3
{
  if ([(NNMKMessage *)self checkState:?])
  {
    v5 = [(NNMKMessage *)self status]^ a3;

    [(NNMKMessage *)self setStatus:v5];
  }
}

+ (unint64_t)removeState:(unint64_t)a3 fromStatus:(unint64_t)a4
{
  if ([a1 checkStatus:a4 stateToCheck:a3])
  {
    v6 = a3;
  }

  else
  {
    v6 = 0;
  }

  return v6 ^ a4;
}

+ (BOOL)messageHasMultipleRecipients:(id)a3
{
  v3 = a3;
  v4 = [v3 to];
  v5 = [v4 count];
  v6 = [v3 cc];

  LOBYTE(v3) = ([v6 count] + v5) > 1;
  return v3;
}

+ (BOOL)isMessageURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if ([v4 isEqualToString:@"x-apple-mail"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 scheme];
    v5 = [v6 isEqualToString:@"x-apple-mail-message-attachment"];
  }

  return v5;
}

+ (id)URLForMessageId:(id)a3
{
  v3 = MEMORY[0x277CBEBC0];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", @"x-apple-mail", a3];
  v5 = [v3 URLWithString:v4];

  return v5;
}

+ (id)URLForMessageId:(id)a3 attachmentID:(id)a4
{
  v5 = MEMORY[0x277CCACE0];
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(v5);
  [v8 setScheme:@"x-apple-mail-message-attachment"];
  [v8 setHost:v7];

  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"/%@", v6];
  [v8 setPath:v9];

  v10 = [v8 URL];

  return v10;
}

+ (id)messageIdForURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"x-apple-mail"];

  if (v5)
  {
    v6 = [v3 resourceSpecifier];
LABEL_5:
    v9 = v6;
    goto LABEL_7;
  }

  v7 = [v3 scheme];
  v8 = [v7 isEqualToString:@"x-apple-mail-message-attachment"];

  if (v8)
  {
    v6 = [v3 host];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_7:

  return v9;
}

+ (id)attachmentIdForURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  v5 = [v4 isEqualToString:@"x-apple-mail-message-attachment"];

  if (v5)
  {
    v6 = [v3 lastPathComponent];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)generateMessageHashForMessage:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 to];
  if (v4)
  {
    v5 = [v3 to];
    if ([v5 count])
    {
      v6 = [v3 to];
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

  v8 = [v3 cc];
  if (v8)
  {
    v9 = [v3 cc];
    if ([v9 count])
    {
      v10 = [v3 cc];
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

  v12 = [v3 bcc];
  if (v12)
  {
    v13 = [v3 bcc];
    if ([v13 count])
    {
      v14 = [v3 bcc];
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
  v17 = [v3 mailboxId];
  v18 = [v3 from];
  v19 = [v3 dateSent];
  [v19 timeIntervalSinceReferenceDate];
  v21 = v20;
  v22 = [v3 dateReceived];
  [v22 timeIntervalSinceReferenceDate];
  v24 = [v16 stringWithFormat:@"%@#%@#%@#%@#%@#%lu#%lu", v17, v18, v7, v11, v15, v21, v23];

  v25 = [v24 UTF8String];
  v26 = strlen(v25);
  CC_SHA256(v25, v26, md);
  v27 = objc_alloc_init(MEMORY[0x277CCAB68]);
  for (i = 0; i != 32; ++i)
  {
    [v27 appendFormat:@"%02x", md[i]];
  }

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

- (NNMKMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v52.receiver = self;
  v52.super_class = NNMKMessage;
  v5 = [(NNMKMessage *)&v52 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySubject"];
    subject = v5->_subject;
    v5->_subject = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyDateReceived"];
    dateReceived = v5->_dateReceived;
    v5->_dateReceived = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyPreview"];
    preview = v5->_preview;
    v5->_preview = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyStatus"];
    v5->_status = [v12 unsignedIntegerValue];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyStatusVersion"];
    v5->_statusVersion = [v13 unsignedIntegerValue];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySource"];
    v5->_source = [v14 unsignedIntegerValue];

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMailboxId"];
    mailboxId = v5->_mailboxId;
    v5->_mailboxId = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMessageId"];
    messageId = v5->_messageId;
    v5->_messageId = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyServerId"];
    serverId = v5->_serverId;
    v5->_serverId = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountId"];
    accountId = v5->_accountId;
    v5->_accountId = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyConversationId"];
    conversationId = v5->_conversationId;
    v5->_conversationId = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFrom"];
    from = v5->_from;
    v5->_from = v25;

    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
    v30 = [v4 decodeObjectOfClasses:v29 forKey:@"kNSCodingKeyTo"];
    to = v5->_to;
    v5->_to = v30;

    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = [v32 setWithObjects:{v33, objc_opt_class(), 0}];
    v35 = [v4 decodeObjectOfClasses:v34 forKey:@"kNSCodingKeyCC"];
    cc = v5->_cc;
    v5->_cc = v35;

    v37 = MEMORY[0x277CBEB98];
    v38 = objc_opt_class();
    v39 = [v37 setWithObjects:{v38, objc_opt_class(), 0}];
    v40 = [v4 decodeObjectOfClasses:v39 forKey:@"kNSCodingKeyBCC"];
    bcc = v5->_bcc;
    v5->_bcc = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyDateSent"];
    dateSent = v5->_dateSent;
    v5->_dateSent = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMessageIdHeader"];
    messageIdHeader = v5->_messageIdHeader;
    v5->_messageIdHeader = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyNotificationMessageId"];
    notificationMessageId = v5->_notificationMessageId;
    v5->_notificationMessageId = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyPublishedBulletinId"];
    publisherBulletinId = v5->_publisherBulletinId;
    v5->_publisherBulletinId = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyReplaceStandaloneNotification"];
    v5->_replaceStandaloneNotification = [v50 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  subject = self->_subject;
  v5 = a3;
  [v5 encodeObject:subject forKey:@"kNSCodingKeySubject"];
  [v5 encodeObject:self->_dateReceived forKey:@"kNSCodingKeyDateReceived"];
  [v5 encodeObject:self->_preview forKey:@"kNSCodingKeyPreview"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_status];
  [v5 encodeObject:v6 forKey:@"kNSCodingKeyStatus"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_statusVersion];
  [v5 encodeObject:v7 forKey:@"kNSCodingKeyStatusVersion"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_source];
  [v5 encodeObject:v8 forKey:@"kNSCodingKeySource"];

  [v5 encodeObject:self->_messageId forKey:@"kNSCodingKeyMessageId"];
  [v5 encodeObject:self->_serverId forKey:@"kNSCodingKeyServerId"];
  [v5 encodeObject:self->_mailboxId forKey:@"kNSCodingKeyMailboxId"];
  [v5 encodeObject:self->_accountId forKey:@"kNSCodingKeyAccountId"];
  [v5 encodeObject:self->_conversationId forKey:@"kNSCodingKeyConversationId"];
  [v5 encodeObject:self->_from forKey:@"kNSCodingKeyFrom"];
  [v5 encodeObject:self->_to forKey:@"kNSCodingKeyTo"];
  [v5 encodeObject:self->_cc forKey:@"kNSCodingKeyCC"];
  [v5 encodeObject:self->_bcc forKey:@"kNSCodingKeyBCC"];
  [v5 encodeObject:self->_dateSent forKey:@"kNSCodingKeyDateSent"];
  [v5 encodeObject:self->_messageIdHeader forKey:@"kNSCodingKeyMessageIdHeader"];
  [v5 encodeObject:self->_notificationMessageId forKey:@"kNSCodingKeyNotificationMessageId"];
  [v5 encodeObject:self->_publisherBulletinId forKey:@"kNSCodingKeyPublishedBulletinId"];
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_replaceStandaloneNotification];
  [v5 encodeObject:v9 forKey:@"kNSCodingKeyReplaceStandaloneNotification"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(NNMKMessage);
  v5 = [(NNMKMessage *)self subject];
  v6 = [v5 copy];
  [(NNMKMessage *)v4 setSubject:v6];

  v7 = [(NNMKMessage *)self dateReceived];
  v8 = [v7 copy];
  [(NNMKMessage *)v4 setDateReceived:v8];

  v9 = [(NNMKMessage *)self preview];
  v10 = [v9 copy];
  [(NNMKMessage *)v4 setPreview:v10];

  [(NNMKMessage *)v4 setStatus:[(NNMKMessage *)self status]];
  [(NNMKMessage *)v4 setStatusVersion:[(NNMKMessage *)self statusVersion]];
  v11 = [(NNMKMessage *)self messageId];
  v12 = [v11 copy];
  [(NNMKMessage *)v4 setMessageId:v12];

  v13 = [(NNMKMessage *)self serverId];
  v14 = [v13 copy];
  [(NNMKMessage *)v4 setServerId:v14];

  v15 = [(NNMKMessage *)self mailboxId];
  v16 = [v15 copy];
  [(NNMKMessage *)v4 setMailboxId:v16];

  v17 = [(NNMKMessage *)self accountId];
  v18 = [v17 copy];
  [(NNMKMessage *)v4 setAccountId:v18];

  v19 = [(NNMKMessage *)self conversationId];
  v20 = [v19 copy];
  [(NNMKMessage *)v4 setConversationId:v20];

  v21 = [(NNMKMessage *)self from];
  v22 = [v21 copy];
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

  v29 = [(NNMKMessage *)self dateSent];
  v30 = [v29 copy];
  [(NNMKMessage *)v4 setDateSent:v30];

  v31 = [(NNMKMessage *)self messageIdHeader];
  v32 = [v31 copy];
  [(NNMKMessage *)v4 setMessageIdHeader:v32];

  v33 = [(NNMKMessage *)self notificationMessageId];
  v34 = [v33 copy];
  [(NNMKMessage *)v4 setNotificationMessageId:v34];

  [(NNMKMessage *)v4 setIsSpecialMailboxSpecific:[(NNMKMessage *)self isSpecialMailboxSpecific]];
  [(NNMKMessage *)v4 setIsThreadSpecific:[(NNMKMessage *)self isThreadSpecific]];
  [(NNMKMessage *)v4 setSource:[(NNMKMessage *)self source]];
  v35 = [(NNMKMessage *)self publisherBulletinId];
  [(NNMKMessage *)v4 setPublisherBulletinId:v35];

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

+ (id)messageIdsFromMessages:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

        v10 = [*(*(&v13 + 1) + 8 * i) messageId];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)serverIdsFromMessages:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 serverId];

        if (v11)
        {
          v12 = [v10 serverId];
          [v4 addObject:v12];
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