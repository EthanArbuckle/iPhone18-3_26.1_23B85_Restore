@interface CRXFUserInfo
- (CRXFUserInfo)initWithUserID:(id)a3 firstName:(id)a4;
- (id)description;
@end

@implementation CRXFUserInfo

- (CRXFUserInfo)initWithUserID:(id)a3 firstName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRXFUserInfo;
  v9 = [(CRXFUserInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_userID, a3);
    objc_storeStrong(&v10->_firstName, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CRXFUserInfo *)self userID];
  v6 = [(CRXFUserInfo *)self firstName];
  v7 = [v3 stringWithFormat:@"%@<%p> userID:%@, firstName:%@", v4, self, v5, v6];

  return v7;
}

@end