@interface COBrowserObserver
- (COBrowserObserver)initWithBlock:(id)a3;
@end

@implementation COBrowserObserver

- (COBrowserObserver)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = COBrowserObserver;
  v5 = [(COBrowserObserver *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x245D5FF10](v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

@end