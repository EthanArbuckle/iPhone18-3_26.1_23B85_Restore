@interface CRKSendIDSMessageRequest
- (CRKSendIDSMessageRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSendIDSMessageRequest

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CRKSendIDSMessageRequest;
  v4 = a3;
  [(CATTaskRequest *)&v9 encodeWithCoder:v4];
  v5 = [(CRKSendIDSMessageRequest *)self message:v9.receiver];
  [v4 encodeObject:v5 forKey:@"message"];

  v6 = [(CRKSendIDSMessageRequest *)self destinationAddress];
  [v4 encodeObject:v6 forKey:@"destinationAddress"];

  v7 = [(CRKSendIDSMessageRequest *)self sourceAppleID];
  [v4 encodeObject:v7 forKey:@"sourceAppleID"];

  v8 = [(CRKSendIDSMessageRequest *)self options];
  [v4 encodeObject:v8 forKey:@"options"];
}

- (CRKSendIDSMessageRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = CRKSendIDSMessageRequest;
  v5 = [(CATTaskRequest *)&v30 initWithCoder:v4];
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
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"message"];
    message = v5->_message;
    v5->_message = v15;

    v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"destinationAddress"];
    destinationAddress = v5->_destinationAddress;
    v5->_destinationAddress = v18;

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"sourceAppleID"];
    sourceAppleID = v5->_sourceAppleID;
    v5->_sourceAppleID = v21;

    v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"options"];
    options = v5->_options;
    v5->_options = v24;
  }

  return v5;
}

@end