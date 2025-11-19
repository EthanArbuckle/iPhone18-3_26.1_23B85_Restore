@interface MNNavigationClientProxy
- (MNNavigationClientProxy)init;
- (id)_directionsRequestManager;
- (void)requestDirections:(id)a3 withIdentifier:(id)a4 handler:(id)a5;
@end

@implementation MNNavigationClientProxy

- (id)_directionsRequestManager
{
  directionsRequestManager = self->_directionsRequestManager;
  if (!directionsRequestManager)
  {
    v4 = objc_alloc_init(MNDirectionsRequestManager);
    v5 = self->_directionsRequestManager;
    self->_directionsRequestManager = v4;

    directionsRequestManager = self->_directionsRequestManager;
  }

  return directionsRequestManager;
}

- (void)requestDirections:(id)a3 withIdentifier:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 auditToken];
  auditToken = v11;
  if (!v11)
  {
    auditToken = self->_auditToken;
  }

  v13 = auditToken;

  v14 = [(MNNavigationClientProxy *)self _directionsRequestManager];
  [v14 requestDirections:v10 withIdentifier:v9 auditToken:v13 finishedHandler:v8];
}

- (MNNavigationClientProxy)init
{
  v10.receiver = self;
  v10.super_class = MNNavigationClientProxy;
  v2 = [(MNNavigationClientProxy *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69A1B68]);
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    v6 = [v3 initWithProxiedApplicationBundleId:v5];
    auditToken = v2->_auditToken;
    v2->_auditToken = v6;

    v8 = v2;
  }

  return v2;
}

@end