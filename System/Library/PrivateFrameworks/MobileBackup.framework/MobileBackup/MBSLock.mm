@interface MBSLock
- (MBSLock)initWithState:(int)state type:(int)type owner:(id)owner timeout:(unint64_t)timeout;
- (void)dealloc;
@end

@implementation MBSLock

- (MBSLock)initWithState:(int)state type:(int)type owner:(id)owner timeout:(unint64_t)timeout
{
  v13.receiver = self;
  v13.super_class = MBSLock;
  v10 = [(MBSLock *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_state = state;
    v10->_type = type;
    v10->_owner = [owner copy];
    v11->_timeout = timeout;
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MBSLock;
  [(MBSLock *)&v3 dealloc];
}

@end