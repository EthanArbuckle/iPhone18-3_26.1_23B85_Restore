@interface HDIDSOutgoingRequest
+ (id)_requestWithMessageID:(void *)a3 message:(void *)a4 syncStore:;
+ (id)activationRequestWithRestore:(id)a3 syncStore:(id)a4 profile:(id)a5;
+ (id)changeRequestWithChangeSet:(id)a3 status:(id)a4 syncStore:(id)a5 profile:(id)a6;
+ (id)requestWithMessageID:(unsigned __int16)a3 participant:(id)a4;
+ (id)speculativeChangeRequestWithChangeSet:(id)a3 syncStore:(id)a4 profile:(id)a5;
- (HDIDSOutgoingRequest)init;
- (NSString)description;
- (id)nanoSyncDescription;
- (void)setPbRequest:(id)a3;
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
  v3 = [(HDIDSOutgoingRequest *)self persistentUserInfo];
  v4 = [HDCodableNanoSyncMessage messageFromPersistentUserInfo:v3];

  LODWORD(v3) = [(HDIDSOutgoingRequest *)self messageID];
  v5 = [(HDIDSOutgoingRequest *)self idsIdentifier];
  v6 = [v4 nanoSyncDescription];
  v7 = FormattedMessageDescription(v3, 0, 1, v5, v6);

  return v7;
}

+ (id)activationRequestWithRestore:(id)a3 syncStore:(id)a4 profile:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [HDCodableNanoSyncMessage messageWithSyncStore:v8 profile:a5];
  [v10 setActivationRestore:v9];

  v11 = [(HDIDSOutgoingRequest *)a1 _requestWithMessageID:v10 message:v8 syncStore:?];

  return v11;
}

+ (id)_requestWithMessageID:(void *)a3 message:(void *)a4 syncStore:
{
  v6 = a4;
  v7 = a3;
  objc_opt_self();
  v8 = [v6 createRequestWithMessageID:a2];

  [v8 setPbRequest:v7];
  v9 = [v7 copyPersistentUserInfo];

  [v8 setPersistentUserInfo:v9];

  return v8;
}

+ (id)changeRequestWithChangeSet:(id)a3 status:(id)a4 syncStore:(id)a5 profile:(id)a6
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [HDCodableNanoSyncMessage messageWithSyncStore:v10 profile:a6];
  [v13 setChangeSet:v12];

  [v13 setStatus:v11];
  v14 = [(HDIDSOutgoingRequest *)a1 _requestWithMessageID:v13 message:v10 syncStore:?];

  return v14;
}

+ (id)speculativeChangeRequestWithChangeSet:(id)a3 syncStore:(id)a4 profile:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [HDCodableNanoSyncMessage messageWithSyncStore:v8 profile:a5];
  [v10 setChangeSet:v9];

  v11 = [(HDIDSOutgoingRequest *)a1 _requestWithMessageID:v10 message:v8 syncStore:?];

  return v11;
}

+ (id)requestWithMessageID:(unsigned __int16)a3 participant:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(a1);
  v7[6] = a3;
  v8 = *(v7 + 2);
  *(v7 + 2) = v6;

  return v7;
}

- (void)setPbRequest:(id)a3
{
  objc_storeStrong(&self->_pbRequest, a3);
  v7 = a3;
  v5 = [(PBCodable *)self->_pbRequest data];
  data = self->_data;
  self->_data = v5;
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