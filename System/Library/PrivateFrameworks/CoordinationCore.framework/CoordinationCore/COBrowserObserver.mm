@interface COBrowserObserver
- (COBrowserObserver)initWithBlock:(id)block;
@end

@implementation COBrowserObserver

- (COBrowserObserver)initWithBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = COBrowserObserver;
  v5 = [(COBrowserObserver *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D5FF10](blockCopy);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end