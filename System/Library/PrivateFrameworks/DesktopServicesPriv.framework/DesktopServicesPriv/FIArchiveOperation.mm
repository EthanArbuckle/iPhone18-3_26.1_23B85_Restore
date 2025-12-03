@interface FIArchiveOperation
- (FIArchiveOperation)initWithSourceItems:(id)items destinationItem:(id)item;
- (FIArchiveOperation)initWithSourceNodes:(id)nodes destinationFolder:(id)folder;
- (id)createFPOperation;
- (id)makeProgress;
@end

@implementation FIArchiveOperation

- (FIArchiveOperation)initWithSourceNodes:(id)nodes destinationFolder:(id)folder
{
  v5.receiver = self;
  v5.super_class = FIArchiveOperation;
  return [(FIOperation *)&v5 init:nodes];
}

- (FIArchiveOperation)initWithSourceItems:(id)items destinationItem:(id)item
{
  v5.receiver = self;
  v5.super_class = FIArchiveOperation;
  return [(FIOperation *)&v5 init:items];
}

- (id)createFPOperation
{
  [(FIOperation *)self setExecutedAsFPAction:1];
  v3 = objc_alloc(MEMORY[0x1E69672C0]);
  sourceFPItems = [(FIOperation *)self sourceFPItems];
  destinationFPItem = [(FIOperation *)self destinationFPItem];
  v6 = [v3 initWithItems:sourceFPItems destinationFolder:destinationFPItem];

  return v6;
}

- (id)makeProgress
{
  v7.receiver = self;
  v7.super_class = FIArchiveOperation;
  makeProgress = [(FIOperation *)&v7 makeProgress];
  [makeProgress setKind:*MEMORY[0x1E696A888]];
  [makeProgress setFileOperationKind:*MEMORY[0x1E696A838]];
  destinationNode = [(FIOperation *)self destinationNode];
  fileURL = [destinationNode fileURL];
  [makeProgress setFileURL:fileURL];

  return makeProgress;
}

@end