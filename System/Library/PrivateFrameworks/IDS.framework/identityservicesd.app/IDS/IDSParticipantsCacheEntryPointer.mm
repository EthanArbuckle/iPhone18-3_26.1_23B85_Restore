@interface IDSParticipantsCacheEntryPointer
- (IDSParticipantsCacheEntryPointer)initWithCache:(id)a3 sessionID:(id)a4;
- (id)prioritizedTokens;
@end

@implementation IDSParticipantsCacheEntryPointer

- (IDSParticipantsCacheEntryPointer)initWithCache:(id)a3 sessionID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSParticipantsCacheEntryPointer;
  v9 = [(IDSParticipantsCacheEntryPointer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cache, a3);
    objc_storeStrong(&v10->_sessionID, a4);
  }

  return v10;
}

- (id)prioritizedTokens
{
  v3 = [(IDSParticipantsCacheEntryPointer *)self cache];
  v4 = [(IDSParticipantsCacheEntryPointer *)self sessionID];
  v5 = [v3 participantsForSessionID:v4];

  return v5;
}

@end