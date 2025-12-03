@interface CATMessage
- (CATMessage)init;
- (CATMessage)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATMessage

- (CATMessage)init
{
  v6.receiver = self;
  v6.super_class = CATMessage;
  v2 = [(CATMessage *)&v6 init];
  if (v2)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    messageUUID = v2->_messageUUID;
    v2->_messageUUID = uUID;
  }

  return v2;
}

- (CATMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CATMessage;
  v5 = [(CATMessage *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"messageUUID"];
    messageUUID = v5->_messageUUID;
    v5->_messageUUID = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  messageUUID = [(CATMessage *)self messageUUID];
  [coderCopy encodeObject:messageUUID forKey:@"messageUUID"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  messageUUID = [(CATMessage *)self messageUUID];
  uUIDString = [messageUUID UUIDString];
  v7 = [v3 stringWithFormat:@"<%@: { messageUUID = '%@' }>", v4, uUIDString];

  return v7;
}

@end