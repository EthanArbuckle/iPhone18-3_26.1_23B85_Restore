@interface LACPreboardUPPProfile
- (LACPreboardUPPProfile)initWithUUID:(id)a3 teamID:(id)a4 teamName:(id)a5;
@end

@implementation LACPreboardUPPProfile

- (LACPreboardUPPProfile)initWithUUID:(id)a3 teamID:(id)a4 teamName:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = LACPreboardUPPProfile;
  v12 = [(LACPreboardUPPProfile *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, a3);
    objc_storeStrong(&v13->_teamID, a4);
    objc_storeStrong(&v13->_teamName, a5);
  }

  return v13;
}

@end