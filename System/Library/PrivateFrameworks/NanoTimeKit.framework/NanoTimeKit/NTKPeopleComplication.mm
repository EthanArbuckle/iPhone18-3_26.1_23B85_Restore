@interface NTKPeopleComplication
+ (BOOL)_complicationPickerShouldShowMoreButtonForList:(id)list;
+ (id)_allComplicationConfigurationsWithType:(unint64_t)type;
+ (id)allValidFavoriteContacts;
+ (id)complicationForContact:(id)contact forPromotedSection:(BOOL)section;
+ (id)localizedNameForContact:(id)contact;
+ (id)myCard;
- (BOOL)isFavoritedPerson;
- (NSString)storeBackedContactID;
- (NTKPeopleComplication)init;
- (NTKPeopleComplication)initWithCoder:(id)coder;
- (id)_complicationTypeString;
- (id)_generateUniqueIdentifier;
- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device;
- (id)localizedKeylineLabelText;
- (unint64_t)ntk_itemType;
- (void)_addKeysToJSONDictionary:(id)dictionary;
- (void)_contactsCacheDidChange;
- (void)_refreshContactInfoNotifyOfChange;
- (void)_registerWithSwitch:(BOOL)switch;
- (void)_updateStateWithContact:(id)contact foundAsPrimaryId:(BOOL)id;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)storeBackedContactID;
@end

@implementation NTKPeopleComplication

- (unint64_t)ntk_itemType
{
  if ([(NTKPeopleComplication *)self isFavoritedPerson])
  {
    return 2;
  }

  else
  {
    return 4;
  }
}

+ (id)_allComplicationConfigurationsWithType:(unint64_t)type
{
  if (NTKDeviceIsGreenTea() && ([MEMORY[0x277CBBAE8] currentDevice], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isPaired"), v4, !v5))
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  else
  {
    allValidFavoriteContacts = [self allValidFavoriteContacts];
    if (![allValidFavoriteContacts count])
    {
      v7 = +[NTKPeopleComplicationContactsCache sharedCache];
      v8 = [v7 nonFavoriteAllContactsWithCount:5];

      allValidFavoriteContacts = v8;
    }

    v9 = _peopleComplicationsForContacts(allValidFavoriteContacts, 0);
    v10 = v9;
    v11 = MEMORY[0x277CBEBF8];
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;
  }

  return v12;
}

+ (BOOL)_complicationPickerShouldShowMoreButtonForList:(id)list
{
  listCopy = list;
  firstObject = [listCopy firstObject];
  if (([firstObject isFavoritedPerson] & 1) != 0 && objc_msgSend(listCopy, "count") <= 4)
  {
    v5 = +[NTKPeopleComplicationContactsCache sharedCache];
    firstNonFavoriteAllContact = [v5 firstNonFavoriteAllContact];
    v7 = firstNonFavoriteAllContact != 0;
  }

  else
  {
    v7 = [listCopy count] > 4;
  }

  return v7;
}

+ (id)myCard
{
  v2 = +[NTKPeopleComplicationContactsCache sharedCache];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__48;
  v11 = __Block_byref_object_dispose__48;
  v12 = 0;
  myCard = [v2 myCard];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __31__NTKPeopleComplication_myCard__block_invoke;
  v6[3] = &unk_278786828;
  v6[4] = &v7;
  [v2 checkValidityOfContact:myCard block:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (id)allValidFavoriteContacts
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = +[NTKPeopleComplicationContactsCache sharedCache];
  favoriteContacts = [v3 favoriteContacts];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [favoriteContacts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(favoriteContacts);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __49__NTKPeopleComplication_allValidFavoriteContacts__block_invoke;
        v12[3] = &unk_2787863C8;
        v13 = v2;
        [v3 checkValidityOfContact:v9 block:v12];
      }

      v6 = [favoriteContacts countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  [v2 sortUsingComparator:&__block_literal_global_152];
  v10 = [v2 copy];

  return v10;
}

uint64_t __49__NTKPeopleComplication_allValidFavoriteContacts__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [NTKPeopleComplication localizedNameForContact:a2];
  v6 = [NTKPeopleComplication localizedNameForContact:v4];

  v7 = [v5 localizedCaseInsensitiveCompare:v6];
  return v7;
}

- (NTKPeopleComplication)init
{
  v5.receiver = self;
  v5.super_class = NTKPeopleComplication;
  v2 = [(NTKPeopleComplication *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NTKPeopleComplication *)v2 _registerWithSwitch:1];
  }

  return v3;
}

- (void)_registerWithSwitch:(BOOL)switch
{
  switchCopy = switch;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];
  if (switchCopy)
  {
    [defaultCenter addObserver:self selector:sel__contactsCacheDidChange name:@"NTKPeopleComplicationContactsCacheDidChangeNotification" object:0];
  }
}

- (void)dealloc
{
  [(NTKPeopleComplication *)self _registerWithSwitch:0];
  v3.receiver = self;
  v3.super_class = NTKPeopleComplication;
  [(NTKPeopleComplication *)&v3 dealloc];
}

- (NSString)storeBackedContactID
{
  storeBackedContactID = self->_storeBackedContactID;
  if (!storeBackedContactID)
  {
    v4 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(NTKPeopleComplication *)self storeBackedContactID];
    }

    storeBackedContactID = self->_contactID;
  }

  v5 = storeBackedContactID;

  return v5;
}

- (id)localizedKeylineLabelText
{
  shortName = self->_shortName;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [(NSString *)shortName capitalizedStringWithLocale:currentLocale];

  return v4;
}

+ (id)localizedNameForContact:(id)contact
{
  contactCopy = contact;
  v4 = +[NTKPeopleComplicationContactsCache sharedCache];
  v5 = [v4 shortNameForContact:contactCopy];

  return v5;
}

+ (id)complicationForContact:(id)contact forPromotedSection:(BOOL)section
{
  if (section)
  {
    v4 = 0;
  }

  else
  {
    v4 = @"all";
  }

  return _peopleComplicationForContact(contact, v4);
}

- (BOOL)isFavoritedPerson
{
  v3 = +[NTKPeopleComplicationContactsCache sharedCache];
  storeBackedContactID = [(NTKPeopleComplication *)self storeBackedContactID];
  v5 = [v3 contactIdentifierIsFavorited:storeBackedContactID];

  return v5;
}

- (void)_contactsCacheDidChange
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NTKPeopleComplication__contactsCacheDidChange__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)_refreshContactInfoNotifyOfChange
{
  v20 = *MEMORY[0x277D85DE8];
  if (![(NTKComplication *)self complicationType])
  {
    v3 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      fullName = self->_fullName;
      contactID = self->_contactID;
      *buf = 138412546;
      v17 = fullName;
      v18 = 2112;
      v19 = contactID;
      _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKPeopleComplication doing refresh on instance [%@][%@] with complicationType == NTKComplicationTypeNone.", buf, 0x16u);
    }
  }

  currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
  isLocked = [currentDevice isLocked];

  if (isLocked)
  {
    v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_fullName;
      v10 = self->_contactID;
      *buf = 138412546;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "NTKPeopleComplication skipping refresh contact [%@][%@] info due to device being locked.", buf, 0x16u);
    }
  }

  else
  {
    v8 = +[NTKPeopleComplicationContactsCache sharedCache];
    contactID = [(NTKPeopleComplication *)self contactID];
    v12 = [v8 contactForId:contactID];

    if (v12)
    {
      [(NTKPeopleComplication *)self _updateStateWithContact:v12 foundAsPrimaryId:1];
    }

    else
    {
      objc_initWeak(buf, self);
      v13 = self->_fullName;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __58__NTKPeopleComplication__refreshContactInfoNotifyOfChange__block_invoke;
      v14[3] = &unk_278786870;
      objc_copyWeak(&v15, buf);
      [v8 findContactWithFullName:v13 block:v14];
      objc_destroyWeak(&v15);
      objc_destroyWeak(buf);
    }
  }
}

void __58__NTKPeopleComplication__refreshContactInfoNotifyOfChange__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateStateWithContact:v5 foundAsPrimaryId:0];
  }
}

- (void)_updateStateWithContact:(id)contact foundAsPrimaryId:(BOOL)id
{
  idCopy = id;
  v32 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v7 = +[NTKPeopleComplicationContactsCache sharedCache];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__NTKPeopleComplication__updateStateWithContact_foundAsPrimaryId___block_invoke;
  v23[3] = &unk_278786898;
  v23[4] = self;
  v23[5] = &v24;
  if ([v7 checkValidityOfContact:contactCopy block:v23])
  {
    if ([(NTKComplication *)self complicationType])
    {
      if (idCopy)
      {
LABEL_4:
        objc_storeStrong(&self->_storeBackedContactID, self->_contactID);
        goto LABEL_15;
      }
    }

    else
    {
      v11 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        fullName = self->_fullName;
        contactID = self->_contactID;
        *buf = 138412546;
        v29 = fullName;
        v30 = 2112;
        v31 = contactID;
        _os_log_impl(&dword_22D9C5000, v11, OS_LOG_TYPE_DEFAULT, "NTKPeopleComplication [%@][%@] valid but NTKComplicationTypeNone == self.complicationType so changing to NTKComplicationTypePeople.", buf, 0x16u);
      }

      [(NTKComplication *)self _setComplicationType:37];
      *(v25 + 24) = 1;
      if (idCopy)
      {
        goto LABEL_4;
      }
    }

    identifier = [contactCopy identifier];
    storeBackedContactID = self->_storeBackedContactID;
    self->_storeBackedContactID = identifier;

    *(v25 + 24) = 1;
    v16 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [contactCopy identifier];
      v18 = self->_contactID;
      *buf = 138412546;
      v29 = identifier2;
      v30 = 2112;
      v31 = v18;
      _os_log_impl(&dword_22D9C5000, v16, OS_LOG_TYPE_DEFAULT, "NTKPeopleComplication valid but storeBackedContactID[%@] is being used now associated with primary[%@].", buf, 0x16u);
    }
  }

  else if ([(NTKComplication *)self complicationType]== 37)
  {
    v8 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = self->_fullName;
      v10 = self->_contactID;
      *buf = 138412546;
      v29 = v9;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_22D9C5000, v8, OS_LOG_TYPE_DEFAULT, "NTKPeopleComplication [%@][%@] invalid so setting complicationtype to NTKComplicationTypeNone.", buf, 0x16u);
    }

    [(NTKComplication *)self _setComplicationType:0];
    *(v25 + 24) = 1;
  }

LABEL_15:
  if (*(v25 + 24) == 1)
  {
    v19 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_fullName;
      v21 = self->_contactID;
      *buf = 138412546;
      v29 = v20;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_DEFAULT, "NTKPeopleComplication [%@][%@] did change in some way so sending notification.", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__NTKPeopleComplication__updateStateWithContact_foundAsPrimaryId___block_invoke_15;
    block[3] = &unk_27877DB10;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  _Block_object_dispose(&v24, 8);
}

void __66__NTKPeopleComplication__updateStateWithContact_foundAsPrimaryId___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v11 = a3;
  v9 = a4;
  v10 = a5;
  if (([*(*(a1 + 32) + 64) isEqualToString:v9] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 64), a4);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (([*(*(a1 + 32) + 56) isEqualToString:v11] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 56), a3);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (([*(*(a1 + 32) + 48) isEqualToString:v10] & 1) == 0)
  {
    objc_storeStrong((*(a1 + 32) + 48), a5);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __66__NTKPeopleComplication__updateStateWithContact_foundAsPrimaryId___block_invoke_15(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"NTKComplicationDidChangeNotification" object:*(a1 + 32)];
}

- (id)_complicationTypeString
{
  complicationType = [(NTKComplication *)self complicationType];
  if (!complicationType)
  {
    return @"NONE";
  }

  if (complicationType == 37)
  {
    return @"PEOPLE";
  }

  v4 = _NTKLoggingObjectForDomain(18, "NTKLoggingDomainComplication");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(NTKPeopleComplication *)v4 _complicationTypeString];
  }

  return &stru_284110E98;
}

- (id)customDailySnapshotKeyForFamily:(int64_t)family device:(id)device
{
  v5 = MEMORY[0x277CCACA8];
  v6 = [(NTKPeopleComplication *)self contactID:family];
  abbreviation = [(NTKPeopleComplication *)self abbreviation];
  fullName = [(NTKPeopleComplication *)self fullName];
  shortName = [(NTKPeopleComplication *)self shortName];
  _complicationTypeString = [(NTKPeopleComplication *)self _complicationTypeString];
  v11 = [v5 stringWithFormat:@"%@-%@-%@-%@-%@", v6, abbreviation, fullName, shortName, _complicationTypeString];

  return v11;
}

- (id)_generateUniqueIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[NTKComplication complicationType](self, "complicationType")}];
  stringValue = [v4 stringValue];
  v6 = [v3 stringWithFormat:@"%@-%@", stringValue, self->_contactID];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = NTKPeopleComplication;
  v4 = [(NTKComplication *)&v14 copyWithZone:zone];
  v5 = [(NSString *)self->_contactID copy];
  v6 = v4[5];
  v4[5] = v5;

  v7 = [(NSString *)self->_fullName copy];
  v8 = v4[7];
  v4[7] = v7;

  v9 = [(NSString *)self->_abbreviation copy];
  v10 = v4[8];
  v4[8] = v9;

  v11 = [(NSString *)self->_shortName copy];
  v12 = v4[6];
  v4[6] = v11;

  return v4;
}

- (NTKPeopleComplication)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = NTKPeopleComplication;
  v5 = [(NTKComplication *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPeopleComplicationContactIDKey"];
    contactID = v5->_contactID;
    v5->_contactID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPeopleComplicationFullNameKey"];
    fullName = v5->_fullName;
    v5->_fullName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPeopleComplicationAbbreviationKey"];
    abbreviation = v5->_abbreviation;
    v5->_abbreviation = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPeopleComplicationShortNameKey"];
    shortName = v5->_shortName;
    v5->_shortName = v12;

    if (!v5->_contactID)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil _contactID", objc_opt_class()}];
    }

    if (!v5->_fullName)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil _fullName", objc_opt_class()}];
    }

    if (!v5->_abbreviation)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil _abbreviation", objc_opt_class()}];
    }

    if (!v5->_shortName)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CCA2A8] format:{@"%@ cannot have nil _shortName", objc_opt_class()}];
    }

    _generateUniqueIdentifier = [(NTKPeopleComplication *)v5 _generateUniqueIdentifier];
    [(NTKComplication *)v5 setUniqueIdentifier:_generateUniqueIdentifier];

    [(NTKPeopleComplication *)v5 _refreshContactInfoNotifyOfChange];
    [(NTKPeopleComplication *)v5 _registerWithSwitch:1];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NTKPeopleComplication;
  coderCopy = coder;
  [(NTKComplication *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_contactID forKey:{@"kPeopleComplicationContactIDKey", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_fullName forKey:@"kPeopleComplicationFullNameKey"];
  [coderCopy encodeObject:self->_abbreviation forKey:@"kPeopleComplicationAbbreviationKey"];
  [coderCopy encodeObject:self->_shortName forKey:@"kPeopleComplicationShortNameKey"];
}

- (void)_addKeysToJSONDictionary:(id)dictionary
{
  v5.receiver = self;
  v5.super_class = NTKPeopleComplication;
  dictionaryCopy = dictionary;
  [(NTKComplication *)&v5 _addKeysToJSONDictionary:dictionaryCopy];
  [dictionaryCopy setObject:self->_contactID forKeyedSubscript:{@"people ID", v5.receiver, v5.super_class}];
  [dictionaryCopy setObject:self->_fullName forKeyedSubscript:@"people full name"];
  [dictionaryCopy setObject:self->_abbreviation forKeyedSubscript:@"people Abbreviation"];
  [dictionaryCopy setObject:self->_shortName forKeyedSubscript:@"people short name"];
}

- (id)_initWithComplicationType:(unint64_t)type JSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = NTKPeopleComplication;
  v7 = [(NTKComplication *)&v18 _initWithComplicationType:type JSONDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"people ID"];
    v9 = v7[5];
    v7[5] = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"people full name"];
    v11 = v7[7];
    v7[7] = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:?];
    v13 = v7[8];
    v7[8] = v12;

    v14 = [dictionaryCopy objectForKeyedSubscript:?];
    v15 = v7[6];
    v7[6] = v14;

    if (!v7[5])
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"missing value for key '%@'", @"people ID"}];
    }

    if (!v7[7])
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"missing value for key '%@'", @"people full name"}];
    }

    if (!v7[8])
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"missing value for key '%@'", @"people Abbreviation"}];
    }

    if (!v7[6])
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"missing value for key '%@'", @"people short name"}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"value for key '%@' must be String - invalid value: %@", @"people ID", v7[5]}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"value for key '%@' must be String - invalid value: %@", @"people full name", v7[7]}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"value for key '%@' must be String - invalid value: %@", @"people Abbreviation", v7[8]}];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x277CBEAD8] raise:@"NTKFaceBundleException" format:{@"value for key '%@' must be String - invalid value: %@", @"people short name", v7[6]}];
    }

    _generateUniqueIdentifier = [v7 _generateUniqueIdentifier];
    [v7 setUniqueIdentifier:_generateUniqueIdentifier];
  }

  return v7;
}

- (void)storeBackedContactID
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(self + 56);
  v3 = *(self + 40);
  v4 = 138412546;
  v5 = v2;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_ERROR, "People Complication:[%@] no storeBackedContactID defaulting to[%@]", &v4, 0x16u);
}

@end