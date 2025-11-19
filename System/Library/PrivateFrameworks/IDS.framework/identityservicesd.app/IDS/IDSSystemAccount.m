@interface IDSSystemAccount
- (IDSSystemAccount)initWithUsername:(id)a3 DSID:(id)a4;
- (id)description;
@end

@implementation IDSSystemAccount

- (IDSSystemAccount)initWithUsername:(id)a3 DSID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = IDSSystemAccount;
  v8 = [(IDSSystemAccount *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    username = v8->_username;
    v8->_username = v9;

    v11 = [v7 copy];
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