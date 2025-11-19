@interface NNMKComposedMessage
- (NNMKComposedMessage)init;
- (NNMKComposedMessage)initWithCoder:(id)a3;
- (id)copyWithNewId;
- (unint64_t)size;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NNMKComposedMessage

- (NNMKComposedMessage)init
{
  v7.receiver = self;
  v7.super_class = NNMKComposedMessage;
  v2 = [(NNMKComposedMessage *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    v4 = [v3 UUIDString];
    composedMessageId = v2->_composedMessageId;
    v2->_composedMessageId = v4;

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

- (NNMKComposedMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NNMKComposedMessage *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyComposedMessageId"];
    composedMessageId = v5->_composedMessageId;
    v5->_composedMessageId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySendingType"];
    v5->_sendingType = [v8 unsignedIntegerValue];

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"kNSCodingKeyTo"];
    to = v5->_to;
    v5->_to = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"kNSCodingKeyCC"];
    cc = v5->_cc;
    v5->_cc = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeySubject"];
    subject = v5->_subject;
    v5->_subject = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyFrom"];
    from = v5->_from;
    v5->_from = v21;

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyBody"];
    body = v5->_body;
    v5->_body = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyReferenceMessageId"];
    referenceMessageId = v5->_referenceMessageId;
    v5->_referenceMessageId = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyStandaloneReferenceMessageId"];
    standaloneReferenceMessageId = v5->_standaloneReferenceMessageId;
    v5->_standaloneReferenceMessageId = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyAccountId"];
    accountId = v5->_accountId;
    v5->_accountId = v29;

    v31 = MEMORY[0x277CBEB98];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [v4 decodeObjectOfClasses:v33 forKey:@"kNSCodingKeyAttachments"];
    attachments = v5->_attachments;
    v5->_attachments = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyIncludeAttachments"];
    v5->_includeAttachments = [v36 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  composedMessageId = self->_composedMessageId;
  v5 = a3;
  [v5 encodeObject:composedMessageId forKey:@"kNSCodingKeyComposedMessageId"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_sendingType];
  [v5 encodeObject:v6 forKey:@"kNSCodingKeySendingType"];

  [v5 encodeObject:self->_to forKey:@"kNSCodingKeyTo"];
  [v5 encodeObject:self->_cc forKey:@"kNSCodingKeyCC"];
  [v5 encodeObject:self->_subject forKey:@"kNSCodingKeySubject"];
  [v5 encodeObject:self->_from forKey:@"kNSCodingKeyFrom"];
  [v5 encodeObject:self->_body forKey:@"kNSCodingKeyBody"];
  [v5 encodeObject:self->_referenceMessageId forKey:@"kNSCodingKeyReferenceMessageId"];
  [v5 encodeObject:self->_standaloneReferenceMessageId forKey:@"kNSCodingKeyStandaloneReferenceMessageId"];
  [v5 encodeObject:self->_accountId forKey:@"kNSCodingKeyAccountId"];
  [v5 encodeObject:self->_attachments forKey:@"kNSCodingKeyAttachments"];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_includeAttachments];
  [v5 encodeObject:v7 forKey:@"kNSCodingKeyIncludeAttachments"];
}

- (id)copyWithNewId
{
  v3 = objc_alloc_init(NNMKComposedMessage);
  [(NNMKComposedMessage *)v3 setSendingType:[(NNMKComposedMessage *)self sendingType]];
  v4 = [(NNMKComposedMessage *)self to];
  [(NNMKComposedMessage *)v3 setTo:v4];

  v5 = [(NNMKComposedMessage *)self cc];
  [(NNMKComposedMessage *)v3 setCc:v5];

  v6 = [(NNMKComposedMessage *)self from];
  [(NNMKComposedMessage *)v3 setFrom:v6];

  v7 = [(NNMKComposedMessage *)self subject];
  [(NNMKComposedMessage *)v3 setSubject:v7];

  v8 = [(NNMKComposedMessage *)self body];
  [(NNMKComposedMessage *)v3 setBody:v8];

  v9 = [(NNMKComposedMessage *)self referenceMessageId];
  [(NNMKComposedMessage *)v3 setReferenceMessageId:v9];

  v10 = [(NNMKComposedMessage *)self standaloneReferenceMessageId];
  [(NNMKComposedMessage *)v3 setStandaloneReferenceMessageId:v10];

  v11 = [(NNMKComposedMessage *)self accountId];
  [(NNMKComposedMessage *)v3 setAccountId:v11];

  v12 = [(NNMKComposedMessage *)self attachments];
  v13 = [v12 copy];
  [(NNMKComposedMessage *)v3 setAttachments:v13];

  [(NNMKComposedMessage *)v3 setIncludeAttachments:[(NNMKComposedMessage *)self includeAttachments]];
  return v3;
}

@end