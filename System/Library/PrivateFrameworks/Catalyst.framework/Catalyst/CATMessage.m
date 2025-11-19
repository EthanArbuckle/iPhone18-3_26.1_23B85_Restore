@interface CATMessage
- (CATMessage)init;
- (CATMessage)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CATMessage

- (CATMessage)init
{
  v6.receiver = self;
  v6.super_class = CATMessage;
  v2 = [(CATMessage *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    messageUUID = v2->_messageUUID;
    v2->_messageUUID = v3;
  }

  return v2;
}

- (CATMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CATMessage;
  v5 = [(CATMessage *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"messageUUID"];
    messageUUID = v5->_messageUUID;
    v5->_messageUUID = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CATMessage *)self messageUUID];
  [v4 encodeObject:v5 forKey:@"messageUUID"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CATMessage *)self messageUUID];
  v6 = [v5 UUIDString];
  v7 = [v3 stringWithFormat:@"<%@: { messageUUID = '%@' }>", v4, v6];

  return v7;
}

@end