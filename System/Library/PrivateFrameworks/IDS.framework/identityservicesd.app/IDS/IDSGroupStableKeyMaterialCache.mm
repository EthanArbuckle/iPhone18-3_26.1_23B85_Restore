@interface IDSGroupStableKeyMaterialCache
- (BOOL)hasCachedStableKeyIdentifier:(id)a3;
- (BOOL)hasClientReceivedStableKeyIdentifier:(id)a3;
- (IDSGroupStableKeyMaterialCache)initWithIdentifier:(id)a3;
- (id)cachedStableKeyMaterialCollection;
- (id)debugDescription;
- (id)description;
- (id)updateGroupStableKeyMaterialCacheForPushToken:(id)a3 SKM:(id)a4;
- (void)noteClientReceiptOfStableKeyIdentifier:(id)a3;
- (void)resetRemoteStableKeyMaterialCache;
- (void)resetSKMCache;
@end

@implementation IDSGroupStableKeyMaterialCache

- (IDSGroupStableKeyMaterialCache)initWithIdentifier:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = IDSGroupStableKeyMaterialCache;
  v6 = [(IDSGroupStableKeyMaterialCache *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
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

- (void)noteClientReceiptOfStableKeyIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(IDSGroupStableKeyMaterialCache *)self stableKeyIdentifiersSentToClient];
    v5 = [v6 setByAddingObject:v4];

    [(IDSGroupStableKeyMaterialCache *)self setStableKeyIdentifiersSentToClient:v5];
  }
}

- (BOOL)hasClientReceivedStableKeyIdentifier:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [(IDSGroupStableKeyMaterialCache *)self stableKeyIdentifiersSentToClient];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (BOOL)hasCachedStableKeyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];
  v6 = [v5 keyIndex];
  v7 = [v6 UUIDString];
  v8 = [v4 isEqualToString:v7];

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
    v10 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1004D7F88;
    v12[3] = &unk_100BDCB30;
    v13 = v4;
    v14 = &v15;
    [v10 enumerateObjectsUsingBlock:v12];

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
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting group SKM cache { self: %@ }", &v6, 0xCu);
  }

  v4 = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];
  [(IDSGroupStableKeyMaterialCache *)self setPreviousLocalStableKeyMaterial:v4];

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
    v6 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Resetting remote SKM cache { self: %@ }", &v5, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableSet);
  [(IDSGroupStableKeyMaterialCache *)self setStableKeyMaterials:v4];

  [(IDSGroupStableKeyMaterialCache *)self setPushTokenToSKMsMapping:0];
}

- (id)updateGroupStableKeyMaterialCacheForPushToken:(id)a3 SKM:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
  v9 = [v8 containsObject:v7];

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v11 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
    [v11 addObject:v7];

    v12 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];

    if (!v12)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      [(IDSGroupStableKeyMaterialCache *)self setPushTokenToSKMsMapping:Mutable];
    }

    v14 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
    v15 = [v14 objectForKeyedSubscript:v6];

    if (!v15)
    {
      v16 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v17 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
      [v17 setObject:v16 forKeyedSubscript:v6];
    }

    v18 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
    v19 = [v18 objectForKeyedSubscript:v6];
    v20 = [v19 objectForKey:@"ids-group-stable-key-material-cache-previous-remote-SKM-key"];

    v21 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
    v22 = [v21 objectForKeyedSubscript:v6];
    v23 = [v22 objectForKey:@"ids-group-stable-key-material-cache-current-remote-SKM-key"];

    v24 = +[IDSFoundationLog StableEncryptionController];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
      v38 = 138413570;
      v39 = self;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v7;
      v44 = 2112;
      v45 = v23;
      v46 = 2112;
      v47 = v20;
      v48 = 2048;
      v49 = [v25 count];
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "updateGroupStableKeyMaterialCacheForPushToken: { self: %@ pushToken: %@, SKM: %@ current SKM: %@, previousSKM: %@ stableKeyMaterials count: %lu}", &v38, 0x3Eu);
    }

    if (v23)
    {
      v26 = v23;
      v27 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
      v28 = [v27 objectForKeyedSubscript:v6];
      CFDictionarySetValue(v28, @"ids-group-stable-key-material-cache-previous-remote-SKM-key", v26);
    }

    v29 = v7;
    if (v29)
    {
      v30 = [(IDSGroupStableKeyMaterialCache *)self pushTokenToSKMsMapping];
      v31 = [v30 objectForKeyedSubscript:v6];
      CFDictionarySetValue(v31, @"ids-group-stable-key-material-cache-current-remote-SKM-key", v29);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100923AA4();
    }

    if (v20)
    {
      v32 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
      [v32 removeObject:v20];

      v33 = +[IDSFoundationLog StableEncryptionController];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
        v35 = [v34 count];
        v36 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
        v38 = 138413058;
        v39 = self;
        v40 = 2112;
        v41 = v6;
        v42 = 2048;
        v43 = v35;
        v44 = 2112;
        v45 = v36;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "updateGroupStableKeyMaterialCacheForPushToken: { self: %@ pushToken: %@, remove outdated SKM from cache: stableKeyMaterials count: %lu, %@", &v38, 0x2Au);
      }

      v10 = [v20 keyIndex];
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)cachedStableKeyMaterialCollection
{
  v3 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
  v4 = [NSMutableSet setWithSet:v3];

  v5 = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];

  if (v5)
  {
    v6 = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];
    [v4 addObject:v6];
  }

  v7 = [(IDSGroupStableKeyMaterialCache *)self previousLocalStableKeyMaterial];

  if (v7)
  {
    v8 = [(IDSGroupStableKeyMaterialCache *)self previousLocalStableKeyMaterial];
    [v4 addObject:v8];
  }

  v9 = [IDSGroupStableKeyMaterialCollection alloc];
  v10 = [v4 allObjects];
  v11 = [(IDSGroupStableKeyMaterialCollection *)v9 initWithStableKeyMaterials:v10];

  return v11;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSGroupStableKeyMaterialCache *)self identifier];
  v5 = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];
  v6 = [(IDSGroupStableKeyMaterialCache *)self previousLocalStableKeyMaterial];
  v7 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p identifier: %@, currentLocalSKM: %@, previousLocalSKM: %@, SKMsCount: %lu>", v3, self, v4, v5, v6, [v7 count]);

  return v8;
}

- (id)debugDescription
{
  v3 = objc_opt_class();
  v4 = [(IDSGroupStableKeyMaterialCache *)self identifier];
  v5 = [(IDSGroupStableKeyMaterialCache *)self currentLocalStableKeyMaterial];
  v6 = [(IDSGroupStableKeyMaterialCache *)self previousLocalStableKeyMaterial];
  v7 = [(IDSGroupStableKeyMaterialCache *)self stableKeyMaterials];
  v8 = [NSString stringWithFormat:@"<%@: %p identifier: %@, currentLocalSKM: %@, previousLocalSKM: %@, SKMs: %@>", v3, self, v4, v5, v6, v7];

  return v8;
}

@end