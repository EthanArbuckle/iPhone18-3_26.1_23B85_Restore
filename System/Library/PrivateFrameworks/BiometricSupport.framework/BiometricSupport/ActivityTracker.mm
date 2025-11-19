@interface ActivityTracker
- (ActivityTracker)initWithDescription:(id)a3;
- (void)setActive:(BOOL)a3;
@end

@implementation ActivityTracker

- (ActivityTracker)initWithDescription:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ActivityTracker;
  v5 = [(ActivityTracker *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithString:v4];
    description = v5->_description;
    v5->_description = v6;

    transaction = v5->_transaction;
    v5->_transaction = 0;
  }

  return v5;
}

- (void)setActive:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  transaction = obj->_transaction;
  if (v3)
  {
    if (!transaction)
    {
      [(NSString *)obj->_description UTF8String];
      v5 = os_transaction_create();
      v6 = obj->_transaction;
      obj->_transaction = v5;

      activityUpdateBlock = obj->_activityUpdateBlock;
      if (activityUpdateBlock)
      {
        activityUpdateBlock[2](activityUpdateBlock, 1);
      }
    }
  }

  else if (transaction)
  {
    v8 = obj;
    v9 = obj->_activityUpdateBlock;
    if (v9)
    {
      v9[2](v9, 0);
      v8 = obj;
      transaction = obj->_transaction;
    }

    v8->_transaction = 0;
  }

  objc_sync_exit(obj);
}

@end