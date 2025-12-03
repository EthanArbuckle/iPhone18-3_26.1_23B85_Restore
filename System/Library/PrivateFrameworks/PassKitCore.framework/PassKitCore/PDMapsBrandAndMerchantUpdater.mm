@interface PDMapsBrandAndMerchantUpdater
+ (BOOL)canUpdateMapsBrandForBrand:(id)brand outConfiguration:(id *)configuration;
+ (BOOL)canUpdateMapsBrandForTransaction:(id)transaction outConfiguration:(id *)configuration;
+ (BOOL)canUpdateMapsMerchantForMerchant:(id)merchant outConfiguration:(id *)configuration;
+ (BOOL)canUpdateMapsMerchantForTransaction:(id)transaction outConfiguration:(id *)configuration;
+ (id)_configurationForMapsBrand:(id)brand;
+ (id)_configurationForMapsMerchant:(id)merchant;
+ (id)oldestPossibleLastProcessedDate;
- (BOOL)_validHeroImageForPhoto:(id)photo;
- (PDMapsBrandAndMerchantUpdater)initWithDataSource:(id)source;
- (id)_bestHeroImageForMapItem:(id)item size:(CGSize)size allowSmaller:(BOOL)smaller;
- (id)_heroImageProviderNameForMapItem:(id)item;
- (id)traits;
- (void)_brandAndMerchantInformationForMapItems:(id)items completion:(id)completion;
- (void)_executeNextRequestIfPossible;
- (void)_startNextMapsUpdatesRequest:(id)request completion:(id)completion;
- (void)beginCoalesingMapsDataRequests;
- (void)endCoalesingMapsDataRequests;
- (void)merchantDataForMapsURL:(id)l completion:(id)completion;
- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria;
- (void)updateMapsDataForConfiguration:(id)configuration completion:(id)completion;
- (void)updateMapsDataForConfigurations:(id)configurations;
@end

@implementation PDMapsBrandAndMerchantUpdater

- (PDMapsBrandAndMerchantUpdater)initWithDataSource:(id)source
{
  sourceCopy = source;
  v15.receiver = self;
  v15.super_class = PDMapsBrandAndMerchantUpdater;
  v6 = [(PDMapsBrandAndMerchantUpdater *)&v15 init];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableArray);
    requests = v6->_requests;
    v6->_requests = v7;

    objc_storeStrong(&v6->_dataSource, source);
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

+ (BOOL)canUpdateMapsMerchantForTransaction:(id)transaction outConfiguration:(id *)configuration
{
  transactionCopy = transaction;
  merchant = [transactionCopy merchant];
  mapsMerchant = [merchant mapsMerchant];

  identifier = [mapsMerchant identifier];
  resultProviderIdentifier = [mapsMerchant resultProviderIdentifier];
  lastProcessedDate = [mapsMerchant lastProcessedDate];
  transactionDate = [transactionCopy transactionDate];
  oldestPossibleLastProcessedDate = [self oldestPossibleLastProcessedDate];
  [transactionDate timeIntervalSinceDate:oldestPossibleLastProcessedDate];
  v15 = v14;

  if (lastProcessedDate)
  {
    oldestPossibleLastProcessedDate2 = [self oldestPossibleLastProcessedDate];
    [lastProcessedDate timeIntervalSinceDate:oldestPossibleLastProcessedDate2];
    v18 = v17;

    v19 = 0;
    if (!identifier || v15 >= 0.0 || v18 >= 0.0)
    {
      goto LABEL_11;
    }
  }

  else if (!identifier)
  {
    v19 = 0;
    goto LABEL_11;
  }

  if (configuration)
  {
    *configuration = [self _configurationForMapsMerchant:mapsMerchant];
  }

  v19 = 1;
LABEL_11:
  v20 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v28 = identifier;
    if (v19)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    identifier2 = [transactionCopy identifier];
    serviceIdentifier = [transactionCopy serviceIdentifier];
    name = [mapsMerchant name];
    v25 = resultProviderIdentifier;
    v26 = name;
    *buf = 138414082;
    v30 = v21;
    v31 = 2112;
    v32 = identifier2;
    v33 = 2112;
    v34 = serviceIdentifier;
    v35 = 2112;
    v36 = name;
    v37 = 2112;
    v38 = lastProcessedDate;
    v39 = 2048;
    v40 = v28;
    v41 = 2048;
    v42 = v25;
    v43 = 2112;
    v44 = transactionDate;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Can update maps merchant %@ for identifier %@, serviceIdentifier %@, name %@, mapsMerchantLastProcessedDate %@, mapsMerchantMUID %ld, mapsMerchantResultProviderID %ld, transactionDate %@", buf, 0x52u);
  }

  return v19;
}

+ (BOOL)canUpdateMapsBrandForTransaction:(id)transaction outConfiguration:(id *)configuration
{
  transactionCopy = transaction;
  merchant = [transactionCopy merchant];
  mapsBrand = [merchant mapsBrand];

  identifier = [mapsBrand identifier];
  resultProviderIdentifier = [mapsBrand resultProviderIdentifier];
  lastProcessedDate = [mapsBrand lastProcessedDate];
  transactionDate = [transactionCopy transactionDate];
  oldestPossibleLastProcessedDate = [self oldestPossibleLastProcessedDate];
  [transactionDate timeIntervalSinceDate:oldestPossibleLastProcessedDate];
  v15 = v14;

  if (lastProcessedDate)
  {
    oldestPossibleLastProcessedDate2 = [self oldestPossibleLastProcessedDate];
    [lastProcessedDate timeIntervalSinceDate:oldestPossibleLastProcessedDate2];
    v18 = v17;

    v19 = 0;
    if (!identifier || v15 >= 0.0 || v18 >= 0.0)
    {
      goto LABEL_11;
    }
  }

  else if (!identifier)
  {
    v19 = 0;
    goto LABEL_11;
  }

  if (configuration)
  {
    *configuration = [self _configurationForMapsBrand:mapsBrand];
  }

  v19 = 1;
LABEL_11:
  v20 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v28 = identifier;
    if (v19)
    {
      v21 = @"YES";
    }

    else
    {
      v21 = @"NO";
    }

    identifier2 = [transactionCopy identifier];
    serviceIdentifier = [transactionCopy serviceIdentifier];
    name = [mapsBrand name];
    v25 = resultProviderIdentifier;
    v26 = name;
    *buf = 138414082;
    v30 = v21;
    v31 = 2112;
    v32 = identifier2;
    v33 = 2112;
    v34 = serviceIdentifier;
    v35 = 2112;
    v36 = name;
    v37 = 2112;
    v38 = lastProcessedDate;
    v39 = 2048;
    v40 = v28;
    v41 = 2048;
    v42 = v25;
    v43 = 2112;
    v44 = transactionDate;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Can update maps brand %@ for identifier %@, serviceIdentifier %@, name %@, mapsBrandLastProcessedDate %@, mapsBrandMUID %ld, mapsMerchantResultProviderID %ld, transactionDate %@", buf, 0x52u);
  }

  return v19;
}

+ (BOOL)canUpdateMapsMerchantForMerchant:(id)merchant outConfiguration:(id *)configuration
{
  merchantCopy = merchant;
  identifier = [merchantCopy identifier];
  resultProviderIdentifier = [merchantCopy resultProviderIdentifier];
  lastProcessedDate = [merchantCopy lastProcessedDate];
  if (lastProcessedDate)
  {
    oldestPossibleLastProcessedDate = [self oldestPossibleLastProcessedDate];
    [lastProcessedDate timeIntervalSinceDate:oldestPossibleLastProcessedDate];
    v12 = v11 < 0.0;
  }

  else
  {
    v12 = 1;
  }

  v13 = identifier != 0 && v12;
  if (configuration && identifier != 0 && v12)
  {
    *configuration = [self _configurationForMapsMerchant:merchantCopy];
  }

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (identifier != 0 && v12)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    name = [merchantCopy name];
    v18 = 138413314;
    v19 = v15;
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = lastProcessedDate;
    v24 = 2048;
    v25 = identifier;
    v26 = 2048;
    v27 = resultProviderIdentifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Can update maps merchant %@, name %@, mapsMerchantLastProcessedDate %@, mapsMerchantMUID %ld, mapsMerchantResultProviderID %ld", &v18, 0x34u);
  }

  return v13;
}

+ (BOOL)canUpdateMapsBrandForBrand:(id)brand outConfiguration:(id *)configuration
{
  brandCopy = brand;
  identifier = [brandCopy identifier];
  resultProviderIdentifier = [brandCopy resultProviderIdentifier];
  lastProcessedDate = [brandCopy lastProcessedDate];
  if (lastProcessedDate)
  {
    oldestPossibleLastProcessedDate = [self oldestPossibleLastProcessedDate];
    [lastProcessedDate timeIntervalSinceDate:oldestPossibleLastProcessedDate];
    v12 = v11 < 0.0;
  }

  else
  {
    v12 = 1;
  }

  v13 = identifier != 0 && v12;
  if (configuration && identifier != 0 && v12)
  {
    *configuration = [self _configurationForMapsBrand:brandCopy];
  }

  v14 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (identifier != 0 && v12)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    name = [brandCopy name];
    v18 = 138413314;
    v19 = v15;
    v20 = 2112;
    v21 = name;
    v22 = 2112;
    v23 = lastProcessedDate;
    v24 = 2048;
    v25 = identifier;
    v26 = 2048;
    v27 = resultProviderIdentifier;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Can update maps brand %@, name %@, mapsBrandLastProcessedDate %@, mapsBrandMUID %ld, mapsMerchantResultProviderID %ld", &v18, 0x34u);
  }

  return v13;
}

+ (id)_configurationForMapsMerchant:(id)merchant
{
  merchantCopy = merchant;
  identifier = [merchantCopy identifier];
  resultProviderIdentifier = [merchantCopy resultProviderIdentifier];
  [merchantCopy locationLatitude];
  v7 = v6;
  [merchantCopy locationLongitude];
  v9 = v8;

  v10 = CLLocationCoordinate2DMake(v7, v9);
  v11 = [[PDMapsBrandAndMerchantUpdaterConfiguration alloc] initWithMUID:identifier resultProviderID:resultProviderIdentifier coordinate:v10.latitude, v10.longitude];

  return v11;
}

+ (id)_configurationForMapsBrand:(id)brand
{
  brandCopy = brand;
  identifier = [brandCopy identifier];
  resultProviderIdentifier = [brandCopy resultProviderIdentifier];

  v6 = CLLocationCoordinate2DMake(0.0, 0.0);
  v7 = [[PDMapsBrandAndMerchantUpdaterConfiguration alloc] initWithMUID:identifier resultProviderID:resultProviderIdentifier coordinate:v6.latitude, v6.longitude];

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

- (void)updateMapsDataForConfiguration:(id)configuration completion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    configurationCopy = configuration;
    v8 = [PKPaymentTransactionMapsUpdateProcessorRequest alloc];
    v9 = [[NSArray alloc] initWithObjects:{configurationCopy, 0}];

    v10 = [(PKPaymentTransactionMapsUpdateProcessorRequest *)v8 initWithConfigurations:v9];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10001ADF4;
    v11[3] = &unk_10083C090;
    v12 = completionCopy;
    [(PDMapsBrandAndMerchantUpdater *)self _startNextMapsUpdatesRequest:v10 completion:v11];
  }
}

- (void)merchantDataForMapsURL:(id)l completion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  if (completionCopy)
  {
    v8 = [objc_alloc(off_10091CF98()) initWithMapsURL:lCopy];
    if (v8)
    {
      v9 = [objc_alloc(off_10091CFA0()) initWithRequest:v8];
      objc_initWeak(&location, self);
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10001B014;
      v10[3] = &unk_10083C0B8;
      objc_copyWeak(&v12, &location);
      v11 = completionCopy;
      [v9 startWithCompletionHandler:v10];

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)updateMapsDataForConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  if ([configurationsCopy count])
  {
    v5 = [configurationsCopy mutableCopy];
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

        configurations = [*(*(&v43 + 1) + 8 * v10) configurations];
        v12 = [NSSet setWithArray:configurations];
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
      selfCopy = self;
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
        allObjects = [v5 allObjects];
        v19 = [allObjects count];
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

            v25 = [allObjects subarrayWithRange:{v21, v24}];
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

        os_unfair_lock_lock(&selfCopy->_lock);
        [(NSMutableArray *)selfCopy->_requests addObjectsFromArray:v26];
        v33 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v26;
          _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Maps update requests queued %@", buf, 0xCu);
        }

        os_unfair_lock_unlock(&selfCopy->_lock);
        [(PDMapsBrandAndMerchantUpdater *)selfCopy _executeNextRequestIfPossible];
      }
    }
  }
}

- (void)_startNextMapsUpdatesRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  mapService = self->_mapService;
  mapIdentifiers = [request mapIdentifiers];
  traits = [(PDMapsBrandAndMerchantUpdater *)self traits];
  v10 = [(MKMapService *)mapService ticketForIdentifiers:mapIdentifiers traits:traits];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10001B664;
  v12[3] = &unk_10083C0E0;
  v12[4] = self;
  v13 = completionCopy;
  v11 = completionCopy;
  [v10 submitWithHandler:v12 networkActivity:0];
}

- (void)_brandAndMerchantInformationForMapItems:(id)items completion:(id)completion
{
  itemsCopy = items;
  completionCopy = completion;
  v43 = objc_alloc_init(NSMutableArray);
  v42 = objc_alloc_init(NSMutableArray);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = itemsCopy;
  v46 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v46)
  {
    v45 = *v50;
    selfCopy = self;
    do
    {
      for (i = 0; i != v46; i = i + 1)
      {
        if (*v50 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v49 + 1) + 8 * i);
        _geoMapItem = [v8 _geoMapItem];
        _mapsCategoryId = [_geoMapItem _mapsCategoryId];
        _walletCategoryIdentifier = [_geoMapItem _walletCategoryIdentifier];
        v12 = objc_alloc(off_10091CFA8());
        _walletPlaceStyling = [_geoMapItem _walletPlaceStyling];
        v14 = [v12 initWithStyleAttributes:_walletPlaceStyling];

        v48 = _walletCategoryIdentifier;
        v15 = PKMerchantCategoryFromString();
        v16 = [v8 _bestWalletHeroImageForSize:1 allowSmaller:{1.79769313e308, 1.79769313e308}];
        _walletHeroImageProviderName = [v8 _walletHeroImageProviderName];
        if (!v16)
        {
          v16 = [(PDMapsBrandAndMerchantUpdater *)self _bestHeroImageForMapItem:_geoMapItem size:1 allowSmaller:1.79769313e308, 1.79769313e308];
          v18 = [(PDMapsBrandAndMerchantUpdater *)self _heroImageProviderNameForMapItem:_geoMapItem];

          _walletHeroImageProviderName = v18;
          self = selfCopy;
        }

        _isMapItemTypeBrand = [v8 _isMapItemTypeBrand];
        dataSource = self->_dataSource;
        _muid = [v8 _muid];
        if (_isMapItemTypeBrand)
        {
          v22 = [(PDMapsBrandAndMerchantUpdaterDataSource *)dataSource mapsBrandWithIdentifier:_muid];
          if (!v22)
          {
            v22 = objc_alloc_init(PKMapsBrand);
          }

          [v22 setIdentifier:{objc_msgSend(v8, "_muid")}];
          [v22 setResultProviderIdentifier:{objc_msgSend(v8, "_resultProviderID")}];
          name = [v8 name];
          [v22 setName:name];

          phoneNumber = [v8 phoneNumber];
          [v22 setPhoneNumber:phoneNumber];

          v25 = [v8 url];
          [v22 setURL:v25];

          v26 = [v8 _bestBrandIconURLForSize:1 allowSmaller:{500.0, 500.0}];
          [v22 setLogoURL:v26];

          [v22 setCategory:v15];
          [v22 setDetailedCategory:_mapsCategoryId];
          if (v14)
          {
            v27 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
            [v22 setStylingInfoData:v27];
          }

          [v22 setHeroImageURL:v16];
          [v22 setHeroImageAttributionName:_walletHeroImageProviderName];
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

            [(PDMapsBrandAndMerchantUpdaterDataSource *)selfCopy->_dataSource updateMapsBrand:v22];
            [v42 addObject:v22];
          }
        }

        else
        {
          v22 = [(PDMapsBrandAndMerchantUpdaterDataSource *)dataSource mapsMerchantWithIdentifier:_muid];
          if (!v22)
          {
            v22 = objc_alloc_init(PKMapsMerchant);
          }

          [v22 setIdentifier:{objc_msgSend(v8, "_muid")}];
          [v22 setResultProviderIdentifier:{objc_msgSend(v8, "_resultProviderID")}];
          name2 = [v8 name];
          [v22 setName:name2];

          phoneNumber2 = [v8 phoneNumber];
          [v22 setPhoneNumber:phoneNumber2];

          v32 = [v8 url];
          [v22 setURL:v32];

          placemark = [v8 placemark];
          location = [placemark location];
          [v22 setLocation:location];

          postalAddress = [placemark postalAddress];
          [v22 setPostalAddress:postalAddress];

          [v22 setCategory:v15];
          [v22 setDetailedCategory:_mapsCategoryId];
          if (v14)
          {
            v36 = [NSKeyedArchiver archivedDataWithRootObject:v14 requiringSecureCoding:1 error:0];
            [v22 setStylingInfoData:v36];
          }

          [v22 setHeroImageURL:v16];
          [v22 setHeroImageAttributionName:_walletHeroImageProviderName];
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

            [(PDMapsBrandAndMerchantUpdaterDataSource *)selfCopy->_dataSource updateMapsMerchant:v22];
            [v43 addObject:v22];
          }
        }

        self = selfCopy;
      }

      v46 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v46);
  }

  if (completionCopy)
  {
    v39 = [v43 copy];
    v40 = [v42 copy];
    completionCopy[2](completionCopy, v39, v40);
  }
}

- (id)traits
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_traits)
  {
    defaultTraits = [(MKMapService *)self->_mapService defaultTraits];
    traits = self->_traits;
    self->_traits = defaultTraits;

    [(GEOMapServiceTraits *)self->_traits setWantsBrandIcon:1];
    [(GEOMapServiceTraits *)self->_traits setSupportsBrandFallback:1];
  }

  os_unfair_lock_unlock(&self->_lock);
  v5 = self->_traits;

  return v5;
}

- (id)_bestHeroImageForMapItem:(id)item size:(CGSize)size allowSmaller:(BOOL)smaller
{
  smallerCopy = smaller;
  height = size.height;
  width = size.width;
  itemCopy = item;
  _photos = [itemCopy _photos];
  firstObject = [_photos firstObject];

  if ([(PDMapsBrandAndMerchantUpdater *)self _validHeroImageForPhoto:firstObject])
  {
    v12 = [firstObject bestPhotoForSize:smallerCopy allowSmaller:{width, height}];
    v13 = [v12 url];

    if (v13)
    {
      v14 = [v12 url];

      goto LABEL_6;
    }
  }

  v14 = [itemCopy _bestHeroBrandIconURLForSize:smallerCopy allowSmaller:{width, height}];
LABEL_6:

  return v14;
}

- (id)_heroImageProviderNameForMapItem:(id)item
{
  _photos = [item _photos];
  firstObject = [_photos firstObject];

  if ([(PDMapsBrandAndMerchantUpdater *)self _validHeroImageForPhoto:firstObject])
  {
    attribution = [firstObject attribution];
    providerName = [attribution providerName];
  }

  else
  {
    providerName = 0;
  }

  return providerName;
}

- (BOOL)_validHeroImageForPhoto:(id)photo
{
  photoCopy = photo;
  BOOL = GEOConfigGetBOOL();
  v5 = GEOConfigGetBOOL();
  v6 = v5;
  if (BOOL)
  {
    highQuality = [photoCopy highQuality];
    if ((highQuality & v6 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v5)
  {
    LOBYTE(highQuality) = 1;
    goto LABEL_7;
  }

  LOBYTE(highQuality) = [photoCopy businessProvided];
LABEL_7:

  return highQuality;
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
    firstObject = [(NSMutableArray *)self->_requests firstObject];
    currentRequest = self->_currentRequest;
    self->_currentRequest = firstObject;

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
        configurations = [(PKPaymentTransactionMapsUpdateProcessorRequest *)v6 configurations];
        *buf = 138412546;
        v11 = v6;
        v12 = 2048;
        v13 = [configurations count];
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

- (void)performScheduledActivityWithIdentifier:(id)identifier activityCriteria:(id)criteria
{
  identifierCopy = identifier;
  criteriaCopy = criteria;
  v8 = identifierCopy;
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

    v32 = criteriaCopy;

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

    criteriaCopy = v32;
  }
}

@end