@interface FKPerson
+ (id)_allEmailValuesForRecord:(void *)a3;
+ (id)_allEmailValuesInSet:(id)a3;
+ (id)_allPhoneValuesForRecord:(void *)a3;
+ (id)_allPhoneValuesInSet:(id)a3;
+ (id)allValuesForPerson:(void *)a3;
+ (id)preferredNameForPerson:(void *)a3;
+ (id)sharedMetadataQueue;
+ (int)addValue:(void *)a3 withLabel:(__CFString *)a4 toPerson:(void *)a5 property:(int)a6;
- (BOOL)_updateFromDictionaryRepresentation:(id)a3 shouldLogUpdates:(BOOL)a4;
- (BOOL)isEqualToDictionaryRepresentation:(id)a3;
- (BOOL)isLikePerson:(id)a3;
- (FKPerson)init;
- (FKPerson)initWithABRecordGUID:(id)a3 addressBook:(void *)a4;
- (FKPerson)initWithCoder:(id)a3;
- (FKPerson)initWithDestinations:(id)a3 addressBook:(void *)a4;
- (FKPerson)initWithDictionaryRepresentation:(id)a3 addressBook:(void *)a4;
- (FKPerson)initWithFavorite:(id)a3 addressBook:(void *)a4;
- (NSDictionary)metadata;
- (float)_allValuesMatchScore:(id)a3;
- (id)_recordMatchDictionaryFromCFArray:(__CFArray *)a3 followLinks:(BOOL)a4 addressBook:(void *)a5;
- (id)allValues;
- (id)description;
- (id)dictionaryRepresentation;
- (id)displayName;
- (id)initials;
- (id)metadataValueForKey:(id)a3;
- (id)primaryDestination;
- (void)_bestRecordMatchFromDictionary:(id)a3 addressBook:(void *)a4;
- (void)_postChangeNotification;
- (void)_reconcile:(void *)a3 canPostChangeNotification:(BOOL)a4 shouldLogUpdates:(BOOL)a5;
- (void)_setABRecordGUID:(id)a3;
- (void)addMetadataEntriesFromDictionary:(id)a3;
- (void)copyABPersonWithAddressBook:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeAllMetadataValues;
- (void)setMetadataValue:(id)a3 forKey:(id)a4;
- (void)setPreferredReplyAs:(id)a3;
@end

@implementation FKPerson

+ (id)sharedMetadataQueue
{
  if (sharedMetadataQueue_onceToken != -1)
  {
    +[FKPerson sharedMetadataQueue];
  }

  v3 = sharedMetadataQueue_metadataQueue;

  return v3;
}

uint64_t __31__FKPerson_sharedMetadataQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.FriendKit.FKPerson.metadata", MEMORY[0x277D85CD8]);
  v1 = sharedMetadataQueue_metadataQueue;
  sharedMetadataQueue_metadataQueue = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (FKPerson)init
{
  v7.receiver = self;
  v7.super_class = FKPerson;
  v2 = [(FKPerson *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_abRecordID = -1;
    v4 = [MEMORY[0x277CBEB38] dictionary];
    metadata = v3->_metadata;
    v3->_metadata = v4;
  }

  return v3;
}

- (FKPerson)initWithDictionaryRepresentation:(id)a3 addressBook:(void *)a4
{
  v5 = a3;
  v6 = [(FKPerson *)self init];
  v7 = v6;
  if (v6)
  {
    [(FKPerson *)v6 _updateFromDictionaryRepresentation:v5 shouldLogUpdates:0];
  }

  return v7;
}

- (FKPerson)initWithDestinations:(id)a3 addressBook:(void *)a4
{
  v6 = a3;
  v7 = [(FKPerson *)self init];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB98] setWithArray:v6];
    allValues = v7->_allValues;
    v7->_allValues = v8;

    [(FKPerson *)v7 _reconcile:a4 canPostChangeNotification:0 shouldLogUpdates:0];
  }

  return v7;
}

- (FKPerson)initWithABRecordGUID:(id)a3 addressBook:(void *)a4
{
  v7 = a3;
  v8 = [(FKPerson *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_abRecordGUID, a3);
    [(FKPerson *)v9 _reconcile:a4 canPostChangeNotification:0 shouldLogUpdates:0];
  }

  return v9;
}

- (FKPerson)initWithFavorite:(id)a3 addressBook:(void *)a4
{
  v6 = a3;
  v7 = [(FKPerson *)self init];
  if (v7)
  {
    v8 = [v6 _abUid];
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID(a4, v8);
    if (PersonWithRecordID)
    {
      v7->_abRecordID = v8;
      v10 = ABRecordCopyValue(PersonWithRecordID, *MEMORY[0x277CE9950]);
      abRecordGUID = v7->_abRecordGUID;
      v7->_abRecordGUID = v10;

      v12 = ABAddressBookCopyUniqueIdentifier();
      abDatabaseUID = v7->_abDatabaseUID;
      v7->_abDatabaseUID = v12;

      [(FKPerson *)v7 _reconcile:a4 canPostChangeNotification:0 shouldLogUpdates:0];
    }

    else
    {
      v14 = [v6 displayName];
      name = v7->_name;
      v7->_name = v14;

      v16 = [v6 value];
      v17 = [v16 fkMessageCanonicalRawAddress];

      v18 = [MEMORY[0x277CBEB98] setWithObject:v17];
      allValues = v7->_allValues;
      v7->_allValues = v18;
    }
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  primaryDestination = self->_primaryDestination;
  v5 = a3;
  [v5 encodeObject:primaryDestination forKey:@"pd"];
  [v5 encodeObject:self->_initials forKey:@"i"];
  [v5 encodeObject:self->_phoneNumberCount forKey:@"pnc"];
  [v5 encodeObject:self->_emailAddressCount forKey:@"eac"];
  [v5 encodeInt64:self->_abRecordID forKey:@"abid"];
  [v5 encodeObject:self->_abRecordGUID forKey:@"abguid"];
  [v5 encodeObject:self->_abDatabaseUID forKey:@"abdbuid"];
  [v5 encodeObject:self->_name forKey:@"n"];
  [v5 encodeObject:self->_allValues forKey:@"av"];
  [v5 encodeObject:self->_metadata forKey:@"m"];
}

- (FKPerson)initWithCoder:(id)a3
{
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(FKPerson *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pd"];
    primaryDestination = v5->_primaryDestination;
    v5->_primaryDestination = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    initials = v5->_initials;
    v5->_initials = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pnc"];
    phoneNumberCount = v5->_phoneNumberCount;
    v5->_phoneNumberCount = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eac"];
    emailAddressCount = v5->_emailAddressCount;
    v5->_emailAddressCount = v12;

    v5->_abRecordID = [v4 decodeInt64ForKey:@"abid"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"abguid"];
    abRecordGUID = v5->_abRecordGUID;
    v5->_abRecordGUID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"abdbuid"];
    abDatabaseUID = v5->_abDatabaseUID;
    v5->_abDatabaseUID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"n"];
    name = v5->_name;
    v5->_name = v18;

    v20 = MEMORY[0x277CBEB98];
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [v4 decodeObjectOfClasses:v22 forKey:@"av"];
    allValues = v5->_allValues;
    v5->_allValues = v23;

    v25 = MEMORY[0x277CBEB38];
    v26 = MEMORY[0x277CBEB98];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v34[2] = objc_opt_class();
    v34[3] = objc_opt_class();
    v34[4] = objc_opt_class();
    v34[5] = objc_opt_class();
    v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:6];
    v28 = [v26 setWithArray:v27];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"m"];
    v30 = [v25 dictionaryWithDictionary:v29];
    metadata = v5->_metadata;
    v5->_metadata = v30;
  }

  v32 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_updateFromDictionaryRepresentation:(id)a3 shouldLogUpdates:(BOOL)a4
{
  v43 = a4;
  v63 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKey:@"ABRecordID"];
  v7 = [v6 intValue];

  v44 = [v5 objectForKey:@"ABRecordGUID"];
  v8 = [v5 objectForKey:@"ABDatabaseUID"];
  v9 = [v5 objectForKey:@"Name"];
  v10 = MEMORY[0x277CBEB98];
  v11 = [v5 objectForKey:@"AllValues"];
  v42 = [v10 setWithArray:v11];

  v12 = [v5 objectForKey:@"ReplyAs"];
  v13 = [v5 objectForKey:@"Monogram"];
  v14 = MEMORY[0x277CBEB38];
  v15 = [v5 objectForKey:@"Metadata"];
  v40 = [v14 dictionaryWithDictionary:v15];

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  if (self->_abRecordID != v7)
  {
    self->_abRecordID = v7;
    v52 = 1;
  }

  abRecordGUID = self->_abRecordGUID;
  if (abRecordGUID | v44 && ![(NSString *)abRecordGUID isEqualToString:v44])
  {
    if (v43)
    {
      v17 = _FKGetLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = self->_abRecordGUID;
        *buf = 136316162;
        v54 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
        v55 = 1024;
        v56 = 195;
        v57 = 2112;
        v58 = self;
        v59 = 2112;
        v60 = v18;
        v61 = 2112;
        v62 = v44;
        _os_log_impl(&dword_24BC19000, v17, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to abRecordGUID: %@ -> %@", buf, 0x30u);
      }
    }

    [(FKPerson *)self _setABRecordGUID:v44, v40];
    *(v50 + 24) = 1;
  }

  abDatabaseUID = self->_abDatabaseUID;
  if (abDatabaseUID | v8 && ![(NSString *)abDatabaseUID isEqualToString:v8])
  {
    if (v43)
    {
      v20 = _FKGetLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->_abDatabaseUID;
        *buf = 136316162;
        v54 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
        v55 = 1024;
        v56 = 201;
        v57 = 2112;
        v58 = self;
        v59 = 2112;
        v60 = v21;
        v61 = 2112;
        v62 = v8;
        _os_log_impl(&dword_24BC19000, v20, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to abDatabaseUID: %@ -> %@", buf, 0x30u);
      }
    }

    objc_storeStrong(&self->_abDatabaseUID, v8);
    *(v50 + 24) = 1;
  }

  name = self->_name;
  if (name | v9 && ![(NSString *)name isEqualToString:v9])
  {
    if (v43)
    {
      v23 = _FKGetLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->_name;
        *buf = 136316162;
        v54 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
        v55 = 1024;
        v56 = 207;
        v57 = 2112;
        v58 = self;
        v59 = 2112;
        v60 = v24;
        v61 = 2112;
        v62 = v9;
        _os_log_impl(&dword_24BC19000, v23, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to name: '%@' -> '%@'", buf, 0x30u);
      }
    }

    objc_storeStrong(&self->_name, v9);
    *(v50 + 24) = 1;
  }

  v25 = [v42 fkSanitizedDestinationSet];
  allValues = self->_allValues;
  if (allValues | v25 && ![(NSSet *)allValues isEqualToSet:v25])
  {
    if (v43)
    {
      v27 = _FKGetLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = self->_allValues;
        *buf = 136316162;
        v54 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
        v55 = 1024;
        v56 = 216;
        v57 = 2112;
        v58 = self;
        v59 = 2112;
        v60 = v28;
        v61 = 2112;
        v62 = v25;
        _os_log_impl(&dword_24BC19000, v27, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to allValues: %@ -> %@", buf, 0x30u);
      }
    }

    objc_storeStrong(&self->_allValues, v25);
    *(v50 + 24) = 1;
    self->_needsSave = [v42 isEqualToSet:v25] ^ 1;
  }

  preferredReplyAs = self->_preferredReplyAs;
  if (preferredReplyAs | v12 && ![(NSString *)preferredReplyAs isEqualToString:v12])
  {
    if (v43)
    {
      v30 = _FKGetLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->_preferredReplyAs;
        *buf = 136316162;
        v54 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
        v55 = 1024;
        v56 = 225;
        v57 = 2112;
        v58 = self;
        v59 = 2112;
        v60 = v31;
        v61 = 2112;
        v62 = v12;
        _os_log_impl(&dword_24BC19000, v30, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to _preferredReplyAs: '%@' -> '%@'", buf, 0x30u);
      }
    }

    objc_storeStrong(&self->_preferredReplyAs, v12);
    *(v50 + 24) = 1;
  }

  if (!v13)
  {
    v13 = [FKUtility initialForString:self->_name];
  }

  if ([v13 length])
  {
    v32 = 0;
  }

  else
  {
    v32 = [(NSString *)self->_initials length]== 0;
  }

  initials = self->_initials;
  if (v13 | initials && !v32 && ![(NSString *)initials isEqualToString:v13])
  {
    if (v43)
    {
      v34 = _FKGetLogSystem();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = self->_initials;
        *buf = 136316162;
        v54 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]";
        v55 = 1024;
        v56 = 234;
        v57 = 2112;
        v58 = self;
        v59 = 2112;
        v60 = v35;
        v61 = 2112;
        v62 = v13;
        _os_log_impl(&dword_24BC19000, v34, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to initials: [%@] -> [%@]", buf, 0x30u);
      }
    }

    objc_storeStrong(&self->_initials, v13);
    *(v50 + 24) = 1;
  }

  v36 = +[FKPerson sharedMetadataQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__FKPerson__updateFromDictionaryRepresentation_shouldLogUpdates___block_invoke;
  block[3] = &unk_27916A658;
  block[4] = self;
  v46 = v41;
  v48 = v43;
  v47 = &v49;
  v37 = v41;
  dispatch_sync(v36, block);

  LOBYTE(v36) = *(v50 + 24);
  _Block_object_dispose(&v49, 8);

  v38 = *MEMORY[0x277D85DE8];
  return v36 & 1;
}

void __65__FKPerson__updateFromDictionaryRepresentation_shouldLogUpdates___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v3 + 80) | v2 && ([v2 isEqualToDictionary:?] & 1) == 0)
  {
    if (*(a1 + 56) == 1)
    {
      v4 = _FKGetLogSystem();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = *(a1 + 40);
        v7 = *(v5 + 80);
        *buf = 136316162;
        v14 = "[FKPerson _updateFromDictionaryRepresentation:shouldLogUpdates:]_block_invoke";
        v15 = 1024;
        v16 = 241;
        v17 = 2112;
        v18 = v5;
        v19 = 2112;
        v20 = v7;
        v21 = 2112;
        v22 = v6;
        _os_log_impl(&dword_24BC19000, v4, OS_LOG_TYPE_DEFAULT, "%s (%d) %@ is being marked as updated due to metadata: %@ -> %@", buf, 0x30u);
      }
    }

    objc_initWeak(buf, *(a1 + 32));
    v8 = +[FKPerson sharedMetadataQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __65__FKPerson__updateFromDictionaryRepresentation_shouldLogUpdates___block_invoke_72;
    v10[3] = &unk_27916A280;
    objc_copyWeak(&v12, buf);
    v11 = *(a1 + 40);
    dispatch_barrier_async(v8, v10);

    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __65__FKPerson__updateFromDictionaryRepresentation_shouldLogUpdates___block_invoke_72(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _metadataDictionary];
  [v3 removeAllObjects];

  v5 = objc_loadWeakRetained((a1 + 40));
  v4 = [v5 _metadataDictionary];
  [v4 addEntriesFromDictionary:*(a1 + 32)];
}

- (id)dictionaryRepresentation
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_abRecordID];
  v5 = [v3 dictionaryWithObjectsAndKeys:{v4, @"ABRecordID", 0}];

  abRecordGUID = self->_abRecordGUID;
  if (abRecordGUID)
  {
    [v5 setObject:abRecordGUID forKey:@"ABRecordGUID"];
  }

  abDatabaseUID = self->_abDatabaseUID;
  if (abDatabaseUID)
  {
    [v5 setObject:abDatabaseUID forKey:@"ABDatabaseUID"];
  }

  name = self->_name;
  if (name)
  {
    [v5 setObject:name forKey:@"Name"];
  }

  allValues = self->_allValues;
  if (allValues)
  {
    v10 = [(NSSet *)allValues allObjects];
    [v5 setObject:v10 forKey:@"AllValues"];
  }

  preferredReplyAs = self->_preferredReplyAs;
  if (preferredReplyAs)
  {
    [v5 setObject:preferredReplyAs forKey:@"ReplyAs"];
  }

  if (self->_initials)
  {
    initials = self->_initials;
  }

  else
  {
    initials = &stru_285F8D5E0;
  }

  [v5 setObject:initials forKey:@"Monogram"];
  v13 = +[FKPerson sharedMetadataQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__FKPerson_dictionaryRepresentation__block_invoke;
  block[3] = &unk_27916A548;
  block[4] = self;
  v14 = v5;
  v19 = v14;
  dispatch_sync(v13, block);

  v15 = v19;
  v16 = v14;

  return v14;
}

void __36__FKPerson_dictionaryRepresentation__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 80) count])
  {
    v2 = *(a1 + 40);
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(*(a1 + 32) + 80)];
    [v2 setObject:v3 forKey:@"Metadata"];
  }
}

- (id)displayName
{
  if ([(NSString *)self->_name length])
  {
    v3 = [(NSString *)self->_name copy];
  }

  else
  {
    v3 = [(FKPerson *)self primaryDestination];
    if ([v3 fkMessageDestinationType] == 1)
    {
      v4 = [FKUtility compressPhoneNumberString:v3];

      v3 = v4;
    }
  }

  return v3;
}

- (id)primaryDestination
{
  primaryDestination = self->_primaryDestination;
  if (!primaryDestination)
  {
    v4 = [FKPerson _allPhoneValuesInSet:self->_allValues];
    if ([v4 count])
    {
      v5 = [v4 objectAtIndex:0];
    }

    else
    {
      v6 = [FKPerson _allEmailValuesInSet:self->_allValues];
      if ([v6 count])
      {
        v5 = [v6 objectAtIndex:0];
      }

      else
      {
        v5 = 0;
      }
    }

    v7 = self->_primaryDestination;
    self->_primaryDestination = v5;

    primaryDestination = self->_primaryDestination;
  }

  return primaryDestination;
}

- (id)allValues
{
  v2 = [(NSSet *)self->_allValues copy];

  return v2;
}

- (void)setPreferredReplyAs:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  preferredReplyAs = self->_preferredReplyAs;
  if (v5 | preferredReplyAs && ![(NSString *)preferredReplyAs isEqualToString:v5])
  {
    v7 = _FKGetLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      abRecordGUID = self->_abRecordGUID;
      v10 = self->_preferredReplyAs;
      v12 = 136316418;
      v13 = "[FKPerson setPreferredReplyAs:]";
      v14 = 1024;
      v15 = 348;
      v16 = 2112;
      v17 = name;
      v18 = 2112;
      v19 = abRecordGUID;
      v20 = 2112;
      v21 = v10;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_24BC19000, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) updating preferredReplyAs for [%@] (GUID %@): %@ -> %@", &v12, 0x3Au);
    }

    objc_storeStrong(&self->_preferredReplyAs, a3);
    self->_needsSave = 1;
    [(FKPerson *)self _postChangeNotification];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)metadataValueForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v5 = +[FKPerson sharedMetadataQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __32__FKPerson_metadataValueForKey___block_invoke;
  block[3] = &unk_27916A680;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __32__FKPerson_metadataValueForKey___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 80) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setMetadataValue:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = +[FKPerson sharedMetadataQueue];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __36__FKPerson_setMetadataValue_forKey___block_invoke;
  v11[3] = &unk_27916A460;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_barrier_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __36__FKPerson_setMetadataValue_forKey___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained _metadataDictionary];
  [v3 setObject:*(a1 + 32) forKey:*(a1 + 40)];

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 setNeedsSave:1];

  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 _postChangeNotification];
}

- (void)addMetadataEntriesFromDictionary:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v4];
  objc_initWeak(&location, self);
  v6 = +[FKPerson sharedMetadataQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__FKPerson_addMetadataEntriesFromDictionary___block_invoke;
  block[3] = &unk_27916A280;
  objc_copyWeak(&v10, &location);
  v9 = v5;
  v7 = v5;
  dispatch_barrier_async(v6, block);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __45__FKPerson_addMetadataEntriesFromDictionary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained _metadataDictionary];
  [v3 addEntriesFromDictionary:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 40));
  [v4 setNeedsSave:1];

  v5 = objc_loadWeakRetained((a1 + 40));
  [v5 _postChangeNotification];
}

- (void)removeAllMetadataValues
{
  objc_initWeak(&location, self);
  v2 = +[FKPerson sharedMetadataQueue];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __35__FKPerson_removeAllMetadataValues__block_invoke;
  v3[3] = &unk_27916A258;
  objc_copyWeak(&v4, &location);
  dispatch_barrier_async(v2, v3);

  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __35__FKPerson_removeAllMetadataValues__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained _metadataDictionary];
  [v3 removeAllObjects];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setNeedsSave:1];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 _postChangeNotification];
}

- (NSDictionary)metadata
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v3 = +[FKPerson sharedMetadataQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __20__FKPerson_metadata__block_invoke;
  v6[3] = &unk_27916A5E8;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __20__FKPerson_metadata__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(*(a1 + 32) + 80)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(FKPerson *)self displayName];
  v7 = [(FKPerson *)self primaryDestination];
  v8 = [v3 stringWithFormat:@"<%@: %p [%@]:%@>", v5, self, v6, v7];

  return v8;
}

- (void)copyABPersonWithAddressBook:(void *)a3
{
  result = [(NSString *)self->_abRecordGUID length];
  if (result)
  {
    abRecordGUID = self->_abRecordGUID;

    return ABAddressBookCopyPersonMatchingInternalUUID();
  }

  return result;
}

- (void)_setABRecordGUID:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  abRecordGUID = self->_abRecordGUID;
  if (abRecordGUID)
  {
    if ([(NSString *)v4 length])
    {
      v7 = v5;
    }

    else
    {
      v7 = &stru_285F8D5E0;
    }

    if (![(NSString *)abRecordGUID isEqualToString:v7])
    {
      objc_initWeak(&location, self);
      v16 = @"UnlinkedABGUID";
      v17[0] = self->_abRecordGUID;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __29__FKPerson__setABRecordGUID___block_invoke;
      v12[3] = &unk_27916A280;
      objc_copyWeak(&v14, &location);
      v13 = v8;
      v9 = v8;
      dispatch_async(MEMORY[0x277D85CD0], v12);

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }

  v10 = self->_abRecordGUID;
  self->_abRecordGUID = v5;

  v11 = *MEMORY[0x277D85DE8];
}

void __29__FKPerson__setABRecordGUID___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v3 postNotificationName:@"FKPersonUnlinkedFromAddressBookNotification" object:WeakRetained userInfo:*(a1 + 32)];
}

- (id)initials
{
  v2 = [(NSString *)self->_initials copy];

  return v2;
}

- (BOOL)isEqualToDictionaryRepresentation:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKey:@"ABRecordGUID"];
  abRecordGUID = self->_abRecordGUID;
  if ((v5 == 0) == (abRecordGUID != 0))
  {
    v7 = 0;
  }

  else if (abRecordGUID)
  {
    v7 = [(NSString *)abRecordGUID isEqualToString:v5];
  }

  else
  {
    v8 = [v4 objectForKey:@"AllValues"];
    if ([v8 count])
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            if ([(NSSet *)self->_allValues containsObject:*(*(&v16 + 1) + 8 * i), v16])
            {
              v7 = 1;
              goto LABEL_16;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v7 = 0;
LABEL_16:
    }

    else
    {
      v7 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)isLikePerson:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 abRecordGUID];
    abRecordGUID = self->_abRecordGUID;
    if (abRecordGUID)
    {
      v8 = v6 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8 || ![(NSString *)abRecordGUID isEqualToString:v6])
    {
      v10 = [v5 allValues];
      allValues = self->_allValues;
      v9 = allValues && v10 && [(NSSet *)allValues intersectsSet:v10];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_postChangeNotification
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __35__FKPerson__postChangeNotification__block_invoke;
  v2[3] = &unk_27916A258;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x277D85CD0], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

void __35__FKPerson__postChangeNotification__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"FKPersonValuesChangedNotification" object:WeakRetained];
}

- (void)_reconcile:(void *)a3 canPostChangeNotification:(BOOL)a4 shouldLogUpdates:(BOOL)a5
{
  v50 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    goto LABEL_58;
  }

  v5 = a5;
  v6 = a4;
  v8 = ABAddressBookCopyUniqueIdentifier();
  if (v8 && ![(NSString *)self->_abDatabaseUID isEqualToString:v8])
  {
    objc_storeStrong(&self->_abDatabaseUID, v8);
    v9 = 1;
    self->_needsSave = 1;
  }

  else
  {
    v9 = 0;
  }

  if (self->_abRecordGUID && (v10 = ABAddressBookCopyPersonMatchingInternalUUID()) != 0)
  {
    v11 = v10;
    RecordID = ABRecordGetRecordID(v10);
    if (self->_abRecordID != RecordID)
    {
      v13 = RecordID;
      if (v5)
      {
        v14 = _FKGetLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          abRecordGUID = self->_abRecordGUID;
          abRecordID = self->_abRecordID;
          *buf = 136316162;
          v42 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
          v43 = 1024;
          v44 = 536;
          v45 = 2112;
          v46 = abRecordGUID;
          v47 = 1024;
          *v48 = abRecordID;
          *&v48[4] = 1024;
          *&v48[6] = v13;
          _os_log_impl(&dword_24BC19000, v14, OS_LOG_TYPE_DEFAULT, "%s (%d) updating AB record ID for friend with GUID %@: %d -> %d", buf, 0x28u);
        }
      }

      self->_abRecordID = v13;
      v9 = 1;
      self->_needsSave = 1;
    }

    v17 = [FKPerson preferredNameForPerson:v11];
    name = self->_name;
    if (name | v17 && ![(NSString *)name isEqualToString:v17])
    {
      if (v5)
      {
        v19 = _FKGetLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = self->_abRecordGUID;
          v21 = self->_name;
          *buf = 136316162;
          v42 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
          v43 = 1024;
          v44 = 546;
          v45 = 2112;
          v46 = v20;
          v47 = 2112;
          *v48 = v21;
          *&v48[8] = 2112;
          v49 = v17;
          _os_log_impl(&dword_24BC19000, v19, OS_LOG_TYPE_DEFAULT, "%s (%d) updating name for friend with GUID %@: [%@] -> [%@]", buf, 0x30u);
        }
      }

      objc_storeStrong(&self->_name, v17);
      v9 = 1;
      self->_needsSave = 1;
    }

    v22 = [FKPerson allValuesForPerson:v11];
    allValues = self->_allValues;
    if (allValues | v22 && ![(NSSet *)allValues isEqualToSet:v22])
    {
      if (v5)
      {
        v24 = _FKGetLogSystem();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = self->_abRecordGUID;
          v26 = self->_allValues;
          *buf = 136316162;
          v42 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
          v43 = 1024;
          v44 = 556;
          v45 = 2112;
          v46 = v25;
          v47 = 2112;
          *v48 = v26;
          *&v48[8] = 2112;
          v49 = v22;
          _os_log_impl(&dword_24BC19000, v24, OS_LOG_TYPE_DEFAULT, "%s (%d) updated destinations for friend with GUID %@: %@ -> %@", buf, 0x30u);
        }
      }

      objc_storeStrong(&self->_allValues, v22);
      primaryDestination = self->_primaryDestination;
      self->_primaryDestination = 0;

      phoneNumberCount = self->_phoneNumberCount;
      self->_phoneNumberCount = 0;

      emailAddressCount = self->_emailAddressCount;
      self->_emailAddressCount = 0;

      v9 = 1;
      self->_needsSave = 1;
    }

    v30 = [FKUtility initialsForPerson:v11];
  }

  else
  {
    if ([(NSSet *)self->_allValues count]&& [(NSString *)self->_name length])
    {
      v31 = _FKGetLogSystem();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_name;
        *buf = 136315650;
        v42 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
        v43 = 1024;
        v44 = 571;
        v45 = 2112;
        v46 = v32;
        _os_log_impl(&dword_24BC19000, v31, OS_LOG_TYPE_DEFAULT, "%s (%d) friend needs a full AB lookup, searching with name: %@", buf, 0x1Cu);
      }

      v33 = self->_name;
      ABAddressBookCopyPeopleAndIdentifiersMatchingName();
    }

    v34 = _FKGetLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v42 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
      v43 = 1024;
      v44 = 600;
      _os_log_impl(&dword_24BC19000, v34, OS_LOG_TYPE_DEFAULT, "%s (%d) unable to find matching record using name", buf, 0x12u);
    }

    if (self->_abRecordID != -1)
    {
      self->_abRecordID = -1;
      [(FKPerson *)self _setABRecordGUID:0];
      v9 = 1;
      self->_needsSave = 1;
    }

    v30 = [FKUtility initialForString:self->_name];
    v11 = 0;
  }

  if ([v30 length])
  {
    if (v30)
    {
      goto LABEL_47;
    }

    v35 = 0;
  }

  else
  {
    v36 = [(NSString *)self->_initials length];
    v35 = v36 == 0;
    if (v30)
    {
      if (v36)
      {
        goto LABEL_47;
      }

      goto LABEL_53;
    }
  }

  if (self->_initials && !v35)
  {
LABEL_47:
    if (([v30 isEqualToString:self->_initials] & 1) == 0)
    {
      if (v5)
      {
        v37 = _FKGetLogSystem();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          v38 = self->_abRecordGUID;
          initials = self->_initials;
          *buf = 136316162;
          v42 = "[FKPerson _reconcile:canPostChangeNotification:shouldLogUpdates:]";
          v43 = 1024;
          v44 = 615;
          v45 = 2112;
          v46 = v38;
          v47 = 2112;
          *v48 = initials;
          *&v48[8] = 2112;
          v49 = v30;
          _os_log_impl(&dword_24BC19000, v37, OS_LOG_TYPE_DEFAULT, "%s (%d) updating monogram for friend with GUID %@: [%@] -> [%@]", buf, 0x30u);
        }
      }

      objc_storeStrong(&self->_initials, v30);
      v9 = 1;
      self->_needsSave = 1;
    }
  }

LABEL_53:
  if (v11)
  {
    CFRelease(v11);
  }

  if ((v9 & v6) == 1)
  {
    [(FKPerson *)self _postChangeNotification];
  }

LABEL_58:
  v40 = *MEMORY[0x277D85DE8];
}

+ (id)preferredNameForPerson:(void *)a3
{
  if (a3)
  {
    v4 = ABPersonCopyPreferredLinkedPersonForName();
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = a3;
    }

    if (ABPersonGetShortNameFormatEnabled())
    {
      v7 = ABPersonCopyShortName();
    }

    else
    {
      v7 = 0;
    }

    if (ABPersonGetShortNamePreferNicknames())
    {
      v9 = ABRecordCopyValue(v6, *MEMORY[0x277CE99B0]);
    }

    else
    {
      v9 = 0;
    }

    v10 = ABPersonCopyCompositeName();
    if (v5)
    {
      CFRelease(v5);
    }

    if (v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v10;
    }

    if (v9)
    {
      v11 = v9;
    }

    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)allValuesForPerson:(void *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    v5 = [FKPerson _allEmailValuesForRecord:a3];
    v6 = [FKPerson _allPhoneValuesForRecord:a3];
    [v4 addObjectsFromArray:v5];
    [v4 addObjectsFromArray:v6];
    if ([FKUtility personHasLinkages:a3])
    {
      v17 = v5;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v7 = ABPersonCopyArrayOfAllLinkedPeople(a3);
      v8 = [(__CFArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            if (v12 != a3)
            {
              v13 = [FKPerson _allEmailValuesForRecord:*(*(&v18 + 1) + 8 * i)];
              v14 = [FKPerson _allPhoneValuesForRecord:v12];
              [v4 addObjectsFromArray:v13];
              [v4 addObjectsFromArray:v14];
            }
          }

          v9 = [(__CFArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      v5 = v17;
    }
  }

  else
  {
    v4 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_recordMatchDictionaryFromCFArray:(__CFArray *)a3 followLinks:(BOOL)a4 addressBook:(void *)a5
{
  v6 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    v10 = Count;
    for (i = 0; i != v10; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      if (ValueAtIndex)
      {
        PersonWithRecordID = ValueAtIndex;
        RecordID = ABRecordGetRecordID(ValueAtIndex);
        if (v6)
        {
          v15 = *MEMORY[0x277CE9988];
          IntValue = ABRecordGetIntValue();
          if (IntValue != -1)
          {
            v17 = IntValue;
            PersonWithRecordID = ABAddressBookGetPersonWithRecordID(a5, IntValue);
            RecordID = v17;
          }
        }

        v18 = [MEMORY[0x277CCABB0] numberWithInt:RecordID];
        if (PersonWithRecordID)
        {
          v19 = [v8 objectForKey:v18];

          if (!v19)
          {
            v20 = [FKPerson allValuesForPerson:PersonWithRecordID];
            [v8 setObject:v20 forKey:v18];
          }
        }
      }
    }
  }

  return v8;
}

- (float)_allValuesMatchScore:(id)a3
{
  v4 = a3;
  v5 = [(NSSet *)self->_allValues mutableCopy];
  [v5 intersectSet:v4];
  v6 = [v5 count];
  v7 = [(NSSet *)self->_allValues count];
  v8 = v6 / v7;
  if (v6 == v7)
  {
    v8 = v8 + (([v4 count] - v6) * (1.0 / v7));
  }

  return v8;
}

- (void)_bestRecordMatchFromDictionary:(id)a3 addressBook:(void *)a4
{
  v6 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -1;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__FKPerson__bestRecordMatchFromDictionary_addressBook___block_invoke;
  v10[3] = &unk_27916A6A8;
  v10[4] = self;
  v10[5] = v11;
  v10[6] = &v13;
  [v6 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = *(v14 + 6);
  if (v7 == -1)
  {
    PersonWithRecordID = 0;
  }

  else
  {
    PersonWithRecordID = ABAddressBookGetPersonWithRecordID(a4, v7);
  }

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v13, 8);

  return PersonWithRecordID;
}

void __55__FKPerson__bestRecordMatchFromDictionary_addressBook___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  [*(a1 + 32) _allValuesMatchScore:a3];
  v6 = *(*(a1 + 40) + 8);
  if (v5 > *(v6 + 24))
  {
    *(v6 + 24) = v5;
    *(*(*(a1 + 48) + 8) + 24) = [v7 intValue];
  }
}

+ (id)_allPhoneValuesForRecord:(void *)a3
{
  if (a3)
  {
    v3 = ABRecordCopyValue(a3, *MEMORY[0x277CE9A18]);
    v4 = v3;
    if (v3)
    {
      v5 = ABMultiValueCopyArrayOfAllValues(v3);
    }

    else
    {
      v5 = [MEMORY[0x277CBEA60] array];
    }

    v7 = v5;
    v8 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v9 = [v8 fkSanitizedDestinationSet];
    v6 = [v9 allObjects];

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_allPhoneValuesInSet:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 fkMessageDestinationType] == 1)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)_allEmailValuesForRecord:(void *)a3
{
  if (a3)
  {
    v3 = ABRecordCopyValue(a3, *MEMORY[0x277CE9888]);
    v4 = v3;
    if (v3)
    {
      v5 = ABMultiValueCopyArrayOfAllValues(v3);
    }

    else
    {
      v5 = [MEMORY[0x277CBEA60] array];
    }

    v7 = v5;
    v8 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v9 = [v8 fkSanitizedDestinationSet];
    v6 = [v9 allObjects];

    if (v4)
    {
      CFRelease(v4);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_allEmailValuesInSet:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if ([v10 fkMessageDestinationType] == 2)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v4 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (int)addValue:(void *)a3 withLabel:(__CFString *)a4 toPerson:(void *)a5 property:(int)a6
{
  outIdentifier = -1;
  if ((ABPersonGetTypeOfProperty(a6) & 0x100) != 0)
  {
    v11 = ABRecordCopyValue(a5, a6);
    if (v11)
    {
      v12 = v11;
      MutableCopy = ABMultiValueCreateMutableCopy(v11);
      CFRelease(v12);
    }

    else
    {
      TypeOfProperty = ABPersonGetTypeOfProperty(a6);
      MutableCopy = ABMultiValueCreateMutable(TypeOfProperty);
    }

    ABMultiValueAddValueAndLabel(MutableCopy, a3, a4, &outIdentifier);
    ABRecordSetValue(a5, a6, MutableCopy, 0);
    CFRelease(MutableCopy);
    return outIdentifier;
  }

  else
  {
    ABRecordSetValue(a5, a6, a3, 0);
    return -1;
  }
}

@end