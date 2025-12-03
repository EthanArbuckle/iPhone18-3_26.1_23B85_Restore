@interface CPLSimpleMerger
- (BOOL)mergeConflictsWithError:(id *)error;
- (CPLSimpleMerger)initWithMergeBlock:(id)block;
@end

@implementation CPLSimpleMerger

- (BOOL)mergeConflictsWithError:(id *)error
{
  block = self->_block;
  if (block)
  {
    return block[2](block, error);
  }

  else
  {
    return 1;
  }
}

- (CPLSimpleMerger)initWithMergeBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = CPLSimpleMerger;
  v5 = [(CPLSimpleMerger *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1E128EBA0](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end