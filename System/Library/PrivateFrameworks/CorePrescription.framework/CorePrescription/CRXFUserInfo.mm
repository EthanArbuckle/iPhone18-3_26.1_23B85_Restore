@interface CRXFUserInfo
- (CRXFUserInfo)initWithUserID:(id)d firstName:(id)name;
- (id)description;
@end

@implementation CRXFUserInfo

- (CRXFUserInfo)initWithUserID:(id)d firstName:(id)name
{
  dCopy = d;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = CRXFUserInfo;
  v9 = [(CRXFUserInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userID, d);
    objc_storeStrong(&v10->_firstName, name);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  userID = [(CRXFUserInfo *)self userID];
  firstName = [(CRXFUserInfo *)self firstName];
  v7 = [v3 stringWithFormat:@"%@<%p> userID:%@, firstName:%@", v4, self, userID, firstName];

  return v7;
}

@end