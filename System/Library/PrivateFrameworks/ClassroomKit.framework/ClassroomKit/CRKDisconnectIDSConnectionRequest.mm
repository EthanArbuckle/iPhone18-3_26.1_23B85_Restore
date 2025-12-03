@interface CRKDisconnectIDSConnectionRequest
- (CRKDisconnectIDSConnectionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKDisconnectIDSConnectionRequest

- (CRKDisconnectIDSConnectionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKDisconnectIDSConnectionRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"instructorIdentifier"];
    instructorIdentifier = v5->_instructorIdentifier;
    v5->_instructorIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKDisconnectIDSConnectionRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKDisconnectIDSConnectionRequest *)self courseIdentifier:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"courseIdentifier"];

  instructorIdentifier = [(CRKDisconnectIDSConnectionRequest *)self instructorIdentifier];
  [coderCopy encodeObject:instructorIdentifier forKey:@"instructorIdentifier"];
}

@end