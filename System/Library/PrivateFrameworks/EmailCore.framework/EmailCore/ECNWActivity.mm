@interface ECNWActivity
+ (void)attachCurrentActivityToConnection:(id)a3;
+ (void)detachCurrentActivityFromConnection:(id)a3;
- (ECNWActivity)initWithDomain:(unsigned int)a3 type:(unsigned int)a4;
- (void)startActivity;
- (void)stopActivityWithSuccess:(BOOL)a3;
@end

@implementation ECNWActivity

+ (void)attachCurrentActivityToConnection:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v5 = [v4 threadDictionary];

  v6 = [v5 objectForKeyedSubscript:@"_ECNWActivityCurrentActivity"];
  v7 = v6;
  if (v6 && !*(v6 + 16))
  {
    v8 = *(v6 + 8);
    nw_connection_start_activity();
    objc_storeStrong(v7 + 2, a3);
  }
}

+ (void)detachCurrentActivityFromConnection:(id)a3
{
  v8 = a3;
  v3 = [MEMORY[0x277CCACC8] currentThread];
  v4 = [v3 threadDictionary];

  v5 = [v4 objectForKeyedSubscript:@"_ECNWActivityCurrentActivity"];
  if (v5 && v5[2] == v8)
  {
    v6 = v5[1];
    nw_connection_end_activity();
    v7 = v5[2];
    v5[2] = 0;
  }
}

- (ECNWActivity)initWithDomain:(unsigned int)a3 type:(unsigned int)a4
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
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v8 = [v4 threadDictionary];

  activity = self->_activity;
  nw_activity_activate();
  v6 = [v8 objectForKeyedSubscript:@"_ECNWActivityCurrentActivity"];

  if (v6)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"ECNWActivity.m" lineNumber:49 description:@"We don't currently support nesting activities"];
  }

  [v8 setObject:self forKeyedSubscript:@"_ECNWActivityCurrentActivity"];
}

- (void)stopActivityWithSuccess:(BOOL)a3
{
  v4 = [MEMORY[0x277CCACC8] currentThread];
  v7 = [v4 threadDictionary];

  v5 = [v7 objectForKeyedSubscript:@"_ECNWActivityCurrentActivity"];

  if (v5 == self)
  {
    [v7 setObject:0 forKeyedSubscript:@"_ECNWActivityCurrentActivity"];
  }

  activity = self->_activity;
  nw_activity_complete_with_reason();
}

@end