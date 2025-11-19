@interface CPLLibraryInfo
- (CPLLibraryInfo)initWithCKRecord:(id)a3 zone:(id)a4;
- (id)_assetCountsFromCKRecord:(id)a3;
- (void)updateWithCKRecord:(id)a3 zone:(id)a4;
@end

@implementation CPLLibraryInfo

- (id)_assetCountsFromCKRecord:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 valueForKey:@"photosCount"];
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

    v8 = [v3 valueForKey:@"videosCount"];

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

- (CPLLibraryInfo)initWithCKRecord:(id)a3 zone:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CPLLibraryInfo;
  v8 = [(CPLLibraryInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(CPLLibraryInfo *)v8 updateWithCKRecord:v6 zone:v7];
  }

  return v9;
}

- (void)updateWithCKRecord:(id)a3 zone:(id)a4
{
  v33 = a3;
  v5 = [(CPLLibraryInfo *)self _assetCountsFromCKRecord:v33];
  [(CPLLibraryInfo *)self setAssetCounts:v5];

  v6 = [v33 valueForKey:@"featureVersion"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 unsignedIntegerValue];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    if (qword_1002C5398 != -1)
    {
      sub_1001A4944();
    }

    v7 = qword_1002BFA98;
  }

  v8 = [[CPLFeatureVersionHistory alloc] initWithCurrentFeatureVersion:v7];
  v9 = [v33 valueForKey:@"featureVersionHistory"];
  if (v9)
  {
    v31 = self;
    v32 = v6;
    v10 = v8;
    v11 = [[CPLCloudKitFeatureVersionHistory alloc] initWithData:v9];
    v12 = v11;
    if (v11)
    {
      v13 = [(CPLCloudKitFeatureVersionHistory *)v11 featureVersionsCount];
      if (v13)
      {
        v14 = v13;
        for (i = 0; i != v14; ++i)
        {
          v16 = [(CPLCloudKitFeatureVersionHistory *)v12 featureVersionAtIndex:i];
          if ([v16 hasVersion] && objc_msgSend(v16, "hasServerToken"))
          {
            v17 = [v16 serverToken];
            v18 = [v16 version];
            if (v17)
            {
              v19 = v18;
              v20 = [[CKServerChangeToken alloc] initWithData:v17];
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

    self = v31;
    v6 = v32;
    v8 = v10;
  }

  v22 = [v33 valueForKey:@"accountFlags"];
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

    v27 = [v24 data];
    [(CPLLibraryInfo *)self setAccountFlagsData:v27];

    v8 = v23;
  }

  [(CPLLibraryInfo *)self setFeatureVersionHistory:v8];
  v28 = [v33 valueForKey:@"featureCompatibleVersion"];
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