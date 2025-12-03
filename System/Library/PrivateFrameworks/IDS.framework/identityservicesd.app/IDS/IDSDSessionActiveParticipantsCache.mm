@interface IDSDSessionActiveParticipantsCache
+ (IDSDSessionActiveParticipantsCache)sharedInstance;
- (IDSDSessionActiveParticipantsCache)init;
- (id)participantsForSessionID:(id)d;
- (id)vendTokenListForSessionID:(id)d;
- (void)removeParticipantsForSessionID:(id)d;
- (void)updateParticipants:(id)participants forSessionID:(id)d;
@end

@implementation IDSDSessionActiveParticipantsCache

+ (IDSDSessionActiveParticipantsCache)sharedInstance
{
  if (qword_100CBF318 != -1)
  {
    sub_10092D06C();
  }

  v3 = qword_100CBF320;

  return v3;
}

- (IDSDSessionActiveParticipantsCache)init
{
  v3.receiver = self;
  v3.super_class = IDSDSessionActiveParticipantsCache;
  result = [(IDSDSessionActiveParticipantsCache *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)updateParticipants:(id)participants forSessionID:(id)d
{
  dCopy = d;
  v7 = [participants __imSetByApplyingBlock:&stru_100BE22A8];
  v8 = v7;
  if (dCopy && [v7 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v9 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = dCopy;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSDSessionActiveParticipantsCache adding sessionID %@ participants %@", &v16, 0x16u);
    }

    cachedTokensBySessionID = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];

    if (!cachedTokensBySessionID)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [(IDSDSessionActiveParticipantsCache *)self setCachedTokensBySessionID:v11];
    }

    cachedTokensBySessionID2 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
    v13 = [cachedTokensBySessionID2 objectForKeyedSubscript:dCopy];

    if (v13)
    {
      cachedTokensBySessionID4 = [v13 setByAddingObjectsFromSet:v8];
      cachedTokensBySessionID3 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
      [cachedTokensBySessionID3 setObject:cachedTokensBySessionID4 forKeyedSubscript:dCopy];
    }

    else
    {
      cachedTokensBySessionID4 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
      [cachedTokensBySessionID4 setObject:v8 forKeyedSubscript:dCopy];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)removeParticipantsForSessionID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSDSessionActiveParticipantsCache removing sessionID %@", &v9, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    cachedTokensBySessionID = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
    [cachedTokensBySessionID setObject:0 forKeyedSubscript:dCopy];

    cachedTokensBySessionID2 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
    v8 = [cachedTokensBySessionID2 count];

    if (!v8)
    {
      [(IDSDSessionActiveParticipantsCache *)self setCachedTokensBySessionID:0];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)participantsForSessionID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    os_unfair_lock_lock(&self->_lock);
    cachedTokensBySessionID = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
    v6 = [cachedTokensBySessionID objectForKeyedSubscript:dCopy];
    v7 = [v6 copy];

    os_unfair_lock_unlock(&self->_lock);
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = +[NSSet set];
    }

    v9 = v8;
  }

  else
  {
    v9 = +[NSSet set];
  }

  return v9;
}

- (id)vendTokenListForSessionID:(id)d
{
  dCopy = d;
  v5 = [[IDSParticipantsCacheEntryPointer alloc] initWithCache:self sessionID:dCopy];

  return v5;
}

@end