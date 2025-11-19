@interface FAFetchSettingsPresetsOperation
- (FAFetchSettingsPresetsOperation)initWithFamilyCircleProvider:(id)a3 fetchFromCache:(BOOL)a4;
- (FAFetchSettingsPresetsOperation)initWithFamilyCircleProvider:(id)a3 presetsProvider:(id)a4;
- (id)_currentPresets:(id)a3 expectedPreset:(id)a4;
- (id)_presetsWithCurrentConfiguration:(id)a3 expectedPreset:(id)a4;
- (id)presetsForMemberWithAltDSID:(id)a3 age:(id)a4 storeFront:(id)a5 version:(id)a6;
@end

@implementation FAFetchSettingsPresetsOperation

- (FAFetchSettingsPresetsOperation)initWithFamilyCircleProvider:(id)a3 presetsProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FAFetchSettingsPresetsOperation;
  v8 = [(FAFetchSettingsPresetsOperation *)&v12 init];
  if (v8)
  {
    v9 = objc_retainBlock(v6);
    familyCircleProvider = v8->_familyCircleProvider;
    v8->_familyCircleProvider = v9;

    objc_storeStrong(&v8->_presetsProvider, a4);
  }

  return v8;
}

- (FAFetchSettingsPresetsOperation)initWithFamilyCircleProvider:(id)a3 fetchFromCache:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [FANetworkService alloc];
  v8 = objc_alloc_init(FADeviceInfo);
  v9 = objc_alloc_init(FAURLConfiguration);
  v10 = +[AAURLSession sharedSession];
  v11 = [(FANetworkService *)v7 initWithAccount:0 deviceInfo:v8 urlProvider:v9 urlSession:v10];

  v12 = objc_alloc_init(FAStoreFrontProvider);
  if (v4)
  {
    v13 = objc_alloc_init(FASettingPresetsCache);
    v14 = [[FACachedPresetsProvider alloc] initWithNetworkService:v11 cache:v13 storeFrontProvider:v12];
  }

  else
  {
    v14 = [[FAICSSPresetsProvider alloc] initWithNetworkService:v11 storeFrontProvider:v12];
  }

  v15 = [(FAFetchSettingsPresetsOperation *)self initWithFamilyCircleProvider:v6 presetsProvider:v14];

  return v15;
}

- (id)_currentPresets:(id)a3 expectedPreset:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [AAFPromise alloc];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10000937C;
  v13[3] = &unk_1000A62F0;
  v14 = v6;
  v15 = self;
  v16 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 initWithBlock:v13];

  return v11;
}

- (id)_presetsWithCurrentConfiguration:(id)a3 expectedPreset:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(NSMutableDictionary);
  [v6 sources];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = v43 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v33 = v6;
    obj = v8;
    v11 = *v41;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v41 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v40 + 1) + 8 * v12);
      v14 = [v13 identifier];
      v15 = [v14 isEqualToString:@"com.apple.ScreenTime"];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v8 = obj;
        v10 = [obj countByEnumeratingWithState:&v40 objects:v45 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        v16 = 0;
        v17 = obj;
        v6 = v33;
        goto LABEL_34;
      }
    }

    v16 = v13;
    v8 = obj;

    if (!v16)
    {
      v6 = v33;
      goto LABEL_36;
    }

    v32 = v16;
    v31 = [v16 configuration];
    [v31 values];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = v39 = 0u;
    v18 = [v35 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v35);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          if ([v22 isEqual:@"media.settings.allowBookstoreErotica"])
          {
            v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isExplicitMediaAllowed]);
            [v7 setObject:v23 forKeyedSubscript:v22];
          }

          if ([v22 isEqual:@"system.apple.allowRemoval"])
          {
            v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isDeletingAppsAllowed]);
            [v7 setObject:v24 forKeyedSubscript:v22];
          }

          if ([v22 isEqual:@"system.ratings.ratingTVShows"])
          {
            v25 = [v5 allowedTVRating];
            [v7 setObject:v25 forKeyedSubscript:v22];
          }

          if ([v22 isEqual:@"system.ratings.allowExplicitContent"])
          {
            v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isExplicitMediaAllowed]);
            [v7 setObject:v26 forKeyedSubscript:v22];
          }

          if ([v22 isEqual:@"system.ratings.ratingApps"])
          {
            v27 = [v5 allowedAppStoreRating];
            [v7 setObject:v27 forKeyedSubscript:v22];
          }

          if ([v22 isEqual:@"system.music.allowMusicVideos"])
          {
            v28 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 areMusicVideosAllowed]);
            [v7 setObject:v28 forKeyedSubscript:v22];
          }

          if ([v22 isEqual:@"system.ratings.ratingMovies"])
          {
            v29 = [v5 allowedMovieRating];
            [v7 setObject:v29 forKeyedSubscript:v22];
          }
        }

        v19 = [v35 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v19);
    }

    v16 = [[FASettingsPreset alloc] initWithDictionary:v7];

    v6 = v33;
    v8 = obj;
    v17 = v32;
  }

  else
  {
    v16 = 0;
    v17 = v8;
  }

LABEL_34:

LABEL_36:

  return v16;
}

- (id)presetsForMemberWithAltDSID:(id)a3 age:(id)a4 storeFront:(id)a5 version:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a5;
  v29 = [(FAFetchSettingsPresetsOperation *)self familyCircleProvider];
  v28 = v29[2]();
  v34[0] = v28;
  v27 = [(FAFetchSettingsPresetsOperation *)self presetsProvider];
  v26 = [v27 availablePresetsWithStoreFront:v13 version:v12];

  v34[1] = v26;
  v14 = [NSArray arrayWithObjects:v34 count:2];
  v15 = [AAFPromise all:v14];
  v16 = [v15 then];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100009C94;
  v31[3] = &unk_1000A6338;
  v32 = v10;
  v33 = v11;
  v17 = v16[2];
  v18 = v11;
  v19 = v10;
  v20 = v17(v16, v31);
  v21 = [v20 then];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100009FDC;
  v30[3] = &unk_1000A6360;
  v30[4] = self;
  v22 = (v21)[2](v21, v30);
  v23 = [v22 then];
  v24 = (v23)[2](v23, &stru_1000A63A0);

  return v24;
}

@end