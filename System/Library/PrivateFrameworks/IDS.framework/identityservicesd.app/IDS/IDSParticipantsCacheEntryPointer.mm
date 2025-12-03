@interface IDSParticipantsCacheEntryPointer
- (IDSParticipantsCacheEntryPointer)initWithCache:(id)cache sessionID:(id)d;
- (id)prioritizedTokens;
@end

@implementation IDSParticipantsCacheEntryPointer

- (IDSParticipantsCacheEntryPointer)initWithCache:(id)cache sessionID:(id)d
{
  cacheCopy = cache;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = IDSParticipantsCacheEntryPointer;
  v9 = [(IDSParticipantsCacheEntryPointer *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cache, cache);
    objc_storeStrong(&v10->_sessionID, d);
  }

  return v10;
}

- (id)prioritizedTokens
{
  cache = [(IDSParticipantsCacheEntryPointer *)self cache];
  sessionID = [(IDSParticipantsCacheEntryPointer *)self sessionID];
  v5 = [cache participantsForSessionID:sessionID];

  return v5;
}

@end