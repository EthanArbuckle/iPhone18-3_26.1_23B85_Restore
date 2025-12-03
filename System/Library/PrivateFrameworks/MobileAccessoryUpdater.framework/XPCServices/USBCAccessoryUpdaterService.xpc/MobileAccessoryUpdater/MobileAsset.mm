@interface MobileAsset
- (MobileAsset)assetWithMaxVersion:(id)version;
- (MobileAsset)initWithDelegate:(id)delegate;
- (id)downloadAsset:(id)asset;
- (id)validateAssetAttributes:(id)attributes;
- (void)downloadComplete:(int64_t)complete completion:(id)completion;
- (void)queryComplete:(id)complete remote:(BOOL)remote status:(int64_t)status completion:(id)completion;
@end

@implementation MobileAsset

- (id)downloadAsset:(id)asset
{
  assetCopy = asset;
  state = [(MAAsset *)self->_asset state];
  if (state > 2)
  {
    if (state != 4)
    {
      goto LABEL_7;
    }
  }

  else if (state != 1)
  {
    if (state == 2)
    {
      selfCopy2 = self;
      v7 = 0;
LABEL_8:
      [(MobileAsset *)selfCopy2 downloadComplete:v7 completion:assetCopy];
      goto LABEL_9;
    }

LABEL_7:
    selfCopy2 = self;
    v7 = 3;
    goto LABEL_8;
  }

  v8 = objc_alloc_init(MADownloadOptions);
  [v8 setDiscretionary:0];
  [v8 setAllowsCellularAccess:0];
  [v8 setTimeoutIntervalForResource:120];
  asset = [(MobileAsset *)self asset];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000085B4;
  v11[3] = &unk_100024540;
  v11[4] = self;
  v12 = assetCopy;
  [asset startDownload:v8 then:v11];

LABEL_9:
  return 0;
}

- (void)queryComplete:(id)complete remote:(BOOL)remote status:(int64_t)status completion:(id)completion
{
  completeCopy = complete;
  completionCopy = completion;
  if (!status)
  {
    if (!completeCopy || ![completeCopy count])
    {
      v15 = 0;
      if (!completionCopy)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0 && ([(MobileAssetDelegate *)self->_delegate queryPredicate], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = [completeCopy filteredArrayUsingPredicate:v11];
      v14 = [(MobileAsset *)self assetWithMaxVersion:v13];
    }

    else
    {
      v14 = [(MobileAsset *)self assetWithMaxVersion:completeCopy];
    }

    if (v14)
    {
      attributes = [v14 attributes];
      v17 = attributes;
      if (attributes)
      {
        NSLog(@"foundAsset attributes=%@", attributes);
        v18 = [(MobileAsset *)self validateAssetAttributes:v17];
        if (v18)
        {
          v15 = v18;
        }

        else if (remote || [v14 state] == 2)
        {
          objc_storeStrong(&self->_asset, v14);
          v15 = 0;
          self->_assetDownloaded = [v14 state] == 2;
        }

        else
        {
          v15 = 0;
        }

LABEL_21:

        if (!completionCopy)
        {
          goto LABEL_10;
        }

LABEL_9:
        completionCopy[2](completionCopy, v15);
        goto LABEL_10;
      }

      sub_100012020(&v20);
    }

    else
    {
      sub_100012020(&v20);
      v17 = 0;
    }

    v15 = v20;
    goto LABEL_21;
  }

  sub_100012020(&v20);
  v15 = v20;
  if (completionCopy)
  {
    goto LABEL_9;
  }

LABEL_10:
}

- (id)validateAssetAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (attributesCopy && ([attributesCopy objectForKeyedSubscript:@"FirmwareBundle"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKeyedSubscript:@"FirmwareBundle"];
    fwBundleFileName = self->_fwBundleFileName;
    self->_fwBundleFileName = v7;

    v9 = [v5 objectForKeyedSubscript:@"FirmwareVersionMajor"];
    unsignedIntValue = [v9 unsignedIntValue];
    v11 = [v5 objectForKeyedSubscript:@"FirmwareVersionMinor"];
    unsignedIntValue2 = [v11 unsignedIntValue];
    v13 = [v5 objectForKeyedSubscript:@"FirmwareVersionRelease"];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d.%d.%d", unsignedIntValue, unsignedIntValue2, [v13 unsignedIntValue]);
    fwVersion = self->_fwVersion;
    self->_fwVersion = v14;

    v16 = 0;
  }

  else
  {
    sub_100012064(&v18);
    v16 = v18;
  }

  return v16;
}

- (void)downloadComplete:(int64_t)complete completion:(id)completion
{
  completionCopy = completion;
  v7 = completionCopy;
  if (!complete)
  {
    self->_assetDownloaded = 1;
    if (!completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1000120AC(complete, &v8);
  complete = v8;
  if (v7)
  {
LABEL_3:
    v7[2](v7, complete);
  }

LABEL_4:
}

- (MobileAsset)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (delegateCopy)
  {
    v8.receiver = self;
    v8.super_class = MobileAsset;
    v6 = [(MobileAsset *)&v8 init];
    self = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_delegate, delegate);
    }
  }

  return self;
}

- (MobileAsset)assetWithMaxVersion:(id)version
{
  versionCopy = version;
  v4 = versionCopy;
  if (!versionCopy || (v27 = 0u, v28 = 0u, v25 = 0u, v26 = 0u, (v23 = [versionCopy countByEnumeratingWithState:&v25 objects:v29 count:16]) == 0))
  {
    v6 = 0;
    goto LABEL_27;
  }

  v5 = 0;
  v24 = 0;
  v6 = 0;
  obj = v4;
  v22 = *v26;
  do
  {
    v7 = 0;
    do
    {
      if (*v26 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v25 + 1) + 8 * v7);
      attributes = [v8 attributes];
      v10 = attributes;
      if (!attributes)
      {
        v13 = 0;
        v11 = 0;
LABEL_22:
        v12 = 0;
        goto LABEL_18;
      }

      v11 = [attributes objectForKey:@"FirmwareVersionMajor"];
      if (!v11)
      {
        v13 = 0;
        goto LABEL_22;
      }

      v12 = [v10 objectForKey:@"FirmwareVersionMinor"];
      if (v12)
      {
        v13 = [v10 objectForKey:@"FirmwareVersionRelease"];
        if (v13)
        {
          unsignedIntValue = [v12 unsignedIntValue];
          unsignedIntValue2 = [v13 unsignedIntValue];
          v16 = unsignedIntValue2;
          if (unsignedIntValue > v5 || (unsignedIntValue == v5 ? (v17 = unsignedIntValue2 > v24) : (v17 = 0), v17))
          {
            v18 = v8;

            v5 = unsignedIntValue;
            v24 = v16;
            v6 = v18;
          }
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_18:

      v7 = v7 + 1;
    }

    while (v23 != v7);
    v4 = obj;
    v19 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    v23 = v19;
  }

  while (v19);
LABEL_27:

  return v6;
}

@end