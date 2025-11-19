@interface PDScheduledActivityClient
- (BOOL)isValid;
- (PDScheduledActivityClient)clientInstance;
- (PDScheduledActivityClient)initWithClientInstance:(id)a3 activityQueue:(id)a4;
- (PDScheduledActivityClient)initWithCoder:(id)a3;
@end

@implementation PDScheduledActivityClient

- (PDScheduledActivityClient)initWithClientInstance:(id)a3 activityQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PDScheduledActivityClient;
  v8 = [(PDScheduledActivityClient *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_clientInstance, v6);
    objc_storeStrong(&v9->_activityQueue, a4);
    v10 = [MEMORY[0x1E695DF90] dictionary];
    activityRegistrations = v9->_activityRegistrations;
    v9->_activityRegistrations = v10;
  }

  return v9;
}

- (PDScheduledActivityClient)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PDScheduledActivityClient;
  v5 = [(PDScheduledActivityClient *)&v13 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E695DFD8]);
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 initWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"activityRegistrations"];
    activityRegistrations = v5->_activityRegistrations;
    v5->_activityRegistrations = v10;
  }

  return v5;
}

- (BOOL)isValid
{
  WeakRetained = objc_loadWeakRetained(&self->_clientInstance);
  if (WeakRetained)
  {
    v4 = self->_activityQueue != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PDScheduledActivityClient)clientInstance
{
  WeakRetained = objc_loadWeakRetained(&self->_clientInstance);

  return WeakRetained;
}

@end