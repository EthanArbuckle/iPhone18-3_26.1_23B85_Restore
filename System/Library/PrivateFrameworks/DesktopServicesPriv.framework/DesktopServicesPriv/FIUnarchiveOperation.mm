@interface FIUnarchiveOperation
- (FIUnarchiveOperation)initWithSourceItems:(id)items destinationItem:(id)item;
- (FIUnarchiveOperation)initWithSourceNodes:(id)nodes destinationFolder:(id)folder;
- (id)createFPOperation;
- (id)makeProgress;
@end

@implementation FIUnarchiveOperation

- (FIUnarchiveOperation)initWithSourceNodes:(id)nodes destinationFolder:(id)folder
{
  nodesCopy = nodes;
  folderCopy = folder;
  v11.receiver = self;
  v11.super_class = FIUnarchiveOperation;
  v8 = [(FIOperation *)&v11 init];
  [(FIOperation *)v8 setSourceNodes:nodesCopy];
  fileOpNode = [folderCopy fileOpNode];
  [(FIOperation *)v8 setDestinationNode:fileOpNode];

  return v8;
}

- (FIUnarchiveOperation)initWithSourceItems:(id)items destinationItem:(id)item
{
  v5.receiver = self;
  v5.super_class = FIUnarchiveOperation;
  return [(FIOperation *)&v5 init:items];
}

- (id)createFPOperation
{
  [(FIOperation *)self setExecutedAsFPAction:1];
  v3 = objc_alloc(MEMORY[0x1E6967490]);
  sourceFPItems = [(FIOperation *)self sourceFPItems];
  firstObject = [sourceFPItems firstObject];
  destinationFPItem = [(FIOperation *)self destinationFPItem];
  v7 = [v3 initWithItem:firstObject destinationFolder:destinationFPItem];

  return v7;
}

- (id)makeProgress
{
  v7.receiver = self;
  v7.super_class = FIUnarchiveOperation;
  makeProgress = [(FIOperation *)&v7 makeProgress];
  [makeProgress setKind:*MEMORY[0x1E696A888]];
  [makeProgress setFileOperationKind:*MEMORY[0x1E696A868]];
  destinationNode = [(FIOperation *)self destinationNode];
  fileURL = [destinationNode fileURL];
  [makeProgress setFileURL:fileURL];

  return makeProgress;
}

@end