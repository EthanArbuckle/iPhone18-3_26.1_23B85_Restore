@interface PDAuxiliaryPassInformationManager
- (BOOL)_canUpdateMapsDataForMerchant:(id)a3 configurations:(id *)a4;
- (PDAuxiliaryPassInformationManager)initWithDatabaseManager:(id)a3 withMerchantUpdater:(id)a4 userNotificationManager:(id)a5;
- (id)_mapsBrandAndMerchantForMerchant:(id)a3;
- (void)_lookupMapsInformationForItem:(id)a3 completion:(id)a4;
- (void)_markOutstandingUpdatesInvalidForPassUniqueIdentifier:(id)a3;
- (void)_processAuxiliaryPassInformation:(id)a3 pass:(id)a4;
- (void)didInsertOrUpdatePass:(id)a3 oldPass:(id)a4 oldAuxiliaryInformationIdentifiers:(id)a5;
- (void)merchantForPassUniqueIdentifier:(id)a3 withAuxiliaryPassInformationItem:(id)a4 completion:(id)a5;
- (void)passWillBeRemoved:(id)a3;
@end

@implementation PDAuxiliaryPassInformationManager

- (PDAuxiliaryPassInformationManager)initWithDatabaseManager:(id)a3 withMerchantUpdater:(id)a4 userNotificationManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v21.receiver = self;
  v21.super_class = PDAuxiliaryPassInformationManager;
  v12 = [(PDAuxiliaryPassInformationManager *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_databaseManager, a3);
    objc_storeStrong(&v13->_merchantUpdater, a4);
    if (PKMultiReservationTTUNotificationEnabled())
    {
      v14 = [[PDAuxiliaryPassInformationNotificationManager alloc] initWithUserNotificationManager:v11];
      notificationManager = v13->_notificationManager;
      v13->_notificationManager = v14;
    }

    v13->_lock._os_unfair_lock_opaque = 0;
    v16 = objc_alloc_init(NSMutableDictionary);
    processingItemUpdatesForPass = v13->_processingItemUpdatesForPass;
    v13->_processingItemUpdatesForPass = v16;

    v18 = objc_alloc_init(NSMutableDictionary);
    processingItemCompletions = v13->_processingItemCompletions;
    v13->_processingItemCompletions = v18;
  }

  return v13;
}

- (void)didInsertOrUpdatePass:(id)a3 oldPass:(id)a4 oldAuxiliaryInformationIdentifiers:(id)a5
{
  v7 = a3;
  v26 = a4;
  v8 = a5;
  v27 = v7;
  v9 = [v7 auxiliaryPassInformation];
  v10 = objc_alloc_init(NSMutableSet);
  v11 = [[NSMutableSet alloc] initWithSet:v8];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v9;
  v30 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v30)
  {
    v29 = *v40;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [*(*(&v39 + 1) + 8 * i) items];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v36;
          do
          {
            for (j = 0; j != v15; j = j + 1)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v35 + 1) + 8 * j);
              v19 = [v18 identifier];
              if ([v8 containsObject:v19])
              {
                [v11 removeObject:v19];
              }

              else
              {
                [v10 addObject:v18];
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v35 objects:v43 count:16];
          }

          while (v15);
        }
      }

      v30 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v30);
  }

  if ([v11 count])
  {
    v20 = [v26 uniqueID];
    [(PDAuxiliaryPassInformationManager *)self _markOutstandingUpdatesInvalidForPassUniqueIdentifier:v20];
    databaseManager = self->_databaseManager;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10009AA2C;
    v31[3] = &unk_100841740;
    v32 = v11;
    v33 = self;
    v34 = v20;
    v22 = v20;
    [(PDDatabaseManager *)databaseManager performTransactionWithBlock:v31];
  }

  if ([v10 count])
  {
    v23 = [v27 uniqueID];
    [(PDAuxiliaryPassInformationManager *)self _markOutstandingUpdatesInvalidForPassUniqueIdentifier:v23];

    v24 = [v10 allObjects];
    [(PDAuxiliaryPassInformationManager *)self _processAuxiliaryPassInformation:v24 pass:v27];
  }

  if (PKMultiReservationTTUNotificationEnabled())
  {
    [(PDAuxiliaryPassInformationNotificationManager *)self->_notificationManager didInsertOrUpdatePass:v27 oldPass:v26];
  }
}

- (void)passWillBeRemoved:(id)a3
{
  databaseManager = self->_databaseManager;
  v4 = [a3 uniqueID];
  [(PDDatabaseManager *)databaseManager deleteAllPassAuxiliaryItemMerchantsForPassUniqueIdentifier:v4];
}

- (void)_markOutstandingUpdatesInvalidForPassUniqueIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_processingItemUpdatesForPass objectForKey:v4];
  v6 = v5;
  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) setIsInvalid:1];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }

  [(NSMutableDictionary *)self->_processingItemUpdatesForPass setObject:v6 forKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_processAuxiliaryPassInformation:(id)a3 pass:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [a4 uniqueID];
    v8 = objc_alloc_init(NSMutableArray);
    v39 = objc_alloc_init(NSMutableArray);
    v47 = objc_alloc_init(NSMutableDictionary);
    os_unfair_lock_lock(&self->_lock);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v37 = v6;
    obj = v6;
    v9 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    v40 = v8;
    v46 = self;
    if (v9)
    {
      v10 = v9;
      v11 = *v62;
      v38 = v7;
      v42 = *v62;
      do
      {
        v12 = 0;
        v43 = v10;
        do
        {
          if (*v62 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v61 + 1) + 8 * v12);
          v14 = [v13 identifier];
          if (v14)
          {
            v15 = [v13 mapsURL];

            if (v15)
            {
              v16 = [(PDDatabaseManager *)self->_databaseManager merchantForPassUniqueIdentifier:v7 auxiliaryPassInformationItemIdentifier:v14];
              if (v16)
              {
                v17 = [(PDAuxiliaryPassInformationManager *)self _mapsBrandAndMerchantForMerchant:v16];
                [v8 addObjectsFromArray:v17];
              }

              else
              {
                v18 = [(NSMutableDictionary *)self->_processingItemUpdatesForPass objectForKey:v7];
                v19 = objc_alloc_init(PDAuxiliaryPassInformationManagerItemUpdate);
                [(PDAuxiliaryPassInformationManagerItemUpdate *)v19 setItem:v13];
                [(PDAuxiliaryPassInformationManagerItemUpdate *)v19 setIsInvalid:0];
                if (v18)
                {
                  v41 = v19;
                  v59 = 0u;
                  v60 = 0u;
                  v57 = 0u;
                  v58 = 0u;
                  v17 = v18;
                  v20 = [v17 countByEnumeratingWithState:&v57 objects:v66 count:16];
                  if (v20)
                  {
                    v21 = v20;
                    v22 = *v58;
                    do
                    {
                      for (i = 0; i != v21; i = i + 1)
                      {
                        if (*v58 != v22)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v24 = *(*(&v57 + 1) + 8 * i);
                        v25 = [v24 item];
                        if ([v13 isEqual:v25])
                        {
                          v26 = [v24 isInvalid];

                          if ((v26 & 1) == 0)
                          {

                            self = v46;
                            v7 = v38;
                            [(NSMutableDictionary *)v46->_processingItemUpdatesForPass setObject:v17 forKeyedSubscript:v38];

                            goto LABEL_26;
                          }
                        }

                        else
                        {
                        }
                      }

                      v21 = [v17 countByEnumeratingWithState:&v57 objects:v66 count:16];
                    }

                    while (v21);
                  }

                  v19 = v41;
                  [v17 addObject:v41];
                  v7 = v38;
                  self = v46;
                }

                else
                {
                  v27 = [NSMutableSet alloc];
                  v67 = v19;
                  v28 = [NSArray arrayWithObjects:&v67 count:1];
                  v17 = [v27 initWithArray:v28];
                }

                [(NSMutableDictionary *)self->_processingItemUpdatesForPass setObject:v17 forKeyedSubscript:v7];
                [v39 addObject:v13];
                [v47 setObject:v19 forKey:v14];

LABEL_26:
                v8 = v40;
              }

              v11 = v42;
              v10 = v43;
            }
          }

          v12 = v12 + 1;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v10);
    }

    os_unfair_lock_unlock(&self->_lock);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    obja = v39;
    v29 = [obja countByEnumeratingWithState:&v53 objects:v65 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v54;
      do
      {
        for (j = 0; j != v30; j = j + 1)
        {
          if (*v54 != v31)
          {
            objc_enumerationMutation(obja);
          }

          v33 = *(*(&v53 + 1) + 8 * j);
          v34 = [v33 identifier];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_10009B1D8;
          v48[3] = &unk_100841790;
          v48[4] = v46;
          v49 = v7;
          v50 = v47;
          v51 = v34;
          v52 = v33;
          [(PDAuxiliaryPassInformationManager *)v46 _lookupMapsInformationForItem:v33 completion:v48];
        }

        v30 = [obja countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v30);
    }

    if ([v40 count])
    {
      merchantUpdater = v46->_merchantUpdater;
      v36 = [v40 copy];
      [(PDMapsBrandAndMerchantUpdater *)merchantUpdater updateMapsDataForConfigurations:v36];
    }

    v6 = v37;
  }
}

- (void)merchantForPassUniqueIdentifier:(id)a3 withAuxiliaryPassInformationItem:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (v10)
  {
    if (v8 && v9)
    {
      v12 = [v9 identifier];
      if (!v12)
      {
        v11[2](v11, 0);
      }

      os_unfair_lock_lock(&self->_lock);
      v13 = [(NSMutableDictionary *)self->_processingItemUpdatesForPass objectForKey:v8];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10009BA54;
      v30[3] = &unk_1008417B8;
      v30[4] = v12;
      if ([v13 pk_hasObjectPassingTest:v30])
      {
        v14 = [(NSMutableDictionary *)self->_processingItemCompletions objectForKey:v8];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 objectForKey:v12];
          if (v16)
          {
            v17 = objc_retainBlock(v11);
            [v16 addObject:v17];
          }

          else
          {
            v24 = [NSMutableArray alloc];
            v17 = objc_retainBlock(v11);
            v25 = [v24 initWithObjects:{v17, 0}];
            [v15 setObject:v25 forKey:v12];
          }
        }

        else
        {
          v20 = [NSMutableDictionary alloc];
          v21 = [NSMutableArray alloc];
          v22 = objc_retainBlock(v11);
          v23 = [v21 initWithObjects:{v22, 0}];
          v15 = [v20 initWithObjectsAndKeys:{v23, v12, 0}];

          [(NSMutableDictionary *)self->_processingItemCompletions setObject:v15 forKey:v8];
        }

        v26 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          processingItemCompletions = self->_processingItemCompletions;
          *buf = 138412802;
          v32 = v12;
          v33 = 2112;
          v34 = v8;
          v35 = 2112;
          v36 = processingItemCompletions;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "PDAuxiliaryPassInformationManager: Merchant lookup for %@ in pass %@ in progress, queueing completion %@", buf, 0x20u);
        }

        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        os_unfair_lock_unlock(&self->_lock);
        v18 = [(PDDatabaseManager *)self->_databaseManager merchantForPassUniqueIdentifier:v8 auxiliaryPassInformationItemIdentifier:v12];
        [(NSMutableDictionary *)v18 setUseDisplayNameIgnoringBrand:1];
        v19 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v32 = v12;
          v33 = 2112;
          v34 = v8;
          v35 = 2112;
          v36 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "PDAuxiliaryPassInformationManager: Fetched merchant for %@ in pass %@ (merchant lookup not in progress): %@", buf, 0x20u);
        }

        if (v18)
        {
          (v11)[2](v11, v18);
        }

        else
        {
          v28[0] = _NSConcreteStackBlock;
          v28[1] = 3221225472;
          v28[2] = sub_10009BAE8;
          v28[3] = &unk_1008417E0;
          v29 = v11;
          [(PDAuxiliaryPassInformationManager *)self _lookupMapsInformationForItem:v9 completion:v28];
        }
      }
    }

    else
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)_lookupMapsInformationForItem:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[PKAuxiliaryItemMerchantLookupSource alloc] initWithAuxiliaryItem:v5];
  v8 = [[PKMerchantLookupRequest alloc] initWithSource:v7];
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v5 description];
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDAuxiliaryPassInformationManager: Looking up maps data for aux item %@", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009BCD8;
  v13[3] = &unk_100841808;
  v14 = v5;
  v15 = v6;
  v11 = v6;
  v12 = v5;
  [v8 startLookupWithCompletion:v13];
}

- (id)_mapsBrandAndMerchantForMerchant:(id)a3
{
  v8 = 0;
  v3 = [(PDAuxiliaryPassInformationManager *)self _canUpdateMapsDataForMerchant:a3 configurations:&v8];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

- (BOOL)_canUpdateMapsDataForMerchant:(id)a3 configurations:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(NSMutableArray);
  v7 = [v5 mapsBrand];
  v16 = 0;
  v8 = [PDMapsBrandAndMerchantUpdater canUpdateMapsBrandForBrand:v7 outConfiguration:&v16];
  v9 = v16;

  [v6 safelyAddObject:v9];
  v10 = [v5 mapsMerchant];

  v15 = 0;
  v11 = [PDMapsBrandAndMerchantUpdater canUpdateMapsMerchantForMerchant:v10 outConfiguration:&v15];
  v12 = v15;

  [v6 safelyAddObject:v12];
  v13 = PKIsPhone();
  if (a4)
  {
    *a4 = [v6 copy];
  }

  return v13 & (v8 | v11);
}

@end