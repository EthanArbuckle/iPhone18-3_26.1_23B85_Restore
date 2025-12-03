@interface MNNavigationClientProxy
- (MNNavigationClientProxy)init;
- (id)_directionsRequestManager;
- (void)requestDirections:(id)directions withIdentifier:(id)identifier handler:(id)handler;
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

- (void)requestDirections:(id)directions withIdentifier:(id)identifier handler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  directionsCopy = directions;
  auditToken = [directionsCopy auditToken];
  auditToken = auditToken;
  if (!auditToken)
  {
    auditToken = self->_auditToken;
  }

  v13 = auditToken;

  _directionsRequestManager = [(MNNavigationClientProxy *)self _directionsRequestManager];
  [_directionsRequestManager requestDirections:directionsCopy withIdentifier:identifierCopy auditToken:v13 finishedHandler:handlerCopy];
}

- (MNNavigationClientProxy)init
{
  v10.receiver = self;
  v10.super_class = MNNavigationClientProxy;
  v2 = [(MNNavigationClientProxy *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E69A1B68]);
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v6 = [v3 initWithProxiedApplicationBundleId:bundleIdentifier];
    auditToken = v2->_auditToken;
    v2->_auditToken = v6;

    v8 = v2;
  }

  return v2;
}

@end