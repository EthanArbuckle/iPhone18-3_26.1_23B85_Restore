@interface NNMKProtoSendMessageRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCc:(id)cc;
- (void)addTo:(id)to;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIncludeAttachments:(BOOL)attachments;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoSendMessageRequest

- (void)addTo:(id)to
{
  toCopy = to;
  tos = self->_tos;
  v8 = toCopy;
  if (!tos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_tos;
    self->_tos = v6;

    toCopy = v8;
    tos = self->_tos;
  }

  [(NSMutableArray *)tos addObject:toCopy];
}

- (void)addCc:(id)cc
{
  ccCopy = cc;
  ccs = self->_ccs;
  v8 = ccCopy;
  if (!ccs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ccs;
    self->_ccs = v6;

    ccCopy = v8;
    ccs = self->_ccs;
  }

  [(NSMutableArray *)ccs addObject:ccCopy];
}

- (void)setHasIncludeAttachments:(BOOL)attachments
{
  if (attachments)
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
  v8.super_class = NNMKProtoSendMessageRequest;
  v4 = [(NNMKProtoSendMessageRequest *)&v8 description];
  dictionaryRepresentation = [(NNMKProtoSendMessageRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  tos = self->_tos;
  if (tos)
  {
    [dictionary setObject:tos forKey:@"to"];
  }

  ccs = self->_ccs;
  if (ccs)
  {
    [v4 setObject:ccs forKey:@"cc"];
  }

  subject = self->_subject;
  if (subject)
  {
    [v4 setObject:subject forKey:@"subject"];
  }

  body = self->_body;
  if (body)
  {
    [v4 setObject:body forKey:@"body"];
  }

  composedMessageId = self->_composedMessageId;
  if (composedMessageId)
  {
    [v4 setObject:composedMessageId forKey:@"composedMessageId"];
  }

  if (*&self->_has)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_sendingType];
    [v4 setObject:v10 forKey:@"sendingType"];
  }

  referenceMessageId = self->_referenceMessageId;
  if (referenceMessageId)
  {
    [v4 setObject:referenceMessageId forKey:@"referenceMessageId"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_includeAttachments];
    [v4 setObject:v12 forKey:@"includeAttachments"];
  }

  accountId = self->_accountId;
  if (accountId)
  {
    [v4 setObject:accountId forKey:@"accountId"];
  }

  from = self->_from;
  if (from)
  {
    [v4 setObject:from forKey:@"from"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = self->_tos;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      v9 = 0;
      do
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_ccs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  if (self->_subject)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_body)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_composedMessageId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    sendingType = self->_sendingType;
    PBDataWriterWriteUint32Field();
  }

  if (self->_referenceMessageId)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    includeAttachments = self->_includeAttachments;
    PBDataWriterWriteBOOLField();
  }

  if (self->_accountId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_from)
  {
    PBDataWriterWriteStringField();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NNMKProtoSendMessageRequest *)self tosCount])
  {
    [toCopy clearTos];
    tosCount = [(NNMKProtoSendMessageRequest *)self tosCount];
    if (tosCount)
    {
      v5 = tosCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NNMKProtoSendMessageRequest *)self toAtIndex:i];
        [toCopy addTo:v7];
      }
    }
  }

  if ([(NNMKProtoSendMessageRequest *)self ccsCount])
  {
    [toCopy clearCcs];
    ccsCount = [(NNMKProtoSendMessageRequest *)self ccsCount];
    if (ccsCount)
    {
      v9 = ccsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NNMKProtoSendMessageRequest *)self ccAtIndex:j];
        [toCopy addCc:v11];
      }
    }
  }

  if (self->_subject)
  {
    [toCopy setSubject:?];
  }

  v12 = toCopy;
  if (self->_body)
  {
    [toCopy setBody:?];
    v12 = toCopy;
  }

  if (self->_composedMessageId)
  {
    [toCopy setComposedMessageId:?];
    v12 = toCopy;
  }

  if (*&self->_has)
  {
    v12[14] = self->_sendingType;
    *(v12 + 84) |= 1u;
  }

  if (self->_referenceMessageId)
  {
    [toCopy setReferenceMessageId:?];
    v12 = toCopy;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v12 + 80) = self->_includeAttachments;
    *(v12 + 84) |= 2u;
  }

  if (self->_accountId)
  {
    [toCopy setAccountId:?];
    v12 = toCopy;
  }

  if (self->_from)
  {
    [toCopy setFrom:?];
    v12 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = self->_tos;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v36 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addTo:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = self->_ccs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v33;
    do
    {
      v16 = 0;
      do
      {
        if (*v33 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v32 + 1) + 8 * v16) copyWithZone:{zone, v32}];
        [v5 addCc:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_subject copyWithZone:zone];
  v19 = *(v5 + 64);
  *(v5 + 64) = v18;

  v20 = [(NSString *)self->_body copyWithZone:zone];
  v21 = *(v5 + 16);
  *(v5 + 16) = v20;

  v22 = [(NSString *)self->_composedMessageId copyWithZone:zone];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  if (*&self->_has)
  {
    *(v5 + 56) = self->_sendingType;
    *(v5 + 84) |= 1u;
  }

  v24 = [(NSString *)self->_referenceMessageId copyWithZone:zone, v32];
  v25 = *(v5 + 48);
  *(v5 + 48) = v24;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 80) = self->_includeAttachments;
    *(v5 + 84) |= 2u;
  }

  v26 = [(NSString *)self->_accountId copyWithZone:zone];
  v27 = *(v5 + 8);
  *(v5 + 8) = v26;

  v28 = [(NSString *)self->_from copyWithZone:zone];
  v29 = *(v5 + 40);
  *(v5 + 40) = v28;

  v30 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  tos = self->_tos;
  if (tos | *(equalCopy + 9))
  {
    if (![(NSMutableArray *)tos isEqual:?])
    {
      goto LABEL_27;
    }
  }

  ccs = self->_ccs;
  if (ccs | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)ccs isEqual:?])
    {
      goto LABEL_27;
    }
  }

  subject = self->_subject;
  if (subject | *(equalCopy + 8))
  {
    if (![(NSString *)subject isEqual:?])
    {
      goto LABEL_27;
    }
  }

  body = self->_body;
  if (body | *(equalCopy + 2))
  {
    if (![(NSString *)body isEqual:?])
    {
      goto LABEL_27;
    }
  }

  composedMessageId = self->_composedMessageId;
  if (composedMessageId | *(equalCopy + 4))
  {
    if (![(NSString *)composedMessageId isEqual:?])
    {
      goto LABEL_27;
    }
  }

  has = self->_has;
  v11 = *(equalCopy + 84);
  if (has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_sendingType != *(equalCopy + 14))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 84))
  {
    goto LABEL_27;
  }

  referenceMessageId = self->_referenceMessageId;
  if (referenceMessageId | *(equalCopy + 6))
  {
    if (![(NSString *)referenceMessageId isEqual:?])
    {
      goto LABEL_27;
    }

    has = self->_has;
  }

  v13 = *(equalCopy + 84);
  if ((has & 2) == 0)
  {
    if ((*(equalCopy + 84) & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  if ((*(equalCopy + 84) & 2) == 0)
  {
    goto LABEL_27;
  }

  v18 = *(equalCopy + 80);
  if (self->_includeAttachments)
  {
    if ((*(equalCopy + 80) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 80))
  {
    goto LABEL_27;
  }

LABEL_22:
  accountId = self->_accountId;
  if (accountId | *(equalCopy + 1) && ![(NSString *)accountId isEqual:?])
  {
    goto LABEL_27;
  }

  from = self->_from;
  if (from | *(equalCopy + 5))
  {
    v16 = [(NSString *)from isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_28:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_tos hash];
  v4 = [(NSMutableArray *)self->_ccs hash];
  v5 = [(NSString *)self->_subject hash];
  v6 = [(NSString *)self->_body hash];
  v7 = [(NSString *)self->_composedMessageId hash];
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_sendingType;
  }

  else
  {
    v8 = 0;
  }

  v9 = [(NSString *)self->_referenceMessageId hash];
  if ((*&self->_has & 2) != 0)
  {
    v10 = 2654435761 * self->_includeAttachments;
  }

  else
  {
    v10 = 0;
  }

  v11 = v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
  v12 = v10 ^ [(NSString *)self->_accountId hash];
  return v11 ^ v12 ^ [(NSString *)self->_from hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = *(fromCopy + 9);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NNMKProtoSendMessageRequest *)self addTo:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NNMKProtoSendMessageRequest *)self addCc:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 8))
  {
    [(NNMKProtoSendMessageRequest *)self setSubject:?];
  }

  if (*(fromCopy + 2))
  {
    [(NNMKProtoSendMessageRequest *)self setBody:?];
  }

  if (*(fromCopy + 4))
  {
    [(NNMKProtoSendMessageRequest *)self setComposedMessageId:?];
  }

  if (*(fromCopy + 84))
  {
    self->_sendingType = *(fromCopy + 14);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 6))
  {
    [(NNMKProtoSendMessageRequest *)self setReferenceMessageId:?];
  }

  if ((*(fromCopy + 84) & 2) != 0)
  {
    self->_includeAttachments = *(fromCopy + 80);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    [(NNMKProtoSendMessageRequest *)self setAccountId:?];
  }

  if (*(fromCopy + 5))
  {
    [(NNMKProtoSendMessageRequest *)self setFrom:?];
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end