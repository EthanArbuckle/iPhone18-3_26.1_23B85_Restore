@interface HDIDSOutgoingRequest
+ (id)_requestWithMessageID:(void *)d message:(void *)message syncStore:;
+ (id)activationRequestWithRestore:(id)restore syncStore:(id)store profile:(id)profile;
+ (id)changeRequestWithChangeSet:(id)set status:(id)status syncStore:(id)store profile:(id)profile;
+ (id)requestWithMessageID:(unsigned __int16)d participant:(id)participant;
+ (id)speculativeChangeRequestWithChangeSet:(id)set syncStore:(id)store profile:(id)profile;
- (HDIDSOutgoingRequest)init;
- (NSString)description;
- (id)nanoSyncDescription;
- (void)setPbRequest:(id)request;
@end

@implementation HDIDSOutgoingRequest

- (HDIDSOutgoingRequest)init
{
  v3.receiver = self;
  v3.super_class = HDIDSOutgoingRequest;
  result = [(HDIDSOutgoingRequest *)&v3 init];
  if (result)
  {
    result->_priority = 0;
  }

  return result;
}

- (id)nanoSyncDescription
{
  persistentUserInfo = [(HDIDSOutgoingRequest *)self persistentUserInfo];
  v4 = [HDCodableNanoSyncMessage messageFromPersistentUserInfo:persistentUserInfo];

  LODWORD(persistentUserInfo) = [(HDIDSOutgoingRequest *)self messageID];
  idsIdentifier = [(HDIDSOutgoingRequest *)self idsIdentifier];
  nanoSyncDescription = [v4 nanoSyncDescription];
  v7 = FormattedMessageDescription(persistentUserInfo, 0, 1, idsIdentifier, nanoSyncDescription);

  return v7;
}

+ (id)activationRequestWithRestore:(id)restore syncStore:(id)store profile:(id)profile
{
  storeCopy = store;
  restoreCopy = restore;
  v10 = [HDCodableNanoSyncMessage messageWithSyncStore:storeCopy profile:profile];
  [v10 setActivationRestore:restoreCopy];

  v11 = [(HDIDSOutgoingRequest *)self _requestWithMessageID:v10 message:storeCopy syncStore:?];

  return v11;
}

+ (id)_requestWithMessageID:(void *)d message:(void *)message syncStore:
{
  messageCopy = message;
  dCopy = d;
  objc_opt_self();
  v8 = [messageCopy createRequestWithMessageID:a2];

  [v8 setPbRequest:dCopy];
  copyPersistentUserInfo = [dCopy copyPersistentUserInfo];

  [v8 setPersistentUserInfo:copyPersistentUserInfo];

  return v8;
}

+ (id)changeRequestWithChangeSet:(id)set status:(id)status syncStore:(id)store profile:(id)profile
{
  storeCopy = store;
  statusCopy = status;
  setCopy = set;
  v13 = [HDCodableNanoSyncMessage messageWithSyncStore:storeCopy profile:profile];
  [v13 setChangeSet:setCopy];

  [v13 setStatus:statusCopy];
  v14 = [(HDIDSOutgoingRequest *)self _requestWithMessageID:v13 message:storeCopy syncStore:?];

  return v14;
}

+ (id)speculativeChangeRequestWithChangeSet:(id)set syncStore:(id)store profile:(id)profile
{
  storeCopy = store;
  setCopy = set;
  v10 = [HDCodableNanoSyncMessage messageWithSyncStore:storeCopy profile:profile];
  [v10 setChangeSet:setCopy];

  v11 = [(HDIDSOutgoingRequest *)self _requestWithMessageID:v10 message:storeCopy syncStore:?];

  return v11;
}

+ (id)requestWithMessageID:(unsigned __int16)d participant:(id)participant
{
  participantCopy = participant;
  v7 = objc_alloc_init(self);
  v7[6] = d;
  v8 = *(v7 + 2);
  *(v7 + 2) = participantCopy;

  return v7;
}

- (void)setPbRequest:(id)request
{
  objc_storeStrong(&self->_pbRequest, request);
  requestCopy = request;
  data = [(PBCodable *)self->_pbRequest data];
  data = self->_data;
  self->_data = data;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> messageID: %hu", v5, self, self->_messageID];

  return v6;
}

@end