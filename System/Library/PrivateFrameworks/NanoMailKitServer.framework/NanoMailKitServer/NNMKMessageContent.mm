@interface NNMKMessageContent
+ (id)classesForUnarchivingTextData;
- (NNMKMessageContent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAttachments:(id)a3;
@end

@implementation NNMKMessageContent

- (NNMKMessageContent)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = NNMKMessageContent;
  v5 = [(NNMKMessageContent *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMessageId"];
    messageId = v5->_messageId;
    v5->_messageId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyExternalReferenceId"];
    externalReferenceId = v5->_externalReferenceId;
    v5->_externalReferenceId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyMainAlternativeValid"];
    v5->_mainAlternativeValid = [v10 BOOLValue];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyTextData"];
    textData = v5->_textData;
    v5->_textData = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"kNSCodingKeyAttachments"];
    attachments = v5->_attachments;
    v5->_attachments = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kNSCodingKeyPartiallyLoaded"];
    v5->_partiallyLoaded = [v18 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  messageId = self->_messageId;
  v5 = a3;
  [v5 encodeObject:messageId forKey:@"kNSCodingKeyMessageId"];
  [v5 encodeObject:self->_externalReferenceId forKey:@"kNSCodingKeyExternalReferenceId"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_mainAlternativeValid];
  [v5 encodeObject:v6 forKey:@"kNSCodingKeyMainAlternativeValid"];

  [v5 encodeObject:self->_textData forKey:@"kNSCodingKeyTextData"];
  [v5 encodeObject:self->_attachments forKey:@"kNSCodingKeyAttachments"];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_partiallyLoaded];
  [v5 encodeObject:v7 forKey:@"kNSCodingKeyPartiallyLoaded"];
}

- (void)setAttachments:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [(NNMKMessageContent *)self messageId];
        [v9 setMessageId:v10];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  attachments = self->_attachments;
  self->_attachments = v4;

  v12 = *MEMORY[0x277D85DE8];
}

+ (id)classesForUnarchivingTextData
{
  if (classesForUnarchivingTextData_onceToken != -1)
  {
    +[NNMKMessageContent classesForUnarchivingTextData];
  }

  v3 = classesForUnarchivingTextData_classesForUnarchivingTextData;

  return v3;
}

uint64_t __51__NNMKMessageContent_classesForUnarchivingTextData__block_invoke()
{
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  classesForUnarchivingTextData_classesForUnarchivingTextData = [v0 setWithObjects:{v1, v2, v3, v4, v5, v6, objc_opt_class(), 0}];

  return MEMORY[0x2821F96F8]();
}

@end