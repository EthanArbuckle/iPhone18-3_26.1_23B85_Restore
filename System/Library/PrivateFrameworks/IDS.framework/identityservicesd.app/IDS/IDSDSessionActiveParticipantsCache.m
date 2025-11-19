@interface IDSDSessionActiveParticipantsCache
+ (IDSDSessionActiveParticipantsCache)sharedInstance;
- (IDSDSessionActiveParticipantsCache)init;
- (id)participantsForSessionID:(id)a3;
- (id)vendTokenListForSessionID:(id)a3;
- (void)removeParticipantsForSessionID:(id)a3;
- (void)updateParticipants:(id)a3 forSessionID:(id)a4;
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

- (void)updateParticipants:(id)a3 forSessionID:(id)a4
{
  v6 = a4;
  v7 = [a3 __imSetByApplyingBlock:&stru_100BE22A8];
  v8 = v7;
  if (v6 && [v7 count])
  {
    os_unfair_lock_lock(&self->_lock);
    v9 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v6;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "IDSDSessionActiveParticipantsCache adding sessionID %@ participants %@", &v16, 0x16u);
    }

    v10 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];

    if (!v10)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      [(IDSDSessionActiveParticipantsCache *)self setCachedTokensBySessionID:v11];
    }

    v12 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
    v13 = [v12 objectForKeyedSubscript:v6];

    if (v13)
    {
      v14 = [v13 setByAddingObjectsFromSet:v8];
      v15 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
      [v15 setObject:v14 forKeyedSubscript:v6];
    }

    else
    {
      v14 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
      [v14 setObject:v8 forKeyedSubscript:v6];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)removeParticipantsForSessionID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = +[IDSFoundationLog IDSDSession];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "IDSDSessionActiveParticipantsCache removing sessionID %@", &v9, 0xCu);
    }

    os_unfair_lock_lock(&self->_lock);
    v6 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
    [v6 setObject:0 forKeyedSubscript:v4];

    v7 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
    v8 = [v7 count];

    if (!v8)
    {
      [(IDSDSessionActiveParticipantsCache *)self setCachedTokensBySessionID:0];
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (id)participantsForSessionID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(IDSDSessionActiveParticipantsCache *)self cachedTokensBySessionID];
    v6 = [v5 objectForKeyedSubscript:v4];
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

- (id)vendTokenListForSessionID:(id)a3
{
  v4 = a3;
  v5 = [[IDSParticipantsCacheEntryPointer alloc] initWithCache:self sessionID:v4];

  return v5;
}

@end