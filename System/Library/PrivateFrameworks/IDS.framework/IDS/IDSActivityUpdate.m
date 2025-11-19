@interface IDSActivityUpdate
- (IDSActivityUpdate)initWithCoder:(id)a3;
- (IDSActivityUpdate)initWithSubActivity:(id)a3 pushToken:(id)a4 serverTimestamp:(unint64_t)a5 clientContext:(id)a6 isDeviceOnline:(BOOL)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSActivityUpdate

- (IDSActivityUpdate)initWithSubActivity:(id)a3 pushToken:(id)a4 serverTimestamp:(unint64_t)a5 clientContext:(id)a6 isDeviceOnline:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (v13 && [v13 length])
  {
    v20.receiver = self;
    v20.super_class = IDSActivityUpdate;
    v16 = [(IDSActivityUpdate *)&v20 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_subActivity, a3);
      objc_storeStrong(&v17->_pushToken, a4);
      objc_storeStrong(&v17->_clientContext, a6);
      v17->_serverTimestamp = a5;
      v17->_isDeviceOnline = a7;
    }

    self = v17;
    v18 = self;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  subActivity = self->_subActivity;
  v5 = a3;
  [v5 encodeObject:subActivity forKey:@"subactivity"];
  [v5 encodeInt64:self->_serverTimestamp forKey:@"servertimestamp"];
  [v5 encodeObject:self->_pushToken forKey:@"pushtoken"];
  [v5 encodeObject:self->_clientContext forKey:@"clientcontext"];
  [v5 encodeBool:self->_isDeviceOnline forKey:@"online"];
}

- (IDSActivityUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subactivity"];
  v6 = [v4 decodeInt64ForKey:@"servertimestamp"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pushtoken"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientcontext"];
  v9 = [v4 decodeBoolForKey:@"online"];

  v10 = [(IDSActivityUpdate *)self initWithSubActivity:v5 pushToken:v7 serverTimestamp:v6 clientContext:v8 isDeviceOnline:v9];
  return v10;
}

@end