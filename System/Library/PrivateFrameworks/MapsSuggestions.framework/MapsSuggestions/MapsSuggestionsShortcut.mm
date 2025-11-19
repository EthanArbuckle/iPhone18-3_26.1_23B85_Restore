@interface MapsSuggestionsShortcut
+ (id)shortcutWithData:(id)a3;
- (BOOL)isBackedPlaceholder;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToShortcut:(id)a3;
- (MapsSuggestionsShortcut)initWithCoder:(id)a3;
- (MapsSuggestionsShortcut)initWithFavoriteItem:(id)a3;
- (MapsSuggestionsShortcut)initWithType:(int64_t)a3 identifier:(id)a4 geoMapItem:(id)a5 customName:(id)a6 contacts:(id)a7 isHidden:(BOOL)a8 originatingAddress:(id)a9;
- (NSArray)stringContacts;
- (NSString)identifier;
- (NSString)subtitle;
- (NSString)title;
- (id)_name;
- (id)copyWithZone:(_NSZone *)a3;
- (id)data;
- (id)description;
- (uint64_t)_originalName;
- (void)addContact:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)removeContact:(id)a3;
- (void)setCustomName:(id)a3;
- (void)setGeoMapItem:(id)a3;
- (void)setIdentifier:(id)a3;
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
      v3 = MapsSuggestionsLocalizedTitleForShortcutType(self->_type);
      goto LABEL_9;
    }

    v3 = customName;
  }

  else
  {
    v5 = self;
    if ([(MapsSuggestionsShortcut *)v5 type]== 6)
    {
      v6 = [(MapsSuggestionsShortcut *)v5 identifier];
      v7 = [v6 isEqualToString:@"NearbyTransit"];

      if (v7)
      {
        v3 = MapsSuggestionsLocalizedNearbyTransitShortString();
        goto LABEL_9;
      }
    }

    else
    {
    }

    v3 = [(MapsSuggestionsShortcut *)v5 _name];
  }

LABEL_9:

  return v3;
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
    v6 = [(MapsSuggestionsShortcut *)self identifier];
    v5 = v6 != 0;

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
  v2 = self;
  objc_sync_enter(v2);
  identifier = v2->_identifier;
  if (identifier || (MapsSuggestionsShortcutUniqueIdentifier(v2), v4 = objc_claimAutoreleasedReturnValue(), v5 = v2->_identifier, v2->_identifier = v4, v5, (identifier = v2->_identifier) != 0))
  {
    v6 = [(NSString *)identifier copy];
  }

  else
  {
    v6 = 0;
  }

  objc_sync_exit(v2);

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

  v5 = self;
  if ([(MapsSuggestionsShortcut *)v5 type]== 6)
  {
    v6 = [(MapsSuggestionsShortcut *)v5 identifier];
    v7 = [v6 isEqualToString:@"NearbyTransit"];

    if (v7)
    {
      v3 = MapsSuggestionsLocalizedNearbyTransitShortSubtitleString();
      goto LABEL_3;
    }
  }

  else
  {
  }

  v8 = [(MapsSuggestionsShortcut *)v5 geoMapItem];
  v9 = MapsSuggestionsMapItemCityName(v8);
  if (v5->_customName)
  {
    type = v5->_type;
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

    v11 = [(MapsSuggestionsShortcut *)v5 _originalName];
    if (v11)
    {
      goto LABEL_12;
    }
  }

LABEL_11:
  v11 = MapsSuggestionsMapItemStreetWithNumber(v8);
  if (!v11)
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
  v12 = v11;
  v4 = MapsSuggestionsLocalizedShortcutSubString(v11, v9);

LABEL_16:
LABEL_17:

  return v4;
}

- (MapsSuggestionsShortcut)initWithFavoriteItem:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 fetchContactHandles];
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v24 = v4;
  v6 = [v4 sortedArrayUsingSelector:sel_compare_];
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

  v12 = [v3 type];
  v13 = [v3 shortcutIdentifier];
  v14 = [v3 mapItemStorage];
  v15 = [v3 customName];
  v16 = [v5 copy];
  v17 = [v3 hidden];
  v18 = [v3 originatingAddressString];
  v19 = [(MapsSuggestionsShortcut *)self initWithType:v12 identifier:v13 geoMapItem:v14 customName:v15 contacts:v16 isHidden:v17 originatingAddress:v18];

  v20 = [v3 identifier];
  [(MapsSuggestionsShortcut *)v19 setStorageIdentifier:v20];

  -[MapsSuggestionsShortcut setSource:](v19, "setSource:", [v3 source]);
  v21 = [v3 createTime];
  [(MapsSuggestionsShortcut *)v19 setMapsSyncCreateTime:v21];

  return v19;
}

- (MapsSuggestionsShortcut)initWithType:(int64_t)a3 identifier:(id)a4 geoMapItem:(id)a5 customName:(id)a6 contacts:(id)a7 isHidden:(BOOL)a8 originatingAddress:(id)a9
{
  v45 = *MEMORY[0x1E69E9840];
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v36.receiver = self;
  v36.super_class = MapsSuggestionsShortcut;
  v21 = [(MapsSuggestionsShortcut *)&v36 init];
  v22 = v21;
  if (a3 == 6 && !v18)
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
    v21->_type = a3;
    v24 = [v16 copy];
    identifier = v22->_identifier;
    v22->_identifier = v24;

    v26 = [v17 copy];
    geoMapItem = v22->_geoMapItem;
    v22->_geoMapItem = v26;

    if (v19)
    {
      v28 = [v19 copy];
    }

    else
    {
      v28 = MEMORY[0x1E695E0F0];
    }

    contacts = v22->_contacts;
    v22->_contacts = v28;

    v30 = [v17 name];
    if (v30 && ([v17 name], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v18, "isEqualToString:", v9)))
    {
      customName = v22->_customName;
      v22->_customName = 0;
    }

    else
    {
      v32 = [v18 copy];
      v33 = v22->_customName;
      v22->_customName = v32;

      if (!v30)
      {
LABEL_14:

        v22->_isHidden = a8;
        v34 = [v20 copy];
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

- (void)setIdentifier:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  identifier = obj->_identifier;
  obj->_identifier = v4;

  objc_sync_exit(obj);
}

- (void)setCustomName:(id)a3
{
  v7 = a3;
  v4 = [(MapsSuggestionsShortcut *)self _originalName];
  if ([v7 isEqualToString:v4])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v7 copy];
  }

  customName = self->_customName;
  self->_customName = v5;
}

- (void)setGeoMapItem:(id)a3
{
  v11 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [v11 copy];
  geoMapItem = v4->_geoMapItem;
  v4->_geoMapItem = v5;

  customName = v4->_customName;
  v8 = [(GEOMapItemStorage *)v4->_geoMapItem name];
  LODWORD(customName) = [(NSString *)customName isEqualToString:v8];

  if (customName)
  {
    v9 = v4->_customName;
    v4->_customName = 0;
  }

  identifier = v4->_identifier;
  v4->_identifier = 0;

  objc_sync_exit(v4);
}

- (void)addContact:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if (![(NSArray *)self->_contacts containsObject:v4])
    {
      v5 = [(NSArray *)self->_contacts mutableCopy];
      [v5 addObject:v4];
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

- (void)removeContact:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    if ([(NSArray *)self->_contacts containsObject:v4])
    {
      v5 = [(NSArray *)self->_contacts mutableCopy];
      [v5 removeObject:v4];
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

        v9 = [*(*(&v11 + 1) + 8 * i) handleValue];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(MapsSuggestionsShortcut *)self type];
  v6 = [(MapsSuggestionsShortcut *)self identifier];
  v7 = [(MapsSuggestionsShortcut *)self geoMapItem];
  v8 = [(MapsSuggestionsShortcut *)self customName];
  v9 = [(MapsSuggestionsShortcut *)self contacts];
  v10 = [(MapsSuggestionsShortcut *)self isHidden];
  v11 = [(MapsSuggestionsShortcut *)self originatingAddressString];
  v12 = [v4 initWithType:v5 identifier:v6 geoMapItem:v7 customName:v8 contacts:v9 isHidden:v10 originatingAddress:v11];

  v13 = [(MapsSuggestionsShortcut *)self storageIdentifier];
  [v12 setStorageIdentifier:v13];

  [v12 setDerivedFromMeCard:{-[MapsSuggestionsShortcut derivedFromMeCard](self, "derivedFromMeCard")}];
  v14 = [(MapsSuggestionsShortcut *)self mapsSyncCreateTime];
  [v12 setMapsSyncCreateTime:v14];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  type = self->_type;
  v6 = a3;
  [v6 encodeInteger:type forKey:@"MapsSuggestionsShortcutTypeKey"];
  v5 = [(MapsSuggestionsShortcut *)self identifier];
  [v6 encodeObject:v5 forKey:@"MapsSuggestionsShortcutIdentifierKey"];

  [v6 encodeObject:self->_customName forKey:@"MapsSuggestionsShortcutNameKey"];
  [v6 encodeObject:self->_geoMapItem forKey:@"MapsSuggestionsShortcutMapItemKey"];
  [v6 encodeObject:self->_contacts forKey:@"MapsSuggestionsShortcutETAContactsKey"];
  [v6 encodeBool:self->_isHidden forKey:@"MapsSuggestionsShortcutIsHiddenKey"];
  [v6 encodeObject:self->_originatingAddressString forKey:@"MapsSuggestionsShortcutOriginatingAddressKey"];
}

- (MapsSuggestionsShortcut)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeIntegerForKey:@"MapsSuggestionsShortcutTypeKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsShortcutNameKey"];
  v7 = objc_alloc(MEMORY[0x1E695DFD8]);
  v8 = objc_opt_class();
  v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"MapsSuggestionsShortcutETAContactsKey"];

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsShortcutIdentifierKey"];
  v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsShortcutMapItemKey"];
  v13 = [v4 decodeBoolForKey:@"MapsSuggestionsShortcutIsHiddenKey"];
  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MapsSuggestionsShortcutOriginatingAddressKey"];

  v15 = [(MapsSuggestionsShortcut *)self initWithType:v5 identifier:v11 geoMapItem:v12 customName:v6 contacts:v10 isHidden:v13 originatingAddress:v14];
  return v15;
}

- (id)data
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v3 encodeObject:self forKey:*MEMORY[0x1E696A508]];
  [v3 finishEncoding];
  v4 = [v3 encodedData];

  return v4;
}

+ (id)shortcutWithData:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v12 = 0;
    v4 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v3 error:&v12];
    v5 = v12;
    [v4 setDecodingFailurePolicy:1];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x1E696A508]];
    [v4 finishDecoding];
    v7 = [v4 error];
    if (v7 | v5)
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
      v10 = v5;
      if (!v5)
      {
        v10 = [v4 error];
      }

      *buf = 138412290;
      v14 = v10;
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

- (BOOL)isEqualToShortcut:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  if (self == v4)
  {
    v15 = 1;
    goto LABEL_16;
  }

  if (self->_type == v4->_type && self->_isHidden == v4->_isHidden && ((-[MapsSuggestionsShortcut identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsShortcut identifier](v5, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 == v7) || (-[MapsSuggestionsShortcut identifier](self, "identifier"), v8 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsShortcut identifier](v5, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToString:v9], v9, v8, v10)) && ((customName = self->_customName, customName == v5->_customName) || -[NSString isEqualToString:](customName, "isEqualToString:")) && ((originatingAddressString = self->_originatingAddressString, originatingAddressString == v5->_originatingAddressString) || -[NSString isEqualToString:](originatingAddressString, "isEqualToString:")) && ((geoMapItem = self->_geoMapItem, v14 = v5->_geoMapItem, geoMapItem == v14) || MapsSuggestionsMapItemsAreEqual(geoMapItem, v14, 1, 1, 1)))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MapsSuggestionsShortcut *)self isEqualToShortcut:v4];
  }

  return v5;
}

- (uint64_t)_originalName
{
  v1 = a1;
  if (a1)
  {
    if ([a1 isBackedPlaceholder])
    {
      v1 = MapsSuggestionsLocalizedTitleForShortcutType(v1[3]);
    }

    else
    {
      v2 = [v1 geoMapItem];
      v1 = [v2 name];
    }
  }

  return v1;
}

- (id)_name
{
  if (!a1)
  {
LABEL_12:
    v3 = 0;
    goto LABEL_4;
  }

  v2 = a1[5];
  if (v2)
  {
    v3 = v2;
    [a1 isSetupPlaceholder];
    goto LABEL_4;
  }

  v3 = [(MapsSuggestionsShortcut *)a1 _originalName];
  if (([a1 isSetupPlaceholder] & 1) == 0 && !v3)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_2_1(&dword_1C5126000, v6, v7, "At %{public}s:%d, %{public}s forbids: %{public}s. It doesn't make sense that there is no name at all", v8, v9, v10, v11, 2u);
    }

    goto LABEL_12;
  }

LABEL_4:

  return v3;
}

- (id)description
{
  if (self)
  {
    v3 = [(MapsSuggestionsShortcut *)self isBackedPlaceholder]|| [(MapsSuggestionsShortcut *)self isSetupPlaceholder];
  }

  else
  {
    v3 = 0;
  }

  v28 = objc_alloc(MEMORY[0x1E696AEC0]);
  v29 = NSStringFromMapsSuggestionsShortcutType(self->_type);
  v4 = [(MapsSuggestionsShortcut *)self title];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F444C108;
  }

  v27 = v6;
  v7 = [(MapsSuggestionsShortcut *)self subtitle];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_1F444C108;
  }

  v26 = v9;
  v10 = [(MapsSuggestionsShortcut *)self geoMapItem];
  if (v10)
  {
    v11 = 89;
  }

  else
  {
    v11 = 78;
  }

  v25 = v11;
  v12 = "id";
  if (v3)
  {
    v12 = "placeholder";
  }

  v23 = v10;
  v24 = v12;
  v13 = [(MapsSuggestionsShortcut *)self identifier];
  v14 = @"Y";
  if (v13)
  {
    v15 = objc_alloc(MEMORY[0x1E696AEC0]);
    v22 = [(MapsSuggestionsShortcut *)self identifier];
    v16 = [v15 initWithFormat:@"'%@'", v22];
  }

  else if (v3)
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

  if (v13)
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