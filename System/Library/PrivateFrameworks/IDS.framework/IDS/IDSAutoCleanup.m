@interface IDSAutoCleanup
- (IDSAutoCleanup)initWithBlock:(id)a3;
- (void)dealloc;
@end

@implementation IDSAutoCleanup

- (IDSAutoCleanup)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IDSAutoCleanup;
  v5 = [(IDSAutoCleanup *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    cleanupBlock = v5->_cleanupBlock;
    v5->_cleanupBlock = v6;
  }

  return v5;
}

- (void)dealloc
{
  accessCount = self->_accessCount;
  (*(self->_cleanupBlock + 2))();
  v4.receiver = self;
  v4.super_class = IDSAutoCleanup;
  [(IDSAutoCleanup *)&v4 dealloc];
}

@end