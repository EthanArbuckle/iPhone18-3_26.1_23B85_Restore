@interface IDSKTGossipManager
+ (id)sharedInstance;
- (IDSKTGossipManager)init;
- (IDSKTGossipManager)initWithGossipPolicy:(id)a3 transparencyVerifier:(id)a4 gossipEnabledServices:(id)a5;
- (id)gossipSTHPayloadForDestinations:(id)a3 forServiceIdentifier:(id)a4 fromID:(id)a5;
- (unsigned)firstGossipChanceFromBag;
- (unsigned)maxRecipientMemoryFromBag;
- (unsigned)subsequentGossipChanceFromBag;
- (void)sthReceivedFromGossipReceipient:(id)a3;
@end

@implementation IDSKTGossipManager

+ (id)sharedInstance
{
  if (qword_100CBD270 != -1)
  {
    sub_10001AE3C();
  }

  v3 = qword_100CBD278;

  return v3;
}

- (IDSKTGossipManager)init
{
  v3 = objc_alloc_init(IDSKTGossipPolicySpecification);
  [(IDSKTGossipPolicySpecification *)v3 setFirstGossipChance:[(IDSKTGossipManager *)self firstGossipChanceFromBag]];
  [(IDSKTGossipPolicySpecification *)v3 setSubsequentGossipChance:[(IDSKTGossipManager *)self subsequentGossipChanceFromBag]];
  [(IDSKTGossipPolicySpecification *)v3 setMaxRecipientMemory:[(IDSKTGossipManager *)self maxRecipientMemoryFromBag]];
  v4 = [[IDSKTGossipPolicy alloc] initWithGossipSpecification:v3];
  v5 = [(IDSKTGossipManager *)self transparencyVerifierSharedInstance];
  v6 = [NSSet setWithArray:&off_100C3DBB0];
  v7 = [(IDSKTGossipManager *)self initWithGossipPolicy:v4 transparencyVerifier:v5 gossipEnabledServices:v6];

  return v7;
}

- (IDSKTGossipManager)initWithGossipPolicy:(id)a3 transparencyVerifier:(id)a4 gossipEnabledServices:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = IDSKTGossipManager;
  v12 = [(IDSKTGossipManager *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_gossipPolicy, a3);
    objc_storeStrong(&v13->_transparencyVerifier, a4);
    objc_storeStrong(&v13->_gossipEnabledServiceIdentifiers, a5);
  }

  return v13;
}

- (id)gossipSTHPayloadForDestinations:(id)a3 forServiceIdentifier:(id)a4 fromID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(IDSKTGossipManager *)self canGossipOnService:v9])
  {
    v11 = [IDSURI alloc];
    v12 = [v10 _stripPotentialTokenURIWithToken:0];
    v13 = [v11 initWithPrefixedURI:v12];

    v39 = v8;
    v14 = [v8 destinationURIs];
    v15 = [v14 __imSetByApplyingBlock:&stru_100BDB6E8];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
LABEL_4:
      v20 = 0;
      while (1)
      {
        if (*v46 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v45 + 1) + 8 * v20);
        if (![(IDSKTGossipPolicy *)self->_gossipPolicy havePreviouslyGossipedToURI:v21]&& v21 != v13)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [v16 countByEnumeratingWithState:&v45 objects:v50 count:16];
          if (v18)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      v23 = v21;

      if (v23)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_11:
    }

    v24 = [v16 count];
    v25 = [v16 allObjects];
    v23 = [v25 objectAtIndexedSubscript:arc4random_uniform(v24)];

LABEL_17:
    if (v23 == v13)
    {
      v26 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v30 = "Trying to gossip to own device. Will not gossip.";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
      }
    }

    else
    {
      if ([(IDSKTGossipPolicy *)self->_gossipPolicy shouldGossipToURI:v23])
      {
        v44 = 0;
        v38 = [TransparencyGossip retrieveCurrentVerifiedTLTSTH:&v44];
        v26 = v44;
        v27 = +[IDSFoundationLog KeyTransparency];
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          v8 = v39;
          if (v28)
          {
            *buf = 138412290;
            v52 = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Error retrieving STH from transparencyd: %@", buf, 0xCu);
          }

          v22 = 0;
          v29 = v38;
        }

        else
        {
          v37 = v10;
          if (v28)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Successfully retrieved STH from transparencyd, will gossip.", buf, 2u);
          }

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v31 = v16;
          v32 = [v31 countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v41;
            do
            {
              for (i = 0; i != v33; i = i + 1)
              {
                if (*v41 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                [(IDSKTGossipPolicy *)self->_gossipPolicy markGossipForURI:*(*(&v40 + 1) + 8 * i)];
              }

              v33 = [v31 countByEnumeratingWithState:&v40 objects:v49 count:16];
            }

            while (v33);
          }

          v29 = v38;
          v22 = v38;
          v8 = v39;
          v10 = v37;
        }

        goto LABEL_40;
      }

      v26 = +[IDSFoundationLog KeyTransparency];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v30 = "Didn't pass dice roll, will not gossip";
        goto LABEL_27;
      }
    }

    v22 = 0;
    v8 = v39;
LABEL_40:

    goto LABEL_41;
  }

  v13 = +[IDSFoundationLog KeyTransparency];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v52 = v9;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Gossip is not enabled for service: %@", buf, 0xCu);
  }

  v22 = 0;
LABEL_41:

  return v22;
}

- (void)sthReceivedFromGossipReceipient:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10041A1D4;
  block[3] = &unk_100BD6ED0;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

- (unsigned)firstGossipChanceFromBag
{
  if (+[IMUserDefaults keyTransparencyFirstGossipChance]>= 1 && CUTIsInternalInstall())
  {
    return +[IMUserDefaults keyTransparencyFirstGossipChance];
  }

  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v4 = [v3 objectForKey:&stru_100C06028];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v4 unsignedIntValue];
  }

  else
  {
    v2 = 20;
  }

  return v2;
}

- (unsigned)subsequentGossipChanceFromBag
{
  if (+[IMUserDefaults keyTransparencySubsequentGossipChance]>= 1 && CUTIsInternalInstall())
  {
    return +[IMUserDefaults keyTransparencySubsequentGossipChance];
  }

  v3 = [IDSServerBag sharedInstanceForBagType:0];
  v4 = [v3 objectForKey:&stru_100C06028];

  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v4 unsignedIntValue];
  }

  else
  {
    v2 = 2;
  }

  return v2;
}

- (unsigned)maxRecipientMemoryFromBag
{
  v2 = [IDSServerBag sharedInstanceForBagType:0];
  v3 = [v2 objectForKey:&stru_100C06028];

  if (v3 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v4 = [v3 unsignedIntValue];
  }

  else
  {
    v4 = 100;
  }

  return v4;
}

@end