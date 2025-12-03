@interface NPKCompanionViewServiceConnectionManager
- (NPDCompanionRemotePaymentPassActionsServiceSession)remotePassActionsServiceSession;
- (NPKCompanionViewServiceConnectionManager)init;
- (void)viewServiceConnectionServerService:(id)service didRequestPresentRemotePassItemSelectionViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
- (void)viewServiceConnectionServerService:(id)service didRequestPresentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion;
@end

@implementation NPKCompanionViewServiceConnectionManager

- (NPKCompanionViewServiceConnectionManager)init
{
  v6.receiver = self;
  v6.super_class = NPKCompanionViewServiceConnectionManager;
  v2 = [(NPKCompanionViewServiceConnectionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NPKCompanionViewServiceConnectionServerService);
    connectionService = v2->_connectionService;
    v2->_connectionService = v3;

    [(NPKCompanionViewServiceConnectionServerService *)v2->_connectionService setDelegate:v2];
  }

  return v2;
}

- (NPDCompanionRemotePaymentPassActionsServiceSession)remotePassActionsServiceSession
{
  remotePassActionsServiceSession = self->_remotePassActionsServiceSession;
  if (!remotePassActionsServiceSession)
  {
    v4 = objc_alloc_init(NPDCompanionRemotePaymentPassActionsServiceSession);
    v5 = self->_remotePassActionsServiceSession;
    self->_remotePassActionsServiceSession = v4;

    [(NPDCompanionRemotePaymentPassActionsServiceSession *)self->_remotePassActionsServiceSession setDelegate:self];
    remotePassActionsServiceSession = self->_remotePassActionsServiceSession;
  }

  return remotePassActionsServiceSession;
}

- (void)viewServiceConnectionServerService:(id)service didRequestPresentRemotePassValueEntryViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  completionCopy = completion;
  contactCopy = contact;
  requestCopy = request;
  remotePassActionsServiceSession = [(NPKCompanionViewServiceConnectionManager *)self remotePassActionsServiceSession];
  [remotePassActionsServiceSession presentRemotePassValueEntryViewControllerForRequest:requestCopy contact:contactCopy completion:completionCopy];
}

- (void)viewServiceConnectionServerService:(id)service didRequestPresentRemotePassItemSelectionViewControllerForRequest:(id)request contact:(id)contact completion:(id)completion
{
  completionCopy = completion;
  contactCopy = contact;
  requestCopy = request;
  remotePassActionsServiceSession = [(NPKCompanionViewServiceConnectionManager *)self remotePassActionsServiceSession];
  [remotePassActionsServiceSession presentRemotePassSelectItemViewControllerForRequest:requestCopy contact:contactCopy completion:completionCopy];
}

@end