@interface FIUnarchiveOperation
- (FIUnarchiveOperation)initWithSourceItems:(id)a3 destinationItem:(id)a4;
- (FIUnarchiveOperation)initWithSourceNodes:(id)a3 destinationFolder:(id)a4;
- (id)createFPOperation;
- (id)makeProgress;
@end

@implementation FIUnarchiveOperation

- (FIUnarchiveOperation)initWithSourceNodes:(id)a3 destinationFolder:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = FIUnarchiveOperation;
  v8 = [(FIOperation *)&v11 init];
  [(FIOperation *)v8 setSourceNodes:v6];
  v9 = [v7 fileOpNode];
  [(FIOperation *)v8 setDestinationNode:v9];

  return v8;
}

- (FIUnarchiveOperation)initWithSourceItems:(id)a3 destinationItem:(id)a4
{
  v5.receiver = self;
  v5.super_class = FIUnarchiveOperation;
  return [(FIOperation *)&v5 init:a3];
}

- (id)createFPOperation
{
  [(FIOperation *)self setExecutedAsFPAction:1];
  v3 = objc_alloc(MEMORY[0x1E6967490]);
  v4 = [(FIOperation *)self sourceFPItems];
  v5 = [v4 firstObject];
  v6 = [(FIOperation *)self destinationFPItem];
  v7 = [v3 initWithItem:v5 destinationFolder:v6];

  return v7;
}

- (id)makeProgress
{
  v7.receiver = self;
  v7.super_class = FIUnarchiveOperation;
  v3 = [(FIOperation *)&v7 makeProgress];
  [v3 setKind:*MEMORY[0x1E696A888]];
  [v3 setFileOperationKind:*MEMORY[0x1E696A868]];
  v4 = [(FIOperation *)self destinationNode];
  v5 = [v4 fileURL];
  [v3 setFileURL:v5];

  return v3;
}

@end