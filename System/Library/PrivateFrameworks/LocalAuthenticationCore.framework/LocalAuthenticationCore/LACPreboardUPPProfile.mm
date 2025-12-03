@interface LACPreboardUPPProfile
- (LACPreboardUPPProfile)initWithUUID:(id)d teamID:(id)iD teamName:(id)name;
@end

@implementation LACPreboardUPPProfile

- (LACPreboardUPPProfile)initWithUUID:(id)d teamID:(id)iD teamName:(id)name
{
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  v15.receiver = self;
  v15.super_class = LACPreboardUPPProfile;
  v12 = [(LACPreboardUPPProfile *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, d);
    objc_storeStrong(&v13->_teamID, iD);
    objc_storeStrong(&v13->_teamName, name);
  }

  return v13;
}

@end