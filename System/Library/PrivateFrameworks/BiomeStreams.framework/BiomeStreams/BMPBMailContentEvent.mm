@interface BMPBMailContentEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAccountHandles:(id)handles;
- (void)addAttachments:(id)attachments;
- (void)addBccHandles:(id)handles;
- (void)addCcHandles:(id)handles;
- (void)addHeaders:(id)headers;
- (void)addMailboxIdentifiers:(id)identifiers;
- (void)addToHandles:(id)handles;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDateReceived:(BOOL)received;
- (void)setHasIsFlagged:(BOOL)flagged;
- (void)setHasIsFromMe:(BOOL)me;
- (void)setHasIsFullyDownloaded:(BOOL)downloaded;
- (void)setHasIsJunk:(BOOL)junk;
- (void)setHasIsNew:(BOOL)new;
- (void)setHasIsRead:(BOOL)read;
- (void)setHasIsTwoFactorCode:(BOOL)code;
- (void)setHasIsVIP:(BOOL)p;
- (void)setHasMailCategories:(BOOL)categories;
- (void)writeTo:(id)to;
@end

@implementation BMPBMailContentEvent

- (void)addHeaders:(id)headers
{
  headersCopy = headers;
  headers = self->_headers;
  v8 = headersCopy;
  if (!headers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_headers;
    self->_headers = v6;

    headersCopy = v8;
    headers = self->_headers;
  }

  [(NSMutableArray *)headers addObject:headersCopy];
}

- (void)setHasIsFullyDownloaded:(BOOL)downloaded
{
  if (downloaded)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)addAccountHandles:(id)handles
{
  handlesCopy = handles;
  accountHandles = self->_accountHandles;
  v8 = handlesCopy;
  if (!accountHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_accountHandles;
    self->_accountHandles = v6;

    handlesCopy = v8;
    accountHandles = self->_accountHandles;
  }

  [(NSMutableArray *)accountHandles addObject:handlesCopy];
}

- (void)addMailboxIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  mailboxIdentifiers = self->_mailboxIdentifiers;
  v8 = identifiersCopy;
  if (!mailboxIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_mailboxIdentifiers;
    self->_mailboxIdentifiers = v6;

    identifiersCopy = v8;
    mailboxIdentifiers = self->_mailboxIdentifiers;
  }

  [(NSMutableArray *)mailboxIdentifiers addObject:identifiersCopy];
}

- (void)addAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  attachments = self->_attachments;
  v8 = attachmentsCopy;
  if (!attachments)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_attachments;
    self->_attachments = v6;

    attachmentsCopy = v8;
    attachments = self->_attachments;
  }

  [(NSMutableArray *)attachments addObject:attachmentsCopy];
}

- (void)addToHandles:(id)handles
{
  handlesCopy = handles;
  toHandles = self->_toHandles;
  v8 = handlesCopy;
  if (!toHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_toHandles;
    self->_toHandles = v6;

    handlesCopy = v8;
    toHandles = self->_toHandles;
  }

  [(NSMutableArray *)toHandles addObject:handlesCopy];
}

- (void)addCcHandles:(id)handles
{
  handlesCopy = handles;
  ccHandles = self->_ccHandles;
  v8 = handlesCopy;
  if (!ccHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_ccHandles;
    self->_ccHandles = v6;

    handlesCopy = v8;
    ccHandles = self->_ccHandles;
  }

  [(NSMutableArray *)ccHandles addObject:handlesCopy];
}

- (void)addBccHandles:(id)handles
{
  handlesCopy = handles;
  bccHandles = self->_bccHandles;
  v8 = handlesCopy;
  if (!bccHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_bccHandles;
    self->_bccHandles = v6;

    handlesCopy = v8;
    bccHandles = self->_bccHandles;
  }

  [(NSMutableArray *)bccHandles addObject:handlesCopy];
}

- (void)setHasDateReceived:(BOOL)received
{
  if (received)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasMailCategories:(BOOL)categories
{
  if (categories)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasIsNew:(BOOL)new
{
  if (new)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasIsTwoFactorCode:(BOOL)code
{
  if (code)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasIsFromMe:(BOOL)me
{
  if (me)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasIsJunk:(BOOL)junk
{
  if (junk)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasIsRead:(BOOL)read
{
  if (read)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasIsVIP:(BOOL)p
{
  if (p)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFBFF | v3;
}

- (void)setHasIsFlagged:(BOOL)flagged
{
  if (flagged)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBMailContentEvent;
  v4 = [(BMPBMailContentEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBMailContentEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v105 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [dictionary setObject:uniqueId forKey:@"uniqueId"];
  }

  domainId = self->_domainId;
  if (domainId)
  {
    [v4 setObject:domainId forKey:@"domainId"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v7 forKey:@"absoluteTimestamp"];
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier)
  {
    [v4 setObject:accountIdentifier forKey:@"accountIdentifier"];
  }

  messageIdentifier = self->_messageIdentifier;
  if (messageIdentifier)
  {
    [v4 setObject:messageIdentifier forKey:@"messageIdentifier"];
  }

  from = self->_from;
  if (from)
  {
    [v4 setObject:from forKey:@"from"];
  }

  to = self->_to;
  if (to)
  {
    [v4 setObject:to forKey:@"to"];
  }

  cc = self->_cc;
  if (cc)
  {
    [v4 setObject:cc forKey:@"cc"];
  }

  bcc = self->_bcc;
  if (bcc)
  {
    [v4 setObject:bcc forKey:@"bcc"];
  }

  if ([(NSMutableArray *)self->_headers count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_headers, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v15 = self->_headers;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v96 objects:v104 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v97;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v97 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation = [*(*(&v96 + 1) + 8 * i) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v96 objects:v104 count:16];
      }

      while (v17);
    }

    [v4 setObject:v14 forKey:@"headers"];
  }

  subject = self->_subject;
  if (subject)
  {
    [v4 setObject:subject forKey:@"subject"];
  }

  htmlContentData = self->_htmlContentData;
  if (htmlContentData)
  {
    [v4 setObject:htmlContentData forKey:@"htmlContentData"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v23 = [MEMORY[0x1E696AD98] numberWithBool:self->_isFullyDownloaded];
    [v4 setObject:v23 forKey:@"isFullyDownloaded"];
  }

  htmlContent = self->_htmlContent;
  if (htmlContent)
  {
    [v4 setObject:htmlContent forKey:@"htmlContent"];
  }

  textContent = self->_textContent;
  if (textContent)
  {
    [v4 setObject:textContent forKey:@"textContent"];
  }

  securityMethod = self->_securityMethod;
  if (securityMethod)
  {
    [v4 setObject:securityMethod forKey:@"securityMethod"];
  }

  accountHandles = self->_accountHandles;
  if (accountHandles)
  {
    [v4 setObject:accountHandles forKey:@"accountHandles"];
  }

  replyTo = self->_replyTo;
  if (replyTo)
  {
    dictionaryRepresentation2 = [(BMPBNamedHandle *)replyTo dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"replyTo"];
  }

  mailboxIdentifiers = self->_mailboxIdentifiers;
  if (mailboxIdentifiers)
  {
    [v4 setObject:mailboxIdentifiers forKey:@"mailboxIdentifiers"];
  }

  listId = self->_listId;
  if (listId)
  {
    dictionaryRepresentation3 = [(BMPBNamedHandle *)listId dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"listId"];
  }

  accountType = self->_accountType;
  if (accountType)
  {
    [v4 setObject:accountType forKey:@"accountType"];
  }

  if ([(NSMutableArray *)self->_attachments count])
  {
    v34 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_attachments, "count")}];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v35 = self->_attachments;
    v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v92 objects:v103 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v93;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v93 != v38)
          {
            objc_enumerationMutation(v35);
          }

          dictionaryRepresentation4 = [*(*(&v92 + 1) + 8 * j) dictionaryRepresentation];
          [v34 addObject:dictionaryRepresentation4];
        }

        v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v92 objects:v103 count:16];
      }

      while (v37);
    }

    [v4 setObject:v34 forKey:@"attachments"];
  }

  fromHandle = self->_fromHandle;
  if (fromHandle)
  {
    dictionaryRepresentation5 = [(BMPBNamedHandle *)fromHandle dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation5 forKey:@"fromHandle"];
  }

  if ([(NSMutableArray *)self->_toHandles count])
  {
    v43 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_toHandles, "count")}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v44 = self->_toHandles;
    v45 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v88 objects:v102 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v89;
      do
      {
        for (k = 0; k != v46; ++k)
        {
          if (*v89 != v47)
          {
            objc_enumerationMutation(v44);
          }

          dictionaryRepresentation6 = [*(*(&v88 + 1) + 8 * k) dictionaryRepresentation];
          [v43 addObject:dictionaryRepresentation6];
        }

        v46 = [(NSMutableArray *)v44 countByEnumeratingWithState:&v88 objects:v102 count:16];
      }

      while (v46);
    }

    [v4 setObject:v43 forKey:@"toHandles"];
  }

  if ([(NSMutableArray *)self->_ccHandles count])
  {
    v50 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_ccHandles, "count")}];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v51 = self->_ccHandles;
    v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v84 objects:v101 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v85;
      do
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v85 != v54)
          {
            objc_enumerationMutation(v51);
          }

          dictionaryRepresentation7 = [*(*(&v84 + 1) + 8 * m) dictionaryRepresentation];
          [v50 addObject:dictionaryRepresentation7];
        }

        v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v84 objects:v101 count:16];
      }

      while (v53);
    }

    [v4 setObject:v50 forKey:@"ccHandles"];
  }

  if ([(NSMutableArray *)self->_bccHandles count])
  {
    v57 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_bccHandles, "count")}];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v58 = self->_bccHandles;
    v59 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v80 objects:v100 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v81;
      do
      {
        for (n = 0; n != v60; ++n)
        {
          if (*v81 != v61)
          {
            objc_enumerationMutation(v58);
          }

          dictionaryRepresentation8 = [*(*(&v80 + 1) + 8 * n) dictionaryRepresentation];
          [v57 addObject:dictionaryRepresentation8];
        }

        v60 = [(NSMutableArray *)v58 countByEnumeratingWithState:&v80 objects:v100 count:16];
      }

      while (v60);
    }

    [v4 setObject:v57 forKey:@"bccHandles"];
  }

  contentProtection = self->_contentProtection;
  if (contentProtection)
  {
    [v4 setObject:contentProtection forKey:@"contentProtection"];
  }

  personaId = self->_personaId;
  if (personaId)
  {
    [v4 setObject:personaId forKey:@"personaId"];
  }

  conversationId = self->_conversationId;
  if (conversationId)
  {
    [v4 setObject:conversationId forKey:@"conversationId"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v72 = [MEMORY[0x1E696AD98] numberWithDouble:self->_dateReceived];
    [v4 setObject:v72 forKey:@"dateReceived"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_96:
      if ((has & 0x80) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_107;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_96;
  }

  v73 = [MEMORY[0x1E696AD98] numberWithInt:{self->_mailCategories, v80}];
  [v4 setObject:v73 forKey:@"mailCategories"];

  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_97:
    if ((has & 0x200) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_108;
  }

LABEL_107:
  v74 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isNew, v80}];
  [v4 setObject:v74 forKey:@"isNew"];

  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_98:
    if ((has & 0x10) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_109;
  }

LABEL_108:
  v75 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isTwoFactorCode, v80}];
  [v4 setObject:v75 forKey:@"isTwoFactorCode"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_99:
    if ((has & 0x40) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_110;
  }

LABEL_109:
  v76 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isFromMe, v80}];
  [v4 setObject:v76 forKey:@"isFromMe"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_100:
    if ((has & 0x100) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_111;
  }

LABEL_110:
  v77 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isJunk, v80}];
  [v4 setObject:v77 forKey:@"isJunk"];

  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_101:
    if ((has & 0x400) == 0)
    {
      goto LABEL_102;
    }

LABEL_112:
    v79 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isVIP, v80}];
    [v4 setObject:v79 forKey:@"isVIP"];

    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

LABEL_111:
  v78 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isRead, v80}];
  [v4 setObject:v78 forKey:@"isRead"];

  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_112;
  }

LABEL_102:
  if ((has & 8) != 0)
  {
LABEL_103:
    v68 = [MEMORY[0x1E696AD98] numberWithBool:{self->_isFlagged, v80}];
    [v4 setObject:v68 forKey:@"isFlagged"];
  }

LABEL_104:
  v69 = v4;

  v70 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)writeTo:(id)to
{
  v95 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domainId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_accountIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_messageIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_from)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_to)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_cc)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bcc)
  {
    PBDataWriterWriteStringField();
  }

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v6 = self->_headers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v85;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v85 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v84 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v84 objects:v94 count:16];
    }

    while (v8);
  }

  if (self->_subject)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_htmlContentData)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 0x20) != 0)
  {
    isFullyDownloaded = self->_isFullyDownloaded;
    PBDataWriterWriteBOOLField();
  }

  if (self->_htmlContent)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_textContent)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_securityMethod)
  {
    PBDataWriterWriteStringField();
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v13 = self->_accountHandles;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v80 objects:v93 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v81;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v81 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v80 + 1) + 8 * j);
        PBDataWriterWriteStringField();
      }

      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v80 objects:v93 count:16];
    }

    while (v15);
  }

  if (self->_replyTo)
  {
    PBDataWriterWriteSubmessage();
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v19 = self->_mailboxIdentifiers;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v76 objects:v92 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v77;
    do
    {
      for (k = 0; k != v21; ++k)
      {
        if (*v77 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v76 + 1) + 8 * k);
        PBDataWriterWriteStringField();
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v76 objects:v92 count:16];
    }

    while (v21);
  }

  if (self->_listId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_accountType)
  {
    PBDataWriterWriteStringField();
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v25 = self->_attachments;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v72 objects:v91 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v73;
    do
    {
      for (m = 0; m != v27; ++m)
      {
        if (*v73 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v72 + 1) + 8 * m);
        PBDataWriterWriteSubmessage();
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v72 objects:v91 count:16];
    }

    while (v27);
  }

  if (self->_fromHandle)
  {
    PBDataWriterWriteSubmessage();
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v31 = self->_toHandles;
  v32 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v68 objects:v90 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v69;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v69 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v68 + 1) + 8 * n);
        PBDataWriterWriteSubmessage();
      }

      v33 = [(NSMutableArray *)v31 countByEnumeratingWithState:&v68 objects:v90 count:16];
    }

    while (v33);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v37 = self->_ccHandles;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v64 objects:v89 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v65;
    do
    {
      for (ii = 0; ii != v39; ++ii)
      {
        if (*v65 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v64 + 1) + 8 * ii);
        PBDataWriterWriteSubmessage();
      }

      v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v64 objects:v89 count:16];
    }

    while (v39);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = self->_bccHandles;
  v44 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v60 objects:v88 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v61;
    do
    {
      for (jj = 0; jj != v45; ++jj)
      {
        if (*v61 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v60 + 1) + 8 * jj);
        PBDataWriterWriteSubmessage();
      }

      v45 = [(NSMutableArray *)v43 countByEnumeratingWithState:&v60 objects:v88 count:16];
    }

    while (v45);
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_conversationId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    dateReceived = self->_dateReceived;
    PBDataWriterWriteDoubleField();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_96:
      if ((has & 0x80) == 0)
      {
        goto LABEL_97;
      }

      goto LABEL_107;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_96;
  }

  mailCategories = self->_mailCategories;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_97:
    if ((has & 0x200) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_108;
  }

LABEL_107:
  isNew = self->_isNew;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_98:
    if ((has & 0x10) == 0)
    {
      goto LABEL_99;
    }

    goto LABEL_109;
  }

LABEL_108:
  isTwoFactorCode = self->_isTwoFactorCode;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_99:
    if ((has & 0x40) == 0)
    {
      goto LABEL_100;
    }

    goto LABEL_110;
  }

LABEL_109:
  isFromMe = self->_isFromMe;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_100:
    if ((has & 0x100) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_111;
  }

LABEL_110:
  isJunk = self->_isJunk;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_101:
    if ((has & 0x400) == 0)
    {
      goto LABEL_102;
    }

LABEL_112:
    isVIP = self->_isVIP;
    PBDataWriterWriteBOOLField();
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

LABEL_111:
  isRead = self->_isRead;
  PBDataWriterWriteBOOLField();
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_112;
  }

LABEL_102:
  if ((has & 8) != 0)
  {
LABEL_103:
    isFlagged = self->_isFlagged;
    PBDataWriterWriteBOOLField();
  }

LABEL_104:

  v51 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v36 = toCopy;
  if (self->_uniqueId)
  {
    [toCopy setUniqueId:?];
    toCopy = v36;
  }

  if (self->_domainId)
  {
    [v36 setDomainId:?];
    toCopy = v36;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_absoluteTimestamp;
    *(toCopy + 128) |= 1u;
  }

  if (self->_accountIdentifier)
  {
    [v36 setAccountIdentifier:?];
  }

  if (self->_messageIdentifier)
  {
    [v36 setMessageIdentifier:?];
  }

  if (self->_from)
  {
    [v36 setFrom:?];
  }

  if (self->_to)
  {
    [v36 setTo:?];
  }

  if (self->_cc)
  {
    [v36 setCc:?];
  }

  if (self->_bcc)
  {
    [v36 setBcc:?];
  }

  if ([(BMPBMailContentEvent *)self headersCount])
  {
    [v36 clearHeaders];
    headersCount = [(BMPBMailContentEvent *)self headersCount];
    if (headersCount)
    {
      v6 = headersCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BMPBMailContentEvent *)self headersAtIndex:i];
        [v36 addHeaders:v8];
      }
    }
  }

  if (self->_subject)
  {
    [v36 setSubject:?];
  }

  v9 = v36;
  if (self->_htmlContentData)
  {
    [v36 setHtmlContentData:?];
    v9 = v36;
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v9[250] = self->_isFullyDownloaded;
    *(v9 + 128) |= 0x20u;
  }

  if (self->_htmlContent)
  {
    [v36 setHtmlContent:?];
  }

  if (self->_textContent)
  {
    [v36 setTextContent:?];
  }

  if (self->_securityMethod)
  {
    [v36 setSecurityMethod:?];
  }

  if ([(BMPBMailContentEvent *)self accountHandlesCount])
  {
    [v36 clearAccountHandles];
    accountHandlesCount = [(BMPBMailContentEvent *)self accountHandlesCount];
    if (accountHandlesCount)
    {
      v11 = accountHandlesCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(BMPBMailContentEvent *)self accountHandlesAtIndex:j];
        [v36 addAccountHandles:v13];
      }
    }
  }

  if (self->_replyTo)
  {
    [v36 setReplyTo:?];
  }

  if ([(BMPBMailContentEvent *)self mailboxIdentifiersCount])
  {
    [v36 clearMailboxIdentifiers];
    mailboxIdentifiersCount = [(BMPBMailContentEvent *)self mailboxIdentifiersCount];
    if (mailboxIdentifiersCount)
    {
      v15 = mailboxIdentifiersCount;
      for (k = 0; k != v15; ++k)
      {
        v17 = [(BMPBMailContentEvent *)self mailboxIdentifiersAtIndex:k];
        [v36 addMailboxIdentifiers:v17];
      }
    }
  }

  if (self->_listId)
  {
    [v36 setListId:?];
  }

  if (self->_accountType)
  {
    [v36 setAccountType:?];
  }

  if ([(BMPBMailContentEvent *)self attachmentsCount])
  {
    [v36 clearAttachments];
    attachmentsCount = [(BMPBMailContentEvent *)self attachmentsCount];
    if (attachmentsCount)
    {
      v19 = attachmentsCount;
      for (m = 0; m != v19; ++m)
      {
        v21 = [(BMPBMailContentEvent *)self attachmentsAtIndex:m];
        [v36 addAttachments:v21];
      }
    }
  }

  if (self->_fromHandle)
  {
    [v36 setFromHandle:?];
  }

  if ([(BMPBMailContentEvent *)self toHandlesCount])
  {
    [v36 clearToHandles];
    toHandlesCount = [(BMPBMailContentEvent *)self toHandlesCount];
    if (toHandlesCount)
    {
      v23 = toHandlesCount;
      for (n = 0; n != v23; ++n)
      {
        v25 = [(BMPBMailContentEvent *)self toHandlesAtIndex:n];
        [v36 addToHandles:v25];
      }
    }
  }

  if ([(BMPBMailContentEvent *)self ccHandlesCount])
  {
    [v36 clearCcHandles];
    ccHandlesCount = [(BMPBMailContentEvent *)self ccHandlesCount];
    if (ccHandlesCount)
    {
      v27 = ccHandlesCount;
      for (ii = 0; ii != v27; ++ii)
      {
        v29 = [(BMPBMailContentEvent *)self ccHandlesAtIndex:ii];
        [v36 addCcHandles:v29];
      }
    }
  }

  if ([(BMPBMailContentEvent *)self bccHandlesCount])
  {
    [v36 clearBccHandles];
    bccHandlesCount = [(BMPBMailContentEvent *)self bccHandlesCount];
    if (bccHandlesCount)
    {
      v31 = bccHandlesCount;
      for (jj = 0; jj != v31; ++jj)
      {
        v33 = [(BMPBMailContentEvent *)self bccHandlesAtIndex:jj];
        [v36 addBccHandles:v33];
      }
    }
  }

  if (self->_contentProtection)
  {
    [v36 setContentProtection:?];
  }

  v34 = v36;
  if (self->_personaId)
  {
    [v36 setPersonaId:?];
    v34 = v36;
  }

  if (self->_conversationId)
  {
    [v36 setConversationId:?];
    v34 = v36;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v34[2] = *&self->_dateReceived;
    *(v34 + 128) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_75:
      if ((has & 0x80) == 0)
      {
        goto LABEL_76;
      }

      goto LABEL_88;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_75;
  }

  *(v34 + 40) = self->_mailCategories;
  *(v34 + 128) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_76:
    if ((has & 0x200) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_89;
  }

LABEL_88:
  *(v34 + 252) = self->_isNew;
  *(v34 + 128) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_77:
    if ((has & 0x10) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_90;
  }

LABEL_89:
  *(v34 + 254) = self->_isTwoFactorCode;
  *(v34 + 128) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_78:
    if ((has & 0x40) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_91;
  }

LABEL_90:
  *(v34 + 249) = self->_isFromMe;
  *(v34 + 128) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_79:
    if ((has & 0x100) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_92;
  }

LABEL_91:
  *(v34 + 251) = self->_isJunk;
  *(v34 + 128) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_80:
    if ((has & 0x400) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_93;
  }

LABEL_92:
  *(v34 + 253) = self->_isRead;
  *(v34 + 128) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_81:
    if ((has & 8) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_82;
  }

LABEL_93:
  *(v34 + 255) = self->_isVIP;
  *(v34 + 128) |= 0x400u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_82:
    *(v34 + 248) = self->_isFlagged;
    *(v34 + 128) |= 8u;
  }

LABEL_83:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v126 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uniqueId copyWithZone:zone];
  v7 = *(v5 + 240);
  *(v5 + 240) = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:zone];
  v9 = *(v5 + 104);
  *(v5 + 104) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 256) |= 1u;
  }

  v10 = [(NSString *)self->_accountIdentifier copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  v12 = [(NSString *)self->_messageIdentifier copyWithZone:zone];
  v13 = *(v5 + 176);
  *(v5 + 176) = v12;

  v14 = [(NSString *)self->_from copyWithZone:zone];
  v15 = *(v5 + 112);
  *(v5 + 112) = v14;

  v16 = [(NSString *)self->_to copyWithZone:zone];
  v17 = *(v5 + 224);
  *(v5 + 224) = v16;

  v18 = [(NSString *)self->_cc copyWithZone:zone];
  v19 = *(v5 + 72);
  *(v5 + 72) = v18;

  v20 = [(NSString *)self->_bcc copyWithZone:zone];
  v21 = *(v5 + 56);
  *(v5 + 56) = v20;

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  v22 = self->_headers;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v115 objects:v125 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v116;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v116 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v115 + 1) + 8 * i) copyWithZone:zone];
        [v5 addHeaders:v27];
      }

      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v115 objects:v125 count:16];
    }

    while (v24);
  }

  v28 = [(NSString *)self->_subject copyWithZone:zone];
  v29 = *(v5 + 208);
  *(v5 + 208) = v28;

  v30 = [(NSString *)self->_htmlContentData copyWithZone:zone];
  v31 = *(v5 + 144);
  *(v5 + 144) = v30;

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 250) = self->_isFullyDownloaded;
    *(v5 + 256) |= 0x20u;
  }

  v32 = [(NSData *)self->_htmlContent copyWithZone:zone];
  v33 = *(v5 + 136);
  *(v5 + 136) = v32;

  v34 = [(NSString *)self->_textContent copyWithZone:zone];
  v35 = *(v5 + 216);
  *(v5 + 216) = v34;

  v36 = [(NSString *)self->_securityMethod copyWithZone:zone];
  v37 = *(v5 + 200);
  *(v5 + 200) = v36;

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  v38 = self->_accountHandles;
  v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v111 objects:v124 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = *v112;
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v112 != v41)
        {
          objc_enumerationMutation(v38);
        }

        v43 = [*(*(&v111 + 1) + 8 * j) copyWithZone:zone];
        [v5 addAccountHandles:v43];
      }

      v40 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v111 objects:v124 count:16];
    }

    while (v40);
  }

  v44 = [(BMPBNamedHandle *)self->_replyTo copyWithZone:zone];
  v45 = *(v5 + 192);
  *(v5 + 192) = v44;

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v46 = self->_mailboxIdentifiers;
  v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v107 objects:v123 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v108;
    do
    {
      for (k = 0; k != v48; ++k)
      {
        if (*v108 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [*(*(&v107 + 1) + 8 * k) copyWithZone:zone];
        [v5 addMailboxIdentifiers:v51];
      }

      v48 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v107 objects:v123 count:16];
    }

    while (v48);
  }

  v52 = [(BMPBNamedHandle *)self->_listId copyWithZone:zone];
  v53 = *(v5 + 152);
  *(v5 + 152) = v52;

  v54 = [(NSString *)self->_accountType copyWithZone:zone];
  v55 = *(v5 + 40);
  *(v5 + 40) = v54;

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v56 = self->_attachments;
  v57 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v103 objects:v122 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v104;
    do
    {
      for (m = 0; m != v58; ++m)
      {
        if (*v104 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v61 = [*(*(&v103 + 1) + 8 * m) copyWithZone:zone];
        [v5 addAttachments:v61];
      }

      v58 = [(NSMutableArray *)v56 countByEnumeratingWithState:&v103 objects:v122 count:16];
    }

    while (v58);
  }

  v62 = [(BMPBNamedHandle *)self->_fromHandle copyWithZone:zone];
  v63 = *(v5 + 120);
  *(v5 + 120) = v62;

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v64 = self->_toHandles;
  v65 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v99 objects:v121 count:16];
  if (v65)
  {
    v66 = v65;
    v67 = *v100;
    do
    {
      for (n = 0; n != v66; ++n)
      {
        if (*v100 != v67)
        {
          objc_enumerationMutation(v64);
        }

        v69 = [*(*(&v99 + 1) + 8 * n) copyWithZone:zone];
        [v5 addToHandles:v69];
      }

      v66 = [(NSMutableArray *)v64 countByEnumeratingWithState:&v99 objects:v121 count:16];
    }

    while (v66);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v70 = self->_ccHandles;
  v71 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v95 objects:v120 count:16];
  if (v71)
  {
    v72 = v71;
    v73 = *v96;
    do
    {
      for (ii = 0; ii != v72; ++ii)
      {
        if (*v96 != v73)
        {
          objc_enumerationMutation(v70);
        }

        v75 = [*(*(&v95 + 1) + 8 * ii) copyWithZone:zone];
        [v5 addCcHandles:v75];
      }

      v72 = [(NSMutableArray *)v70 countByEnumeratingWithState:&v95 objects:v120 count:16];
    }

    while (v72);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v76 = self->_bccHandles;
  v77 = [(NSMutableArray *)v76 countByEnumeratingWithState:&v91 objects:v119 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v92;
    do
    {
      for (jj = 0; jj != v78; ++jj)
      {
        if (*v92 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = [*(*(&v91 + 1) + 8 * jj) copyWithZone:{zone, v91}];
        [v5 addBccHandles:v81];
      }

      v78 = [(NSMutableArray *)v76 countByEnumeratingWithState:&v91 objects:v119 count:16];
    }

    while (v78);
  }

  v82 = [(NSString *)self->_contentProtection copyWithZone:zone];
  v83 = *(v5 + 88);
  *(v5 + 88) = v82;

  v84 = [(NSString *)self->_personaId copyWithZone:zone];
  v85 = *(v5 + 184);
  *(v5 + 184) = v84;

  v86 = [(NSString *)self->_conversationId copyWithZone:zone];
  v87 = *(v5 + 96);
  *(v5 + 96) = v86;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_dateReceived;
    *(v5 + 256) |= 2u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_56:
      if ((has & 0x80) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_67;
    }
  }

  else if ((has & 4) == 0)
  {
    goto LABEL_56;
  }

  *(v5 + 160) = self->_mailCategories;
  *(v5 + 256) |= 4u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_57:
    if ((has & 0x200) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_68;
  }

LABEL_67:
  *(v5 + 252) = self->_isNew;
  *(v5 + 256) |= 0x80u;
  has = self->_has;
  if ((has & 0x200) == 0)
  {
LABEL_58:
    if ((has & 0x10) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_69;
  }

LABEL_68:
  *(v5 + 254) = self->_isTwoFactorCode;
  *(v5 + 256) |= 0x200u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_59:
    if ((has & 0x40) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_70;
  }

LABEL_69:
  *(v5 + 249) = self->_isFromMe;
  *(v5 + 256) |= 0x10u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_60:
    if ((has & 0x100) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_71;
  }

LABEL_70:
  *(v5 + 251) = self->_isJunk;
  *(v5 + 256) |= 0x40u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_61:
    if ((has & 0x400) == 0)
    {
      goto LABEL_62;
    }

LABEL_72:
    *(v5 + 255) = self->_isVIP;
    *(v5 + 256) |= 0x400u;
    if ((*&self->_has & 8) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

LABEL_71:
  *(v5 + 253) = self->_isRead;
  *(v5 + 256) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) != 0)
  {
    goto LABEL_72;
  }

LABEL_62:
  if ((has & 8) != 0)
  {
LABEL_63:
    *(v5 + 248) = self->_isFlagged;
    *(v5 + 256) |= 8u;
  }

LABEL_64:
  v89 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_67;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(equalCopy + 30))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_67;
    }
  }

  domainId = self->_domainId;
  if (domainId | *(equalCopy + 13))
  {
    if (![(NSString *)domainId isEqual:?])
    {
      goto LABEL_67;
    }
  }

  v7 = *(equalCopy + 128);
  if (*&self->_has)
  {
    if ((v7 & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_67;
    }
  }

  else if (v7)
  {
    goto LABEL_67;
  }

  accountIdentifier = self->_accountIdentifier;
  if (accountIdentifier | *(equalCopy + 4) && ![(NSString *)accountIdentifier isEqual:?])
  {
    goto LABEL_67;
  }

  messageIdentifier = self->_messageIdentifier;
  if (messageIdentifier | *(equalCopy + 22))
  {
    if (![(NSString *)messageIdentifier isEqual:?])
    {
      goto LABEL_67;
    }
  }

  from = self->_from;
  if (from | *(equalCopy + 14))
  {
    if (![(NSString *)from isEqual:?])
    {
      goto LABEL_67;
    }
  }

  to = self->_to;
  if (to | *(equalCopy + 28))
  {
    if (![(NSString *)to isEqual:?])
    {
      goto LABEL_67;
    }
  }

  cc = self->_cc;
  if (cc | *(equalCopy + 9))
  {
    if (![(NSString *)cc isEqual:?])
    {
      goto LABEL_67;
    }
  }

  bcc = self->_bcc;
  if (bcc | *(equalCopy + 7))
  {
    if (![(NSString *)bcc isEqual:?])
    {
      goto LABEL_67;
    }
  }

  headers = self->_headers;
  if (headers | *(equalCopy + 16))
  {
    if (![(NSMutableArray *)headers isEqual:?])
    {
      goto LABEL_67;
    }
  }

  subject = self->_subject;
  if (subject | *(equalCopy + 26))
  {
    if (![(NSString *)subject isEqual:?])
    {
      goto LABEL_67;
    }
  }

  htmlContentData = self->_htmlContentData;
  if (htmlContentData | *(equalCopy + 18))
  {
    if (![(NSString *)htmlContentData isEqual:?])
    {
      goto LABEL_67;
    }
  }

  v17 = *(equalCopy + 128);
  if ((*&self->_has & 0x20) != 0)
  {
    if ((v17 & 0x20) == 0)
    {
      goto LABEL_67;
    }

    v38 = *(equalCopy + 250);
    if (self->_isFullyDownloaded)
    {
      if ((*(equalCopy + 250) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else if (*(equalCopy + 250))
    {
      goto LABEL_67;
    }
  }

  else if ((v17 & 0x20) != 0)
  {
    goto LABEL_67;
  }

  htmlContent = self->_htmlContent;
  if (htmlContent | *(equalCopy + 17) && ![(NSData *)htmlContent isEqual:?])
  {
    goto LABEL_67;
  }

  textContent = self->_textContent;
  if (textContent | *(equalCopy + 27))
  {
    if (![(NSString *)textContent isEqual:?])
    {
      goto LABEL_67;
    }
  }

  securityMethod = self->_securityMethod;
  if (securityMethod | *(equalCopy + 25))
  {
    if (![(NSString *)securityMethod isEqual:?])
    {
      goto LABEL_67;
    }
  }

  accountHandles = self->_accountHandles;
  if (accountHandles | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)accountHandles isEqual:?])
    {
      goto LABEL_67;
    }
  }

  replyTo = self->_replyTo;
  if (replyTo | *(equalCopy + 24))
  {
    if (![(BMPBNamedHandle *)replyTo isEqual:?])
    {
      goto LABEL_67;
    }
  }

  mailboxIdentifiers = self->_mailboxIdentifiers;
  if (mailboxIdentifiers | *(equalCopy + 21))
  {
    if (![(NSMutableArray *)mailboxIdentifiers isEqual:?])
    {
      goto LABEL_67;
    }
  }

  listId = self->_listId;
  if (listId | *(equalCopy + 19))
  {
    if (![(BMPBNamedHandle *)listId isEqual:?])
    {
      goto LABEL_67;
    }
  }

  accountType = self->_accountType;
  if (accountType | *(equalCopy + 5))
  {
    if (![(NSString *)accountType isEqual:?])
    {
      goto LABEL_67;
    }
  }

  attachments = self->_attachments;
  if (attachments | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)attachments isEqual:?])
    {
      goto LABEL_67;
    }
  }

  fromHandle = self->_fromHandle;
  if (fromHandle | *(equalCopy + 15))
  {
    if (![(BMPBNamedHandle *)fromHandle isEqual:?])
    {
      goto LABEL_67;
    }
  }

  toHandles = self->_toHandles;
  if (toHandles | *(equalCopy + 29))
  {
    if (![(NSMutableArray *)toHandles isEqual:?])
    {
      goto LABEL_67;
    }
  }

  ccHandles = self->_ccHandles;
  if (ccHandles | *(equalCopy + 10))
  {
    if (![(NSMutableArray *)ccHandles isEqual:?])
    {
      goto LABEL_67;
    }
  }

  bccHandles = self->_bccHandles;
  if (bccHandles | *(equalCopy + 8))
  {
    if (![(NSMutableArray *)bccHandles isEqual:?])
    {
      goto LABEL_67;
    }
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(equalCopy + 11))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_67;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(equalCopy + 23))
  {
    if (![(NSString *)personaId isEqual:?])
    {
      goto LABEL_67;
    }
  }

  conversationId = self->_conversationId;
  if (conversationId | *(equalCopy + 12))
  {
    if (![(NSString *)conversationId isEqual:?])
    {
      goto LABEL_67;
    }
  }

  has = self->_has;
  v35 = *(equalCopy + 128);
  if ((has & 2) != 0)
  {
    if ((v35 & 2) == 0 || self->_dateReceived != *(equalCopy + 2))
    {
      goto LABEL_67;
    }
  }

  else if ((v35 & 2) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 4) != 0)
  {
    if ((v35 & 4) == 0 || self->_mailCategories != *(equalCopy + 40))
    {
      goto LABEL_67;
    }
  }

  else if ((v35 & 4) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x80) != 0)
  {
    if ((v35 & 0x80) == 0)
    {
      goto LABEL_67;
    }

    v39 = *(equalCopy + 252);
    if (self->_isNew)
    {
      if ((*(equalCopy + 252) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else if (*(equalCopy + 252))
    {
      goto LABEL_67;
    }
  }

  else if ((v35 & 0x80) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x200) != 0)
  {
    if ((*(equalCopy + 128) & 0x200) == 0)
    {
      goto LABEL_67;
    }

    v40 = *(equalCopy + 254);
    if (self->_isTwoFactorCode)
    {
      if ((*(equalCopy + 254) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else if (*(equalCopy + 254))
    {
      goto LABEL_67;
    }
  }

  else if ((*(equalCopy + 128) & 0x200) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x10) != 0)
  {
    if ((v35 & 0x10) == 0)
    {
      goto LABEL_67;
    }

    v41 = *(equalCopy + 249);
    if (self->_isFromMe)
    {
      if ((*(equalCopy + 249) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else if (*(equalCopy + 249))
    {
      goto LABEL_67;
    }
  }

  else if ((v35 & 0x10) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 0x40) != 0)
  {
    if ((v35 & 0x40) == 0)
    {
      goto LABEL_67;
    }

    v42 = *(equalCopy + 251);
    if (self->_isJunk)
    {
      if ((*(equalCopy + 251) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else if (*(equalCopy + 251))
    {
      goto LABEL_67;
    }
  }

  else if ((v35 & 0x40) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 128) & 0x100) == 0)
    {
      goto LABEL_67;
    }

    v43 = *(equalCopy + 253);
    if (self->_isRead)
    {
      if ((*(equalCopy + 253) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else if (*(equalCopy + 253))
    {
      goto LABEL_67;
    }
  }

  else if ((*(equalCopy + 128) & 0x100) != 0)
  {
    goto LABEL_67;
  }

  if ((*&self->_has & 0x400) != 0)
  {
    if ((*(equalCopy + 128) & 0x400) == 0)
    {
      goto LABEL_67;
    }

    v44 = *(equalCopy + 255);
    if (self->_isVIP)
    {
      if ((*(equalCopy + 255) & 1) == 0)
      {
        goto LABEL_67;
      }
    }

    else if (*(equalCopy + 255))
    {
      goto LABEL_67;
    }
  }

  else if ((*(equalCopy + 128) & 0x400) != 0)
  {
    goto LABEL_67;
  }

  if ((has & 8) == 0)
  {
    v36 = (v35 & 8) == 0;
    goto LABEL_68;
  }

  if ((v35 & 8) != 0)
  {
    if (self->_isFlagged)
    {
      if (*(equalCopy + 248))
      {
        goto LABEL_136;
      }
    }

    else if (!*(equalCopy + 248))
    {
LABEL_136:
      v36 = 1;
      goto LABEL_68;
    }
  }

LABEL_67:
  v36 = 0;
LABEL_68:

  return v36;
}

- (unint64_t)hash
{
  v55 = [(NSString *)self->_uniqueId hash];
  v54 = [(NSString *)self->_domainId hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v3.i64 = floor(absoluteTimestamp + 0.5);
    v6 = (absoluteTimestamp - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    v3.i64[0] = vbslq_s8(vnegq_f64(v7), v4, v3).i64[0];
    v8 = 2654435761u * *v3.i64;
    v9 = v8 + v6;
    if (v6 <= 0.0)
    {
      v9 = 2654435761u * *v3.i64;
    }

    v10 = v8 - fabs(v6);
    if (v6 >= 0.0)
    {
      v10 = v9;
    }

    v53 = v10;
  }

  else
  {
    v53 = 0;
  }

  v52 = [(NSString *)self->_accountIdentifier hash];
  v51 = [(NSString *)self->_messageIdentifier hash];
  v50 = [(NSString *)self->_from hash];
  v49 = [(NSString *)self->_to hash];
  v48 = [(NSString *)self->_cc hash];
  v47 = [(NSString *)self->_bcc hash];
  v46 = [(NSMutableArray *)self->_headers hash];
  v45 = [(NSString *)self->_subject hash];
  v44 = [(NSString *)self->_htmlContentData hash];
  if ((*&self->_has & 0x20) != 0)
  {
    v43 = 2654435761 * self->_isFullyDownloaded;
  }

  else
  {
    v43 = 0;
  }

  v42 = [(NSData *)self->_htmlContent hash];
  v41 = [(NSString *)self->_textContent hash];
  v40 = [(NSString *)self->_securityMethod hash];
  v39 = [(NSMutableArray *)self->_accountHandles hash];
  v38 = [(BMPBNamedHandle *)self->_replyTo hash];
  v37 = [(NSMutableArray *)self->_mailboxIdentifiers hash];
  v36 = [(BMPBNamedHandle *)self->_listId hash];
  v11 = [(NSString *)self->_accountType hash];
  v12 = [(NSMutableArray *)self->_attachments hash];
  v13 = [(BMPBNamedHandle *)self->_fromHandle hash];
  v14 = [(NSMutableArray *)self->_toHandles hash];
  v15 = [(NSMutableArray *)self->_ccHandles hash];
  v16 = [(NSMutableArray *)self->_bccHandles hash];
  v17 = [(NSString *)self->_contentProtection hash];
  v18 = [(NSString *)self->_personaId hash];
  v19 = [(NSString *)self->_conversationId hash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    dateReceived = self->_dateReceived;
    if (dateReceived < 0.0)
    {
      dateReceived = -dateReceived;
    }

    *v20.i64 = floor(dateReceived + 0.5);
    v25 = (dateReceived - *v20.i64) * 1.84467441e19;
    *v21.i64 = *v20.i64 - trunc(*v20.i64 * 5.42101086e-20) * 1.84467441e19;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    v23 = 2654435761u * *vbslq_s8(vnegq_f64(v26), v21, v20).i64;
    if (v25 >= 0.0)
    {
      if (v25 > 0.0)
      {
        v23 += v25;
      }
    }

    else
    {
      v23 -= fabs(v25);
    }
  }

  else
  {
    v23 = 0;
  }

  if ((has & 4) != 0)
  {
    v27 = 2654435761 * self->_mailCategories;
    if ((has & 0x80) != 0)
    {
LABEL_23:
      v28 = 2654435761 * self->_isNew;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_24;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v27 = 0;
    if ((has & 0x80) != 0)
    {
      goto LABEL_23;
    }
  }

  v28 = 0;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_24:
    v29 = 2654435761 * self->_isTwoFactorCode;
    if ((has & 0x10) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_33;
  }

LABEL_32:
  v29 = 0;
  if ((has & 0x10) != 0)
  {
LABEL_25:
    v30 = 2654435761 * self->_isFromMe;
    if ((has & 0x40) != 0)
    {
      goto LABEL_26;
    }

    goto LABEL_34;
  }

LABEL_33:
  v30 = 0;
  if ((has & 0x40) != 0)
  {
LABEL_26:
    v31 = 2654435761 * self->_isJunk;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_34:
  v31 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_27:
    v32 = 2654435761 * self->_isRead;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_28;
    }

LABEL_36:
    v33 = 0;
    if ((has & 8) != 0)
    {
      goto LABEL_29;
    }

LABEL_37:
    v34 = 0;
    return v54 ^ v55 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v23 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34;
  }

LABEL_35:
  v32 = 0;
  if ((*&self->_has & 0x400) == 0)
  {
    goto LABEL_36;
  }

LABEL_28:
  v33 = 2654435761 * self->_isVIP;
  if ((has & 8) == 0)
  {
    goto LABEL_37;
  }

LABEL_29:
  v34 = 2654435761 * self->_isFlagged;
  return v54 ^ v55 ^ v53 ^ v52 ^ v51 ^ v50 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v42 ^ v41 ^ v40 ^ v39 ^ v38 ^ v37 ^ v36 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18 ^ v19 ^ v23 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34;
}

- (void)mergeFrom:(id)from
{
  v83 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 30))
  {
    [(BMPBMailContentEvent *)self setUniqueId:?];
  }

  if (*(fromCopy + 13))
  {
    [(BMPBMailContentEvent *)self setDomainId:?];
  }

  if (*(fromCopy + 128))
  {
    self->_absoluteTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBMailContentEvent *)self setAccountIdentifier:?];
  }

  if (*(fromCopy + 22))
  {
    [(BMPBMailContentEvent *)self setMessageIdentifier:?];
  }

  if (*(fromCopy + 14))
  {
    [(BMPBMailContentEvent *)self setFrom:?];
  }

  if (*(fromCopy + 28))
  {
    [(BMPBMailContentEvent *)self setTo:?];
  }

  if (*(fromCopy + 9))
  {
    [(BMPBMailContentEvent *)self setCc:?];
  }

  if (*(fromCopy + 7))
  {
    [(BMPBMailContentEvent *)self setBcc:?];
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v5 = *(fromCopy + 16);
  v6 = [v5 countByEnumeratingWithState:&v72 objects:v82 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v73;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v73 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BMPBMailContentEvent *)self addHeaders:*(*(&v72 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v72 objects:v82 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 26))
  {
    [(BMPBMailContentEvent *)self setSubject:?];
  }

  if (*(fromCopy + 18))
  {
    [(BMPBMailContentEvent *)self setHtmlContentData:?];
  }

  if ((*(fromCopy + 128) & 0x20) != 0)
  {
    self->_isFullyDownloaded = *(fromCopy + 250);
    *&self->_has |= 0x20u;
  }

  if (*(fromCopy + 17))
  {
    [(BMPBMailContentEvent *)self setHtmlContent:?];
  }

  if (*(fromCopy + 27))
  {
    [(BMPBMailContentEvent *)self setTextContent:?];
  }

  if (*(fromCopy + 25))
  {
    [(BMPBMailContentEvent *)self setSecurityMethod:?];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v68 objects:v81 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v69;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v69 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(BMPBMailContentEvent *)self addAccountHandles:*(*(&v68 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v68 objects:v81 count:16];
    }

    while (v12);
  }

  replyTo = self->_replyTo;
  v16 = *(fromCopy + 24);
  if (replyTo)
  {
    if (v16)
    {
      [(BMPBNamedHandle *)replyTo mergeFrom:?];
    }
  }

  else if (v16)
  {
    [(BMPBMailContentEvent *)self setReplyTo:?];
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v17 = *(fromCopy + 21);
  v18 = [v17 countByEnumeratingWithState:&v64 objects:v80 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v65;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v65 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(BMPBMailContentEvent *)self addMailboxIdentifiers:*(*(&v64 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v64 objects:v80 count:16];
    }

    while (v19);
  }

  listId = self->_listId;
  v23 = *(fromCopy + 19);
  if (listId)
  {
    if (v23)
    {
      [(BMPBNamedHandle *)listId mergeFrom:?];
    }
  }

  else if (v23)
  {
    [(BMPBMailContentEvent *)self setListId:?];
  }

  if (*(fromCopy + 5))
  {
    [(BMPBMailContentEvent *)self setAccountType:?];
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v24 = *(fromCopy + 6);
  v25 = [v24 countByEnumeratingWithState:&v60 objects:v79 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v61;
    do
    {
      for (m = 0; m != v26; ++m)
      {
        if (*v61 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [(BMPBMailContentEvent *)self addAttachments:*(*(&v60 + 1) + 8 * m)];
      }

      v26 = [v24 countByEnumeratingWithState:&v60 objects:v79 count:16];
    }

    while (v26);
  }

  fromHandle = self->_fromHandle;
  v30 = *(fromCopy + 15);
  if (fromHandle)
  {
    if (v30)
    {
      [(BMPBNamedHandle *)fromHandle mergeFrom:?];
    }
  }

  else if (v30)
  {
    [(BMPBMailContentEvent *)self setFromHandle:?];
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v31 = *(fromCopy + 29);
  v32 = [v31 countByEnumeratingWithState:&v56 objects:v78 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v57;
    do
    {
      for (n = 0; n != v33; ++n)
      {
        if (*v57 != v34)
        {
          objc_enumerationMutation(v31);
        }

        [(BMPBMailContentEvent *)self addToHandles:*(*(&v56 + 1) + 8 * n)];
      }

      v33 = [v31 countByEnumeratingWithState:&v56 objects:v78 count:16];
    }

    while (v33);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = *(fromCopy + 10);
  v37 = [v36 countByEnumeratingWithState:&v52 objects:v77 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v53;
    do
    {
      for (ii = 0; ii != v38; ++ii)
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [(BMPBMailContentEvent *)self addCcHandles:*(*(&v52 + 1) + 8 * ii)];
      }

      v38 = [v36 countByEnumeratingWithState:&v52 objects:v77 count:16];
    }

    while (v38);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v41 = *(fromCopy + 8);
  v42 = [v41 countByEnumeratingWithState:&v48 objects:v76 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v49;
    do
    {
      for (jj = 0; jj != v43; ++jj)
      {
        if (*v49 != v44)
        {
          objc_enumerationMutation(v41);
        }

        [(BMPBMailContentEvent *)self addBccHandles:*(*(&v48 + 1) + 8 * jj), v48];
      }

      v43 = [v41 countByEnumeratingWithState:&v48 objects:v76 count:16];
    }

    while (v43);
  }

  if (*(fromCopy + 11))
  {
    [(BMPBMailContentEvent *)self setContentProtection:?];
  }

  if (*(fromCopy + 23))
  {
    [(BMPBMailContentEvent *)self setPersonaId:?];
  }

  if (*(fromCopy + 12))
  {
    [(BMPBMailContentEvent *)self setConversationId:?];
  }

  v46 = *(fromCopy + 128);
  if ((v46 & 2) != 0)
  {
    self->_dateReceived = *(fromCopy + 2);
    *&self->_has |= 2u;
    v46 = *(fromCopy + 128);
    if ((v46 & 4) == 0)
    {
LABEL_105:
      if ((v46 & 0x80) == 0)
      {
        goto LABEL_106;
      }

      goto LABEL_116;
    }
  }

  else if ((v46 & 4) == 0)
  {
    goto LABEL_105;
  }

  self->_mailCategories = *(fromCopy + 40);
  *&self->_has |= 4u;
  v46 = *(fromCopy + 128);
  if ((v46 & 0x80) == 0)
  {
LABEL_106:
    if ((v46 & 0x200) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_117;
  }

LABEL_116:
  self->_isNew = *(fromCopy + 252);
  *&self->_has |= 0x80u;
  v46 = *(fromCopy + 128);
  if ((v46 & 0x200) == 0)
  {
LABEL_107:
    if ((v46 & 0x10) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_118;
  }

LABEL_117:
  self->_isTwoFactorCode = *(fromCopy + 254);
  *&self->_has |= 0x200u;
  v46 = *(fromCopy + 128);
  if ((v46 & 0x10) == 0)
  {
LABEL_108:
    if ((v46 & 0x40) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_119;
  }

LABEL_118:
  self->_isFromMe = *(fromCopy + 249);
  *&self->_has |= 0x10u;
  v46 = *(fromCopy + 128);
  if ((v46 & 0x40) == 0)
  {
LABEL_109:
    if ((v46 & 0x100) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_120;
  }

LABEL_119:
  self->_isJunk = *(fromCopy + 251);
  *&self->_has |= 0x40u;
  v46 = *(fromCopy + 128);
  if ((v46 & 0x100) == 0)
  {
LABEL_110:
    if ((v46 & 0x400) == 0)
    {
      goto LABEL_111;
    }

LABEL_121:
    self->_isVIP = *(fromCopy + 255);
    *&self->_has |= 0x400u;
    if ((*(fromCopy + 128) & 8) == 0)
    {
      goto LABEL_113;
    }

    goto LABEL_112;
  }

LABEL_120:
  self->_isRead = *(fromCopy + 253);
  *&self->_has |= 0x100u;
  v46 = *(fromCopy + 128);
  if ((v46 & 0x400) != 0)
  {
    goto LABEL_121;
  }

LABEL_111:
  if ((v46 & 8) != 0)
  {
LABEL_112:
    self->_isFlagged = *(fromCopy + 248);
    *&self->_has |= 8u;
  }

LABEL_113:

  v47 = *MEMORY[0x1E69E9840];
}

@end