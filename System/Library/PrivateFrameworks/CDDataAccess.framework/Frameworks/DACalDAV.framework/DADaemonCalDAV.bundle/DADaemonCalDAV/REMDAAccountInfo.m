@interface REMDAAccountInfo
- (REMDAAccountInfo)initWithAccountID:(id)a3 remAccountObjectID:(id)a4 accountDescription:(id)a5;
- (id)loggingDescription;
@end

@implementation REMDAAccountInfo

- (REMDAAccountInfo)initWithAccountID:(id)a3 remAccountObjectID:(id)a4 accountDescription:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMDAAccountInfo;
  v12 = [(REMDAAccountInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountID, a3);
    objc_storeStrong(&v13->_rem_accountObjectID, a4);
    objc_storeStrong(&v13->_accountDescription, a5);
  }

  return v13;
}

- (id)loggingDescription
{
  v3 = [(REMDAAccountInfo *)self accountDescription];
  v4 = [(REMDAAccountInfo *)self accountID];
  v5 = [NSString stringWithFormat:@"%@:<%@>", v3, v4];

  return v5;
}

@end