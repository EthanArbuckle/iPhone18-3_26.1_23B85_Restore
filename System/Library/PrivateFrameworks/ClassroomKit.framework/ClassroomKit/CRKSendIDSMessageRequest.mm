@interface CRKSendIDSMessageRequest
- (CRKSendIDSMessageRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSendIDSMessageRequest

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CRKSendIDSMessageRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(CRKSendIDSMessageRequest *)self message:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"message"];

  destinationAddress = [(CRKSendIDSMessageRequest *)self destinationAddress];
  [coderCopy encodeObject:destinationAddress forKey:@"destinationAddress"];

  sourceAppleID = [(CRKSendIDSMessageRequest *)self sourceAppleID];
  [coderCopy encodeObject:sourceAppleID forKey:@"sourceAppleID"];

  options = [(CRKSendIDSMessageRequest *)self options];
  [coderCopy encodeObject:options forKey:@"options"];
}

- (CRKSendIDSMessageRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = CRKSendIDSMessageRequest;
  v5 = [(CATTaskRequest *)&v30 initWithCoder:coderCopy];
  if (v5)
  {
    v29 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v27 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v29 setWithObjects:{v28, v27, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"message"];
    message = v5->_message;
    v5->_message = v15;

    v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"destinationAddress"];
    destinationAddress = v5->_destinationAddress;
    v5->_destinationAddress = v18;

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"sourceAppleID"];
    sourceAppleID = v5->_sourceAppleID;
    v5->_sourceAppleID = v21;

    v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"options"];
    options = v5->_options;
    v5->_options = v24;
  }

  return v5;
}

@end