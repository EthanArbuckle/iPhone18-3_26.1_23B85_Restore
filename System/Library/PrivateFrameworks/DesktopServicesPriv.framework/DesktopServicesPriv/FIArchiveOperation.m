@interface FIArchiveOperation
- (FIArchiveOperation)initWithSourceItems:(id)a3 destinationItem:(id)a4;
- (FIArchiveOperation)initWithSourceNodes:(id)a3 destinationFolder:(id)a4;
- (id)createFPOperation;
- (id)makeProgress;
@end

@implementation FIArchiveOperation

- (FIArchiveOperation)initWithSourceNodes:(id)a3 destinationFolder:(id)a4
{
  v5.receiver = self;
  v5.super_class = FIArchiveOperation;
  return [(FIOperation *)&v5 init:a3];
}

- (FIArchiveOperation)initWithSourceItems:(id)a3 destinationItem:(id)a4
{
  v5.receiver = self;
  v5.super_class = FIArchiveOperation;
  return [(FIOperation *)&v5 init:a3];
}

- (id)createFPOperation
{
  [(FIOperation *)self setExecutedAsFPAction:1];
  v3 = objc_alloc(MEMORY[0x1E69672C0]);
  v4 = [(FIOperation *)self sourceFPItems];
  v5 = [(FIOperation *)self destinationFPItem];
  v6 = [v3 initWithItems:v4 destinationFolder:v5];

  return v6;
}

- (id)makeProgress
{
  v7.receiver = self;
  v7.super_class = FIArchiveOperation;
  v3 = [(FIOperation *)&v7 makeProgress];
  [v3 setKind:*MEMORY[0x1E696A888]];
  [v3 setFileOperationKind:*MEMORY[0x1E696A838]];
  v4 = [(FIOperation *)self destinationNode];
  v5 = [v4 fileURL];
  [v3 setFileURL:v5];

  return v3;
}

@end