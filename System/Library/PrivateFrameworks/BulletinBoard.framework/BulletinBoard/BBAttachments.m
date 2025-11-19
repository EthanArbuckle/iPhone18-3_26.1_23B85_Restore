@interface BBAttachments
- (BBAttachments)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAttachments:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (unint64_t)numberOfAdditionalAttachments;
- (unint64_t)numberOfAdditionalAttachmentsOfType:(int64_t)a3;
- (void)addAttachmentOfType:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation BBAttachments

- (void)addAttachmentOfType:(int64_t)a3
{
  additionalAttachments = self->_additionalAttachments;
  if (!additionalAttachments)
  {
    v6 = objc_alloc_init(MEMORY[0x277CCA940]);
    v7 = self->_additionalAttachments;
    self->_additionalAttachments = v6;

    additionalAttachments = self->_additionalAttachments;
  }

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
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

- (unint64_t)numberOfAdditionalAttachmentsOfType:(int64_t)a3
{
  additionalAttachments = self->_additionalAttachments;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v5 = [(NSCountedSet *)additionalAttachments countForObject:v4];

  return v5;
}

- (unint64_t)hash
{
  v3 = [(BBAttachments *)self primaryType];
  v4 = [(BBAttachments *)self additionalAttachments];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(BBAttachments *)self isEqualToAttachments:v4];
  }

  return v5;
}

- (BOOL)isEqualToAttachments:(id)a3
{
  v4 = a3;
  v5 = [(BBAttachments *)self primaryType];
  if (v5 == [v4 primaryType])
  {
    v6 = 0;
    do
    {
      v7 = [(BBAttachments *)self numberOfAdditionalAttachmentsOfType:v6];
      v8 = v7 == [v4 numberOfAdditionalAttachmentsOfType:v6];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setPrimaryType:{-[BBAttachments primaryType](self, "primaryType")}];
  v6 = [(BBAttachments *)self additionalAttachments];
  v7 = [v6 copyWithZone:a3];
  [v5 setAdditionalAttachments:v7];

  return v5;
}

- (BBAttachments)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = BBAttachments;
  v5 = [(BBAttachments *)&v12 init];
  if (v5)
  {
    -[BBAttachments setPrimaryType:](v5, "setPrimaryType:", [v4 decodeIntegerForKey:@"primaryType"]);
    v6 = MEMORY[0x277CBEB98];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"additionalAttachments"];
    [(BBAttachments *)v5 setAdditionalAttachments:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[BBAttachments primaryType](self forKey:{"primaryType"), @"primaryType"}];
  v5 = [(BBAttachments *)self additionalAttachments];
  [v4 encodeObject:v5 forKey:@"additionalAttachments"];
}

@end