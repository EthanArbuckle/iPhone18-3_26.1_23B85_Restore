@interface MobileAsset
- (MobileAsset)assetWithMaxVersion:(id)a3;
- (MobileAsset)initWithDelegate:(id)a3;
- (id)downloadAsset:(id)a3;
- (id)validateAssetAttributes:(id)a3;
- (void)downloadComplete:(int64_t)a3 completion:(id)a4;
- (void)queryComplete:(id)a3 remote:(BOOL)a4 status:(int64_t)a5 completion:(id)a6;
@end

@implementation MobileAsset

- (id)downloadAsset:(id)a3
{
  v4 = a3;
  v5 = [(MAAsset *)self->_asset state];
  if (v5 > 2)
  {
    if (v5 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (v5 != 1)
  {
    if (v5 == 2)
    {
      v6 = self;
      v7 = 0;
LABEL_8:
      [(MobileAsset *)v6 downloadComplete:v7 completion:v4];
      goto LABEL_9;
    }

LABEL_7:
    v6 = self;
    v7 = 3;
    goto LABEL_8;
  }

  v8 = objc_alloc_init(MADownloadOptions);
  [v8 setDiscretionary:0];
  [v8 setAllowsCellularAccess:0];
  [v8 setTimeoutIntervalForResource:120];
  v9 = [(MobileAsset *)self asset];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000085B4;
  v11[3] = &unk_100024540;
  v11[4] = self;
  v12 = v4;
  [v9 startDownload:v8 then:v11];

LABEL_9:
  return 0;
}

- (void)queryComplete:(id)a3 remote:(BOOL)a4 status:(int64_t)a5 completion:(id)a6
{
  v19 = a3;
  v10 = a6;
  if (!a5)
  {
    if (!v19 || ![v19 count])
    {
      v15 = 0;
      if (!v10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (self->_delegate && (objc_opt_respondsToSelector() & 1) != 0 && ([(MobileAssetDelegate *)self->_delegate queryPredicate], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      v13 = [v19 filteredArrayUsingPredicate:v11];
      v14 = [(MobileAsset *)self assetWithMaxVersion:v13];
    }

    else
    {
      v14 = [(MobileAsset *)self assetWithMaxVersion:v19];
    }

    if (v14)
    {
      v16 = [v14 attributes];
      v17 = v16;
      if (v16)
      {
        NSLog(@"foundAsset attributes=%@", v16);
        v18 = [(MobileAsset *)self validateAssetAttributes:v17];
        if (v18)
        {
          v15 = v18;
        }

        else if (a4 || [v14 state] == 2)
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

        if (!v10)
        {
          goto LABEL_10;
        }

LABEL_9:
        v10[2](v10, v15);
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
  if (v10)
  {
    goto LABEL_9;
  }

LABEL_10:
}

- (id)validateAssetAttributes:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 objectForKeyedSubscript:@"FirmwareBundle"], v6 = objc_claimAutoreleasedReturnValue(), v6, v6))
  {
    v7 = [v5 objectForKeyedSubscript:@"FirmwareBundle"];
    fwBundleFileName = self->_fwBundleFileName;
    self->_fwBundleFileName = v7;

    v9 = [v5 objectForKeyedSubscript:@"FirmwareVersionMajor"];
    v10 = [v9 unsignedIntValue];
    v11 = [v5 objectForKeyedSubscript:@"FirmwareVersionMinor"];
    v12 = [v11 unsignedIntValue];
    v13 = [v5 objectForKeyedSubscript:@"FirmwareVersionRelease"];
    v14 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d.%d.%d", v10, v12, [v13 unsignedIntValue]);
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

- (void)downloadComplete:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (!a3)
  {
    self->_assetDownloaded = 1;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_1000120AC(a3, &v8);
  a3 = v8;
  if (v7)
  {
LABEL_3:
    v7[2](v7, a3);
  }

LABEL_4:
}

- (MobileAsset)initWithDelegate:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v8.receiver = self;
    v8.super_class = MobileAsset;
    v6 = [(MobileAsset *)&v8 init];
    self = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_delegate, a3);
    }
  }

  return self;
}

- (MobileAsset)assetWithMaxVersion:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || (v27 = 0u, v28 = 0u, v25 = 0u, v26 = 0u, (v23 = [v3 countByEnumeratingWithState:&v25 objects:v29 count:16]) == 0))
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
      v9 = [v8 attributes];
      v10 = v9;
      if (!v9)
      {
        v13 = 0;
        v11 = 0;
LABEL_22:
        v12 = 0;
        goto LABEL_18;
      }

      v11 = [v9 objectForKey:@"FirmwareVersionMajor"];
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
          v14 = [v12 unsignedIntValue];
          v15 = [v13 unsignedIntValue];
          v16 = v15;
          if (v14 > v5 || (v14 == v5 ? (v17 = v15 > v24) : (v17 = 0), v17))
          {
            v18 = v8;

            v5 = v14;
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