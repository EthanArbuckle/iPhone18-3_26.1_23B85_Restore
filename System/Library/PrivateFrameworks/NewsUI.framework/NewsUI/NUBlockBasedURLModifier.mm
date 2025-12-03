@interface NUBlockBasedURLModifier
+ (id)modifierWithBlock:(id)block;
- (NUBlockBasedURLModifier)initWithBlock:(id)block;
- (id)modifyURL:(id)l;
@end

@implementation NUBlockBasedURLModifier

+ (id)modifierWithBlock:(id)block
{
  blockCopy = block;
  v5 = [[self alloc] initWithBlock:blockCopy];

  return v5;
}

- (NUBlockBasedURLModifier)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = NUBlockBasedURLModifier;
  v5 = [(NUBlockBasedURLModifier *)&v9 init];
  if (v5)
  {
    v6 = [blockCopy copy];
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (id)modifyURL:(id)l
{
  lCopy = l;
  block = [(NUBlockBasedURLModifier *)self block];

  v6 = lCopy;
  if (block)
  {
    block2 = [(NUBlockBasedURLModifier *)self block];
    v6 = (block2)[2](block2, lCopy);
  }

  return v6;
}

@end