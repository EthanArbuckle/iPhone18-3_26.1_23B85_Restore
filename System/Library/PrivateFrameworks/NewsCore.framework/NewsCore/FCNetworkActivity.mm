@interface FCNetworkActivity
- (FCNetworkActivity)initWithLabel:(unsigned int)a3;
- (NSUUID)token;
- (void)completeActivityWithSuccess:(BOOL)a3;
@end

@implementation FCNetworkActivity

- (FCNetworkActivity)initWithLabel:(unsigned int)a3
{
  v9.receiver = self;
  v9.super_class = FCNetworkActivity;
  v4 = [(FCNetworkActivity *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_domain = 54;
    v4->_label = a3;
    v6 = nw_activity_create();
    activity = v5->_activity;
    v5->_activity = v6;
  }

  return v5;
}

- (void)completeActivityWithSuccess:(BOOL)a3
{
  activity = self->_activity;
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    v4 = 3;
  }

  MEMORY[0x1EEDD2CF8](activity, v4);
}

- (NSUUID)token
{
  v6[2] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  v6[1] = 0;
  activity = self->_activity;
  nw_activity_get_token();
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

@end