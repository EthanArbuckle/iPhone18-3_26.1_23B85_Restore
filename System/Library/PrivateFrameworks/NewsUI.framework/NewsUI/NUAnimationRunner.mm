@interface NUAnimationRunner
- (NUAnimationRunner)initWithRunBlock:(id)a3;
- (void)runWithFinishBlock:(id)a3;
@end

@implementation NUAnimationRunner

- (NUAnimationRunner)initWithRunBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NUAnimationRunner;
  v5 = [(NUAnimationRunner *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x25F883F30](v4);
    runBlock = v5->_runBlock;
    v5->_runBlock = v6;
  }

  return v5;
}

- (void)runWithFinishBlock:(id)a3
{
  v6 = a3;
  v4 = [(NUAnimationRunner *)self runBlock];

  if (v4)
  {
    v5 = [(NUAnimationRunner *)self runBlock];
    (v5)[2](v5, v6);
  }

  else if (v6)
  {
    v6[2]();
  }
}

@end