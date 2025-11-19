@interface MBSLock
- (MBSLock)initWithState:(int)a3 type:(int)a4 owner:(id)a5 timeout:(unint64_t)a6;
- (void)dealloc;
@end

@implementation MBSLock

- (MBSLock)initWithState:(int)a3 type:(int)a4 owner:(id)a5 timeout:(unint64_t)a6
{
  v13.receiver = self;
  v13.super_class = MBSLock;
  v10 = [(MBSLock *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_state = a3;
    v10->_type = a4;
    v10->_owner = [a5 copy];
    v11->_timeout = a6;
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