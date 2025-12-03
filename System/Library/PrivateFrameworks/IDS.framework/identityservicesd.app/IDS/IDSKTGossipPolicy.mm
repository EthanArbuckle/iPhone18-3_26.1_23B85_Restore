@interface IDSKTGossipPolicy
- (BOOL)shouldGossipToURI:(id)i;
- (BOOL)shouldSelfVerifyBecauseOfPeer;
- (IDSKTGossipPolicy)initWithGossipSpecification:(id)specification;
- (void)_loadGossipRecipients;
- (void)_storeGossipRecipients;
- (void)markGossipForURI:(id)i;
- (void)markSelfVerifyBecauseOfPeer;
- (void)resetGossipState;
@end

@implementation IDSKTGossipPolicy

- (IDSKTGossipPolicy)initWithGossipSpecification:(id)specification
{
  specificationCopy = specification;
  if (!specificationCopy)
  {
    sub_10092935C(a2, self);
  }

  v18.receiver = self;
  v18.super_class = IDSKTGossipPolicy;
  v7 = [(IDSKTGossipPolicy *)&v18 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_spec, specification);
    v9 = objc_alloc_init(NSMutableSet);
    gossipRecipients = v8->_gossipRecipients;
    v8->_gossipRecipients = v9;

    v11 = CSDBGetMobileUserDirectory();
    if (v11)
    {
      v12 = [NSString stringWithUTF8String:v11];
    }

    else
    {
      v12 = @"~";
    }

    v19[0] = v12;
    v19[1] = @"/Library/IdentityServices/ids-gossip.db";
    v13 = [NSArray arrayWithObjects:v19 count:2];
    v14 = [NSString pathWithComponents:v13];

    if (v11)
    {
    }

    v15 = [[IDSKVStore alloc] initWithPath:v14 storeName:@"GossipCache" dataProtectionClass:0];
    kvStore = v8->_kvStore;
    v8->_kvStore = v15;

    [(IDSKTGossipPolicy *)v8 _loadGossipRecipients];
  }

  return v8;
}

- (void)resetGossipState
{
  v3 = objc_alloc_init(NSMutableSet);
  [(IDSKTGossipPolicy *)self setGossipRecipients:v3];

  [(IDSKTGossipPolicy *)self _storeGossipRecipients];
}

- (BOOL)shouldGossipToURI:(id)i
{
  v4 = [(NSMutableSet *)self->_gossipRecipients containsObject:i];
  spec = [(IDSKTGossipPolicy *)self spec];
  v6 = spec;
  if (v4)
  {
    subsequentGossipChance = [spec subsequentGossipChance];
  }

  else
  {
    subsequentGossipChance = [spec firstGossipChance];
  }

  v8 = arc4random_uniform(0x64u) < subsequentGossipChance;

  return v8;
}

- (void)markGossipForURI:(id)i
{
  iCopy = i;
  v4 = [(NSMutableSet *)self->_gossipRecipients count];
  if (v4 >= [(IDSKTGossipPolicySpecification *)self->_spec maxRecipientMemory])
  {
    allObjects = [(NSMutableSet *)self->_gossipRecipients allObjects];
    v6 = [allObjects objectAtIndex:{arc4random_uniform(objc_msgSend(allObjects, "count"))}];
    [(NSMutableSet *)self->_gossipRecipients removeObject:v6];
  }

  [(NSMutableSet *)self->_gossipRecipients addObject:iCopy];
  [(IDSKTGossipPolicy *)self _storeGossipRecipients];
}

- (BOOL)shouldSelfVerifyBecauseOfPeer
{
  if (!self->_lastSelfVerifyDate)
  {
    return 1;
  }

  v3 = +[NSDate now];
  [v3 timeIntervalSinceDate:self->_lastSelfVerifyDate];
  v5 = v4;

  [(IDSKTGossipPolicySpecification *)self->_spec selfVerifyThrottleTime];
  return v5 > v6;
}

- (void)markSelfVerifyBecauseOfPeer
{
  v3 = +[NSDate now];
  lastSelfVerifyDate = self->_lastSelfVerifyDate;
  self->_lastSelfVerifyDate = v3;

  _objc_release_x1(v3, lastSelfVerifyDate);
}

- (void)_loadGossipRecipients
{
  kvStore = self->_kvStore;
  v22 = 0;
  v4 = [(IDSKVStore *)kvStore dataForKey:@"gossip-recipient-set" error:&v22];
  v5 = v22;
  if (v5)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v25 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Error fetching stored gossip recipients { error: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  if (v4)
  {
    v7 = objc_opt_class();
    v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
    v21 = 0;
    v9 = [NSKeyedUnarchiver _strictlyUnarchivedObjectOfClasses:v8 fromData:v4 error:&v21];
    v10 = v21;

    if (v10)
    {
      v11 = OSLogHandleForIDSCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v25 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Error unarchiving stored gossip recipients { error: %@ }", buf, 0xCu);
      }

      if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
      {
        _IDSLogV();
      }
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          v16 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSMutableSet *)self->_gossipRecipients addObject:v16];
          }
        }

        v13 = [v12 countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v13);
    }
  }
}

- (void)_storeGossipRecipients
{
  gossipRecipients = self->_gossipRecipients;
  v11 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:gossipRecipients requiringSecureCoding:1 error:&v11];
  v5 = v11;
  if (v5)
  {
    v6 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Error archiving stored gossip recipients { error: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }

  kvStore = self->_kvStore;
  v10 = 0;
  [(IDSKVStore *)kvStore persistData:v4 forKey:@"gossip-recipient-set" error:&v10];
  v8 = v10;
  if (v8)
  {
    v9 = OSLogHandleForIDSCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Error storing gossip recipients { error: %@ }", buf, 0xCu);
    }

    if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
    {
      _IDSLogV();
    }
  }
}

@end