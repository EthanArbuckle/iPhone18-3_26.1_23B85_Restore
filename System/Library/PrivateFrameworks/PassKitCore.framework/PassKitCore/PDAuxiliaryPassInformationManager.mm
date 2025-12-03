@interface PDAuxiliaryPassInformationManager
- (BOOL)_canUpdateMapsDataForMerchant:(id)merchant configurations:(id *)configurations;
- (PDAuxiliaryPassInformationManager)initWithDatabaseManager:(id)manager withMerchantUpdater:(id)updater userNotificationManager:(id)notificationManager;
- (id)_mapsBrandAndMerchantForMerchant:(id)merchant;
- (void)_lookupMapsInformationForItem:(id)item completion:(id)completion;
- (void)_markOutstandingUpdatesInvalidForPassUniqueIdentifier:(id)identifier;
- (void)_processAuxiliaryPassInformation:(id)information pass:(id)pass;
- (void)didInsertOrUpdatePass:(id)pass oldPass:(id)oldPass oldAuxiliaryInformationIdentifiers:(id)identifiers;
- (void)merchantForPassUniqueIdentifier:(id)identifier withAuxiliaryPassInformationItem:(id)item completion:(id)completion;
- (void)passWillBeRemoved:(id)removed;
@end

@implementation PDAuxiliaryPassInformationManager

- (PDAuxiliaryPassInformationManager)initWithDatabaseManager:(id)manager withMerchantUpdater:(id)updater userNotificationManager:(id)notificationManager
{
  managerCopy = manager;
  updaterCopy = updater;
  notificationManagerCopy = notificationManager;
  v21.receiver = self;
  v21.super_class = PDAuxiliaryPassInformationManager;
  v12 = [(PDAuxiliaryPassInformationManager *)&v21 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_databaseManager, manager);
    objc_storeStrong(&v13->_merchantUpdater, updater);
    if (PKMultiReservationTTUNotificationEnabled())
    {
      v14 = [[PDAuxiliaryPassInformationNotificationManager alloc] initWithUserNotificationManager:notificationManagerCopy];
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

- (void)didInsertOrUpdatePass:(id)pass oldPass:(id)oldPass oldAuxiliaryInformationIdentifiers:(id)identifiers
{
  passCopy = pass;
  oldPassCopy = oldPass;
  identifiersCopy = identifiers;
  v27 = passCopy;
  auxiliaryPassInformation = [passCopy auxiliaryPassInformation];
  v10 = objc_alloc_init(NSMutableSet);
  v11 = [[NSMutableSet alloc] initWithSet:identifiersCopy];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = auxiliaryPassInformation;
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

        items = [*(*(&v39 + 1) + 8 * i) items];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v14 = [items countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                objc_enumerationMutation(items);
              }

              v18 = *(*(&v35 + 1) + 8 * j);
              identifier = [v18 identifier];
              if ([identifiersCopy containsObject:identifier])
              {
                [v11 removeObject:identifier];
              }

              else
              {
                [v10 addObject:v18];
              }
            }

            v15 = [items countByEnumeratingWithState:&v35 objects:v43 count:16];
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
    uniqueID = [oldPassCopy uniqueID];
    [(PDAuxiliaryPassInformationManager *)self _markOutstandingUpdatesInvalidForPassUniqueIdentifier:uniqueID];
    databaseManager = self->_databaseManager;
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10009AA2C;
    v31[3] = &unk_100841740;
    v32 = v11;
    selfCopy = self;
    v34 = uniqueID;
    v22 = uniqueID;
    [(PDDatabaseManager *)databaseManager performTransactionWithBlock:v31];
  }

  if ([v10 count])
  {
    uniqueID2 = [v27 uniqueID];
    [(PDAuxiliaryPassInformationManager *)self _markOutstandingUpdatesInvalidForPassUniqueIdentifier:uniqueID2];

    allObjects = [v10 allObjects];
    [(PDAuxiliaryPassInformationManager *)self _processAuxiliaryPassInformation:allObjects pass:v27];
  }

  if (PKMultiReservationTTUNotificationEnabled())
  {
    [(PDAuxiliaryPassInformationNotificationManager *)self->_notificationManager didInsertOrUpdatePass:v27 oldPass:oldPassCopy];
  }
}

- (void)passWillBeRemoved:(id)removed
{
  databaseManager = self->_databaseManager;
  uniqueID = [removed uniqueID];
  [(PDDatabaseManager *)databaseManager deleteAllPassAuxiliaryItemMerchantsForPassUniqueIdentifier:uniqueID];
}

- (void)_markOutstandingUpdatesInvalidForPassUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_processingItemUpdatesForPass objectForKey:identifierCopy];
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

  [(NSMutableDictionary *)self->_processingItemUpdatesForPass setObject:v6 forKeyedSubscript:identifierCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)_processAuxiliaryPassInformation:(id)information pass:(id)pass
{
  informationCopy = information;
  if (informationCopy)
  {
    uniqueID = [pass uniqueID];
    v8 = objc_alloc_init(NSMutableArray);
    v39 = objc_alloc_init(NSMutableArray);
    v47 = objc_alloc_init(NSMutableDictionary);
    os_unfair_lock_lock(&self->_lock);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v37 = informationCopy;
    obj = informationCopy;
    v9 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    v40 = v8;
    selfCopy = self;
    if (v9)
    {
      v10 = v9;
      v11 = *v62;
      v38 = uniqueID;
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
          identifier = [v13 identifier];
          if (identifier)
          {
            mapsURL = [v13 mapsURL];

            if (mapsURL)
            {
              v16 = [(PDDatabaseManager *)self->_databaseManager merchantForPassUniqueIdentifier:uniqueID auxiliaryPassInformationItemIdentifier:identifier];
              if (v16)
              {
                v17 = [(PDAuxiliaryPassInformationManager *)self _mapsBrandAndMerchantForMerchant:v16];
                [v8 addObjectsFromArray:v17];
              }

              else
              {
                v18 = [(NSMutableDictionary *)self->_processingItemUpdatesForPass objectForKey:uniqueID];
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
                        item = [v24 item];
                        if ([v13 isEqual:item])
                        {
                          isInvalid = [v24 isInvalid];

                          if ((isInvalid & 1) == 0)
                          {

                            self = selfCopy;
                            uniqueID = v38;
                            [(NSMutableDictionary *)selfCopy->_processingItemUpdatesForPass setObject:v17 forKeyedSubscript:v38];

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
                  uniqueID = v38;
                  self = selfCopy;
                }

                else
                {
                  v27 = [NSMutableSet alloc];
                  v67 = v19;
                  v28 = [NSArray arrayWithObjects:&v67 count:1];
                  v17 = [v27 initWithArray:v28];
                }

                [(NSMutableDictionary *)self->_processingItemUpdatesForPass setObject:v17 forKeyedSubscript:uniqueID];
                [v39 addObject:v13];
                [v47 setObject:v19 forKey:identifier];

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
          identifier2 = [v33 identifier];
          v48[0] = _NSConcreteStackBlock;
          v48[1] = 3221225472;
          v48[2] = sub_10009B1D8;
          v48[3] = &unk_100841790;
          v48[4] = selfCopy;
          v49 = uniqueID;
          v50 = v47;
          v51 = identifier2;
          v52 = v33;
          [(PDAuxiliaryPassInformationManager *)selfCopy _lookupMapsInformationForItem:v33 completion:v48];
        }

        v30 = [obja countByEnumeratingWithState:&v53 objects:v65 count:16];
      }

      while (v30);
    }

    if ([v40 count])
    {
      merchantUpdater = selfCopy->_merchantUpdater;
      v36 = [v40 copy];
      [(PDMapsBrandAndMerchantUpdater *)merchantUpdater updateMapsDataForConfigurations:v36];
    }

    informationCopy = v37;
  }
}

- (void)merchantForPassUniqueIdentifier:(id)identifier withAuxiliaryPassInformationItem:(id)item completion:(id)completion
{
  identifierCopy = identifier;
  itemCopy = item;
  completionCopy = completion;
  v11 = completionCopy;
  if (completionCopy)
  {
    if (identifierCopy && itemCopy)
    {
      identifier = [itemCopy identifier];
      if (!identifier)
      {
        v11[2](v11, 0);
      }

      os_unfair_lock_lock(&self->_lock);
      v13 = [(NSMutableDictionary *)self->_processingItemUpdatesForPass objectForKey:identifierCopy];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_10009BA54;
      v30[3] = &unk_1008417B8;
      v30[4] = identifier;
      if ([v13 pk_hasObjectPassingTest:v30])
      {
        v14 = [(NSMutableDictionary *)self->_processingItemCompletions objectForKey:identifierCopy];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 objectForKey:identifier];
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
            [v15 setObject:v25 forKey:identifier];
          }
        }

        else
        {
          v20 = [NSMutableDictionary alloc];
          v21 = [NSMutableArray alloc];
          v22 = objc_retainBlock(v11);
          v23 = [v21 initWithObjects:{v22, 0}];
          v15 = [v20 initWithObjectsAndKeys:{v23, identifier, 0}];

          [(NSMutableDictionary *)self->_processingItemCompletions setObject:v15 forKey:identifierCopy];
        }

        v26 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          processingItemCompletions = self->_processingItemCompletions;
          *buf = 138412802;
          v32 = identifier;
          v33 = 2112;
          v34 = identifierCopy;
          v35 = 2112;
          v36 = processingItemCompletions;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "PDAuxiliaryPassInformationManager: Merchant lookup for %@ in pass %@ in progress, queueing completion %@", buf, 0x20u);
        }

        os_unfair_lock_unlock(&self->_lock);
      }

      else
      {
        os_unfair_lock_unlock(&self->_lock);
        v18 = [(PDDatabaseManager *)self->_databaseManager merchantForPassUniqueIdentifier:identifierCopy auxiliaryPassInformationItemIdentifier:identifier];
        [(NSMutableDictionary *)v18 setUseDisplayNameIgnoringBrand:1];
        v19 = PKLogFacilityTypeGetObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v32 = identifier;
          v33 = 2112;
          v34 = identifierCopy;
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
          [(PDAuxiliaryPassInformationManager *)self _lookupMapsInformationForItem:itemCopy completion:v28];
        }
      }
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)_lookupMapsInformationForItem:(id)item completion:(id)completion
{
  itemCopy = item;
  completionCopy = completion;
  v7 = [[PKAuxiliaryItemMerchantLookupSource alloc] initWithAuxiliaryItem:itemCopy];
  v8 = [[PKMerchantLookupRequest alloc] initWithSource:v7];
  v9 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [itemCopy description];
    *buf = 138412290;
    v17 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "PDAuxiliaryPassInformationManager: Looking up maps data for aux item %@", buf, 0xCu);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10009BCD8;
  v13[3] = &unk_100841808;
  v14 = itemCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = itemCopy;
  [v8 startLookupWithCompletion:v13];
}

- (id)_mapsBrandAndMerchantForMerchant:(id)merchant
{
  v8 = 0;
  v3 = [(PDAuxiliaryPassInformationManager *)self _canUpdateMapsDataForMerchant:merchant configurations:&v8];
  v4 = v8;
  v5 = v4;
  v6 = 0;
  if (v3)
  {
    v6 = v4;
  }

  return v6;
}

- (BOOL)_canUpdateMapsDataForMerchant:(id)merchant configurations:(id *)configurations
{
  merchantCopy = merchant;
  v6 = objc_alloc_init(NSMutableArray);
  mapsBrand = [merchantCopy mapsBrand];
  v16 = 0;
  v8 = [PDMapsBrandAndMerchantUpdater canUpdateMapsBrandForBrand:mapsBrand outConfiguration:&v16];
  v9 = v16;

  [v6 safelyAddObject:v9];
  mapsMerchant = [merchantCopy mapsMerchant];

  v15 = 0;
  v11 = [PDMapsBrandAndMerchantUpdater canUpdateMapsMerchantForMerchant:mapsMerchant outConfiguration:&v15];
  v12 = v15;

  [v6 safelyAddObject:v12];
  v13 = PKIsPhone();
  if (configurations)
  {
    *configurations = [v6 copy];
  }

  return v13 & (v8 | v11);
}

@end