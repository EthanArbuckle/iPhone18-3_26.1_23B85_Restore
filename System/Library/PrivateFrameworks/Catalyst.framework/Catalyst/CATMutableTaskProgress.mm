@interface CATMutableTaskProgress
- (CATMutableTaskProgress)initWithCoder:(id)coder;
- (CATMutableTaskProgress)initWithOperationUUID:(id)d;
- (CATMutableTaskProgress)initWithOperationUUID:(id)d requestClass:(Class)class;
- (void)setProgress:(id)progress;
- (void)setResultObject:(id)object;
@end

@implementation CATMutableTaskProgress

- (CATMutableTaskProgress)initWithOperationUUID:(id)d
{
  v4.receiver = self;
  v4.super_class = CATMutableTaskProgress;
  return [(CATTaskProgress *)&v4 initWithOperationUUID:d];
}

- (CATMutableTaskProgress)initWithOperationUUID:(id)d requestClass:(Class)class
{
  dCopy = d;
  if (!class)
  {
    [CATMutableTaskProgress initWithOperationUUID:a2 requestClass:self];
  }

  v8 = [(CATMutableTaskProgress *)self initWithOperationUUID:dCopy];
  if (v8)
  {
    v9 = NSStringFromClass(class);
    [(CATTaskProgress *)v8 setRequestClassName:v9];
  }

  return v8;
}

- (CATMutableTaskProgress)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = CATMutableTaskProgress;
  return [(CATTaskProgress *)&v4 initWithCoder:coder];
}

- (void)setResultObject:(id)object
{
  v7.receiver = self;
  v7.super_class = CATMutableTaskProgress;
  [(CATTaskProgress *)&v7 setResultObject:object];
  v4 = objc_opt_class();
  resultObject = [(CATTaskProgress *)self resultObject];
  requestClassName = [(CATTaskProgress *)self requestClassName];
  [v4 assertResultObject:resultObject isValidForRequestClassName:requestClassName];
}

- (void)setProgress:(id)progress
{
  v3.receiver = self;
  v3.super_class = CATMutableTaskProgress;
  [(CATTaskProgress *)&v3 setProgress:progress];
}

- (void)initWithOperationUUID:(uint64_t)a1 requestClass:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"CATTaskProgress.m" lineNumber:306 description:{@"Invalid parameter not satisfying: %@", @"requestClass"}];
}

@end