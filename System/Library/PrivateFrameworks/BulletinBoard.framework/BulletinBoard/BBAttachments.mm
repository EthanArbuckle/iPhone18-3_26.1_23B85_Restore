@interface BBAttachments
- (BBAttachments)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAttachments:(id)attachments;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (unint64_t)numberOfAdditionalAttachments;
- (unint64_t)numberOfAdditionalAttachmentsOfType:(int64_t)type;
- (void)addAttachmentOfType:(int64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation BBAttachments

- (void)addAttachmentOfType:(int64_t)type
{
  additionalAttachments = self->_additionalAttachments;
  if (!additionalAttachments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA940]);
    v7 = self->_additionalAttachments;
    self->_additionalAttachments = v6;

    additionalAttachments = self->_additionalAttachments;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  [(NSCountedSet *)additionalAttachments addObject:v8];
}

- (unint64_t)numberOfAdditionalAttachments
{
  v3 = 0;
  v4 = 0;
  do
  {
    v4 += [(BBAttachments *)self numberOfAdditionalAttachmentsOfType:v3++];
  }

  while (v3 != 7);
  return v4;
}

- (unint64_t)numberOfAdditionalAttachmentsOfType:(int64_t)type
{
  additionalAttachments = self->_additionalAttachments;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:type];
  v5 = [(NSCountedSet *)additionalAttachments countForObject:v4];

  return v5;
}

- (unint64_t)hash
{
  primaryType = [(BBAttachments *)self primaryType];
  additionalAttachments = [(BBAttachments *)self additionalAttachments];
  v5 = [additionalAttachments hash];

  return v5 ^ primaryType;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(BBAttachments *)self isEqualToAttachments:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAttachments:(id)attachments
{
  attachmentsCopy = attachments;
  primaryType = [(BBAttachments *)self primaryType];
  if (primaryType == [attachmentsCopy primaryType])
  {
    v6 = 0;
    do
    {
      v7 = [(BBAttachments *)self numberOfAdditionalAttachmentsOfType:v6];
      v8 = v7 == [attachmentsCopy numberOfAdditionalAttachmentsOfType:v6];
      if (!v8)
      {
        break;
      }
    }

    while (v6++ < 6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setPrimaryType:{-[BBAttachments primaryType](self, "primaryType")}];
  additionalAttachments = [(BBAttachments *)self additionalAttachments];
  v7 = [additionalAttachments copyWithZone:zone];
  [v5 setAdditionalAttachments:v7];

  return v5;
}

- (BBAttachments)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = BBAttachments;
  v5 = [(BBAttachments *)&v12 init];
  if (v5)
  {
    -[BBAttachments setPrimaryType:](v5, "setPrimaryType:", [coderCopy decodeIntegerForKey:@"primaryType"]);
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"additionalAttachments"];
    [(BBAttachments *)v5 setAdditionalAttachments:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[BBAttachments primaryType](self forKey:{"primaryType"), @"primaryType"}];
  additionalAttachments = [(BBAttachments *)self additionalAttachments];
  [coderCopy encodeObject:additionalAttachments forKey:@"additionalAttachments"];
}

@end