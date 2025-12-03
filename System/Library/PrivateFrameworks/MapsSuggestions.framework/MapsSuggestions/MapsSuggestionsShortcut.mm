@interface MapsSuggestionsShortcut
+ (id)shortcutWithData:(id)data;
- (BOOL)isBackedPlaceholder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToShortcut:(id)shortcut;
- (MapsSuggestionsShortcut)initWithCoder:(id)coder;
- (MapsSuggestionsShortcut)initWithFavoriteItem:(id)item;
- (MapsSuggestionsShortcut)initWithType:(int64_t)type identifier:(id)identifier geoMapItem:(id)item customName:(id)name contacts:(id)contacts isHidden:(BOOL)hidden originatingAddress:(id)address;
- (NSArray)stringContacts;
- (NSString)identifier;
- (NSString)subtitle;
- (NSString)title;
- (id)_name;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (id)description;
- (uint64_t)_originalName;
- (void)addContact:(id)contact;
- (void)encodeWithCoder:(id)coder;
- (void)removeContact:(id)contact;
- (void)setCustomName:(id)name;
- (void)setGeoMapItem:(id)item;
- (void)setIdentifier:(id)identifier;
- (void)subtitle;
@end

@implementation MapsSuggestionsShortcut

- (NSString)title
{
  if ([(MapsSuggestionsShortcut *)self isSetupPlaceholder])
  {
    goto LABEL_2;
  }

  if ([(MapsSuggestionsShortcut *)self isBackedPlaceholder])
  {
    customName = self->_customName;
    if (!customName)
    {
LABEL_2:
      _name = MapsSuggestionsLocalizedTitleForShortcutType(self->_type);
      goto LABEL_9;
    }

    _name = customName;
  }

  else
  {
    selfCopy = self;
    if ([(MapsSuggestionsShortcut *)selfCopy type]== 6)
    {
      identifier = [(MapsSuggestionsShortcut *)selfCopy identifier];
      v7 = [identifier isEqualToString:@"NearbyTransit"];

      if (v7)
      {
        _name = MapsSuggestionsLocalizedNearbyTransitShortString();
        goto LABEL_9;
      }
    }

    else
    {
    }

    _name = [(MapsSuggestionsShortcut *)selfCopy _name];
  }

LABEL_9:

  return _name;
}

- (BOOL)isBackedPlaceholder
{
  v17 = *MEMORY[0x1E69E9840];
  type = self->_type;
  if (type > 6)
  {
    goto LABEL_9;
  }

  if (((1 << type) & 0x2C) != 0)
  {
    identifier = [(MapsSuggestionsShortcut *)self identifier];
    v5 = identifier != 0;

    return v5;
  }

  if (((1 << type) & 0x42) != 0)
  {
    return 0;
  }

  if (type)
  {
LABEL_9:
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcut.m";
      v11 = 1024;
      v12 = 272;
      v13 = 2082;
      v14 = "[MapsSuggestionsShortcut isBackedPlaceholder]";
      v15 = 2082;
      v16 = "YES";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsShortcutType!", &v9, 0x26u);
    }

    return 0;
  }

  v4 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 136446978;
    v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcut.m";
    v11 = 1024;
    v12 = 268;
    v13 = 2082;
    v14 = "[MapsSuggestionsShortcut isBackedPlaceholder]";
    v15 = 2082;
    v16 = "YES";
    _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. A type should have been set!", &v9, 0x26u);
  }

  return self->_geoMapItem == 0;
}

- (NSString)identifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = selfCopy->_identifier;
  if (identifier || (MapsSuggestionsShortcutUniqueIdentifier(selfCopy), v4 = objc_claimAutoreleasedReturnValue(), v5 = selfCopy->_identifier, selfCopy->_identifier = v4, v5, (identifier = selfCopy->_identifier) != 0))
  {
    v6 = [(NSString *)identifier copy];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (NSString)subtitle
{
  if ([(MapsSuggestionsShortcut *)self isSetupPlaceholder])
  {
    v3 = MapsSuggestionsShortcutSetupStringForType(self->_type, 0);
LABEL_3:
    v4 = v3;
    goto LABEL_17;
  }

  selfCopy = self;
  if ([(MapsSuggestionsShortcut *)selfCopy type]== 6)
  {
    identifier = [(MapsSuggestionsShortcut *)selfCopy identifier];
    v7 = [identifier isEqualToString:@"NearbyTransit"];

    if (v7)
    {
      v3 = MapsSuggestionsLocalizedNearbyTransitShortSubtitleString();
      goto LABEL_3;
    }
  }

  else
  {
  }

  geoMapItem = [(MapsSuggestionsShortcut *)selfCopy geoMapItem];
  v9 = MapsSuggestionsMapItemCityName(geoMapItem);
  if (selfCopy->_customName)
  {
    type = selfCopy->_type;
    if (type > 6)
    {
      goto LABEL_21;
    }

    if (((1 << type) & 0x2C) != 0)
    {
      goto LABEL_11;
    }

    if (((1 << type) & 0x43) == 0)
    {
LABEL_21:
      [MapsSuggestionsShortcut subtitle];
    }

    _originalName = [(MapsSuggestionsShortcut *)selfCopy _originalName];
    if (_originalName)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  _originalName = MapsSuggestionsMapItemStreetWithNumber(geoMapItem);
  if (!_originalName)
  {
    v13 = &stru_1F444C108;
    if (v9)
    {
      v13 = v9;
    }

    v4 = v13;
    goto LABEL_16;
  }

LABEL_12:
  v12 = _originalName;
  v4 = MapsSuggestionsLocalizedShortcutSubString(_originalName, v9);

LABEL_16:
LABEL_17:

  return v4;
}

- (MapsSuggestionsShortcut)initWithFavoriteItem:(id)item
{
  v30 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  fetchContactHandles = [itemCopy fetchContactHandles];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fetchContactHandles, "count")}];
  v24 = fetchContactHandles;
  v6 = [fetchContactHandles sortedArrayUsingSelector:sel_compare_];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [[MapsSuggestionsContact alloc] initWithHandleValue:*(*(&v25 + 1) + 8 * v10)];
        [v5 addObject:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v8);
  }

  type = [itemCopy type];
  shortcutIdentifier = [itemCopy shortcutIdentifier];
  mapItemStorage = [itemCopy mapItemStorage];
  customName = [itemCopy customName];
  v16 = [v5 copy];
  hidden = [itemCopy hidden];
  originatingAddressString = [itemCopy originatingAddressString];
  v19 = [(MapsSuggestionsShortcut *)self initWithType:type identifier:shortcutIdentifier geoMapItem:mapItemStorage customName:customName contacts:v16 isHidden:hidden originatingAddress:originatingAddressString];

  identifier = [itemCopy identifier];
  [(MapsSuggestionsShortcut *)v19 setStorageIdentifier:identifier];

  -[MapsSuggestionsShortcut setSource:](v19, "setSource:", [itemCopy source]);
  createTime = [itemCopy createTime];
  [(MapsSuggestionsShortcut *)v19 setMapsSyncCreateTime:createTime];

  return v19;
}

- (MapsSuggestionsShortcut)initWithType:(int64_t)type identifier:(id)identifier geoMapItem:(id)item customName:(id)name contacts:(id)contacts isHidden:(BOOL)hidden originatingAddress:(id)address
{
  v45 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  itemCopy = item;
  nameCopy = name;
  contactsCopy = contacts;
  addressCopy = address;
  v36.receiver = self;
  v36.super_class = MapsSuggestionsShortcut;
  v21 = [(MapsSuggestionsShortcut *)&v36 init];
  v22 = v21;
  if (type == 6 && !nameCopy)
  {
    originatingAddressString = GEOFindOrCreateLog();
    if (os_log_type_enabled(originatingAddressString, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcut.m";
      v39 = 1024;
      v40 = 49;
      v41 = 2082;
      v42 = "[MapsSuggestionsShortcut initWithType:identifier:geoMapItem:customName:contacts:isHidden:originatingAddress:]";
      v43 = 2082;
      v44 = "nil == customName";
      _os_log_impl(&dword_1C5126000, originatingAddressString, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Custom name cannot be nil in init for FavoriteButton Shortcut", buf, 0x26u);
    }

    goto LABEL_15;
  }

  if (v21)
  {
    v21->_type = type;
    v24 = [identifierCopy copy];
    identifier = v22->_identifier;
    v22->_identifier = v24;

    v26 = [itemCopy copy];
    geoMapItem = v22->_geoMapItem;
    v22->_geoMapItem = v26;

    if (contactsCopy)
    {
      v28 = [contactsCopy copy];
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    contacts = v22->_contacts;
    v22->_contacts = v28;

    name = [itemCopy name];
    if (name && ([itemCopy name], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(nameCopy, "isEqualToString:", v9)))
    {
      customName = v22->_customName;
      v22->_customName = 0;
    }

    else
    {
      v32 = [nameCopy copy];
      v33 = v22->_customName;
      v22->_customName = v32;

      if (!name)
      {
LABEL_14:

        v22->_isHidden = hidden;
        v34 = [addressCopy copy];
        originatingAddressString = v22->_originatingAddressString;
        v22->_originatingAddressString = v34;
LABEL_15:

        goto LABEL_16;
      }
    }

    goto LABEL_14;
  }

LABEL_16:

  return v22;
}

- (void)setIdentifier:(id)identifier
{
  identifierCopy = identifier;
  obj = self;
  objc_sync_enter(obj);
  identifier = obj->_identifier;
  obj->_identifier = identifierCopy;

  objc_sync_exit(obj);
}

- (void)setCustomName:(id)name
{
  nameCopy = name;
  _originalName = [(MapsSuggestionsShortcut *)self _originalName];
  if ([nameCopy isEqualToString:_originalName])
  {
    v5 = 0;
  }

  else
  {
    v5 = [nameCopy copy];
  }

  customName = self->_customName;
  self->_customName = v5;
}

- (void)setGeoMapItem:(id)item
{
  itemCopy = item;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [itemCopy copy];
  geoMapItem = selfCopy->_geoMapItem;
  selfCopy->_geoMapItem = v5;

  customName = selfCopy->_customName;
  name = [(GEOMapItemStorage *)selfCopy->_geoMapItem name];
  LODWORD(customName) = [(NSString *)customName isEqualToString:name];

  if (customName)
  {
    v9 = selfCopy->_customName;
    selfCopy->_customName = 0;
  }

  identifier = selfCopy->_identifier;
  selfCopy->_identifier = 0;

  objc_sync_exit(selfCopy);
}

- (void)addContact:(id)contact
{
  v17 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    if (![(NSArray *)self->_contacts containsObject:contactCopy])
    {
      v5 = [(NSArray *)self->_contacts mutableCopy];
      [v5 addObject:contactCopy];
      v6 = [v5 copy];
      contacts = self->_contacts;
      self->_contacts = v6;
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcut.m";
      v11 = 1024;
      v12 = 287;
      v13 = 2082;
      v14 = "[MapsSuggestionsShortcut addContact:]";
      v15 = 2082;
      v16 = "nil == (contact)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a contact", &v9, 0x26u);
    }
  }
}

- (void)removeContact:(id)contact
{
  v17 = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy)
  {
    if ([(NSArray *)self->_contacts containsObject:contactCopy])
    {
      v5 = [(NSArray *)self->_contacts mutableCopy];
      [v5 removeObject:contactCopy];
      v6 = [v5 copy];
      contacts = self->_contacts;
      self->_contacts = v6;
    }
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 136446978;
      v10 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcut.m";
      v11 = 1024;
      v12 = 298;
      v13 = 2082;
      v14 = "[MapsSuggestionsShortcut removeContact:]";
      v15 = 2082;
      v16 = "nil == (contact)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a contact", &v9, 0x26u);
    }
  }
}

- (NSArray)stringContacts
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSArray count](self->_contacts, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_contacts;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        handleValue = [*(*(&v11 + 1) + 8 * i) handleValue];
        [v3 addObject:handleValue];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  type = [(MapsSuggestionsShortcut *)self type];
  identifier = [(MapsSuggestionsShortcut *)self identifier];
  geoMapItem = [(MapsSuggestionsShortcut *)self geoMapItem];
  customName = [(MapsSuggestionsShortcut *)self customName];
  contacts = [(MapsSuggestionsShortcut *)self contacts];
  isHidden = [(MapsSuggestionsShortcut *)self isHidden];
  originatingAddressString = [(MapsSuggestionsShortcut *)self originatingAddressString];
  v12 = [v4 initWithType:type identifier:identifier geoMapItem:geoMapItem customName:customName contacts:contacts isHidden:isHidden originatingAddress:originatingAddressString];

  storageIdentifier = [(MapsSuggestionsShortcut *)self storageIdentifier];
  [v12 setStorageIdentifier:storageIdentifier];

  [v12 setDerivedFromMeCard:{-[MapsSuggestionsShortcut derivedFromMeCard](self, "derivedFromMeCard")}];
  mapsSyncCreateTime = [(MapsSuggestionsShortcut *)self mapsSyncCreateTime];
  [v12 setMapsSyncCreateTime:mapsSyncCreateTime];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"MapsSuggestionsShortcutTypeKey"];
  identifier = [(MapsSuggestionsShortcut *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"MapsSuggestionsShortcutIdentifierKey"];

  [coderCopy encodeObject:self->_customName forKey:@"MapsSuggestionsShortcutNameKey"];
  [coderCopy encodeObject:self->_geoMapItem forKey:@"MapsSuggestionsShortcutMapItemKey"];
  [coderCopy encodeObject:self->_contacts forKey:@"MapsSuggestionsShortcutETAContactsKey"];
  [coderCopy encodeBool:self->_isHidden forKey:@"MapsSuggestionsShortcutIsHiddenKey"];
  [coderCopy encodeObject:self->_originatingAddressString forKey:@"MapsSuggestionsShortcutOriginatingAddressKey"];
}

- (MapsSuggestionsShortcut)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"MapsSuggestionsShortcutTypeKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsShortcutNameKey"];
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"MapsSuggestionsShortcutETAContactsKey"];

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsShortcutIdentifierKey"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsShortcutMapItemKey"];
  v13 = [coderCopy decodeBoolForKey:@"MapsSuggestionsShortcutIsHiddenKey"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsShortcutOriginatingAddressKey"];

  v15 = [(MapsSuggestionsShortcut *)self initWithType:v5 identifier:v11 geoMapItem:v12 customName:v6 contacts:v10 isHidden:v13 originatingAddress:v14];
  return v15;
}

- (id)data
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  [v3 finishEncoding];
  encodedData = [v3 encodedData];

  return encodedData;
}

+ (id)shortcutWithData:(id)data
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v12 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v12];
    v5 = v12;
    [v4 setDecodingFailurePolicy:1];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v4 finishDecoding];
    error = [v4 error];
    if (error | v5)
    {
    }

    else if (v6)
    {
      v8 = v6;
LABEL_15:

      goto LABEL_16;
    }

    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      error2 = v5;
      if (!v5)
      {
        error2 = [v4 error];
      }

      *buf = 138412290;
      v14 = error2;
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "Could not deserialize MapsSuggestionsShortcut, error: %@", buf, 0xCu);
      if (!v5)
      {
      }
    }

    v8 = 0;
    goto LABEL_15;
  }

  v5 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v14 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsShortcut.m";
    v15 = 1024;
    v16 = 390;
    v17 = 2082;
    v18 = "+[MapsSuggestionsShortcut shortcutWithData:]";
    v19 = 2082;
    v20 = "nil == (data)";
    _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires serialized data", buf, 0x26u);
  }

  v8 = 0;
LABEL_16:

  return v8;
}

- (BOOL)isEqualToShortcut:(id)shortcut
{
  shortcutCopy = shortcut;
  v5 = shortcutCopy;
  if (!shortcutCopy)
  {
    goto LABEL_14;
  }

  if (self == shortcutCopy)
  {
    v15 = 1;
    goto LABEL_16;
  }

  if (self->_type == shortcutCopy->_type && self->_isHidden == shortcutCopy->_isHidden && ((-[MapsSuggestionsShortcut identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsShortcut identifier](v5, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 == v7) || (-[MapsSuggestionsShortcut identifier](self, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsShortcut identifier](v5, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToString:v9], v9, v8, v10)) && ((customName = self->_customName, customName == v5->_customName) || -[NSString isEqualToString:](customName, "isEqualToString:")) && ((originatingAddressString = self->_originatingAddressString, originatingAddressString == v5->_originatingAddressString) || -[NSString isEqualToString:](originatingAddressString, "isEqualToString:")) && ((geoMapItem = self->_geoMapItem, v14 = v5->_geoMapItem, geoMapItem == v14) || MapsSuggestionsMapItemsAreEqual(geoMapItem, v14, 1, 1, 1)))
  {
    v15 = [(NSArray *)self->_contacts isEqualToArray:v5->_contacts];
  }

  else
  {
LABEL_14:
    v15 = 0;
  }

LABEL_16:

  return v15;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MapsSuggestionsShortcut *)self isEqualToShortcut:equalCopy];
  }

  return v5;
}

- (uint64_t)_originalName
{
  selfCopy = self;
  if (self)
  {
    if ([self isBackedPlaceholder])
    {
      selfCopy = MapsSuggestionsLocalizedTitleForShortcutType(selfCopy[3]);
    }

    else
    {
      geoMapItem = [selfCopy geoMapItem];
      selfCopy = [geoMapItem name];
    }
  }

  return selfCopy;
}

- (id)_name
{
  if (!self)
  {
LABEL_12:
    _originalName = 0;
    goto LABEL_4;
  }

  v2 = self[5];
  if (v2)
  {
    _originalName = v2;
    [self isSetupPlaceholder];
    goto LABEL_4;
  }

  _originalName = [(MapsSuggestionsShortcut *)self _originalName];
  if (([self isSetupPlaceholder] & 1) == 0 && !_originalName)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_1(&dword_1C5126000, v6, v7, "At %{public}s:%d, %{public}s forbids: %{public}s. It doesn't make sense that there is no name at all", v8, v9, v10, v11, 2u);
    }

    goto LABEL_12;
  }

LABEL_4:

  return _originalName;
}

- (id)description
{
  if (self)
  {
    isSetupPlaceholder = [(MapsSuggestionsShortcut *)self isBackedPlaceholder]|| [(MapsSuggestionsShortcut *)self isSetupPlaceholder];
  }

  else
  {
    isSetupPlaceholder = 0;
  }

  v28 = objc_alloc(MEMORY[0x1E696AEC0]);
  v29 = NSStringFromMapsSuggestionsShortcutType(self->_type);
  title = [(MapsSuggestionsShortcut *)self title];
  v5 = title;
  if (title)
  {
    v6 = title;
  }

  else
  {
    v6 = &stru_1F444C108;
  }

  v27 = v6;
  subtitle = [(MapsSuggestionsShortcut *)self subtitle];
  v8 = subtitle;
  if (subtitle)
  {
    v9 = subtitle;
  }

  else
  {
    v9 = &stru_1F444C108;
  }

  v26 = v9;
  geoMapItem = [(MapsSuggestionsShortcut *)self geoMapItem];
  if (geoMapItem)
  {
    v11 = 89;
  }

  else
  {
    v11 = 78;
  }

  v25 = v11;
  v12 = "id";
  if (isSetupPlaceholder)
  {
    v12 = "placeholder";
  }

  v23 = geoMapItem;
  v24 = v12;
  identifier = [(MapsSuggestionsShortcut *)self identifier];
  v14 = @"Y";
  if (identifier)
  {
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    identifier2 = [(MapsSuggestionsShortcut *)self identifier];
    v16 = [v15 initWithFormat:@"'%@'", identifier2];
  }

  else if (isSetupPlaceholder)
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  if (self->_isHidden)
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  if (!self->_derivedFromMeCard)
  {
    v14 = @"N";
  }

  originatingAddressString = self->_originatingAddressString;
  if (originatingAddressString)
  {
    v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" ori='%@'", self->_originatingAddressString];
  }

  else
  {
    v19 = &stru_1F444C108;
  }

  v20 = [v28 initWithFormat:@"SHORTCUT{%@} '%@' / '%@' mapItem=%c %s=%@ hidden=%@ meCard=%@%@ sharedETAs=%u", v29, v27, v26, v25, v24, v16, v17, v14, v19, -[NSArray count](self->_contacts, "count")];
  if (originatingAddressString)
  {
  }

  if (identifier)
  {
  }

  return v20;
}

- (void)subtitle
{
  v0 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v1, v2, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsShortcutType!", v3, v4, v5, v6, 2u);
  }
}

@end