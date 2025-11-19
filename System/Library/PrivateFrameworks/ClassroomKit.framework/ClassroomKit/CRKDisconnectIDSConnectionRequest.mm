@interface CRKDisconnectIDSConnectionRequest
- (CRKDisconnectIDSConnectionRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKDisconnectIDSConnectionRequest

- (CRKDisconnectIDSConnectionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKDisconnectIDSConnectionRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"instructorIdentifier"];
    instructorIdentifier = v5->_instructorIdentifier;
    v5->_instructorIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKDisconnectIDSConnectionRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(CRKDisconnectIDSConnectionRequest *)self courseIdentifier:v7.receiver];
  [v4 encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [(CRKDisconnectIDSConnectionRequest *)self instructorIdentifier];
  [v4 encodeObject:v6 forKey:@"instructorIdentifier"];
}

@end