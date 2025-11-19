@interface CHSessionStateCounter
- (BOOL)hasActiveSessions;
- (CHSessionStateCounter)init;
- (void)decrement;
- (void)increment;
@end

@implementation CHSessionStateCounter

- (CHSessionStateCounter)init
{
  v3.receiver = self;
  v3.super_class = CHSessionStateCounter;
  result = [(CHSessionStateCounter *)&v3 init];
  if (result)
  {
    result->_counter = 0;
  }

  return result;
}

- (void)increment
{
  obj = self;
  objc_sync_enter(obj);
  ++obj->_counter;
  objc_sync_exit(obj);
}

- (void)decrement
{
  obj = self;
  objc_sync_enter(obj);
  --obj->_counter;
  objc_sync_exit(obj);
}

- (BOOL)hasActiveSessions
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_counter > 0;
  objc_sync_exit(v2);

  return v3;
}

@end