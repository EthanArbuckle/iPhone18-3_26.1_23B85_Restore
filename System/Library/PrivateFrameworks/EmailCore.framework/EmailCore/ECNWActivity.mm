@interface ECNWActivity
+ (void)attachCurrentActivityToConnection:(id)connection;
+ (void)detachCurrentActivityFromConnection:(id)connection;
- (ECNWActivity)initWithDomain:(unsigned int)domain type:(unsigned int)type;
- (void)startActivity;
- (void)stopActivityWithSuccess:(BOOL)success;
@end

@implementation ECNWActivity

+ (void)attachCurrentActivityToConnection:(id)connection
{
  connectionCopy = connection;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v6 = [threadDictionary objectForKeyedSubscript:@"_ECNWActivityCurrentActivity"];
  v7 = v6;
  if (v6 && !*(v6 + 16))
  {
    v8 = *(v6 + 8);
    nw_connection_start_activity();
    objc_storeStrong(v7 + 2, connection);
  }
}

+ (void)detachCurrentActivityFromConnection:(id)connection
{
  connectionCopy = connection;
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [threadDictionary objectForKeyedSubscript:@"_ECNWActivityCurrentActivity"];
  if (v5 && v5[2] == connectionCopy)
  {
    v6 = v5[1];
    nw_connection_end_activity();
    v7 = v5[2];
    v5[2] = 0;
  }
}

- (ECNWActivity)initWithDomain:(unsigned int)domain type:(unsigned int)type
{
  v8.receiver = self;
  v8.super_class = ECNWActivity;
  v4 = [(ECNWActivity *)&v8 init];
  if (v4)
  {
    v5 = nw_activity_create();
    activity = v4->_activity;
    v4->_activity = v5;
  }

  return v4;
}

- (void)startActivity
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  activity = self->_activity;
  nw_activity_activate();
  v6 = [threadDictionary objectForKeyedSubscript:@"_ECNWActivityCurrentActivity"];

  if (v6)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ECNWActivity.m" lineNumber:49 description:@"We don't currently support nesting activities"];
  }

  [threadDictionary setObject:self forKeyedSubscript:@"_ECNWActivityCurrentActivity"];
}

- (void)stopActivityWithSuccess:(BOOL)success
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v5 = [threadDictionary objectForKeyedSubscript:@"_ECNWActivityCurrentActivity"];

  if (v5 == self)
  {
    [threadDictionary setObject:0 forKeyedSubscript:@"_ECNWActivityCurrentActivity"];
  }

  activity = self->_activity;
  nw_activity_complete_with_reason();
}

@end