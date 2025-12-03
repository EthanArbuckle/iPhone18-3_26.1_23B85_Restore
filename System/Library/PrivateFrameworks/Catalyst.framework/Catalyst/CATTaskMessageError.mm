@interface CATTaskMessageError
- (CATTaskMessageError)initWithCoder:(id)coder;
- (CATTaskMessageError)initWithTaskUUID:(id)d taskError:(id)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CATTaskMessageError

- (CATTaskMessageError)initWithTaskUUID:(id)d taskError:(id)error
{
  dCopy = d;
  errorCopy = error;
  if (!errorCopy)
  {
    [CATTaskMessageError initWithTaskUUID:a2 taskError:self];
  }

  v12.receiver = self;
  v12.super_class = CATTaskMessageError;
  v9 = [(CATTaskMessage *)&v12 initWithTaskUUID:dCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskError, error);
  }

  return v10;
}

- (CATTaskMessageError)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CATTaskMessageError;
  v5 = [(CATTaskMessage *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"taskError"];
    taskError = v5->_taskError;
    v5->_taskError = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CATTaskMessageError;
  coderCopy = coder;
  [(CATTaskMessage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CATTaskMessageError *)self taskError:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"taskError"];
}

- (void)initWithTaskUUID:(uint64_t)a1 taskError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTaskMessageError.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"taskError"}];
}

@end