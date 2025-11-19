@interface CMSNetworkActivity
- (CMSNetworkActivity)initWithCoder:(id)a3;
- (CMSNetworkActivity)initWithLabel:(unsigned int)a3 parentActivity:(id)a4;
- (CMSNetworkActivity)initWithLabel:(unsigned int)a3 parentUUID:(id)a4;
- (CMSNetworkActivity)initWithRetry:(id)a3;
- (void)associateWithTask:(id)a3;
- (void)completeActivity:(int)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CMSNetworkActivity

- (CMSNetworkActivity)initWithLabel:(unsigned int)a3 parentUUID:(id)a4
{
  v6 = a4;
  v15.receiver = self;
  v15.super_class = CMSNetworkActivity;
  v7 = [(CMSNetworkActivity *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_label = a3;
    v9 = nw_activity_create();
    nwActivity = v8->_nwActivity;
    v8->_nwActivity = v9;

    v11 = nwActivityFromUUID(v6);
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

- (CMSNetworkActivity)initWithLabel:(unsigned int)a3 parentActivity:(id)a4
{
  v6 = a4;
  v16.receiver = self;
  v16.super_class = CMSNetworkActivity;
  v7 = [(CMSNetworkActivity *)&v16 init];
  v8 = v7;
  if (v7)
  {
    v7->_label = a3;
    v9 = nw_activity_create();
    nwActivity = v8->_nwActivity;
    v8->_nwActivity = v9;

    v11 = [v6 nwActivity];

    if (v11)
    {
      v12 = v8->_nwActivity;
      v13 = [v6 nwActivity];
      nw_activity_set_parent_activity();
    }

    v14 = v8->_nwActivity;
    nw_activity_activate();
  }

  return v8;
}

- (CMSNetworkActivity)initWithRetry:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CMSNetworkActivity;
  v5 = [(CMSNetworkActivity *)&v11 init];
  if (v5)
  {
    v5->_label = [v4 label];
    v6 = [v4 nwActivity];
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

- (void)associateWithTask:(id)a3
{
  v4 = a3;
  v5 = [(CMSNetworkActivity *)self nwActivity];
  [v4 set_nw_activity:v5];
}

- (void)completeActivity:(int)a3
{
  if (!self->_completed)
  {
    self->_completed = 1;
    v4 = [(CMSNetworkActivity *)self nwActivity];
    nw_activity_complete_with_reason();
  }
}

- (CMSNetworkActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CMSNetworkActivity;
  v5 = [(CMSNetworkActivity *)&v10 init];
  if (v5)
  {
    v5->_label = [v4 decodeInt32ForKey:@"label"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nwActivityUUID"];
    v7 = nwActivityFromUUID(v6);
    nwActivity = v5->_nwActivity;
    v5->_nwActivity = v7;

    v5->_completed = [v4 decodeBoolForKey:@"completed"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  [v4 encodeInt32:-[CMSNetworkActivity label](self forKey:{"label"), @"label"}];
  v5 = [(CMSNetworkActivity *)self nwActivity];
  if (v5)
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

  [v4 encodeObject:v6 forKey:@"nwActivityUUID"];

  [v4 encodeBool:self->_completed forKey:@"completed"];
  v7 = *MEMORY[0x277D85DE8];
}

@end