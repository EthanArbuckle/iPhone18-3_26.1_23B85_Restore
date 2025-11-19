@interface CPLSimpleMerger
- (BOOL)mergeConflictsWithError:(id *)a3;
- (CPLSimpleMerger)initWithMergeBlock:(id)a3;
@end

@implementation CPLSimpleMerger

- (BOOL)mergeConflictsWithError:(id *)a3
{
  block = self->_block;
  if (block)
  {
    return block[2](block, a3);
  }

  else
  {
    return 1;
  }
}

- (CPLSimpleMerger)initWithMergeBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPLSimpleMerger;
  v5 = [(CPLSimpleMerger *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x1E128EBA0](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end