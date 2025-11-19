@interface BLRestoreContentItem
- (BLRestoreContentItem)init;
- (BLRestoreContentItem)initWithRestoreRequestItem:(id)a3;
- (BOOL)isDRMFree;
- (BOOL)isEligibleForRestore:(id *)a3;
- (id)_restoreKeyForAssetProperty:(id)a3;
- (id)_restoreKeyForDownloadProperty:(id)a3;
- (id)copyRestoreDictionary;
- (void)_setValue:(id)a3 forProperty:(id)a4;
- (void)setDRMFree:(BOOL)a3;
- (void)setValue:(id)a3 forAssetProperty:(id)a4;
- (void)setValue:(id)a3 forDownloadProperty:(id)a4;
@end

@implementation BLRestoreContentItem

- (BLRestoreContentItem)init
{
  v6.receiver = self;
  v6.super_class = BLRestoreContentItem;
  v2 = [(BLRestoreContentItem *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    properties = v2->_properties;
    v2->_properties = v3;
  }

  return v2;
}

- (BLRestoreContentItem)initWithRestoreRequestItem:(id)a3
{
  v4 = a3;
  v5 = [(BLRestoreContentItem *)self init];
  if (v5)
  {
    v37[0] = BLSSDownloadPropertyKind;
    v37[1] = BLSSDownloadPropertyIsRestore;
    v37[2] = BLSSDownloadPropertyStoreAccountIdentifier;
    v37[3] = BLSSDownloadPropertyStoreAccountAppleID;
    v37[4] = BLSSDownloadPropertyStoreCollectionIdentifier;
    v37[5] = BLSSDownloadPropertyStoreFrontIdentifier;
    v37[6] = BLSSDownloadPropertyStoreItemIdentifier;
    v37[7] = BLSSDownloadPropertyStoreSoftwareVersionIdentifier;
    v37[8] = BLSSDownloadPropertyTitle;
    v6 = [NSArray arrayWithObjects:v37 count:9];
    v7 = [v4 downloadDictionary];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v31;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v30 + 1) + 8 * i);
          v14 = [v7 objectForKeyedSubscript:v13];
          [(BLRestoreContentItem *)v5 setValue:v14 forDownloadProperty:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v10);
    }

    v35[0] = BLSSDownloadAssetPropertyIsDRMFree;
    v35[1] = BLSSDownloadAssetPropertyStoreFlavor;
    v35[2] = BLSSDownloadAssetPropertyVideoDimensions;
    v15 = [NSArray arrayWithObjects:v35 count:3];
    v25 = v4;
    v16 = [v4 assetDictionary];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v27;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v26 + 1) + 8 * j);
          v23 = [v16 objectForKeyedSubscript:v22];
          [(BLRestoreContentItem *)v5 setValue:v23 forAssetProperty:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v19);
    }

    v4 = v25;
  }

  return v5;
}

- (id)copyRestoreDictionary
{
  v3 = 0;
  if ([(BLRestoreContentItem *)self isEligibleForRestore:0])
  {
    v3 = [(NSMutableDictionary *)self->_properties mutableCopy];
    v4 = [v3 objectForKeyedSubscript:@"flavor"];

    if (v4)
    {
      [v3 removeObjectForKey:@"drm-free"];
      [v3 removeObjectForKey:@"dimensions"];
    }

    v5 = [v3 objectForKeyedSubscript:@"store-front-id"];
    if (v5)
    {
      v6 = v5;
      v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%ld", [v5 integerValue]);

      [v3 setObject:v7 forKeyedSubscript:@"store-front-id"];
    }

    originalPurchaserAccountID = self->_originalPurchaserAccountID;
    if (originalPurchaserAccountID)
    {
      [v3 setObject:originalPurchaserAccountID forKeyedSubscript:@"ownerDsid"];
    }
  }

  return v3;
}

- (BOOL)isDRMFree
{
  v2 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:@"drm-free"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)isEligibleForRestore:(id *)a3
{
  if (!self->_isRestore)
  {
    v12 = sub_1000A8F44(0, 0, 0);
    v13 = 0;
    if (!a3)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v5 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:@"cloud-id"];
  v6 = BLGetItemIdentifierFromValue();

  v7 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:@"item-id"];
  v8 = BLGetItemIdentifierFromValue();

  v9 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:@"kind"];
  v10 = v9;
  if (v6 | v8)
  {
    if (!self->_accountID && !self->_appleID)
    {
      v11 = 119;
      goto LABEL_19;
    }

    if (!v9)
    {
      v11 = 117;
      goto LABEL_19;
    }

    v14 = [v9 isEqualToString:BLDownloadKindAudiobook];
    properties = self->_properties;
    if (v14)
    {
      v16 = [(NSMutableDictionary *)properties objectForKeyedSubscript:@"dimensions"];
      if (v16)
      {
        goto LABEL_13;
      }

      properties = self->_properties;
    }

    v16 = [(NSMutableDictionary *)properties objectForKeyedSubscript:@"drm-free"];
    if (!v16)
    {
      v17 = [(NSMutableDictionary *)self->_properties objectForKeyedSubscript:@"flavor"];

      if (!v17)
      {
        v11 = 118;
        goto LABEL_19;
      }

LABEL_14:
      v12 = 0;
      v13 = 1;
      goto LABEL_20;
    }

LABEL_13:

    goto LABEL_14;
  }

  v11 = 116;
LABEL_19:
  v12 = sub_1000A8F44(v11, 0, 0);
  v13 = 0;
LABEL_20:

  if (a3)
  {
LABEL_21:
    v18 = v12;
    *a3 = v12;
  }

LABEL_22:

  return v13;
}

- (void)setDRMFree:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  [(BLRestoreContentItem *)self _setValue:v4 forProperty:@"drm-free"];
}

- (void)setValue:(id)a3 forAssetProperty:(id)a4
{
  v6 = a3;
  v7 = [(BLRestoreContentItem *)self _restoreKeyForAssetProperty:a4];
  [(BLRestoreContentItem *)self _setValue:v6 forProperty:v7];
}

- (void)setValue:(id)a3 forDownloadProperty:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(BLRestoreContentItem *)self _restoreKeyForDownloadProperty:v6];
  if (v7)
  {
    [(BLRestoreContentItem *)self _setValue:v8 forProperty:v7];
  }

  else if ([v6 isEqualToString:BLSSDownloadPropertyIsRestore])
  {
    self->_isRestore = [v8 BOOLValue];
  }

  else if ([v6 isEqualToString:BLSSDownloadPropertyStoreAccountAppleID])
  {
    [(BLRestoreContentItem *)self setStoreAccountAppleID:v8];
  }

  else if ([v6 isEqualToString:BLSSDownloadPropertyStoreAccountIdentifier])
  {
    [(BLRestoreContentItem *)self setStoreAccountID:v8];
  }

  else if ([v6 isEqualToString:BLSSDownloadPropertyTitle])
  {
    [(BLRestoreContentItem *)self setTitle:v8];
  }
}

- (id)_restoreKeyForAssetProperty:(id)a3
{
  v3 = qword_10013ECD0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1000CB49C();
  }

  v5 = [qword_10013ECC8 objectForKeyedSubscript:v4];

  return v5;
}

- (id)_restoreKeyForDownloadProperty:(id)a3
{
  v3 = qword_10013ECE0;
  v4 = a3;
  if (v3 != -1)
  {
    sub_1000CB4B0();
  }

  v5 = [qword_10013ECD8 objectForKeyedSubscript:v4];

  return v5;
}

- (void)_setValue:(id)a3 forProperty:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (v6)
  {
    if (v8)
    {
      if ([v8 conformsToProtocol:&OBJC_PROTOCOL___NSCopying])
      {
        v7 = [v8 copy];
        [(NSMutableDictionary *)self->_properties setObject:v7 forKeyedSubscript:v6];
      }

      else
      {
        [(NSMutableDictionary *)self->_properties setObject:v8 forKeyedSubscript:v6];
      }
    }

    else
    {
      [(NSMutableDictionary *)self->_properties removeObjectForKey:v6];
    }
  }
}

@end