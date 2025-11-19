@interface FIDeleteOperation
- (FIDeleteOperation)initWithSourceItems:(id)a3;
- (FIDeleteOperation)initWithSourceNodes:(id)a3;
- (id)createFPOperation;
- (id)makeProgress;
@end

@implementation FIDeleteOperation

- (FIDeleteOperation)initWithSourceNodes:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = FIDeleteOperation;
  v5 = [(FIOperation *)&v7 init];
  [(FIOperation *)v5 setOperationType:5];
  [(FIOperation *)v5 setSourceNodes:v4];

  return v5;
}

- (FIDeleteOperation)initWithSourceItems:(id)a3
{
  v5.receiver = self;
  v5.super_class = FIDeleteOperation;
  v3 = [(FIOperation *)&v5 init];
  [(FIOperation *)v3 setOperationType:5];
  return v3;
}

- (id)createFPOperation
{
  [(FIOperation *)self setExecutedAsFPAction:1];
  v3 = objc_alloc(MEMORY[0x1E6967300]);
  v4 = [(FIOperation *)self sourceFPItems];
  v5 = [v3 initWithItems:v4];

  return v5;
}

- (id)makeProgress
{
  v7.receiver = self;
  v7.super_class = FIDeleteOperation;
  v3 = [(FIOperation *)&v7 makeProgress];
  [v3 setKind:*MEMORY[0x1E696A888]];
  [v3 setFileOperationKind:*MEMORY[0x1E696A840]];
  v4 = [(FIOperation *)self destinationNode];
  v5 = [v4 fileURL];
  [v3 setFileURL:v5];

  return v3;
}

@end