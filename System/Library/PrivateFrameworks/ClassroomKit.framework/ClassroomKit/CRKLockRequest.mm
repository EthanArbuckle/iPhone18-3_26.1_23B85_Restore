@interface CRKLockRequest
- (CRKLockRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKLockRequest

- (CRKLockRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKLockRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"lockedByLabel"];
    lockedByLabel = v5->_lockedByLabel;
    v5->_lockedByLabel = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"passcode"];
    passcode = v5->_passcode;
    v5->_passcode = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKLockRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(CRKLockRequest *)self lockedByLabel:v7.receiver];
  [v4 encodeObject:v5 forKey:@"lockedByLabel"];

  v6 = [(CRKLockRequest *)self passcode];
  [v4 encodeObject:v6 forKey:@"passcode"];
}

@end