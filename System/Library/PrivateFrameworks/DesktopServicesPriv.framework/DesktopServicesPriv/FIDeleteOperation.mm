@interface FIDeleteOperation
- (FIDeleteOperation)initWithSourceItems:(id)items;
- (FIDeleteOperation)initWithSourceNodes:(id)nodes;
- (id)createFPOperation;
- (id)makeProgress;
@end

@implementation FIDeleteOperation

- (FIDeleteOperation)initWithSourceNodes:(id)nodes
{
  nodesCopy = nodes;
  v7.receiver = self;
  v7.super_class = FIDeleteOperation;
  v5 = [(FIOperation *)&v7 init];
  [(FIOperation *)v5 setOperationType:5];
  [(FIOperation *)v5 setSourceNodes:nodesCopy];

  return v5;
}

- (FIDeleteOperation)initWithSourceItems:(id)items
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
  sourceFPItems = [(FIOperation *)self sourceFPItems];
  v5 = [v3 initWithItems:sourceFPItems];

  return v5;
}

- (id)makeProgress
{
  v7.receiver = self;
  v7.super_class = FIDeleteOperation;
  makeProgress = [(FIOperation *)&v7 makeProgress];
  [makeProgress setKind:*MEMORY[0x1E696A888]];
  [makeProgress setFileOperationKind:*MEMORY[0x1E696A840]];
  destinationNode = [(FIOperation *)self destinationNode];
  fileURL = [destinationNode fileURL];
  [makeProgress setFileURL:fileURL];

  return makeProgress;
}

@end