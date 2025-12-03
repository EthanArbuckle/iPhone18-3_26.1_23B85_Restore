@interface CMSNetworkActivity
- (CMSNetworkActivity)initWithCoder:(id)coder;
- (CMSNetworkActivity)initWithLabel:(unsigned int)label parentActivity:(id)activity;
- (CMSNetworkActivity)initWithLabel:(unsigned int)label parentUUID:(id)d;
- (CMSNetworkActivity)initWithRetry:(id)retry;
- (void)associateWithTask:(id)task;
- (void)completeActivity:(int)activity;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CMSNetworkActivity

- (CMSNetworkActivity)initWithLabel:(unsigned int)label parentUUID:(id)d
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = CMSNetworkActivity;
  v7 = [(CMSNetworkActivity *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_label = label;
    v9 = nw_activity_create();
    nwActivity = v8->_nwActivity;
    v8->_nwActivity = v9;

    v11 = nwActivityFromUUID(dCopy);
    if (v11)
    {
      v12 = v8->_nwActivity;
      nw_activity_set_parent_activity();
    }

    v13 = v8->_nwActivity;
    nw_activity_activate();
  }

  return v8;
}

- (CMSNetworkActivity)initWithLabel:(unsigned int)label parentActivity:(id)activity
{
  activityCopy = activity;
  v16.receiver = self;
  v16.super_class = CMSNetworkActivity;
  v7 = [(CMSNetworkActivity *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_label = label;
    v9 = nw_activity_create();
    nwActivity = v8->_nwActivity;
    v8->_nwActivity = v9;

    nwActivity = [activityCopy nwActivity];

    if (nwActivity)
    {
      v12 = v8->_nwActivity;
      nwActivity2 = [activityCopy nwActivity];
      nw_activity_set_parent_activity();
    }

    v14 = v8->_nwActivity;
    nw_activity_activate();
  }

  return v8;
}

- (CMSNetworkActivity)initWithRetry:(id)retry
{
  retryCopy = retry;
  v11.receiver = self;
  v11.super_class = CMSNetworkActivity;
  v5 = [(CMSNetworkActivity *)&v11 init];
  if (v5)
  {
    v5->_label = [retryCopy label];
    nwActivity = [retryCopy nwActivity];
    retry = nw_activity_create_retry();
    nwActivity = v5->_nwActivity;
    v5->_nwActivity = retry;

    v9 = v5->_nwActivity;
    nw_activity_activate();
  }

  return v5;
}

- (void)dealloc
{
  [(CMSNetworkActivity *)self completeActivity:1];
  v3.receiver = self;
  v3.super_class = CMSNetworkActivity;
  [(CMSNetworkActivity *)&v3 dealloc];
}

- (void)associateWithTask:(id)task
{
  taskCopy = task;
  nwActivity = [(CMSNetworkActivity *)self nwActivity];
  [taskCopy set_nw_activity:nwActivity];
}

- (void)completeActivity:(int)activity
{
  if (!self->_completed)
  {
    self->_completed = 1;
    nwActivity = [(CMSNetworkActivity *)self nwActivity];
    nw_activity_complete_with_reason();
  }
}

- (CMSNetworkActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CMSNetworkActivity;
  v5 = [(CMSNetworkActivity *)&v10 init];
  if (v5)
  {
    v5->_label = [coderCopy decodeInt32ForKey:@"label"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nwActivityUUID"];
    v7 = nwActivityFromUUID(v6);
    nwActivity = v5->_nwActivity;
    v5->_nwActivity = v7;

    v5->_completed = [coderCopy decodeBoolForKey:@"completed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeInt32:-[CMSNetworkActivity label](self forKey:{"label"), @"label"}];
  nwActivity = [(CMSNetworkActivity *)self nwActivity];
  if (nwActivity)
  {
    v8[0] = 0;
    v8[1] = 0;
    nw_activity_get_token();
    v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v8];
  }

  else
  {
    v6 = 0;
  }

  [coderCopy encodeObject:v6 forKey:@"nwActivityUUID"];

  [coderCopy encodeBool:self->_completed forKey:@"completed"];
  v7 = *MEMORY[0x277D85DE8];
}

@end