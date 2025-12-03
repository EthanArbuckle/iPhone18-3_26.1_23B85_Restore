@interface IDSGroupStableKeyMaterialCache
- (BOOL)hasCachedStableKeyIdentifier:(id)identifier;
- (BOOL)hasClientReceivedStableKeyIdentifier:(id)identifier;
- (IDSGroupStableKeyMaterialCache)initWithIdentifier:(id)identifier;
- (id)cachedStableKeyMaterialCollection;
- (id)debugDescription;
- (id)description;
- (id)updateGroupStableKeyMaterialCacheForPushToken:(id)token SKM:(id)m;
- (void)noteClientReceiptOfStableKeyIdentifier:(id)identifier;
- (void)resetRemoteStableKeyMaterialCache;
- (void)resetSKMCache;
@end

@implementation IDSGroupStableKeyMaterialCache

- (IDSGroupStableKeyMaterialCache)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = IDSGroupStableKeyMaterialCache;
  v6 = [(IDSGroupStableKeyMaterialCache *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = objc_alloc_init(NSMutableSet);
    stableKeyMaterials = v7->_stableKeyMaterials;
    v7->_stableKeyMaterials = v8;

    v10 = objc_alloc_init(NSSet);
    stableKeyIdentifiersSentToClient = v7->_stableKeyIdentifiersSentToClient;
    v7->_stableKeyIdentifiersSentToClient = v10;

    v12 = +[IDSFoundationLog StableEncryptionController];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Created group SKM cache { self: %@ }", buf, 0xCu);
    }
  }

  return v7;
}

- (void)noteClientReceiptOfStableKeyIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    stableKeyIdentifiersSentToClient = [(IDSGroupStableKeyMaterialCache *)self stableKeyIdentifiersSentToClient];
    v5 = [stableKeyIdentifiersSentToClient setByAddingObject:identifierCopy];

    [(IDSGroupStableKeyMaterialCache *)self setStableKeyIdentifiersSentToClient:v5];
  }
}

- (BOOL)hasClientReceivedStableKeyIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 0;
  }

  identifierCopy = identifier;
  stableKeyIdentifiersSentToClient = [(IDSGroupStableKeyMaterialCache *)self stableKeyIdentifiersSentToClient];
  v6 = [stableKeyIdentifiersSentToClient containsObject:identifierCopy];

  return v6;
}

- (BOOL)hasCachedStableKeyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentLocalStableKeyMaterial = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];
  keyIndex = [currentLocalStableKeyMaterial keyIndex];
  uUIDString = [keyIndex UUIDString];
  v8 = [identifierCopy isEqualToString:uUIDString];

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    stableKeyMaterials = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1004D7F88;
    v12[3] = &unk_100BDCB30;
    v13 = identifierCopy;
    v14 = &v15;
    [stableKeyMaterials enumerateObjectsUsingBlock:v12];

    v9 = *(v16 + 24);
    _Block_object_dispose(&v15, 8);
  }

  return v9 & 1;
}

- (void)resetSKMCache
{
  v3 = +[IDSFoundationLog StableEncryptionController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting group SKM cache { self: %@ }", &v6, 0xCu);
  }

  currentLocalStableKeyMaterial = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];
  [(IDSGroupStableKeyMaterialCache *)self setPreviousLocalStableKeyMaterial:currentLocalStableKeyMaterial];

  [(IDSGroupStableKeyMaterialCache *)self setCurrentLocalStableKeyMaterial:0];
  [(IDSGroupStableKeyMaterialCache *)self setSentToRemotes:0];
  v5 = objc_alloc_init(NSMutableSet);
  [(IDSGroupStableKeyMaterialCache *)self setStableKeyMaterials:v5];

  [(IDSGroupStableKeyMaterialCache *)self setPushTokenToSKMsMapping:0];
}

- (void)resetRemoteStableKeyMaterialCache
{
  v3 = +[IDSFoundationLog StableEncryptionController];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting remote SKM cache { self: %@ }", &v5, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableSet);
  [(IDSGroupStableKeyMaterialCache *)self setStableKeyMaterials:v4];

  [(IDSGroupStableKeyMaterialCache *)self setPushTokenToSKMsMapping:0];
}

- (id)updateGroupStableKeyMaterialCacheForPushToken:(id)token SKM:(id)m
{
  tokenCopy = token;
  mCopy = m;
  stableKeyMaterials = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
  v9 = [stableKeyMaterials containsObject:mCopy];

  if (v9)
  {
    keyIndex = 0;
  }

  else
  {
    stableKeyMaterials2 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
    [stableKeyMaterials2 addObject:mCopy];

    pushTokenToSKMsMapping = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];

    if (!pushTokenToSKMsMapping)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [(IDSGroupStableKeyMaterialCache *)self setPushTokenToSKMsMapping:Mutable];
    }

    pushTokenToSKMsMapping2 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
    v15 = [pushTokenToSKMsMapping2 objectForKeyedSubscript:tokenCopy];

    if (!v15)
    {
      v16 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      pushTokenToSKMsMapping3 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
      [pushTokenToSKMsMapping3 setObject:v16 forKeyedSubscript:tokenCopy];
    }

    pushTokenToSKMsMapping4 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
    v19 = [pushTokenToSKMsMapping4 objectForKeyedSubscript:tokenCopy];
    v20 = [v19 objectForKey:@"ids-group-stable-key-material-cache-previous-remote-SKM-key"];

    pushTokenToSKMsMapping5 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
    v22 = [pushTokenToSKMsMapping5 objectForKeyedSubscript:tokenCopy];
    v23 = [v22 objectForKey:@"ids-group-stable-key-material-cache-current-remote-SKM-key"];

    v24 = +[IDSFoundationLog StableEncryptionController];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      stableKeyMaterials3 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
      v38 = 138413570;
      selfCopy2 = self;
      v40 = 2112;
      v41 = tokenCopy;
      v42 = 2112;
      v43 = mCopy;
      v44 = 2112;
      v45 = v23;
      v46 = 2112;
      v47 = v20;
      v48 = 2048;
      v49 = [stableKeyMaterials3 count];
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "updateGroupStableKeyMaterialCacheForPushToken: { self: %@ pushToken: %@, SKM: %@ current SKM: %@, previousSKM: %@ stableKeyMaterials count: %lu}", &v38, 0x3Eu);
    }

    if (v23)
    {
      v26 = v23;
      pushTokenToSKMsMapping6 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
      v28 = [pushTokenToSKMsMapping6 objectForKeyedSubscript:tokenCopy];
      CFDictionarySetValue(v28, @"ids-group-stable-key-material-cache-previous-remote-SKM-key", v26);
    }

    v29 = mCopy;
    if (v29)
    {
      pushTokenToSKMsMapping7 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
      v31 = [pushTokenToSKMsMapping7 objectForKeyedSubscript:tokenCopy];
      CFDictionarySetValue(v31, @"ids-group-stable-key-material-cache-current-remote-SKM-key", v29);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100923AA4();
    }

    if (v20)
    {
      stableKeyMaterials4 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
      [stableKeyMaterials4 removeObject:v20];

      v33 = +[IDSFoundationLog StableEncryptionController];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        stableKeyMaterials5 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
        v35 = [stableKeyMaterials5 count];
        stableKeyMaterials6 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
        v38 = 138413058;
        selfCopy2 = self;
        v40 = 2112;
        v41 = tokenCopy;
        v42 = 2048;
        v43 = v35;
        v44 = 2112;
        v45 = stableKeyMaterials6;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "updateGroupStableKeyMaterialCacheForPushToken: { self: %@ pushToken: %@, remove outdated SKM from cache: stableKeyMaterials count: %lu, %@", &v38, 0x2Au);
      }

      keyIndex = [v20 keyIndex];
    }

    else
    {
      keyIndex = 0;
    }
  }

  return keyIndex;
}

- (id)cachedStableKeyMaterialCollection
{
  stableKeyMaterials = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
  v4 = [NSMutableSet setWithSet:stableKeyMaterials];

  currentLocalStableKeyMaterial = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];

  if (currentLocalStableKeyMaterial)
  {
    currentLocalStableKeyMaterial2 = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];
    [v4 addObject:currentLocalStableKeyMaterial2];
  }

  previousLocalStableKeyMaterial = [(IDSGroupStableKeyMaterialCache *)self previousLocalStableKeyMaterial];

  if (previousLocalStableKeyMaterial)
  {
    previousLocalStableKeyMaterial2 = [(IDSGroupStableKeyMaterialCache *)self previousLocalStableKeyMaterial];
    [v4 addObject:previousLocalStableKeyMaterial2];
  }

  v9 = [IDSGroupStableKeyMaterialCollection alloc];
  allObjects = [v4 allObjects];
  v11 = [(IDSGroupStableKeyMaterialCollection *)v9 initWithStableKeyMaterials:allObjects];

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  identifier = [(IDSGroupStableKeyMaterialCache *)self identifier];
  currentLocalStableKeyMaterial = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];
  previousLocalStableKeyMaterial = [(IDSGroupStableKeyMaterialCache *)self previousLocalStableKeyMaterial];
  stableKeyMaterials = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p identifier: %@, currentLocalSKM: %@, previousLocalSKM: %@, SKMsCount: %lu>", v3, self, identifier, currentLocalStableKeyMaterial, previousLocalStableKeyMaterial, [stableKeyMaterials count]);

  return v8;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  identifier = [(IDSGroupStableKeyMaterialCache *)self identifier];
  currentLocalStableKeyMaterial = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];
  previousLocalStableKeyMaterial = [(IDSGroupStableKeyMaterialCache *)self previousLocalStableKeyMaterial];
  stableKeyMaterials = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
  v8 = [NSString stringWithFormat:@"<%@: %p identifier: %@, currentLocalSKM: %@, previousLocalSKM: %@, SKMs: %@>", v3, self, identifier, currentLocalStableKeyMaterial, previousLocalStableKeyMaterial, stableKeyMaterials];

  return v8;
}

@end