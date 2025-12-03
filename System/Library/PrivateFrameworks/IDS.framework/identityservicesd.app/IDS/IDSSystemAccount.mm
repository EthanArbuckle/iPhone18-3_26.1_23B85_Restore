@interface IDSSystemAccount
- (IDSSystemAccount)initWithUsername:(id)username DSID:(id)d;
- (id)description;
@end

@implementation IDSSystemAccount

- (IDSSystemAccount)initWithUsername:(id)username DSID:(id)d
{
  usernameCopy = username;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = IDSSystemAccount;
  v8 = [(IDSSystemAccount *)&v14 init];
  if (v8)
  {
    v9 = [usernameCopy copy];
    username = v8->_username;
    v8->_username = v9;

    v11 = [dCopy copy];
    DSID = v8->_DSID;
    v8->_DSID = v11;
  }

  return v8;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@: %p username: %@, DSID: %@>", v4, self, self->_username, self->_DSID];

  return v5;
}

@end