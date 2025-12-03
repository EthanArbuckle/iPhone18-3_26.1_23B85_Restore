@interface IDSActivityUpdate
- (IDSActivityUpdate)initWithCoder:(id)coder;
- (IDSActivityUpdate)initWithSubActivity:(id)activity pushToken:(id)token serverTimestamp:(unint64_t)timestamp clientContext:(id)context isDeviceOnline:(BOOL)online;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSActivityUpdate

- (IDSActivityUpdate)initWithSubActivity:(id)activity pushToken:(id)token serverTimestamp:(unint64_t)timestamp clientContext:(id)context isDeviceOnline:(BOOL)online
{
  activityCopy = activity;
  tokenCopy = token;
  contextCopy = context;
  if (activityCopy && [activityCopy length])
  {
    v20.receiver = self;
    v20.super_class = IDSActivityUpdate;
    v16 = [(IDSActivityUpdate *)&v20 init];
    v17 = v16;
    if (v16)
    {
      objc_storeStrong(&v16->_subActivity, activity);
      objc_storeStrong(&v17->_pushToken, token);
      objc_storeStrong(&v17->_clientContext, context);
      v17->_serverTimestamp = timestamp;
      v17->_isDeviceOnline = online;
    }

    self = v17;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  subActivity = self->_subActivity;
  coderCopy = coder;
  [coderCopy encodeObject:subActivity forKey:@"subactivity"];
  [coderCopy encodeInt64:self->_serverTimestamp forKey:@"servertimestamp"];
  [coderCopy encodeObject:self->_pushToken forKey:@"pushtoken"];
  [coderCopy encodeObject:self->_clientContext forKey:@"clientcontext"];
  [coderCopy encodeBool:self->_isDeviceOnline forKey:@"online"];
}

- (IDSActivityUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subactivity"];
  v6 = [coderCopy decodeInt64ForKey:@"servertimestamp"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pushtoken"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientcontext"];
  v9 = [coderCopy decodeBoolForKey:@"online"];

  v10 = [(IDSActivityUpdate *)self initWithSubActivity:v5 pushToken:v7 serverTimestamp:v6 clientContext:v8 isDeviceOnline:v9];
  return v10;
}

@end