@interface CHSessionStateTracker
- (BOOL)isActive;
- (CHSessionStateTracker)init;
- (void)dealloc;
@end

@implementation CHSessionStateTracker

- (CHSessionStateTracker)init
{
  v9.receiver = self;
  v9.super_class = CHSessionStateTracker;
  result = [(CHSessionStateTracker *)&v9 init];
  if (result)
  {
    v8 = result;
    objc_msgSend_setActive(result, v3, v4, v5, v6, v7);
    return v8;
  }

  return result;
}

- (void)dealloc
{
  sub_18374BF6C(self);
  v3.receiver = self;
  v3.super_class = CHSessionStateTracker;
  [(CHSessionStateTracker *)&v3 dealloc];
}

- (BOOL)isActive
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_state == 1;
  objc_sync_exit(selfCopy);

  return v3;
}

@end