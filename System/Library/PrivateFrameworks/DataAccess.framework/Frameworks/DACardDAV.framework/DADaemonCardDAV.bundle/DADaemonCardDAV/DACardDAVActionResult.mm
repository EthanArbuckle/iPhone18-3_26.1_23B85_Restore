@interface DACardDAVActionResult
- (DACardDAVActionResult)initWithAction:(id)action externalUUID:(id)d externalURL:(id)l;
@end

@implementation DACardDAVActionResult

- (DACardDAVActionResult)initWithAction:(id)action externalUUID:(id)d externalURL:(id)l
{
  actionCopy = action;
  dCopy = d;
  lCopy = l;
  v15.receiver = self;
  v15.super_class = DACardDAVActionResult;
  v12 = [(DACardDAVActionResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_action, action);
    objc_storeStrong(&v13->_externalUUID, d);
    objc_storeStrong(&v13->_externalURL, l);
  }

  return v13;
}

@end