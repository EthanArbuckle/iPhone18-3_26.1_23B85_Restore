@interface CATMutableTaskProgress
- (CATMutableTaskProgress)initWithCoder:(id)a3;
- (CATMutableTaskProgress)initWithOperationUUID:(id)a3;
- (CATMutableTaskProgress)initWithOperationUUID:(id)a3 requestClass:(Class)a4;
- (void)setProgress:(id)a3;
- (void)setResultObject:(id)a3;
@end

@implementation CATMutableTaskProgress

- (CATMutableTaskProgress)initWithOperationUUID:(id)a3
{
  v4.receiver = self;
  v4.super_class = CATMutableTaskProgress;
  return [(CATTaskProgress *)&v4 initWithOperationUUID:a3];
}

- (CATMutableTaskProgress)initWithOperationUUID:(id)a3 requestClass:(Class)a4
{
  v7 = a3;
  if (!a4)
  {
    [CATMutableTaskProgress initWithOperationUUID:a2 requestClass:self];
  }

  v8 = [(CATMutableTaskProgress *)self initWithOperationUUID:v7];
  if (v8)
  {
    v9 = NSStringFromClass(a4);
    [(CATTaskProgress *)v8 setRequestClassName:v9];
  }

  return v8;
}

- (CATMutableTaskProgress)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = CATMutableTaskProgress;
  return [(CATTaskProgress *)&v4 initWithCoder:a3];
}

- (void)setResultObject:(id)a3
{
  v7.receiver = self;
  v7.super_class = CATMutableTaskProgress;
  [(CATTaskProgress *)&v7 setResultObject:a3];
  v4 = objc_opt_class();
  v5 = [(CATTaskProgress *)self resultObject];
  v6 = [(CATTaskProgress *)self requestClassName];
  [v4 assertResultObject:v5 isValidForRequestClassName:v6];
}

- (void)setProgress:(id)a3
{
  v3.receiver = self;
  v3.super_class = CATMutableTaskProgress;
  [(CATTaskProgress *)&v3 setProgress:a3];
}

- (void)initWithOperationUUID:(uint64_t)a1 requestClass:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTaskProgress.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"requestClass"}];
}

@end