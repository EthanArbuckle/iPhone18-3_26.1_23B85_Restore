@interface NUAnimationRunner
- (NUAnimationRunner)initWithRunBlock:(id)block;
- (void)runWithFinishBlock:(id)block;
@end

@implementation NUAnimationRunner

- (NUAnimationRunner)initWithRunBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = NUAnimationRunner;
  v5 = [(NUAnimationRunner *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x25F883F30](blockCopy);
    runBlock = v5->_runBlock;
    v5->_runBlock = v6;
  }

  return v5;
}

- (void)runWithFinishBlock:(id)block
{
  blockCopy = block;
  runBlock = [(NUAnimationRunner *)self runBlock];

  if (runBlock)
  {
    runBlock2 = [(NUAnimationRunner *)self runBlock];
    (runBlock2)[2](runBlock2, blockCopy);
  }

  else if (blockCopy)
  {
    blockCopy[2]();
  }
}

@end