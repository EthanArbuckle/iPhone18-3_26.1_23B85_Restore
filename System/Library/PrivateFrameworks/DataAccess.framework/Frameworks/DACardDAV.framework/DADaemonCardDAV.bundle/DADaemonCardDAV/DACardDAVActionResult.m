@interface DACardDAVActionResult
- (DACardDAVActionResult)initWithAction:(id)a3 externalUUID:(id)a4 externalURL:(id)a5;
@end

@implementation DACardDAVActionResult

- (DACardDAVActionResult)initWithAction:(id)a3 externalUUID:(id)a4 externalURL:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = DACardDAVActionResult;
  v12 = [(DACardDAVActionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_action, a3);
    objc_storeStrong(&v13->_externalUUID, a4);
    objc_storeStrong(&v13->_externalURL, a5);
  }

  return v13;
}

@end