@interface CATTaskMessageError
- (CATTaskMessageError)initWithCoder:(id)a3;
- (CATTaskMessageError)initWithTaskUUID:(id)a3 taskError:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CATTaskMessageError

- (CATTaskMessageError)initWithTaskUUID:(id)a3 taskError:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    [CATTaskMessageError initWithTaskUUID:a2 taskError:self];
  }

  v12.receiver = self;
  v12.super_class = CATTaskMessageError;
  v9 = [(CATTaskMessage *)&v12 initWithTaskUUID:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskError, a4);
  }

  return v10;
}

- (CATTaskMessageError)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CATTaskMessageError;
  v5 = [(CATTaskMessage *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"taskError"];
    taskError = v5->_taskError;
    v5->_taskError = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CATTaskMessageError;
  v4 = a3;
  [(CATTaskMessage *)&v6 encodeWithCoder:v4];
  v5 = [(CATTaskMessageError *)self taskError:v6.receiver];
  [v4 encodeObject:v5 forKey:@"taskError"];
}

- (void)initWithTaskUUID:(uint64_t)a1 taskError:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTaskMessageError.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"taskError"}];
}

@end