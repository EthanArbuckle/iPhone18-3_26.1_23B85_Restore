@interface CATIDSServiceConnectionInvitationOutbox
- (CATIDSServiceConnectionInvitationOutbox)initWithAssertionProvider:(id)provider workQueue:(id)queue;
- (CATIDSServiceConnectionInvitationOutboxDelegate)delegate;
- (void)beginInvitationWithIdentifier:(id)identifier appleID:(id)d userInfo:(id)info;
- (void)cancelAllInvitations;
- (void)cancelAllPowerAssertions;
- (void)cancelInvitationWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)receiveAcceptForInvitation:(id)invitation connectionIdentifier:(id)identifier senderAddress:(id)address messagingVersion:(unint64_t)version;
- (void)receiveRejectForInvitation:(id)invitation connectionIdentifier:(id)identifier senderAddress:(id)address error:(id)error;
- (void)resume;
- (void)serviceInvitationQueue;
- (void)suspend;
@end

@implementation CATIDSServiceConnectionInvitationOutbox

- (void)dealloc
{
  [(CATIDSServiceConnectionInvitationOutbox *)self cancelAllPowerAssertions];
  v3.receiver = self;
  v3.super_class = CATIDSServiceConnectionInvitationOutbox;
  [(CATIDSServiceConnectionInvitationOutbox *)&v3 dealloc];
}

- (CATIDSServiceConnectionInvitationOutbox)initWithAssertionProvider:(id)provider workQueue:(id)queue
{
  providerCopy = provider;
  queueCopy = queue;
  v16.receiver = self;
  v16.super_class = CATIDSServiceConnectionInvitationOutbox;
  v9 = [(CATIDSServiceConnectionInvitationOutbox *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mAssertionProvider, provider);
    objc_storeStrong(&v10->mWorkQueue, queue);
    v11 = objc_opt_new();
    mInFlightInvitationRequestsByInvitationID = v10->mInFlightInvitationRequestsByInvitationID;
    v10->mInFlightInvitationRequestsByInvitationID = v11;

    v13 = objc_opt_new();
    mInvitationRequestQueue = v10->mInvitationRequestQueue;
    v10->mInvitationRequestQueue = v13;
  }

  return v10;
}

- (void)beginInvitationWithIdentifier:(id)identifier appleID:(id)d userInfo:(id)info
{
  mWorkQueue = self->mWorkQueue;
  infoCopy = info;
  dCopy = d;
  identifierCopy = identifier;
  CATAssertIsQueue(mWorkQueue);
  acquireAssertion = [(CATAssertionProviding *)self->mAssertionProvider acquireAssertion];
  v12 = [[CATIDSServiceConnectionInvitationRequest alloc] initWithInvitationIdentifier:identifierCopy appleID:dCopy assertion:acquireAssertion userInfo:infoCopy];

  [(NSMutableArray *)self->mInvitationRequestQueue addObject:v12];
  [(CATIDSServiceConnectionInvitationOutbox *)self serviceInvitationQueue];
}

- (void)resume
{
  CATAssertIsQueue(self->mWorkQueue);
  self->mIsActive = 1;

  [(CATIDSServiceConnectionInvitationOutbox *)self serviceInvitationQueue];
}

- (void)suspend
{
  CATAssertIsQueue(self->mWorkQueue);
  self->mIsActive = 0;

  [(CATIDSServiceConnectionInvitationOutbox *)self cancelAllInvitations];
}

- (void)receiveAcceptForInvitation:(id)invitation connectionIdentifier:(id)identifier senderAddress:(id)address messagingVersion:(unint64_t)version
{
  v27 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  identifierCopy = identifier;
  addressCopy = address;
  CATAssertIsQueue(self->mWorkQueue);
  v13 = [(NSMutableDictionary *)self->mInFlightInvitationRequestsByInvitationID objectForKeyedSubscript:invitationCopy];
  if (v13)
  {
    acquireAssertion = [(CATAssertionProviding *)self->mAssertionProvider acquireAssertion];
    delegate = [(CATIDSServiceConnectionInvitationOutbox *)self delegate];
    [delegate connectionInvitationOutbox:self wantsToAcknowledgeInvitation:invitationCopy connectionIdentifier:identifierCopy destinationAddress:addressCopy];

    delegate2 = [(CATIDSServiceConnectionInvitationOutbox *)self delegate];
    appleID = [v13 appleID];
    userInfo = [v13 userInfo];
    [delegate2 connectionInvitationOutbox:self foundConnection:identifierCopy destinationAppleID:appleID destinationAddress:addressCopy assertion:acquireAssertion messagingVersion:version userInfo:userInfo];
  }

  else
  {
    v19 = _CATLogGeneral_7();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      v22 = invitationCopy;
      v23 = 2114;
      v24 = addressCopy;
      v25 = 2114;
      v26 = identifierCopy;
      _os_log_impl(&dword_24329F000, v19, OS_LOG_TYPE_INFO, "Found unexpected accept for invitation %{public}@ from %{public}@ with connection %{public}@", buf, 0x20u);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)receiveRejectForInvitation:(id)invitation connectionIdentifier:(id)identifier senderAddress:(id)address error:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  invitationCopy = invitation;
  identifierCopy = identifier;
  addressCopy = address;
  errorCopy = error;
  CATAssertIsQueue(self->mWorkQueue);
  v14 = [(NSMutableDictionary *)self->mInFlightInvitationRequestsByInvitationID objectForKeyedSubscript:invitationCopy];
  if (v14)
  {
    delegate = [(CATIDSServiceConnectionInvitationOutbox *)self delegate];
    appleID = [v14 appleID];
    userInfo = [v14 userInfo];
    [delegate connectionInvitationOutbox:self receivedARejectionFrom:appleID connectionIdentifier:identifierCopy userInfo:userInfo error:errorCopy];
  }

  else
  {
    v18 = _CATLogGeneral_7();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v20 = 138543618;
      v21 = invitationCopy;
      v22 = 2114;
      v23 = addressCopy;
      _os_log_impl(&dword_24329F000, v18, OS_LOG_TYPE_INFO, "Found unexpected rejection for invitation %{public}@ from %{public}@", &v20, 0x16u);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)cancelInvitationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  CATAssertIsQueue(self->mWorkQueue);
  v5 = [(NSMutableDictionary *)self->mInFlightInvitationRequestsByInvitationID objectForKeyedSubscript:identifierCopy];
  assertion = [v5 assertion];
  [assertion cancel];

  [(NSMutableDictionary *)self->mInFlightInvitationRequestsByInvitationID setObject:0 forKeyedSubscript:identifierCopy];
  mInvitationRequestQueue = self->mInvitationRequestQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__CATIDSServiceConnectionInvitationOutbox_cancelInvitationWithIdentifier___block_invoke;
  v9[3] = &unk_278DA7AD8;
  v10 = identifierCopy;
  v8 = identifierCopy;
  [(NSMutableArray *)mInvitationRequestQueue cat_removeFirstObjectMatching:v9];
}

uint64_t __74__CATIDSServiceConnectionInvitationOutbox_cancelInvitationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 invitationIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (void)cancelAllInvitations
{
  CATAssertIsQueue(self->mWorkQueue);
  [(CATIDSServiceConnectionInvitationOutbox *)self cancelAllPowerAssertions];
  [(NSMutableArray *)self->mInvitationRequestQueue removeAllObjects];
  mInFlightInvitationRequestsByInvitationID = self->mInFlightInvitationRequestsByInvitationID;

  [(NSMutableDictionary *)mInFlightInvitationRequestsByInvitationID removeAllObjects];
}

- (void)serviceInvitationQueue
{
  CATAssertIsQueue(self->mWorkQueue);
  if (self->mIsActive && [(NSMutableArray *)self->mInvitationRequestQueue count])
  {
    firstObject = [(NSMutableArray *)self->mInvitationRequestQueue firstObject];
    [(NSMutableArray *)self->mInvitationRequestQueue removeObjectAtIndex:0];
    mInFlightInvitationRequestsByInvitationID = self->mInFlightInvitationRequestsByInvitationID;
    invitationIdentifier = [firstObject invitationIdentifier];
    [(NSMutableDictionary *)mInFlightInvitationRequestsByInvitationID setObject:firstObject forKeyedSubscript:invitationIdentifier];

    delegate = [(CATIDSServiceConnectionInvitationOutbox *)self delegate];
    invitationIdentifier2 = [firstObject invitationIdentifier];
    appleID = [firstObject appleID];
    userInfo = [firstObject userInfo];
    [delegate connectionInvitationOutbox:self wantsToSendInvitation:invitationIdentifier2 destinationAppleID:appleID userInfo:userInfo];

    [(CATIDSServiceConnectionInvitationOutbox *)self serviceInvitationQueue];
  }
}

- (void)cancelAllPowerAssertions
{
  mInvitationRequestQueue = self->mInvitationRequestQueue;
  allValues = [(NSMutableDictionary *)self->mInFlightInvitationRequestsByInvitationID allValues];
  v3 = [(NSMutableArray *)mInvitationRequestQueue arrayByAddingObjectsFromArray:allValues];
  [v3 cat_forEach:&__block_literal_global_20];
}

void __67__CATIDSServiceConnectionInvitationOutbox_cancelAllPowerAssertions__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 assertion];
  [v2 cancel];
}

- (CATIDSServiceConnectionInvitationOutboxDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end