@interface REMDAAccountInfo
- (REMDAAccountInfo)initWithAccountID:(id)d remAccountObjectID:(id)iD accountDescription:(id)description;
- (id)loggingDescription;
@end

@implementation REMDAAccountInfo

- (REMDAAccountInfo)initWithAccountID:(id)d remAccountObjectID:(id)iD accountDescription:(id)description
{
  dCopy = d;
  iDCopy = iD;
  descriptionCopy = description;
  v15.receiver = self;
  v15.super_class = REMDAAccountInfo;
  v12 = [(REMDAAccountInfo *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_accountID, d);
    objc_storeStrong(&v13->_rem_accountObjectID, iD);
    objc_storeStrong(&v13->_accountDescription, description);
  }

  return v13;
}

- (id)loggingDescription
{
  accountDescription = [(REMDAAccountInfo *)self accountDescription];
  accountID = [(REMDAAccountInfo *)self accountID];
  v5 = [NSString stringWithFormat:@"%@:<%@>", accountDescription, accountID];

  return v5;
}

@end