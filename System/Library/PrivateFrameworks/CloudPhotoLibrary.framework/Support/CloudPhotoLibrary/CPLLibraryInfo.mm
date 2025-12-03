@interface CPLLibraryInfo
- (CPLLibraryInfo)initWithCKRecord:(id)record zone:(id)zone;
- (id)_assetCountsFromCKRecord:(id)record;
- (void)updateWithCKRecord:(id)record zone:(id)zone;
@end

@implementation CPLLibraryInfo

- (id)_assetCountsFromCKRecord:(id)record
{
  if (record)
  {
    recordCopy = record;
    v4 = [recordCopy valueForKey:@"photosCount"];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = &off_10028ED88;
    }

    v7 = v6;

    v8 = [recordCopy valueForKey:@"videosCount"];

    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = &off_10028ED88;
    }

    v10 = v9;

    v13[0] = @"public.image";
    v13[1] = @"public.movie";
    v14[0] = v7;
    v14[1] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
  }

  else
  {
    v11 = &__NSDictionary0__struct;
  }

  return v11;
}

- (CPLLibraryInfo)initWithCKRecord:(id)record zone:(id)zone
{
  recordCopy = record;
  zoneCopy = zone;
  v11.receiver = self;
  v11.super_class = CPLLibraryInfo;
  v8 = [(CPLLibraryInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CPLLibraryInfo *)v8 updateWithCKRecord:recordCopy zone:zoneCopy];
  }

  return v9;
}

- (void)updateWithCKRecord:(id)record zone:(id)zone
{
  recordCopy = record;
  v5 = [(CPLLibraryInfo *)self _assetCountsFromCKRecord:recordCopy];
  [(CPLLibraryInfo *)self setAssetCounts:v5];

  v6 = [recordCopy valueForKey:@"featureVersion"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 1;
    }
  }

  else
  {
    if (qword_1002C5398 != -1)
    {
      sub_1001A4944();
    }

    unsignedIntegerValue = qword_1002BFA98;
  }

  v8 = [[CPLFeatureVersionHistory alloc] initWithCurrentFeatureVersion:unsignedIntegerValue];
  v9 = [recordCopy valueForKey:@"featureVersionHistory"];
  if (v9)
  {
    selfCopy = self;
    v32 = v6;
    v10 = v8;
    v11 = [[CPLCloudKitFeatureVersionHistory alloc] initWithData:v9];
    v12 = v11;
    if (v11)
    {
      featureVersionsCount = [(CPLCloudKitFeatureVersionHistory *)v11 featureVersionsCount];
      if (featureVersionsCount)
      {
        v14 = featureVersionsCount;
        for (i = 0; i != v14; ++i)
        {
          v16 = [(CPLCloudKitFeatureVersionHistory *)v12 featureVersionAtIndex:i];
          if ([v16 hasVersion] && objc_msgSend(v16, "hasServerToken"))
          {
            serverToken = [v16 serverToken];
            version = [v16 version];
            if (serverToken)
            {
              v19 = version;
              v20 = [[CKServerChangeToken alloc] initWithData:serverToken];
              if (v20)
              {
                v21 = [NSKeyedArchiver cpl_archivedDataWithRootObject:v20];
                [v10 addSyncAnchor:v21 forFeatureVersion:v19];
              }
            }
          }
        }
      }
    }

    self = selfCopy;
    v6 = v32;
    v8 = v10;
  }

  v22 = [recordCopy valueForKey:@"accountFlags"];
  if (v22)
  {
    [(CPLLibraryInfo *)self setAccountFlagsData:v22];
  }

  else
  {
    v23 = v8;
    v24 = objc_alloc_init(CPLAccountFlags);
    v25 = +[NSUserDefaults standardUserDefaults];
    v26 = [v25 objectForKey:@"CPLDefaultHEVCFlag"];

    if (v26 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v24 setDefaultHEVC:{objc_msgSend(v26, "BOOLValue")}];
    }

    data = [v24 data];
    [(CPLLibraryInfo *)self setAccountFlagsData:data];

    v8 = v23;
  }

  [(CPLLibraryInfo *)self setFeatureVersionHistory:v8];
  v28 = [recordCopy valueForKey:@"featureCompatibleVersion"];
  if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [(CPLLibraryInfo *)self setFeatureCompatibleVersion:v28];
  }

  else
  {
    v29 = +[NSUserDefaults standardUserDefaults];
    v30 = [v29 objectForKey:@"CPLDefaultFeatureCompatibleVersion"];

    if (v30)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(CPLLibraryInfo *)self setFeatureCompatibleVersion:v30];
      }
    }
  }
}

@end