@interface NNMKComposedMessage
- (NNMKComposedMessage)init;
- (NNMKComposedMessage)initWithCoder:(id)coder;
- (id)copyWithNewId;
- (unint64_t)size;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NNMKComposedMessage

- (NNMKComposedMessage)init
{
  v7.receiver = self;
  v7.super_class = NNMKComposedMessage;
  v2 = [(NNMKComposedMessage *)&v7 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    composedMessageId = v2->_composedMessageId;
    v2->_composedMessageId = uUIDString;

    v2->_sendingType = 1;
  }

  return v2;
}

- (unint64_t)size
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(NSString *)self->_body lengthOfBytesUsingEncoding:4];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_attachments;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 += [*(*(&v11 + 1) + 8 * v8++) fileSize];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (NNMKComposedMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NNMKComposedMessage *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyComposedMessageId"];
    composedMessageId = v5->_composedMessageId;
    v5->_composedMessageId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySendingType"];
    v5->_sendingType = [v8 unsignedIntegerValue];

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"kNSCodingKeyTo"];
    to = v5->_to;
    v5->_to = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"kNSCodingKeyCC"];
    cc = v5->_cc;
    v5->_cc = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySubject"];
    subject = v5->_subject;
    v5->_subject = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFrom"];
    from = v5->_from;
    v5->_from = v21;

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyBody"];
    body = v5->_body;
    v5->_body = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyReferenceMessageId"];
    referenceMessageId = v5->_referenceMessageId;
    v5->_referenceMessageId = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyStandaloneReferenceMessageId"];
    standaloneReferenceMessageId = v5->_standaloneReferenceMessageId;
    v5->_standaloneReferenceMessageId = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountId"];
    accountId = v5->_accountId;
    v5->_accountId = v29;

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"kNSCodingKeyAttachments"];
    attachments = v5->_attachments;
    v5->_attachments = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyIncludeAttachments"];
    v5->_includeAttachments = [v36 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  composedMessageId = self->_composedMessageId;
  coderCopy = coder;
  [coderCopy encodeObject:composedMessageId forKey:@"kNSCodingKeyComposedMessageId"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sendingType];
  [coderCopy encodeObject:v6 forKey:@"kNSCodingKeySendingType"];

  [coderCopy encodeObject:self->_to forKey:@"kNSCodingKeyTo"];
  [coderCopy encodeObject:self->_cc forKey:@"kNSCodingKeyCC"];
  [coderCopy encodeObject:self->_subject forKey:@"kNSCodingKeySubject"];
  [coderCopy encodeObject:self->_from forKey:@"kNSCodingKeyFrom"];
  [coderCopy encodeObject:self->_body forKey:@"kNSCodingKeyBody"];
  [coderCopy encodeObject:self->_referenceMessageId forKey:@"kNSCodingKeyReferenceMessageId"];
  [coderCopy encodeObject:self->_standaloneReferenceMessageId forKey:@"kNSCodingKeyStandaloneReferenceMessageId"];
  [coderCopy encodeObject:self->_accountId forKey:@"kNSCodingKeyAccountId"];
  [coderCopy encodeObject:self->_attachments forKey:@"kNSCodingKeyAttachments"];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_includeAttachments];
  [coderCopy encodeObject:v7 forKey:@"kNSCodingKeyIncludeAttachments"];
}

- (id)copyWithNewId
{
  v3 = objc_alloc_init(NNMKComposedMessage);
  [(NNMKComposedMessage *)v3 setSendingType:[(NNMKComposedMessage *)self sendingType]];
  v4 = [(NNMKComposedMessage *)self to];
  [(NNMKComposedMessage *)v3 setTo:v4];

  v5 = [(NNMKComposedMessage *)self cc];
  [(NNMKComposedMessage *)v3 setCc:v5];

  from = [(NNMKComposedMessage *)self from];
  [(NNMKComposedMessage *)v3 setFrom:from];

  subject = [(NNMKComposedMessage *)self subject];
  [(NNMKComposedMessage *)v3 setSubject:subject];

  body = [(NNMKComposedMessage *)self body];
  [(NNMKComposedMessage *)v3 setBody:body];

  referenceMessageId = [(NNMKComposedMessage *)self referenceMessageId];
  [(NNMKComposedMessage *)v3 setReferenceMessageId:referenceMessageId];

  standaloneReferenceMessageId = [(NNMKComposedMessage *)self standaloneReferenceMessageId];
  [(NNMKComposedMessage *)v3 setStandaloneReferenceMessageId:standaloneReferenceMessageId];

  accountId = [(NNMKComposedMessage *)self accountId];
  [(NNMKComposedMessage *)v3 setAccountId:accountId];

  attachments = [(NNMKComposedMessage *)self attachments];
  v13 = [attachments copy];
  [(NNMKComposedMessage *)v3 setAttachments:v13];

  [(NNMKComposedMessage *)v3 setIncludeAttachments:[(NNMKComposedMessage *)self includeAttachments]];
  return v3;
}

@end