@interface PDMapsBrandAndMerchantUpdater
+ (BOOL)canUpdateMapsBrandForBrand:(id)a3 outConfiguration:(id *)a4;
+ (BOOL)canUpdateMapsBrandForTransaction:(id)a3 outConfiguration:(id *)a4;
+ (BOOL)canUpdateMapsMerchantForMerchant:(id)a3 outConfiguration:(id *)a4;
+ (BOOL)canUpdateMapsMerchantForTransaction:(id)a3 outConfiguration:(id *)a4;
+ (id)_configurationForMapsBrand:(id)a3;
+ (id)_configurationForMapsMerchant:(id)a3;
+ (id)oldestPossibleLastProcessedDate;
- (BOOL)_validHeroImageForPhoto:(id)a3;
- (PDMapsBrandAndMerchantUpdater)initWithDataSource:(id)a3;
- (id)_bestHeroImageForMapItem:(id)a3 size:(CGSize)a4 allowSmaller:(BOOL)a5;
- (id)_heroImageProviderNameForMapItem:(id)a3;
- (id)traits;
- (void)_brandAndMerchantInformationForMapItems:(id)a3 completion:(id)a4;
- (void)_executeNextRequestIfPossible;
- (void)_startNextMapsUpdatesRequest:(id)a3 completion:(id)a4;
- (void)beginCoalesingMapsDataRequests;
- (void)endCoalesingMapsDataRequests;
- (void)merchantDataForMapsURL:(id)a3 completion:(id)a4;
- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4;
- (void)updateMapsDataForConfiguration:(id)a3 completion:(id)a4;
- (void)updateMapsDataForConfigurations:(id)a3;
@end

@implementation PDMapsBrandAndMerchantUpdater

- (PDMapsBrandAndMerchantUpdater)initWithDataSource:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PDMapsBrandAndMerchantUpdater;
  v6 = [(PDMapsBrandAndMerchantUpdater *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    requests = v6->_requests;
    v6->_requests = v7;

    objc_storeStrong(&v6->_dataSource, a3);
    v6->_lock._os_unfair_lock_opaque = 0;
    v9 = objc_alloc_init(off_10091CF90());
    mapService = v6->_mapService;
    v6->_mapService = v9;

    v11 = PDDefaultQueue();
    PDScheduledActivityClientRegister();

    v12 = +[NSDate date];
    v13 = [PDScheduledActivityCriteria maintenanceActivityCriteriaWithStartDate:v12];

    [v13 setRequireMainsPower:1];
    [v13 setRequireScreenSleep:1];
    [v13 setRequireNetworkConnectivity:1];
    [v13 setRepeating:1];
    [v13 setRepeatInterval:86400.0];
    PDScheduledActivityRegister();
  }

  return v6;
}

+ (id)oldestPossibleLastProcessedDate
{
  v2 = +[NSDate date];
  v3 = [v2 dateByAddingTimeInterval:-2592000.0];

  return v3;
}

+ (BOOL)canUpdateMapsMerchantForTransaction:(id)a3 outConfiguration:(id *)a4
{
  v6 = a3;
  v7 = [v6 merchant];
  v8 = [v7 mapsMerchant];

  v9 = [v8 identifier];
  v10 = [v8 resultProviderIdentifier];
  v11 = [v8 lastProcessedDate];
  v12 = [v6 transactionDate];
  v13 = [a1 oldestPossibleLastProcessedDate];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  if (v11)
  {
    v16 = [a1 oldestPossibleLastProcessedDate];
    [v11 timeIntervalSinceDate:v16];
    v18 = v17;

    v19 = 0;
    if (!v9 || v15 >= 0.0 || v18 >= 0.0)
    {
      goto LABEL_11;
    }
  }

  else if (!v9)
  {
    v19 = 0;
    goto LABEL_11;
  }

  if (a4)
  {
    *a4 = [a1 _configurationForMapsMerchant:v8];
  }

  v19 = 1;
LABEL_11:
  v20 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v9;
    if (v19)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [v6 identifier];
    v23 = [v6 serviceIdentifier];
    v24 = [v8 name];
    v25 = v10;
    v26 = v24;
    *buf = 138414082;
    v30 = v21;
    v31 = 2112;
    v32 = v22;
    v33 = 2112;
    v34 = v23;
    v35 = 2112;
    v36 = v24;
    v37 = 2112;
    v38 = v11;
    v39 = 2048;
    v40 = v28;
    v41 = 2048;
    v42 = v25;
    v43 = 2112;
    v44 = v12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Can update maps merchant %@ for identifier %@, serviceIdentifier %@, name %@, mapsMerchantLastProcessedDate %@, mapsMerchantMUID %ld, mapsMerchantResultProviderID %ld, transactionDate %@", buf, 0x52u);
  }

  return v19;
}

+ (BOOL)canUpdateMapsBrandForTransaction:(id)a3 outConfiguration:(id *)a4
{
  v6 = a3;
  v7 = [v6 merchant];
  v8 = [v7 mapsBrand];

  v9 = [v8 identifier];
  v10 = [v8 resultProviderIdentifier];
  v11 = [v8 lastProcessedDate];
  v12 = [v6 transactionDate];
  v13 = [a1 oldestPossibleLastProcessedDate];
  [v12 timeIntervalSinceDate:v13];
  v15 = v14;

  if (v11)
  {
    v16 = [a1 oldestPossibleLastProcessedDate];
    [v11 timeIntervalSinceDate:v16];
    v18 = v17;

    v19 = 0;
    if (!v9 || v15 >= 0.0 || v18 >= 0.0)
    {
      goto LABEL_11;
    }
  }

  else if (!v9)
  {
    v19 = 0;
    goto LABEL_11;
  }

  if (a4)
  {
    *a4 = [a1 _configurationForMapsBrand:v8];
  }

  v19 = 1;
LABEL_11:
  v20 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v28 = v9;
    if (v19)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    v22 = [v6 identifier];
    v23 = [v6 serviceIdentifier];
    v24 = [v8 name];
    v25 = v10;
    v26 = v24;
    *buf = 138414082;
    v30 = v21;
    v31 = 2112;
    v32 = v22;
    v33 = 2112;
    v34 = v23;
    v35 = 2112;
    v36 = v24;
    v37 = 2112;
    v38 = v11;
    v39 = 2048;
    v40 = v28;
    v41 = 2048;
    v42 = v25;
    v43 = 2112;
    v44 = v12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Can update maps brand %@ for identifier %@, serviceIdentifier %@, name %@, mapsBrandLastProcessedDate %@, mapsBrandMUID %ld, mapsMerchantResultProviderID %ld, transactionDate %@", buf, 0x52u);
  }

  return v19;
}

+ (BOOL)canUpdateMapsMerchantForMerchant:(id)a3 outConfiguration:(id *)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [v6 resultProviderIdentifier];
  v9 = [v6 lastProcessedDate];
  if (v9)
  {
    v10 = [a1 oldestPossibleLastProcessedDate];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11 < 0.0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v7 != 0 && v12;
  if (a4 && v7 != 0 && v12)
  {
    *a4 = [a1 _configurationForMapsMerchant:v6];
  }

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (v7 != 0 && v12)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [v6 name];
    v18 = 138413314;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v9;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Can update maps merchant %@, name %@, mapsMerchantLastProcessedDate %@, mapsMerchantMUID %ld, mapsMerchantResultProviderID %ld", &v18, 0x34u);
  }

  return v13;
}

+ (BOOL)canUpdateMapsBrandForBrand:(id)a3 outConfiguration:(id *)a4
{
  v6 = a3;
  v7 = [v6 identifier];
  v8 = [v6 resultProviderIdentifier];
  v9 = [v6 lastProcessedDate];
  if (v9)
  {
    v10 = [a1 oldestPossibleLastProcessedDate];
    [v9 timeIntervalSinceDate:v10];
    v12 = v11 < 0.0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v7 != 0 && v12;
  if (a4 && v7 != 0 && v12)
  {
    *a4 = [a1 _configurationForMapsBrand:v6];
  }

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (v7 != 0 && v12)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    v16 = [v6 name];
    v18 = 138413314;
    v19 = v15;
    v20 = 2112;
    v21 = v16;
    v22 = 2112;
    v23 = v9;
    v24 = 2048;
    v25 = v7;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Can update maps brand %@, name %@, mapsBrandLastProcessedDate %@, mapsBrandMUID %ld, mapsMerchantResultProviderID %ld", &v18, 0x34u);
  }

  return v13;
}

+ (id)_configurationForMapsMerchant:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 resultProviderIdentifier];
  [v3 locationLatitude];
  v7 = v6;
  [v3 locationLongitude];
  v9 = v8;

  v10 = CLLocationCoordinate2DMake(v7, v9);
  v11 = [[PDMapsBrandAndMerchantUpdaterConfiguration alloc] initWithMUID:v4 resultProviderID:v5 coordinate:v10.latitude, v10.longitude];

  return v11;
}

+ (id)_configurationForMapsBrand:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 resultProviderIdentifier];

  v6 = CLLocationCoordinate2DMake(0.0, 0.0);
  v7 = [[PDMapsBrandAndMerchantUpdaterConfiguration alloc] initWithMUID:v4 resultProviderID:v5 coordinate:v6.latitude, v6.longitude];

  return v7;
}

- (void)beginCoalesingMapsDataRequests
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_coalesingRequests)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Begin coalesing PDMapsBrandAndMerchantUpdater requests.", v4, 2u);
    }

    self->_coalesingRequests = 1;
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)endCoalesingMapsDataRequests
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_coalesingRequests)
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "End coalesing PDMapsBrandAndMerchantUpdater requests.", v4, 2u);
    }

    self->_coalesingRequests = 0;
    os_unfair_lock_unlock(&self->_lock);
    [(PDMapsBrandAndMerchantUpdater *)self _executeNextRequestIfPossible];
  }
}

- (void)updateMapsDataForConfiguration:(id)a3 completion:(id)a4
{
  v6 = a4;
  if (v6)
  {
    v7 = a3;
    v8 = [PKPaymentTransactionMapsUpdateProcessorRequest alloc];
    v9 = [[NSArray alloc] initWithObjects:{v7, 0}];

    v10 = [(PKPaymentTransactionMapsUpdateProcessorRequest *)v8 initWithConfigurations:v9];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001ADF4;
    v11[3] = &unk_10083C090;
    v12 = v6;
    [(PDMapsBrandAndMerchantUpdater *)self _startNextMapsUpdatesRequest:v10 completion:v11];
  }
}

- (void)merchantDataForMapsURL:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [objc_alloc(off_10091CF98()) initWithMapsURL:v6];
    if (v8)
    {
      v9 = [objc_alloc(off_10091CFA0()) initWithRequest:v8];
      objc_initWeak(&location, self);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10001B014;
      v10[3] = &unk_10083C0B8;
      objc_copyWeak(&v12, &location);
      v11 = v7;
      [v9 startWithCompletionHandler:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(v7 + 2))(v7, 0);
    }
  }
}

- (void)updateMapsDataForConfigurations:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 mutableCopy];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v6 = self->_requests;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v51 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v44;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v43 + 1) + 8 * v10) configurations];
        v12 = [NSSet setWithArray:v11];
        [v5 minusSet:v12];

        if (!v5)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v51 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    if ([v5 count])
    {
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v34 = self;
      v13 = self->_requests;
      v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v39 objects:v50 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v40;
LABEL_13:
        v17 = 0;
        while (1)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v39 + 1) + 8 * v17) coalesceWithConfigurations:v5];
          if (!v5)
          {
            break;
          }

          if (v15 == ++v17)
          {
            v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v39 objects:v50 count:16];
            if (v15)
            {
              goto LABEL_13;
            }

            break;
          }
        }
      }

      if ([v5 count])
      {
        v18 = [v5 allObjects];
        v19 = [v18 count];
        v20 = objc_alloc_init(NSMutableArray);
        if (v19 >= 1)
        {
          v21 = 0;
          v22 = v19;
          do
          {
            v23 = v22 - 100;
            if (v22 >= 100)
            {
              v24 = 100;
            }

            else
            {
              v24 = v22;
            }

            v25 = [v18 subarrayWithRange:{v21, v24}];
            [v20 addObject:v25];

            v21 += 100;
            v22 = v23;
          }

          while (v21 < v19);
        }

        v26 = objc_alloc_init(NSMutableArray);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v27 = v20;
        v28 = [v27 countByEnumeratingWithState:&v35 objects:v49 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v36;
          do
          {
            for (i = 0; i != v29; i = i + 1)
            {
              if (*v36 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = [[PKPaymentTransactionMapsUpdateProcessorRequest alloc] initWithConfigurations:*(*(&v35 + 1) + 8 * i)];
              [v26 addObject:v32];
            }

            v29 = [v27 countByEnumeratingWithState:&v35 objects:v49 count:16];
          }

          while (v29);
        }

        os_unfair_lock_lock(&v34->_lock);
        [(NSMutableArray *)v34->_requests addObjectsFromArray:v26];
        v33 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v26;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Maps update requests queued %@", buf, 0xCu);
        }

        os_unfair_lock_unlock(&v34->_lock);
        [(PDMapsBrandAndMerchantUpdater *)v34 _executeNextRequestIfPossible];
      }
    }
  }
}

- (void)_startNextMapsUpdatesRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  mapService = self->_mapService;
  v8 = [a3 mapIdentifiers];
  v9 = [(PDMapsBrandAndMerchantUpdater *)self traits];
  v10 = [(MKMapService *)mapService ticketForIdentifiers:v8 traits:v9];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B664;
  v12[3] = &unk_10083C0E0;
  v12[4] = self;
  v13 = v6;
  v11 = v6;
  [v10 submitWithHandler:v12 networkActivity:0];
}

- (void)_brandAndMerchantInformationForMapItems:(id)a3 completion:(id)a4
{
  v6 = a3;
  v41 = a4;
  v43 = objc_alloc_init(NSMutableArray);
  v42 = objc_alloc_init(NSMutableArray);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v6;
  v46 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v46)
  {
    v45 = *v50;
    v47 = self;
    do
    {
      for (i = 0; i != v46; i = i + 1)
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v49 + 1) + 8 * i);
        v9 = [v8 _geoMapItem];
        v10 = [v9 _mapsCategoryId];
        v11 = [v9 _walletCategoryIdentifier];
        v12 = objc_alloc(off_10091CFA8());
        v13 = [v9 _walletPlaceStyling];
        v14 = [v12 initWithStyleAttributes:v13];

        v48 = v11;
        v15 = PKMerchantCategoryFromString();
        v16 = [v8 _bestWalletHeroImageForSize:1 allowSmaller:{1.79769313e308, 1.79769313e308}];
        v17 = [v8 _walletHeroImageProviderName];
        if (!v16)
        {
          v16 = [(PDMapsBrandAndMerchantUpdater *)self _bestHeroImageForMapItem:v9 size:1 allowSmaller:1.79769313e308, 1.79769313e308];
          v18 = [(PDMapsBrandAndMerchantUpdater *)self _heroImageProviderNameForMapItem:v9];

          v17 = v18;
          self = v47;
        }

        v19 = [v8 _isMapItemTypeBrand];
        dataSource = self->_dataSource;
        v21 = [v8 _muid];
        if (v19)
        {
          v22 = [(PDMapsBrandAndMerchantUpdaterDataSource *)dataSource mapsBrandWithIdentifier:v21];
          if (!v22)
          {
            v22 = objc_alloc_init(PKMapsBrand);
          }

          [v22 setIdentifier:{objc_msgSend(v8, "_muid")}];
          [v22 setResultProviderIdentifier:{objc_msgSend(v8, "_resultProviderID")}];
          v23 = [v8 name];
          [v22 setName:v23];

          v24 = [v8 phoneNumber];
          [v22 setPhoneNumber:v24];

          v25 = [v8 url];
          [v22 setURL:v25];

          v26 = [v8 _bestBrandIconURLForSize:1 allowSmaller:{500.0, 500.0}];
          [v22 setLogoURL:v26];

          [v22 setCategory:v15];
          [v22 setDetailedCategory:v10];
          if (v14)
          {
            v27 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
            [v22 setStylingInfoData:v27];
          }

          [v22 setHeroImageURL:v16];
          [v22 setHeroImageAttributionName:v17];
          v28 = +[NSDate date];
          [v22 setLastProcessedDate:v28];

          if ([v22 isValid])
          {
            v29 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v54 = v22;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Updating maps brand %@", buf, 0xCu);
            }

            [(PDMapsBrandAndMerchantUpdaterDataSource *)v47->_dataSource updateMapsBrand:v22];
            [v42 addObject:v22];
          }
        }

        else
        {
          v22 = [(PDMapsBrandAndMerchantUpdaterDataSource *)dataSource mapsMerchantWithIdentifier:v21];
          if (!v22)
          {
            v22 = objc_alloc_init(PKMapsMerchant);
          }

          [v22 setIdentifier:{objc_msgSend(v8, "_muid")}];
          [v22 setResultProviderIdentifier:{objc_msgSend(v8, "_resultProviderID")}];
          v30 = [v8 name];
          [v22 setName:v30];

          v31 = [v8 phoneNumber];
          [v22 setPhoneNumber:v31];

          v32 = [v8 url];
          [v22 setURL:v32];

          v33 = [v8 placemark];
          v34 = [v33 location];
          [v22 setLocation:v34];

          v35 = [v33 postalAddress];
          [v22 setPostalAddress:v35];

          [v22 setCategory:v15];
          [v22 setDetailedCategory:v10];
          if (v14)
          {
            v36 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
            [v22 setStylingInfoData:v36];
          }

          [v22 setHeroImageURL:v16];
          [v22 setHeroImageAttributionName:v17];
          v37 = +[NSDate date];
          [v22 setLastProcessedDate:v37];

          if ([v22 isValid])
          {
            v38 = PKLogFacilityTypeGetObject();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v54 = v22;
              _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Updating maps merchant %@", buf, 0xCu);
            }

            [(PDMapsBrandAndMerchantUpdaterDataSource *)v47->_dataSource updateMapsMerchant:v22];
            [v43 addObject:v22];
          }
        }

        self = v47;
      }

      v46 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v46);
  }

  if (v41)
  {
    v39 = [v43 copy];
    v40 = [v42 copy];
    v41[2](v41, v39, v40);
  }
}

- (id)traits
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_traits)
  {
    v3 = [(MKMapService *)self->_mapService defaultTraits];
    traits = self->_traits;
    self->_traits = v3;

    [(GEOMapServiceTraits *)self->_traits setWantsBrandIcon:1];
    [(GEOMapServiceTraits *)self->_traits setSupportsBrandFallback:1];
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = self->_traits;

  return v5;
}

- (id)_bestHeroImageForMapItem:(id)a3 size:(CGSize)a4 allowSmaller:(BOOL)a5
{
  v5 = a5;
  height = a4.height;
  width = a4.width;
  v9 = a3;
  v10 = [v9 _photos];
  v11 = [v10 firstObject];

  if ([(PDMapsBrandAndMerchantUpdater *)self _validHeroImageForPhoto:v11])
  {
    v12 = [v11 bestPhotoForSize:v5 allowSmaller:{width, height}];
    v13 = [v12 url];

    if (v13)
    {
      v14 = [v12 url];

      goto LABEL_6;
    }
  }

  v14 = [v9 _bestHeroBrandIconURLForSize:v5 allowSmaller:{width, height}];
LABEL_6:

  return v14;
}

- (id)_heroImageProviderNameForMapItem:(id)a3
{
  v4 = [a3 _photos];
  v5 = [v4 firstObject];

  if ([(PDMapsBrandAndMerchantUpdater *)self _validHeroImageForPhoto:v5])
  {
    v6 = [v5 attribution];
    v7 = [v6 providerName];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_validHeroImageForPhoto:(id)a3
{
  v3 = a3;
  BOOL = GEOConfigGetBOOL();
  v5 = GEOConfigGetBOOL();
  v6 = v5;
  if (BOOL)
  {
    v7 = [v3 highQuality];
    if ((v7 & v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v5)
  {
    LOBYTE(v7) = 1;
    goto LABEL_7;
  }

  LOBYTE(v7) = [v3 businessProvided];
LABEL_7:

  return v7;
}

- (void)_executeNextRequestIfPossible
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_coalesingRequests || self->_currentRequest)
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v3 = [(NSMutableArray *)self->_requests firstObject];
    currentRequest = self->_currentRequest;
    self->_currentRequest = v3;

    v5 = self->_currentRequest;
    if (v5)
    {
      [(NSMutableArray *)self->_requests removeObjectAtIndex:0];
      v5 = self->_currentRequest;
    }

    v6 = v5;
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v7 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(PKPaymentTransactionMapsUpdateProcessorRequest *)v6 configurations];
        *buf = 138412546;
        v11 = v6;
        v12 = 2048;
        v13 = [v8 count];
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Starting maps update request %@ with %ld items", buf, 0x16u);
      }

      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10001C26C;
      v9[3] = &unk_10083C108;
      v9[4] = self;
      [(PDMapsBrandAndMerchantUpdater *)self _startNextMapsUpdatesRequest:v6 completion:v9];
    }
  }
}

- (void)performScheduledActivityWithIdentifier:(id)a3 activityCriteria:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = v8;
  if (v8 == @"PDMapsBrandAndMerchantUpdaterActivityIdentifier" || v8 && (v10 = [(__CFString *)v8 isEqualToString:@"PDMapsBrandAndMerchantUpdaterActivityIdentifier"], v9, v10))
  {
    v11 = +[NSDate date];
    v12 = [v11 dateByAddingTimeInterval:-2592000.0];

    v13 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Starting maps merchant brand and merchant updater scheduled activity for maps data last updated prior to %@.", buf, 0xCu);
    }

    v14 = [(PDMapsBrandAndMerchantUpdaterDataSource *)self->_dataSource mapsMerchantsWithLastUpdatedDateFromStartDate:0 endDate:v12 limit:50];
    v15 = [(PDMapsBrandAndMerchantUpdaterDataSource *)self->_dataSource mapsBrandsWithLastUpdatedDateFromStartDate:0 endDate:v12 limit:50];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v15 count];
      v17 = [v14 count];
      *buf = 134218240;
      v44 = v16;
      v45 = 2048;
      v46 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Updating %ld maps brands and %ld maps merchants", buf, 0x16u);
    }

    v32 = v7;

    v18 = objc_alloc_init(NSMutableSet);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = v14;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        v23 = 0;
        do
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [objc_opt_class() _configurationForMapsMerchant:*(*(&v37 + 1) + 8 * v23)];
          [v18 addObject:v24];

          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v21);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = v15;
    v26 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        v29 = 0;
        do
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = [objc_opt_class() _configurationForMapsBrand:*(*(&v33 + 1) + 8 * v29)];
          [v18 addObject:v30];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [v25 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v27);
    }

    if ([v18 count])
    {
      v31 = [v18 copy];
      [(PDMapsBrandAndMerchantUpdater *)self updateMapsDataForConfigurations:v31];
    }

    v7 = v32;
  }
}

@end