@interface MapsSuggestionsEntry
+ (id)entryFromSerializedBase64String:(id)string hasPrefix:(BOOL)prefix;
+ (id)entryFromSerializedHexString:(id)string hasPrefix:(BOOL)prefix;
+ (id)entryFromSerializedString:(id)string;
+ (id)entryWithData:(id)data;
+ (id)entryWithType:(int64_t)type title:(id)title subtitle:(id)subtitle weight:(double)weight expires:(id)expires sourceSpecificInfo:(id)info;
- (BOOL)BOOLeanForKey:(id)key;
- (BOOL)BOOLeanForKey:(id)key is:(BOOL)is;
- (BOOL)_wasEverOfType:(int64_t)type;
- (BOOL)_wasEverOneOfTypes:(id)types;
- (BOOL)containsKey:(id)key;
- (BOOL)expiresBeforeEntry:(id)entry;
- (BOOL)hasEssentialFlightInfo;
- (BOOL)hasExpired;
- (BOOL)hasFullFlightInfoAndGate;
- (BOOL)hasMultipleWaypointsLeft;
- (BOOL)hasStartAndEndTime;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEntry:(id)entry;
- (BOOL)isLockedOrHidden;
- (BOOL)isMultiPointRoute;
- (BOOL)isPureShortcut;
- (BOOL)isShortcutForSetup;
- (BOOL)startsBeforeEntry:(id)entry;
- (BOOL)updateUndecoratedSubtitle:(id)subtitle;
- (BOOL)updateUndecoratedTitle:(id)title;
- (MapsSuggestionsEntry)initWithCoder:(id)coder;
- (MapsSuggestionsEntry)initWithType:(int64_t)type title:(id)title subtitle:(id)subtitle weight:(double)weight expires:(id)expires geoMapItem:(id)item sourceSpecificInfo:(id)info;
- (NSString)fullDescription;
- (NSString)serializedBase64String;
- (NSString)serializedHexString;
- (NSString)shortDescription;
- (NSString)uniqueIdentifier;
- (NSString)uniqueName;
- (id)ETAForKey:(id)key;
- (id)URLForKey:(id)key;
- (id)UUIDForKey:(id)key;
- (id)_valueForKey:(uint64_t)key class:;
- (id)arrayForKey:(id)key;
- (id)arrivingAirportCode;
- (id)contacts;
- (id)copyWithNewType:(int64_t)type;
- (id)copyWithZone:(_NSZone *)zone;
- (id)data;
- (id)dataForKey:(id)key;
- (id)dateForKey:(id)key;
- (id)departingAirportCode;
- (id)fullDescriptionForCurrentLocationEntries;
- (id)mapItemHandleData;
- (id)numberForKey:(id)key;
- (id)objectForJSON;
- (id)routeRequestStorageForKey:(id)key;
- (id)setForKey:(id)key;
- (id)sourceSpecificInfo;
- (id)stringForKey:(id)key;
- (int64_t)integerForKey:(id)key;
- (uint64_t)isSourceSpecificDictionaryEqual:(void *)equal;
- (unint64_t)hash;
- (unint64_t)uint64ForKey:(id)key;
- (void)_overrideType:(int64_t)type;
- (void)_selectETAFrom:(void *)from destinationKey:(void *)key otherEntry:;
- (void)_setValue:(void *)value forKey:(uint64_t)key class:;
- (void)encodeWithCoder:(id)coder;
- (void)mergeFromSuggestionEntry:(id)entry behavior:(unint64_t)behavior protectTitles:(BOOL)titles protectTitleDecorations:(BOOL)decorations protectMapItem:(BOOL)item protectWeight:(BOOL)weight protectExpiration:(BOOL)expiration protectIcon:(BOOL)self0;
- (void)mergeSpecificsFromSuggestionEntry:(id)entry behavior:(unint64_t)behavior;
- (void)replaceByEntry:(id)entry forceDecoratedOverwrites:(BOOL)overwrites;
- (void)resetAvailableRemovalBehavior:(int64_t)behavior;
- (void)setArray:(id)array forKey:(id)key;
- (void)setAvailableRemovalBehavior:(int64_t)behavior;
- (void)setBoolean:(BOOL)boolean forKey:(id)key;
- (void)setContacts:(id)contacts;
- (void)setData:(id)data forKey:(id)key;
- (void)setDate:(id)date forKey:(id)key;
- (void)setDeleted:(BOOL)deleted;
- (void)setETA:(id)a forKey:(id)key;
- (void)setInteger:(int64_t)integer forKey:(id)key;
- (void)setLocationCoordinateKeysFromLocation:(id)location;
- (void)setMapItemHandleData:(id)data;
- (void)setNumber:(id)number forKey:(id)key;
- (void)setRouteRequestStorage:(id)storage forKey:(id)key;
- (void)setSet:(id)set forKey:(id)key;
- (void)setShareETAHandles:(id)handles;
- (void)setSourceSpecificInfo:(id)info;
- (void)setString:(id)string forKey:(id)key;
- (void)setURL:(id)l forKey:(id)key;
- (void)setUUID:(id)d forKey:(id)key;
- (void)setUndecoratedSubtitle:(id)subtitle;
- (void)setUndecoratedSubtitleWhenLocked:(id)locked;
- (void)setUndecoratedTitle:(id)title;
- (void)setUndecoratedTitleWhenLocked:(id)locked;
@end

@implementation MapsSuggestionsEntry

- (NSString)uniqueIdentifier
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsPrimaryKey"])
  {
    v3 = [(MapsSuggestionsEntry *)self stringForKey:@"MapsSuggestionsPrimaryKey"];
    if ([(MapsSuggestionsEntry *)self containsKey:v3])
    {
      v4 = [(MapsSuggestionsEntry *)self stringForKey:v3];
    }

    else
    {
      v6 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v9 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry.mm";
        v10 = 1024;
        v11 = 335;
        v12 = 2082;
        v13 = "[MapsSuggestionsEntry uniqueIdentifier]";
        v14 = 2082;
        v15 = "![self containsKey:primaryKey]";
        _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Suggestion Entry requires primary key value", buf, 0x26u);
      }

      v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p", self];
    }

    v5 = v4;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%p", self];
  }

  return v5;
}

- (id)mapItemHandleData
{
  v3 = objc_opt_class();

  return [(MapsSuggestionsEntry *)self _valueForKey:v3 class:?];
}

- (BOOL)isPureShortcut
{
  if (![(MapsSuggestionsEntry *)self isShortcut]|| ![(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsShortcutOnlyKey"])
  {
    return 0;
  }

  return [(MapsSuggestionsEntry *)self BOOLeanForKey:@"MapsSuggestionsShortcutOnlyKey"];
}

- (BOOL)isShortcutForSetup
{
  if (![(MapsSuggestionsEntry *)self isShortcut]|| ![(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsShortcutSetupKey"])
  {
    return 0;
  }

  return [(MapsSuggestionsEntry *)self BOOLeanForKey:@"MapsSuggestionsShortcutSetupKey"];
}

- (BOOL)hasExpired
{
  expires = [(MapsSuggestionsEntry *)self expires];

  if (expires)
  {
    expires2 = [(MapsSuggestionsEntry *)self expires];
    LOBYTE(expires) = MapsSuggestionsIsInThePast(expires2);
  }

  return expires;
}

- (BOOL)updateUndecoratedTitle:(id)title
{
  v19 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  if (!titleCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
      v13 = 1024;
      v14 = 97;
      v15 = 2082;
      v16 = "[MapsSuggestionsEntry(BusinessLogic) updateUndecoratedTitle:]";
      v17 = 2082;
      v18 = "nil == (undecoratedTitle)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a title", &v11, 0x26u);
    }

    goto LABEL_7;
  }

  undecoratedTitle = [(MapsSuggestionsEntry *)self undecoratedTitle];
  v6 = [titleCopy isEqualToString:undecoratedTitle];

  if (v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [titleCopy copy];
  [(MapsSuggestionsEntry *)self setUndecoratedTitle:v7];

  v8 = 1;
LABEL_8:

  return v8;
}

- (BOOL)updateUndecoratedSubtitle:(id)subtitle
{
  v19 = *MEMORY[0x1E69E9840];
  subtitleCopy = subtitle;
  if (!subtitleCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
      v13 = 1024;
      v14 = 108;
      v15 = 2082;
      v16 = "[MapsSuggestionsEntry(BusinessLogic) updateUndecoratedSubtitle:]";
      v17 = 2082;
      v18 = "nil == (undecoratedSubtitle)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a subtitle", &v11, 0x26u);
    }

    goto LABEL_7;
  }

  undecoratedSubtitle = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
  v6 = [subtitleCopy isEqualToString:undecoratedSubtitle];

  if (v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [subtitleCopy copy];
  [(MapsSuggestionsEntry *)self setUndecoratedSubtitle:v7];

  v8 = 1;
LABEL_8:

  return v8;
}

- (BOOL)startsBeforeEntry:(id)entry
{
  v19 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (!entryCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136446978;
      v12 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
      v13 = 1024;
      v14 = 129;
      v15 = 2082;
      v16 = "[MapsSuggestionsEntry(BusinessLogic) startsBeforeEntry:]";
      v17 = 2082;
      v18 = "nil == (otherEntry)";
      _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires another suggestions entry", &v11, 0x26u);
    }

    goto LABEL_8;
  }

  if (!-[MapsSuggestionsEntry hasStartTime](self, "hasStartTime") || ![entryCopy hasStartTime])
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  startTime = [(MapsSuggestionsEntry *)self startTime];
  startTime2 = [entryCopy startTime];
  [startTime timeIntervalSinceDate:startTime2];
  v8 = v7 < 0.0;

LABEL_9:
  return v8;
}

- (BOOL)expiresBeforeEntry:(id)entry
{
  v22 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  v5 = entryCopy;
  if (!entryCopy)
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446978;
      v15 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
      v16 = 1024;
      v17 = 140;
      v18 = 2082;
      v19 = "[MapsSuggestionsEntry(BusinessLogic) expiresBeforeEntry:]";
      v20 = 2082;
      v21 = "nil == (otherEntry)";
      _os_log_impl(&dword_1C5126000, v12, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires another suggestion entry", &v14, 0x26u);
    }

LABEL_8:
    v11 = 0;
    goto LABEL_10;
  }

  expires = [entryCopy expires];

  if (!expires)
  {
    v11 = 1;
    goto LABEL_10;
  }

  expires2 = [(MapsSuggestionsEntry *)self expires];

  if (!expires2)
  {
    goto LABEL_8;
  }

  expires3 = [(MapsSuggestionsEntry *)self expires];
  expires4 = [v5 expires];
  [expires3 timeIntervalSinceDate:expires4];
  v11 = v10 < 0.0;

LABEL_10:
  return v11;
}

- (void)mergeFromSuggestionEntry:(id)entry behavior:(unint64_t)behavior protectTitles:(BOOL)titles protectTitleDecorations:(BOOL)decorations protectMapItem:(BOOL)item protectWeight:(BOOL)weight protectExpiration:(BOOL)expiration protectIcon:(BOOL)self0
{
  decorationsCopy = decorations;
  titlesCopy = titles;
  v94 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (!entryCopy)
  {
    selfCopy3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&selfCopy3->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v87 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
      v88 = 1024;
      v89 = 178;
      v90 = 2082;
      v91 = "[MapsSuggestionsEntry(BusinessLogic) mergeFromSuggestionEntry:behavior:protectTitles:protectTitleDecorations:protectMapItem:protectWeight:protectExpiration:protectIcon:]";
      v92 = 2082;
      v93 = "nil == (otherEntry)";
      v25 = "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an other suggestions entry";
LABEL_45:
      _os_log_impl(&dword_1C5126000, &selfCopy3->super, OS_LOG_TYPE_ERROR, v25, buf, 0x26u);
    }

LABEL_113:

    goto LABEL_114;
  }

  if (![(MapsSuggestionsEntry *)self isEqualToEntry:entryCopy])
  {
    expirationCopy2 = expiration;
    if (behavior)
    {
      if (behavior == 1)
      {
        if (titlesCopy)
        {
          goto LABEL_69;
        }

        title = [(MapsSuggestionsEntry *)self title];
        undecoratedTitle = [(MapsSuggestionsEntry *)entryCopy undecoratedTitle];
        if (undecoratedTitle && (v20 = undecoratedTitle, -[MapsSuggestionsEntry undecoratedTitle](entryCopy, "undecoratedTitle"), v21 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedTitle](self, "undecoratedTitle"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v21 isEqualToString:v22], v22, v21, v20, (v23 & 1) == 0))
        {
          undecoratedTitle2 = [(MapsSuggestionsEntry *)entryCopy undecoratedTitle];
          [(MapsSuggestionsEntry *)self setUndecoratedTitle:undecoratedTitle2];
        }

        else if (decorationsCopy)
        {
          goto LABEL_56;
        }

        title2 = [(MapsSuggestionsEntry *)entryCopy title];

        title = title2;
LABEL_56:
        if (title)
        {
          title3 = [(MapsSuggestionsEntry *)self title];
          v46 = [title isEqualToString:title3];

          if ((v46 & 1) == 0)
          {
            [(MapsSuggestionsEntry *)self setTitle:title];
          }
        }

        titlesCopy = [(MapsSuggestionsEntry *)self subtitle];
        undecoratedSubtitle = [(MapsSuggestionsEntry *)entryCopy undecoratedSubtitle];
        if (undecoratedSubtitle && (v48 = undecoratedSubtitle, -[MapsSuggestionsEntry undecoratedSubtitle](entryCopy, "undecoratedSubtitle"), v49 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedSubtitle](self, "undecoratedSubtitle"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v49 isEqualToString:v50], v50, v49, v48, (v51 & 1) == 0))
        {
          undecoratedSubtitle2 = [(MapsSuggestionsEntry *)entryCopy undecoratedSubtitle];
          [(MapsSuggestionsEntry *)self setUndecoratedSubtitle:undecoratedSubtitle2];
        }

        else if (decorationsCopy)
        {
LABEL_65:
          expirationCopy2 = expiration;
          if (titlesCopy)
          {
            decorationsCopy = [(MapsSuggestionsEntry *)self subtitle];
            v53 = [titlesCopy isEqualToString:decorationsCopy];

            if ((v53 & 1) == 0)
            {
              [(MapsSuggestionsEntry *)self setSubtitle:titlesCopy];
            }
          }

LABEL_69:
          if (item)
          {
            goto LABEL_84;
          }

          geoMapItem = [(MapsSuggestionsEntry *)self geoMapItem];
          if (geoMapItem)
          {
            decorationsCopy = [(MapsSuggestionsEntry *)self geoMapItem];
            titlesCopy = [(MapsSuggestionsEntry *)entryCopy geoMapItem];
            if (([decorationsCopy isEqual:titlesCopy] & 1) == 0)
            {

              goto LABEL_80;
            }

            v85 = expirationCopy2;
          }

          else
          {
            v85 = expirationCopy2;
          }

          geoMapItem2 = [(MapsSuggestionsEntry *)entryCopy geoMapItem];
          if (!geoMapItem2)
          {

            expirationCopy2 = v85;
            if (!geoMapItem)
            {
              goto LABEL_84;
            }

            goto LABEL_83;
          }

          geoMapItem3 = [(MapsSuggestionsEntry *)entryCopy geoMapItem];
          geoMapItem4 = [(MapsSuggestionsEntry *)self geoMapItem];
          v58 = [geoMapItem3 isEqual:geoMapItem4];

          if (geoMapItem)
          {
          }

          expirationCopy2 = v85;
          if (v58)
          {
LABEL_84:
            if (!weight)
            {
              [(MapsSuggestionsEntry *)self weight];
              v60 = v59;
              [(MapsSuggestionsEntry *)entryCopy weight];
              if (v60 <= v61)
              {
                selfCopy = entryCopy;
              }

              else
              {
                selfCopy = self;
              }

              [(MapsSuggestionsEntry *)selfCopy weight];
              [(MapsSuggestionsEntry *)self setWeight:?];
            }

            type = [(MapsSuggestionsEntry *)self type];
            if (type != [(MapsSuggestionsEntry *)entryCopy type])
            {
              [(MapsSuggestionsEntry *)self _overrideType:[(MapsSuggestionsEntry *)entryCopy type]];
            }

            if (expirationCopy2)
            {
              goto LABEL_100;
            }

            selfCopy2 = self;
            v65 = entryCopy;
            if (!selfCopy2)
            {
              v67 = GEOFindOrCreateLog();
              if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
              {
                *buf = 136446978;
                v87 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
                v88 = 1024;
                v89 = 51;
                v90 = 2082;
                v91 = "NSDate *_mergeExpirationOfEntries(MapsSuggestionsEntry *__strong, MapsSuggestionsEntry *__strong)";
                v92 = 2082;
                v93 = "nil == (a)";
                _os_log_impl(&dword_1C5126000, v67, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry A", buf, 0x26u);
              }

              distantPast = 0;
              goto LABEL_99;
            }

            if ([(MapsSuggestionsEntry *)selfCopy2 deleted]|| [(MapsSuggestionsEntry *)v65 deleted])
            {
              distantPast = [MEMORY[0x1E695DF00] distantPast];
LABEL_99:

              [(MapsSuggestionsEntry *)selfCopy2 setExpires:distantPast];
LABEL_100:
              if (!icon)
              {
                iconData = [(MapsSuggestionsEntry *)entryCopy iconData];
                [(MapsSuggestionsEntry *)self setIconData:iconData];
              }

              deleted = [(MapsSuggestionsEntry *)entryCopy deleted]|| [(MapsSuggestionsEntry *)self deleted];
              [(MapsSuggestionsEntry *)self setDeleted:deleted];
              [(MapsSuggestionsEntry *)self mergeSpecificsFromSuggestionEntry:entryCopy behavior:1];
              selfCopy3 = self;
              v70 = entryCopy;
              if (selfCopy3)
              {
                originatingSourceName = [(MapsSuggestionsEntry *)selfCopy3 originatingSourceName];
                originatingSourceName2 = [(MapsSuggestionsEntry *)v70 originatingSourceName];
                if (originatingSourceName && ([originatingSourceName isEqualToString:originatingSourceName2]& 1) == 0)
                {
                  [(MapsSuggestionsEntry *)selfCopy3 setString:originatingSourceName2 forKey:@"MapsSuggestionsNewSourceKey"];
                }
              }

              else
              {
                originatingSourceName = GEOFindOrCreateLog();
                if (os_log_type_enabled(originatingSourceName, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446978;
                  v87 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
                  v88 = 1024;
                  v89 = 81;
                  v90 = 2082;
                  v91 = "void _mergeOriginsOfEntries(MapsSuggestionsEntry *__strong, MapsSuggestionsEntry *__strong)";
                  v92 = 2082;
                  v93 = "nil == (oriEntry)";
                  _os_log_impl(&dword_1C5126000, originatingSourceName, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion oriEntry", buf, 0x26u);
                }
              }

              goto LABEL_113;
            }

            expires = [(MapsSuggestionsEntry *)selfCopy2 expires];
            if (expires)
            {
            }

            else
            {
              distantPast = [(MapsSuggestionsEntry *)v65 expires];

              if (!distantPast)
              {
                goto LABEL_99;
              }
            }

            expires2 = [(MapsSuggestionsEntry *)selfCopy2 expires];

            expires3 = [(MapsSuggestionsEntry *)v65 expires];
            distantPast = expires3;
            if (expires2)
            {

              expires4 = [(MapsSuggestionsEntry *)selfCopy2 expires];
              v78 = expires4;
              if (distantPast)
              {
                expires5 = [(MapsSuggestionsEntry *)v65 expires];
                distantPast = [v78 laterDate:expires5];
              }

              else
              {
                distantPast = expires4;
              }
            }

            goto LABEL_99;
          }

LABEL_80:
          geoMapItem = [(MapsSuggestionsEntry *)entryCopy geoMapItem];
          [(MapsSuggestionsEntry *)self setGeoMapItem:geoMapItem];
LABEL_83:

          goto LABEL_84;
        }

        decorationsCopy = [(MapsSuggestionsEntry *)entryCopy subtitle];

        titlesCopy = decorationsCopy;
        goto LABEL_65;
      }

      selfCopy3 = GEOFindOrCreateLog();
      if (os_log_type_enabled(&selfCopy3->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 136446978;
        v87 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
        v88 = 1024;
        v89 = 257;
        v90 = 2082;
        v91 = "[MapsSuggestionsEntry(BusinessLogic) mergeFromSuggestionEntry:behavior:protectTitles:protectTitleDecorations:protectMapItem:protectWeight:protectExpiration:protectIcon:]";
        v92 = 2082;
        v93 = "YES";
        v25 = "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsMergeBehavior!";
        goto LABEL_45;
      }

      goto LABEL_113;
    }

    if (titlesCopy)
    {
      goto LABEL_29;
    }

    undecoratedTitle3 = [(MapsSuggestionsEntry *)self undecoratedTitle];
    if (!undecoratedTitle3)
    {
      undecoratedTitle4 = [(MapsSuggestionsEntry *)entryCopy undecoratedTitle];

      if (!undecoratedTitle4)
      {
        goto LABEL_17;
      }

      undecoratedTitle3 = [(MapsSuggestionsEntry *)entryCopy undecoratedTitle];
      [(MapsSuggestionsEntry *)self setUndecoratedTitle:undecoratedTitle3];
    }

LABEL_17:
    undecoratedSubtitle3 = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
    if (!undecoratedSubtitle3)
    {
      undecoratedSubtitle4 = [(MapsSuggestionsEntry *)entryCopy undecoratedSubtitle];

      if (!undecoratedSubtitle4)
      {
        goto LABEL_21;
      }

      undecoratedSubtitle3 = [(MapsSuggestionsEntry *)entryCopy undecoratedSubtitle];
      [(MapsSuggestionsEntry *)self setUndecoratedSubtitle:undecoratedSubtitle3];
    }

LABEL_21:
    title4 = [(MapsSuggestionsEntry *)self title];
    if (!title4)
    {
      title5 = [(MapsSuggestionsEntry *)entryCopy title];

      if (!title5)
      {
LABEL_25:
        subtitle = [(MapsSuggestionsEntry *)self subtitle];
        if (!subtitle)
        {
          subtitle2 = [(MapsSuggestionsEntry *)entryCopy subtitle];

          if (!subtitle2)
          {
            goto LABEL_29;
          }

          subtitle = [(MapsSuggestionsEntry *)entryCopy subtitle];
          [(MapsSuggestionsEntry *)self setSubtitle:subtitle];
        }

LABEL_29:
        if (!item)
        {
          geoMapItem5 = [(MapsSuggestionsEntry *)self geoMapItem];
          if (geoMapItem5)
          {
LABEL_33:

            goto LABEL_34;
          }

          geoMapItem6 = [(MapsSuggestionsEntry *)entryCopy geoMapItem];

          if (geoMapItem6)
          {
            geoMapItem5 = [(MapsSuggestionsEntry *)entryCopy geoMapItem];
            [(MapsSuggestionsEntry *)self setGeoMapItem:geoMapItem5];
            goto LABEL_33;
          }
        }

LABEL_34:
        if (!weight)
        {
          [(MapsSuggestionsEntry *)self weight];
          if (v36 == 0.0)
          {
            [(MapsSuggestionsEntry *)entryCopy weight];
            if (v37 != 0.0)
            {
              [(MapsSuggestionsEntry *)entryCopy weight];
              [(MapsSuggestionsEntry *)self setWeight:?];
            }
          }
        }

        if (expiration)
        {
          goto LABEL_50;
        }

        selfCopy4 = self;
        v39 = entryCopy;
        if (!selfCopy4)
        {
          v41 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 136446978;
            v87 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
            v88 = 1024;
            v89 = 51;
            v90 = 2082;
            v91 = "NSDate *_mergeExpirationOfEntries(MapsSuggestionsEntry *__strong, MapsSuggestionsEntry *__strong)";
            v92 = 2082;
            v93 = "nil == (a)";
            _os_log_impl(&dword_1C5126000, v41, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion entry A", buf, 0x26u);
          }

          distantPast2 = 0;
          goto LABEL_49;
        }

        if ([(MapsSuggestionsEntry *)selfCopy4 deleted]|| [(MapsSuggestionsEntry *)v39 deleted])
        {
          distantPast2 = [MEMORY[0x1E695DF00] distantPast];
LABEL_49:

          [(MapsSuggestionsEntry *)selfCopy4 setExpires:distantPast2];
LABEL_50:
          deleted2 = [(MapsSuggestionsEntry *)entryCopy deleted]|| [(MapsSuggestionsEntry *)self deleted];
          [(MapsSuggestionsEntry *)self setDeleted:deleted2];
          [(MapsSuggestionsEntry *)self mergeSpecificsFromSuggestionEntry:entryCopy behavior:0];
          goto LABEL_114;
        }

        expires6 = [(MapsSuggestionsEntry *)selfCopy4 expires];
        if (expires6)
        {
        }

        else
        {
          distantPast2 = [(MapsSuggestionsEntry *)v39 expires];

          if (!distantPast2)
          {
            goto LABEL_49;
          }
        }

        expires7 = [(MapsSuggestionsEntry *)selfCopy4 expires];

        expires8 = [(MapsSuggestionsEntry *)v39 expires];
        distantPast2 = expires8;
        if (expires7)
        {

          expires9 = [(MapsSuggestionsEntry *)selfCopy4 expires];
          v83 = expires9;
          if (distantPast2)
          {
            expires10 = [(MapsSuggestionsEntry *)v39 expires];
            distantPast2 = [v83 laterDate:expires10];
          }

          else
          {
            distantPast2 = expires9;
          }
        }

        goto LABEL_49;
      }

      title4 = [(MapsSuggestionsEntry *)entryCopy title];
      [(MapsSuggestionsEntry *)self setTitle:title4];
    }

    goto LABEL_25;
  }

LABEL_114:
}

- (void)mergeSpecificsFromSuggestionEntry:(id)entry behavior:(unint64_t)behavior
{
  v32 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (entryCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    sourceSpecificInfo = [(MapsSuggestionsEntry *)selfCopy sourceSpecificInfo];
    sourceSpecificInfo2 = [entryCopy sourceSpecificInfo];
    v10 = [sourceSpecificInfo isEqualToDictionary:sourceSpecificInfo2];

    if (v10)
    {
LABEL_11:
      objc_sync_exit(selfCopy);

      goto LABEL_12;
    }

    v11 = [(MapsSuggestionsEntry *)selfCopy ETAForKey:@"MapsSuggestionsETAKey"];
    v12 = [(MapsSuggestionsEntry *)selfCopy stringForKey:@"MapsSuggestionsDestinationForETAKey"];
    v13 = v12;
    if (!behavior)
    {
      v20 = objc_alloc(MEMORY[0x1E695DF90]);
      sourceSpecificInfo3 = [entryCopy sourceSpecificInfo];
      v16 = [v20 initWithDictionary:sourceSpecificInfo3];

      sourceSpecificInfo4 = [(MapsSuggestionsEntry *)selfCopy sourceSpecificInfo];
      [v16 addEntriesFromDictionary:sourceSpecificInfo4];

      v23 = [v16 mutableCopy];
      [(MapsSuggestionsEntry *)selfCopy setSourceSpecificInfo:v23];

      [(MapsSuggestionsEntry *)selfCopy _selectETAFrom:v11 destinationKey:v13 otherEntry:entryCopy];
      goto LABEL_10;
    }

    if (behavior == 1)
    {
      v14 = objc_alloc(MEMORY[0x1E695DF90]);
      sourceSpecificInfo5 = [(MapsSuggestionsEntry *)selfCopy sourceSpecificInfo];
      v16 = [v14 initWithDictionary:sourceSpecificInfo5];

      sourceSpecificInfo6 = [entryCopy sourceSpecificInfo];
      [v16 addEntriesFromDictionary:sourceSpecificInfo6];

      v18 = [v16 mutableCopy];
      [(MapsSuggestionsEntry *)selfCopy setSourceSpecificInfo:v18];

      [(MapsSuggestionsEntry *)selfCopy _selectETAFrom:v11 destinationKey:v13 otherEntry:entryCopy];
LABEL_10:

      goto LABEL_11;
    }

    objc_sync_exit(selfCopy);
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
      v26 = 1024;
      v27 = 321;
      v28 = 2082;
      v29 = "[MapsSuggestionsEntry(BusinessLogic) mergeSpecificsFromSuggestionEntry:behavior:]";
      v30 = 2082;
      v31 = "YES";
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Detected an unsupported MapsSuggestionsMergeBehavior!", &v24, 0x26u);
    }
  }

  else
  {
    v19 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v24 = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
      v26 = 1024;
      v27 = 288;
      v28 = 2082;
      v29 = "[MapsSuggestionsEntry(BusinessLogic) mergeSpecificsFromSuggestionEntry:behavior:]";
      v30 = 2082;
      v31 = "nil == (otherEntry)";
      _os_log_impl(&dword_1C5126000, v19, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an other suggestions entry", &v24, 0x26u);
    }
  }

LABEL_12:
}

- (void)replaceByEntry:(id)entry forceDecoratedOverwrites:(BOOL)overwrites
{
  overwritesCopy = overwrites;
  v78 = *MEMORY[0x1E69E9840];
  entryCopy = entry;
  if (entryCopy)
  {
    undecoratedTitle = [(MapsSuggestionsEntry *)self undecoratedTitle];
    if (undecoratedTitle)
    {
      undecoratedTitle2 = [(MapsSuggestionsEntry *)self undecoratedTitle];
      undecoratedTitle3 = [entryCopy undecoratedTitle];
      if (([undecoratedTitle2 isEqual:undecoratedTitle3] & 1) == 0)
      {

LABEL_11:
        undecoratedTitle = [entryCopy undecoratedTitle];
        [(MapsSuggestionsEntry *)self setUndecoratedTitle:undecoratedTitle];
LABEL_14:

        goto LABEL_15;
      }
    }

    undecoratedTitle4 = [entryCopy undecoratedTitle];
    if (undecoratedTitle4)
    {
      undecoratedTitle5 = [entryCopy undecoratedTitle];
      undecoratedTitle6 = [(MapsSuggestionsEntry *)self undecoratedTitle];
      v13 = [undecoratedTitle5 isEqual:undecoratedTitle6];

      if (undecoratedTitle)
      {
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (undecoratedTitle)
      {

        goto LABEL_14;
      }
    }

LABEL_15:
    undecoratedTitleWhenLocked = [(MapsSuggestionsEntry *)self undecoratedTitleWhenLocked];
    if (undecoratedTitleWhenLocked)
    {
      undecoratedTitle2 = [(MapsSuggestionsEntry *)self undecoratedTitleWhenLocked];
      undecoratedTitle3 = [entryCopy undecoratedTitleWhenLocked];
      if (([undecoratedTitle2 isEqual:undecoratedTitle3] & 1) == 0)
      {

LABEL_22:
        undecoratedTitleWhenLocked = [entryCopy undecoratedTitleWhenLocked];
        [(MapsSuggestionsEntry *)self setUndecoratedTitleWhenLocked:undecoratedTitleWhenLocked];
LABEL_25:

        goto LABEL_26;
      }
    }

    undecoratedTitleWhenLocked2 = [entryCopy undecoratedTitleWhenLocked];
    if (undecoratedTitleWhenLocked2)
    {
      undecoratedTitleWhenLocked3 = [entryCopy undecoratedTitleWhenLocked];
      undecoratedTitleWhenLocked4 = [(MapsSuggestionsEntry *)self undecoratedTitleWhenLocked];
      v18 = [undecoratedTitleWhenLocked3 isEqual:undecoratedTitleWhenLocked4];

      if (undecoratedTitleWhenLocked)
      {
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if (undecoratedTitleWhenLocked)
      {

        goto LABEL_25;
      }
    }

LABEL_26:
    undecoratedSubtitle = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
    if (undecoratedSubtitle)
    {
      undecoratedTitle2 = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
      undecoratedTitle3 = [entryCopy undecoratedSubtitle];
      if (([undecoratedTitle2 isEqual:undecoratedTitle3] & 1) == 0)
      {

LABEL_33:
        undecoratedSubtitle = [entryCopy undecoratedSubtitle];
        [(MapsSuggestionsEntry *)self setUndecoratedSubtitle:undecoratedSubtitle];
LABEL_36:

        goto LABEL_37;
      }
    }

    undecoratedSubtitle2 = [entryCopy undecoratedSubtitle];
    if (undecoratedSubtitle2)
    {
      undecoratedSubtitle3 = [entryCopy undecoratedSubtitle];
      undecoratedSubtitle4 = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
      v23 = [undecoratedSubtitle3 isEqual:undecoratedSubtitle4];

      if (undecoratedSubtitle)
      {
      }

      if ((v23 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {

      if (undecoratedSubtitle)
      {

        goto LABEL_36;
      }
    }

LABEL_37:
    undecoratedSubtitleWhenLocked = [(MapsSuggestionsEntry *)self undecoratedSubtitleWhenLocked];
    if (!undecoratedSubtitleWhenLocked || (-[MapsSuggestionsEntry undecoratedSubtitleWhenLocked](self, "undecoratedSubtitleWhenLocked"), undecoratedTitle2 = objc_claimAutoreleasedReturnValue(), [entryCopy undecoratedSubtitleWhenLocked], undecoratedTitle3 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(undecoratedTitle2, "isEqual:", undecoratedTitle3) & 1) != 0))
    {
      undecoratedSubtitleWhenLocked2 = [entryCopy undecoratedSubtitleWhenLocked];
      if (!undecoratedSubtitleWhenLocked2)
      {

        if (!undecoratedSubtitleWhenLocked)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      undecoratedSubtitleWhenLocked3 = [entryCopy undecoratedSubtitleWhenLocked];
      undecoratedSubtitleWhenLocked4 = [(MapsSuggestionsEntry *)self undecoratedSubtitleWhenLocked];
      v28 = [undecoratedSubtitleWhenLocked3 isEqual:undecoratedSubtitleWhenLocked4];

      if (undecoratedSubtitleWhenLocked)
      {
      }

      if (v28)
      {
LABEL_48:
        if (!overwritesCopy)
        {
          goto LABEL_93;
        }

        title = [(MapsSuggestionsEntry *)self title];
        if (title)
        {
          undecoratedSubtitleWhenLocked = [(MapsSuggestionsEntry *)self title];
          undecoratedTitle2 = [entryCopy title];
          if (([undecoratedSubtitleWhenLocked isEqual:undecoratedTitle2] & 1) == 0)
          {

LABEL_56:
            title = [entryCopy title];
            [(MapsSuggestionsEntry *)self setTitle:title];
LABEL_59:

            goto LABEL_60;
          }
        }

        title2 = [entryCopy title];
        if (title2)
        {
          title3 = [entryCopy title];
          title4 = [(MapsSuggestionsEntry *)self title];
          v33 = [title3 isEqual:title4];

          if (title)
          {
          }

          if ((v33 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        else
        {

          if (title)
          {

            goto LABEL_59;
          }
        }

LABEL_60:
        titleWhenLocked = [(MapsSuggestionsEntry *)self titleWhenLocked];
        if (titleWhenLocked)
        {
          undecoratedSubtitleWhenLocked = [(MapsSuggestionsEntry *)self titleWhenLocked];
          undecoratedTitle2 = [entryCopy titleWhenLocked];
          if (([undecoratedSubtitleWhenLocked isEqual:undecoratedTitle2] & 1) == 0)
          {

LABEL_67:
            titleWhenLocked = [entryCopy titleWhenLocked];
            [(MapsSuggestionsEntry *)self setTitleWhenLocked:titleWhenLocked];
LABEL_70:

            goto LABEL_71;
          }
        }

        titleWhenLocked2 = [entryCopy titleWhenLocked];
        if (titleWhenLocked2)
        {
          titleWhenLocked3 = [entryCopy titleWhenLocked];
          titleWhenLocked4 = [(MapsSuggestionsEntry *)self titleWhenLocked];
          v38 = [titleWhenLocked3 isEqual:titleWhenLocked4];

          if (titleWhenLocked)
          {
          }

          if ((v38 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else
        {

          if (titleWhenLocked)
          {

            goto LABEL_70;
          }
        }

LABEL_71:
        subtitle = [(MapsSuggestionsEntry *)self subtitle];
        if (!subtitle || (-[MapsSuggestionsEntry subtitle](self, "subtitle"), undecoratedSubtitleWhenLocked = objc_claimAutoreleasedReturnValue(), [entryCopy subtitle], undecoratedTitle2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(undecoratedSubtitleWhenLocked, "isEqual:", undecoratedTitle2) & 1) != 0))
        {
          subtitle2 = [entryCopy subtitle];
          if (!subtitle2)
          {

            if (!subtitle)
            {
              goto LABEL_82;
            }

LABEL_81:
LABEL_82:
            subtitleWhenLocked = [(MapsSuggestionsEntry *)self subtitleWhenLocked];
            if (subtitleWhenLocked)
            {
              undecoratedSubtitleWhenLocked = [(MapsSuggestionsEntry *)self subtitleWhenLocked];
              undecoratedTitle2 = [entryCopy subtitleWhenLocked];
              if (([undecoratedSubtitleWhenLocked isEqual:undecoratedTitle2] & 1) == 0)
              {

LABEL_89:
                subtitleWhenLocked = [entryCopy subtitleWhenLocked];
                [(MapsSuggestionsEntry *)self setSubtitleWhenLocked:subtitleWhenLocked];
LABEL_92:

                goto LABEL_93;
              }
            }

            subtitleWhenLocked2 = [entryCopy subtitleWhenLocked];
            if (subtitleWhenLocked2)
            {
              subtitleWhenLocked3 = [entryCopy subtitleWhenLocked];
              subtitleWhenLocked4 = [(MapsSuggestionsEntry *)self subtitleWhenLocked];
              v48 = [subtitleWhenLocked3 isEqual:subtitleWhenLocked4];

              if (subtitleWhenLocked)
              {
              }

              if ((v48 & 1) == 0)
              {
                goto LABEL_89;
              }
            }

            else
            {

              if (subtitleWhenLocked)
              {

                goto LABEL_92;
              }
            }

LABEL_93:
            geoMapItem = [(MapsSuggestionsEntry *)self geoMapItem];
            if (geoMapItem)
            {
              undecoratedSubtitleWhenLocked = [(MapsSuggestionsEntry *)self geoMapItem];
              undecoratedTitle2 = [entryCopy geoMapItem];
              if (([undecoratedSubtitleWhenLocked isEqual:undecoratedTitle2] & 1) == 0)
              {

LABEL_100:
                geoMapItem = [entryCopy geoMapItem];
                [(MapsSuggestionsEntry *)self setGeoMapItem:geoMapItem];
LABEL_103:

                goto LABEL_104;
              }
            }

            geoMapItem2 = [entryCopy geoMapItem];
            if (geoMapItem2)
            {
              geoMapItem3 = [entryCopy geoMapItem];
              geoMapItem4 = [(MapsSuggestionsEntry *)self geoMapItem];
              v53 = [geoMapItem3 isEqual:geoMapItem4];

              if (geoMapItem)
              {
              }

              if ((v53 & 1) == 0)
              {
                goto LABEL_100;
              }
            }

            else
            {

              if (geoMapItem)
              {

                goto LABEL_103;
              }
            }

LABEL_104:
            expires = [(MapsSuggestionsEntry *)self expires];
            if (!expires || (-[MapsSuggestionsEntry expires](self, "expires"), undecoratedSubtitleWhenLocked = objc_claimAutoreleasedReturnValue(), [entryCopy expires], undecoratedTitle2 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(undecoratedSubtitleWhenLocked, "isEqual:", undecoratedTitle2) & 1) != 0))
            {
              expires2 = [entryCopy expires];
              if (!expires2)
              {

                if (!expires)
                {
LABEL_115:
                  type = [(MapsSuggestionsEntry *)self type];
                  if (type != [entryCopy type])
                  {
                    -[MapsSuggestionsEntry _overrideType:](self, "_overrideType:", [entryCopy type]);
                  }

                  [(MapsSuggestionsEntry *)self setIconData:0];
                  [entryCopy weight];
                  [(MapsSuggestionsEntry *)self setWeight:?];
                  originatingSourceName = [(MapsSuggestionsEntry *)self originatingSourceName];
                  originatingSourceName2 = [entryCopy originatingSourceName];
                  if (([originatingSourceName isEqualToString:originatingSourceName2]& 1) == 0)
                  {
                    [(MapsSuggestionsEntry *)self setString:originatingSourceName2 forKey:@"MapsSuggestionsNewSourceKey"];
                  }

                  selfCopy = self;
                  objc_sync_enter(selfCopy);
                  sourceSpecificInfo = [entryCopy sourceSpecificInfo];
                  v63 = [sourceSpecificInfo copy];
                  [(MapsSuggestionsEntry *)selfCopy setSourceSpecificInfo:v63];

                  objc_sync_exit(selfCopy);
                  v64 = selfCopy;
                  v65 = entryCopy;
                  if (v64)
                  {
                    originatingSourceName3 = [(MapsSuggestionsEntry *)v64 originatingSourceName];
                    originatingSourceName4 = [v65 originatingSourceName];
                    if (originatingSourceName3 && ([originatingSourceName3 isEqualToString:originatingSourceName4] & 1) == 0)
                    {
                      [(MapsSuggestionsEntry *)v64 setString:originatingSourceName4 forKey:@"MapsSuggestionsNewSourceKey"];
                    }
                  }

                  else
                  {
                    v68 = GEOFindOrCreateLog();
                    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136446978;
                      v71 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
                      v72 = 1024;
                      v73 = 81;
                      v74 = 2082;
                      v75 = "void _mergeOriginsOfEntries(MapsSuggestionsEntry *__strong, MapsSuggestionsEntry *__strong)";
                      v76 = 2082;
                      v77 = "nil == (oriEntry)";
                      _os_log_impl(&dword_1C5126000, v68, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion oriEntry", buf, 0x26u);
                    }
                  }

                  goto LABEL_128;
                }

LABEL_114:
                goto LABEL_115;
              }

              expires3 = [entryCopy expires];
              expires4 = [(MapsSuggestionsEntry *)self expires];
              v58 = [expires3 isEqual:expires4];

              if (expires)
              {
              }

              if (v58)
              {
                goto LABEL_115;
              }
            }

            else
            {
            }

            expires = [entryCopy expires];
            [(MapsSuggestionsEntry *)self setExpires:expires];
            goto LABEL_114;
          }

          subtitle3 = [entryCopy subtitle];
          subtitle4 = [(MapsSuggestionsEntry *)self subtitle];
          v43 = [subtitle3 isEqual:subtitle4];

          if (subtitle)
          {
          }

          if (v43)
          {
            goto LABEL_82;
          }
        }

        else
        {
        }

        subtitle = [entryCopy subtitle];
        [(MapsSuggestionsEntry *)self setSubtitle:subtitle];
        goto LABEL_81;
      }
    }

    else
    {
    }

    undecoratedSubtitleWhenLocked = [entryCopy undecoratedSubtitleWhenLocked];
    [(MapsSuggestionsEntry *)self setUndecoratedSubtitleWhenLocked:undecoratedSubtitleWhenLocked];
LABEL_47:

    goto LABEL_48;
  }

  originatingSourceName = GEOFindOrCreateLog();
  if (os_log_type_enabled(originatingSourceName, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v71 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
    v72 = 1024;
    v73 = 331;
    v74 = 2082;
    v75 = "[MapsSuggestionsEntry(BusinessLogic) replaceByEntry:forceDecoratedOverwrites:]";
    v76 = 2082;
    v77 = "nil == (otherEntry)";
    _os_log_impl(&dword_1C5126000, originatingSourceName, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an other suggestions entry", buf, 0x26u);
  }

LABEL_128:
}

- (BOOL)hasStartAndEndTime
{
  hasStartTime = [(MapsSuggestionsEntry *)self hasStartTime];
  if (hasStartTime)
  {

    LOBYTE(hasStartTime) = [(MapsSuggestionsEntry *)self hasEndTime];
  }

  return hasStartTime;
}

- (BOOL)hasEssentialFlightInfo
{
  if ([(MapsSuggestionsEntry *)self type]!= 15 || ![(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsFlightDepartureTimeKey"]|| ![(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsFullFlightNumberKey"])
  {
    return 0;
  }

  return [(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsEntryTitleNameKey"];
}

- (BOOL)hasFullFlightInfoAndGate
{
  if (![(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsFlightDepartureGateKey"]|| ![(MapsSuggestionsEntry *)self BOOLeanForKey:@"MapsSuggestionsFlightMapItemIsGateKey" is:1]|| ![(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsFlightStatusKey"])
  {
    return 0;
  }

  return [(MapsSuggestionsEntry *)self hasEssentialFlightInfo];
}

- (id)departingAirportCode
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(MapsSuggestionsEntry *)self hasEssentialFlightInfo])
  {
    v3 = [(MapsSuggestionsEntry *)self stringForKey:@"MapsSuggestionsEntryTitleNameKey"];
    if ([v3 length]== 3)
    {
      v3 = v3;
      v4 = v3;
      goto LABEL_10;
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlight.mm";
      v9 = 1024;
      v10 = 397;
      v11 = 2082;
      v12 = "[MapsSuggestionsEntry(Flight) departingAirportCode]";
      v13 = 2082;
      v14 = "3u != airportCode.length";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Post-condition: IATA airport codes should always be 3 characters!", &v7, 0x26u);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlight.mm";
      v9 = 1024;
      v10 = 395;
      v11 = 2082;
      v12 = "[MapsSuggestionsEntry(Flight) departingAirportCode]";
      v13 = 2082;
      v14 = "! [self hasEssentialFlightInfo]";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. This can only be called on an Flight Entry", &v7, 0x26u);
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (id)arrivingAirportCode
{
  v15 = *MEMORY[0x1E69E9840];
  if ([(MapsSuggestionsEntry *)self hasEssentialFlightInfo])
  {
    v3 = [(MapsSuggestionsEntry *)self stringForKey:@"MapsSuggestionsFlightArrivalAirportCodeKey"];
    if ([v3 length]== 3)
    {
      v3 = v3;
      v4 = v3;
      goto LABEL_10;
    }

    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlight.mm";
      v9 = 1024;
      v10 = 405;
      v11 = 2082;
      v12 = "[MapsSuggestionsEntry(Flight) arrivingAirportCode]";
      v13 = 2082;
      v14 = "3u != airportCode.length";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Post-condition: IATA airport codes should always be 3 characters!", &v7, 0x26u);
    }
  }

  else
  {
    v3 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136446978;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsFlight.mm";
      v9 = 1024;
      v10 = 403;
      v11 = 2082;
      v12 = "[MapsSuggestionsEntry(Flight) arrivingAirportCode]";
      v13 = 2082;
      v14 = "! [self hasEssentialFlightInfo]";
      _os_log_impl(&dword_1C5126000, v3, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. This can only be called on an Flight Entry", &v7, 0x26u);
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (BOOL)isLockedOrHidden
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(MapsSuggestionsEntry *)self setForKey:@"MapsSuggestionsAssociatedBundleIDsKey"];
  v3 = v2;
  if (v2 && [v2 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * i);
          if (isExtensionHidden(v9) & 1) != 0 || (isExtensionLocked(v9))
          {
            v10 = 1;
            goto LABEL_16;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v10 = 0;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_16:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)entryWithType:(int64_t)type title:(id)title subtitle:(id)subtitle weight:(double)weight expires:(id)expires sourceSpecificInfo:(id)info
{
  titleCopy = title;
  subtitleCopy = subtitle;
  expiresCopy = expires;
  infoCopy = info;
  v17 = [[MapsSuggestionsEntry alloc] initWithType:type title:titleCopy subtitle:subtitleCopy weight:expiresCopy expires:0 geoMapItem:infoCopy sourceSpecificInfo:weight];

  return v17;
}

- (id)data
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  if (!v3)
  {
    v4 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Error archiving entry %@", &v6, 0xCu);
    }
  }

  return v3;
}

+ (id)entryWithData:(id)data
{
  v18 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v9];
    v5 = v9;
    if (v5 || !v4)
    {
      v7 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v5;
        _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "Error decoding MapsSuggestionsEntry - %@", buf, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      v6 = v4;
    }
  }

  else
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry.mm";
      v12 = 1024;
      v13 = 75;
      v14 = 2082;
      v15 = "+[MapsSuggestionsEntry entryWithData:]";
      v16 = 2082;
      v17 = "data == nil";
      _os_log_impl(&dword_1C5126000, v5, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. data should not be nil", buf, 0x26u);
    }

    v6 = 0;
  }

  return v6;
}

- (MapsSuggestionsEntry)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(MapsSuggestionsEntry *)self initWithType:0 title:&stru_1F444C108];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"mseType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseTitle"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseSubtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseUndecoratedTitle"];
    undecoratedTitle = v5->_undecoratedTitle;
    v5->_undecoratedTitle = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseUndecoratedSubtitle"];
    undecoratedSubtitle = v5->_undecoratedSubtitle;
    v5->_undecoratedSubtitle = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseTitleWhenLocked"];
    titleWhenLocked = v5->_titleWhenLocked;
    v5->_titleWhenLocked = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseSubtitleWhenLocked"];
    subtitleWhenLocked = v5->_subtitleWhenLocked;
    v5->_subtitleWhenLocked = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseUndecoratedTitleWhenLocked"];
    undecoratedTitleWhenLocked = v5->_undecoratedTitleWhenLocked;
    v5->_undecoratedTitleWhenLocked = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseUndecoratedSubtitleWhenLocked"];
    undecoratedSubtitleWhenLocked = v5->_undecoratedSubtitleWhenLocked;
    v5->_undecoratedSubtitleWhenLocked = v20;

    [coderCopy decodeDoubleForKey:@"mseWeight"];
    *&v22 = v22;
    v5->_weight = *&v22;
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseExpires"];
    expires = v5->_expires;
    v5->_expires = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseIconData"];
    iconData = v5->_iconData;
    v5->_iconData = v25;

    v5->_deleted = [coderCopy decodeBoolForKey:@"mseDeleted"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseOriginatingSourceName"];
    originatingSourceName = v5->_originatingSourceName;
    v5->_originatingSourceName = v27;

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mseGEOMapItem"];
    geoMapItem = v5->_geoMapItem;
    v5->_geoMapItem = v29;

    if ([MapsSuggestionsEntry initWithCoder:]::s_onceToken != -1)
    {
      [MapsSuggestionsEntry initWithCoder:];
    }

    v31 = [coderCopy decodeObjectOfClasses:-[MapsSuggestionsEntry initWithCoder:]::s_entryClasses forKey:@"mseSSI"];
    v32 = [v31 mutableCopy];
    sourceSpecificInfo = v5->_sourceSpecificInfo;
    v5->_sourceSpecificInfo = v32;

    v34 = [coderCopy decodeObjectOfClasses:-[MapsSuggestionsEntry initWithCoder:]::s_typeHistoryClasses forKey:@"mseTypeHistory"];
    v35 = [v34 mutableCopy];
    typeHistory = v5->_typeHistory;
    v5->_typeHistory = v35;
  }

  return v5;
}

void __38__MapsSuggestionsEntry_initWithCoder___block_invoke()
{
  v20 = objc_alloc(MEMORY[0x1E695DFD8]);
  v19 = objc_opt_class();
  v18 = objc_opt_class();
  v17 = objc_opt_class();
  v16 = objc_opt_class();
  v0 = objc_opt_class();
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v20 initWithObjects:{v19, v18, v17, v16, v0, v1, v2, v3, v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  v10 = [MapsSuggestionsEntry initWithCoder:]::s_entryClasses;
  [MapsSuggestionsEntry initWithCoder:]::s_entryClasses = v9;

  v11 = objc_alloc(MEMORY[0x1E695DFD8]);
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 initWithObjects:{v12, v13, objc_opt_class(), 0}];
  v15 = [MapsSuggestionsEntry initWithCoder:]::s_typeHistoryClasses;
  [MapsSuggestionsEntry initWithCoder:]::s_typeHistoryClasses = v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[MapsSuggestionsEntry type](self forKey:{"type"), @"mseType"}];
  title = [(MapsSuggestionsEntry *)self title];
  [coderCopy encodeObject:title forKey:@"mseTitle"];

  subtitle = [(MapsSuggestionsEntry *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"mseSubtitle"];

  undecoratedTitle = [(MapsSuggestionsEntry *)self undecoratedTitle];
  [coderCopy encodeObject:undecoratedTitle forKey:@"mseUndecoratedTitle"];

  undecoratedSubtitle = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
  [coderCopy encodeObject:undecoratedSubtitle forKey:@"mseUndecoratedSubtitle"];

  titleWhenLocked = [(MapsSuggestionsEntry *)self titleWhenLocked];
  [coderCopy encodeObject:titleWhenLocked forKey:@"mseTitleWhenLocked"];

  subtitleWhenLocked = [(MapsSuggestionsEntry *)self subtitleWhenLocked];
  [coderCopy encodeObject:subtitleWhenLocked forKey:@"mseSubtitleWhenLocked"];

  undecoratedTitleWhenLocked = [(MapsSuggestionsEntry *)self undecoratedTitleWhenLocked];
  [coderCopy encodeObject:undecoratedTitleWhenLocked forKey:@"mseUndecoratedTitleWhenLocked"];

  undecoratedSubtitleWhenLocked = [(MapsSuggestionsEntry *)self undecoratedSubtitleWhenLocked];
  [coderCopy encodeObject:undecoratedSubtitleWhenLocked forKey:@"mseUndecoratedSubtitleWhenLocked"];

  [(MapsSuggestionsEntry *)self weight];
  [coderCopy encodeDouble:@"mseWeight" forKey:?];
  expires = [(MapsSuggestionsEntry *)self expires];
  [coderCopy encodeObject:expires forKey:@"mseExpires"];

  iconData = [(MapsSuggestionsEntry *)self iconData];
  [coderCopy encodeObject:iconData forKey:@"mseIconData"];

  [coderCopy encodeBool:-[MapsSuggestionsEntry deleted](self forKey:{"deleted"), @"mseDeleted"}];
  originatingSourceName = [(MapsSuggestionsEntry *)self originatingSourceName];
  [coderCopy encodeObject:originatingSourceName forKey:@"mseOriginatingSourceName"];

  geoMapItem = [(MapsSuggestionsEntry *)self geoMapItem];
  [coderCopy encodeObject:geoMapItem forKey:@"mseGEOMapItem"];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17 = [(NSMutableDictionary *)selfCopy->_sourceSpecificInfo copy];
  [coderCopy encodeObject:v17 forKey:@"mseSSI"];

  v18 = [(NSMutableSet *)selfCopy->_typeHistory copy];
  [coderCopy encodeObject:v18 forKey:@"mseTypeHistory"];

  objc_sync_exit(selfCopy);
}

- (MapsSuggestionsEntry)initWithType:(int64_t)type title:(id)title subtitle:(id)subtitle weight:(double)weight expires:(id)expires geoMapItem:(id)item sourceSpecificInfo:(id)info
{
  titleCopy = title;
  subtitleCopy = subtitle;
  expiresCopy = expires;
  itemCopy = item;
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = MapsSuggestionsEntry;
  v20 = [(MapsSuggestionsEntry *)&v27 init];
  v21 = v20;
  if (v20)
  {
    [(MapsSuggestionsEntry *)v20 _overrideType:type, subtitleCopy, titleCopy];
    objc_storeStrong(&v21->_undecoratedTitle, title);
    objc_storeStrong(&v21->_title, v21->_undecoratedTitle);
    objc_storeStrong(&v21->_undecoratedSubtitle, subtitle);
    objc_storeStrong(&v21->_subtitle, v21->_undecoratedSubtitle);
    v21->_weight = weight;
    objc_storeStrong(&v21->_expires, expires);
    objc_storeStrong(&v21->_geoMapItem, item);
    if (infoCopy)
    {
      v22 = [infoCopy mutableCopy];
    }

    else
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    sourceSpecificInfo = v21->_sourceSpecificInfo;
    v21->_sourceSpecificInfo = v22;
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[MapsSuggestionsEntry allocWithZone:?]title:"initWithType:title:subtitle:weight:expires:geoMapItem:sourceSpecificInfo:" subtitle:self->_type weight:self->_title expires:self->_subtitle geoMapItem:self->_expires sourceSpecificInfo:self->_geoMapItem, 0, self->_weight];
  v5 = [(NSString *)self->_undecoratedTitle copy];
  undecoratedTitle = v4->_undecoratedTitle;
  v4->_undecoratedTitle = v5;

  v7 = [(NSString *)self->_undecoratedSubtitle copy];
  undecoratedSubtitle = v4->_undecoratedSubtitle;
  v4->_undecoratedSubtitle = v7;

  v9 = [(NSString *)self->_title copy];
  title = v4->_title;
  v4->_title = v9;

  v11 = [(NSString *)self->_subtitle copy];
  subtitle = v4->_subtitle;
  v4->_subtitle = v11;

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = [(NSString *)selfCopy->_originatingSourceName copy];
  originatingSourceName = v4->_originatingSourceName;
  v4->_originatingSourceName = v14;

  v16 = [(NSMutableDictionary *)selfCopy->_sourceSpecificInfo mutableCopy];
  sourceSpecificInfo = v4->_sourceSpecificInfo;
  v4->_sourceSpecificInfo = v16;

  objc_sync_exit(selfCopy);
  return v4;
}

- (void)setUndecoratedTitle:(id)title
{
  objc_storeStrong(&self->_undecoratedTitle, title);
  titleCopy = title;
  [(MapsSuggestionsEntry *)self setTitle:self->_undecoratedTitle];
}

- (void)setUndecoratedSubtitle:(id)subtitle
{
  objc_storeStrong(&self->_undecoratedSubtitle, subtitle);
  subtitleCopy = subtitle;
  [(MapsSuggestionsEntry *)self setSubtitle:self->_undecoratedSubtitle];
}

- (void)setUndecoratedTitleWhenLocked:(id)locked
{
  objc_storeStrong(&self->_undecoratedTitleWhenLocked, locked);
  lockedCopy = locked;
  [(MapsSuggestionsEntry *)self setTitleWhenLocked:self->_undecoratedTitleWhenLocked];
}

- (void)setUndecoratedSubtitleWhenLocked:(id)locked
{
  objc_storeStrong(&self->_undecoratedSubtitleWhenLocked, locked);
  lockedCopy = locked;
  [(MapsSuggestionsEntry *)self setSubtitleWhenLocked:self->_undecoratedSubtitleWhenLocked];
}

- (void)setDeleted:(BOOL)deleted
{
  self->_deleted = deleted;
  if (deleted)
  {
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [(MapsSuggestionsEntry *)self setExpires:?];
  }
}

- (uint64_t)isSourceSpecificDictionaryEqual:(void *)equal
{
  v3 = a2;
  if (equal)
  {
    equalCopy = equal;
    objc_sync_enter(equalCopy);
    v5 = [equalCopy[2] isEqualToDictionary:v3];
    objc_sync_exit(equalCopy);
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MapsSuggestionsEntry *)self isEqualToEntry:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToEntry:(id)entry
{
  entryCopy = entry;
  if (self == entryCopy)
  {
    v38 = 1;
  }

  else
  {
    type = [(MapsSuggestionsEntry *)self type];
    if (type == [(MapsSuggestionsEntry *)entryCopy type]
      && ((-[MapsSuggestionsEntry undecoratedTitle](self, "undecoratedTitle"), v6 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedTitle](entryCopy, "undecoratedTitle"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 == v7) || (-[MapsSuggestionsEntry undecoratedTitle](self, "undecoratedTitle"), v8 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedTitle](entryCopy, "undecoratedTitle"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToString:v9], v9, v8, (v10 & 1) != 0))
      && ((-[MapsSuggestionsEntry undecoratedSubtitle](self, "undecoratedSubtitle"), v11 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedSubtitle](entryCopy, "undecoratedSubtitle"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12) || (-[MapsSuggestionsEntry undecoratedSubtitle](self, "undecoratedSubtitle"), v13 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedSubtitle](entryCopy, "undecoratedSubtitle"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v13 isEqualToString:v14], v14, v13, (v15 & 1) != 0))
      && ((-[MapsSuggestionsEntry title](self, "title"), v16 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry title](entryCopy, "title"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v16 == v17) || (-[MapsSuggestionsEntry title](self, "title"), v18 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry title](entryCopy, "title"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v18 isEqualToString:v19], v19, v18, (v20 & 1) != 0))
      && ((-[MapsSuggestionsEntry subtitle](self, "subtitle"), v21 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry subtitle](entryCopy, "subtitle"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v21 == v22) || (-[MapsSuggestionsEntry subtitle](self, "subtitle"), v23 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry subtitle](entryCopy, "subtitle"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v23 isEqualToString:v24], v24, v23, (v25 & 1) != 0))
      && ((-[MapsSuggestionsEntry expires](self, "expires"), v26 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry expires](entryCopy, "expires"), v27 = objc_claimAutoreleasedReturnValue(), v27, v26, v26 == v27) || (-[MapsSuggestionsEntry expires](self, "expires"), v28 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry expires](entryCopy, "expires"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v28 isEqualToDate:v29], v29, v28, (v30 & 1) != 0))
      && (([(MapsSuggestionsEntry *)self geoMapItem], v31 = objc_claimAutoreleasedReturnValue(), [(MapsSuggestionsEntry *)entryCopy geoMapItem], v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v31 == v32) || ([(MapsSuggestionsEntry *)self geoMapItem], v33 = objc_claimAutoreleasedReturnValue(), [(MapsSuggestionsEntry *)entryCopy geoMapItem], v34 = objc_claimAutoreleasedReturnValue(), v35 = MapsSuggestionsMapItemsAreEqual(v33, v34, 1, 1, 1), v34, v33, (v35 & 1) != 0)))
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v37 = [(NSMutableDictionary *)selfCopy->_sourceSpecificInfo copy];
      objc_sync_exit(selfCopy);

      v38 = [(MapsSuggestionsEntry *)entryCopy isSourceSpecificDictionaryEqual:v37];
    }

    else
    {
      v38 = 0;
    }
  }

  return v38;
}

- (unint64_t)hash
{
  type = [(MapsSuggestionsEntry *)self type];
  undecoratedTitle = [(MapsSuggestionsEntry *)self undecoratedTitle];
  v5 = [undecoratedTitle hash];
  undecoratedSubtitle = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
  v7 = [undecoratedSubtitle hash];
  uniqueIdentifier = [(MapsSuggestionsEntry *)self uniqueIdentifier];
  v9 = v5 ^ type;
  v10 = v7 ^ [uniqueIdentifier hash];

  return v9 ^ v10;
}

- (NSString)uniqueName
{
  v3 = MEMORY[0x1E696AEC0];
  undecoratedTitle = [(MapsSuggestionsEntry *)self undecoratedTitle];
  uniqueIdentifier = [(MapsSuggestionsEntry *)self uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"MapsSuggestionsEntry '%@' '%@'", undecoratedTitle, uniqueIdentifier];

  return v6;
}

- (id)sourceSpecificInfo
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_sourceSpecificInfo;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setSourceSpecificInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:infoCopy];
  sourceSpecificInfo = selfCopy->_sourceSpecificInfo;
  selfCopy->_sourceSpecificInfo = v5;

  objc_sync_exit(selfCopy);
}

- (void)_setValue:(void *)value forKey:(uint64_t)key class:
{
  v7 = a2;
  valueCopy = value;
  v9 = valueCopy;
  if (self)
  {
    if (valueCopy)
    {
      if (key)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        v11 = selfCopy[2];
        if (v7)
        {
          [v11 setObject:v7 forKey:v9];
        }

        else
        {
          [v11 removeObjectForKey:v9];
        }

        objc_sync_exit(selfCopy);
      }

      else
      {
        v13 = GEOFindOrCreateLog();
        [MapsSuggestionsEntry _setValue:v13 forKey:? class:?];
      }
    }

    else
    {
      v12 = GEOFindOrCreateLog();
      [MapsSuggestionsEntry _setValue:v12 forKey:? class:?];
    }
  }
}

- (void)setSet:(id)set forKey:(id)key
{
  setCopy = set;
  keyCopy = key;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:setCopy forKey:keyCopy class:v7];
}

- (void)setArray:(id)array forKey:(id)key
{
  arrayCopy = array;
  keyCopy = key;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:arrayCopy forKey:keyCopy class:v7];
}

- (void)setString:(id)string forKey:(id)key
{
  stringCopy = string;
  keyCopy = key;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:stringCopy forKey:keyCopy class:v7];
}

- (void)setNumber:(id)number forKey:(id)key
{
  numberCopy = number;
  keyCopy = key;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:numberCopy forKey:keyCopy class:v7];
}

- (void)setInteger:(int64_t)integer forKey:(id)key
{
  keyCopy = key;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:integer];
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v6 forKey:keyCopy class:v7];
}

- (void)setBoolean:(BOOL)boolean forKey:(id)key
{
  booleanCopy = boolean;
  keyCopy = key;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:booleanCopy];
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v6 forKey:keyCopy class:v7];
}

- (void)setDate:(id)date forKey:(id)key
{
  dateCopy = date;
  keyCopy = key;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:dateCopy forKey:keyCopy class:v7];
}

- (void)setURL:(id)l forKey:(id)key
{
  lCopy = l;
  keyCopy = key;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:lCopy forKey:keyCopy class:v7];
}

- (void)setUUID:(id)d forKey:(id)key
{
  dCopy = d;
  keyCopy = key;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:dCopy forKey:keyCopy class:v7];
}

- (void)setData:(id)data forKey:(id)key
{
  dataCopy = data;
  keyCopy = key;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:dataCopy forKey:keyCopy class:v7];
}

- (void)setRouteRequestStorage:(id)storage forKey:(id)key
{
  storageCopy = storage;
  keyCopy = key;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:storageCopy forKey:keyCopy class:v7];
}

- (void)setETA:(id)a forKey:(id)key
{
  aCopy = a;
  keyCopy = key;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:aCopy forKey:keyCopy class:v7];
  if (aCopy)
  {
    v8 = MapsSuggestionsDestinationKey(self);
    v9 = objc_opt_class();
    [(MapsSuggestionsEntry *)self _setValue:v8 forKey:@"MapsSuggestionsDestinationForETAKey" class:v9];
  }

  else
  {
    v10 = objc_opt_class();
    [(MapsSuggestionsEntry *)self _setValue:@"MapsSuggestionsDestinationForETAKey" forKey:v10 class:?];
  }
}

- (void)setMapItemHandleData:(id)data
{
  dataCopy = data;
  v4 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:dataCopy forKey:@"MapsSuggestionsMapItemHandleDataKey" class:v4];
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  v4 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:contactsCopy forKey:@"MapsSuggestionsShortcutContactsKey" class:v4];
}

- (void)setShareETAHandles:(id)handles
{
  handlesCopy = handles;
  v4 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:handlesCopy forKey:@"MapsSuggestionSharedETAHandlesFromFavorite" class:v4];
}

- (BOOL)containsKey:(id)key
{
  v18 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (keyCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [(NSMutableDictionary *)selfCopy->_sourceSpecificInfo objectForKey:keyCopy];
    v7 = v6 != 0;

    objc_sync_exit(selfCopy);
  }

  else
  {
    v8 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry.mm";
      v12 = 1024;
      v13 = 450;
      v14 = 2082;
      v15 = "[MapsSuggestionsEntry containsKey:]";
      v16 = 2082;
      v17 = "nil == (key)";
      _os_log_impl(&dword_1C5126000, v8, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a key", &v10, 0x26u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)_valueForKey:(uint64_t)key class:
{
  v5 = a2;
  v6 = v5;
  if (!self)
  {
    goto LABEL_13;
  }

  if (!v5)
  {
    v11 = GEOFindOrCreateLog();
    [MapsSuggestionsEntry _valueForKey:v11 class:?];
LABEL_13:
    v8 = 0;
    goto LABEL_8;
  }

  if (!key)
  {
    v12 = GEOFindOrCreateLog();
    [MapsSuggestionsEntry _valueForKey:v12 class:?];
    goto LABEL_13;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = [selfCopy[2] objectForKey:v6];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The class of key '%@' is not '%@'", v6, key];
      v14 = GEOFindOrCreateLog();
      [(MapsSuggestionsEntry *)v14 _valueForKey:v8 class:v13];
    }
  }

  objc_sync_exit(selfCopy);
LABEL_8:

  return v8;
}

- (id)setForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];

  return v6;
}

- (id)arrayForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];

  return v6;
}

- (id)stringForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];

  return v6;
}

- (id)numberForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];

  return v6;
}

- (int64_t)integerForKey:(id)key
{
  v14 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];
  v7 = v6;
  if (v6)
  {
    integerValue = [v6 integerValue];
  }

  else
  {
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Defaulting to 0 instead of nil integer value for key '%@'", keyCopy];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = keyCopy;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    integerValue = 0;
  }

  return integerValue;
}

- (unint64_t)uint64ForKey:(id)key
{
  v14 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];
  v7 = v6;
  if (v6)
  {
    unsignedLongLongValue = [v6 unsignedLongLongValue];
  }

  else
  {
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Defaulting to 0 instead of nil integer value for key '%@'", keyCopy];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = keyCopy;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    unsignedLongLongValue = 0;
  }

  return unsignedLongLongValue;
}

- (BOOL)BOOLeanForKey:(id)key
{
  v14 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    keyCopy = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Defaulting to NO instead of nil BOOLean value for key '%@'", keyCopy];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = keyCopy;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)BOOLeanForKey:(id)key is:(BOOL)is
{
  isCopy = is;
  keyCopy = key;
  v7 = objc_opt_class();
  v8 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 BOOLValue] ^ isCopy ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)dateForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];

  return v6;
}

- (id)URLForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];

  return v6;
}

- (id)UUIDForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];

  return v6;
}

- (id)dataForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];

  return v6;
}

- (id)routeRequestStorageForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];

  return v6;
}

- (id)ETAForKey:(id)key
{
  keyCopy = key;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:keyCopy class:v5];

  return v6;
}

- (id)contacts
{
  v3 = objc_opt_class();

  return [(MapsSuggestionsEntry *)self _valueForKey:v3 class:?];
}

- (NSString)shortDescription
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  title = [(MapsSuggestionsEntry *)selfCopy title];
  subtitle = [(MapsSuggestionsEntry *)selfCopy subtitle];
  v6 = NSStringFromMapsSuggestionsEntryType([(MapsSuggestionsEntry *)selfCopy type]);
  uniqueIdentifier = [(MapsSuggestionsEntry *)selfCopy uniqueIdentifier];
  v8 = [v3 initWithFormat:@"'%@' / '%@' (%@) %@", title, subtitle, v6, uniqueIdentifier];

  objc_sync_exit(selfCopy);

  return v8;
}

- (id)fullDescriptionForCurrentLocationEntries
{
  v39 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v27 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v2 = NSStringFromMapsSuggestionsEntryType([self type]);
    [v27 appendFormat:@"-- %@ --\n", v2];

    [v27 appendFormat:@" pointer:   %p\n", self];
    subtitle = [self subtitle];
    [v27 appendFormat:@" subtitle: '%@'\n", subtitle];

    originatingSourceName = [self originatingSourceName];
    [v27 appendFormat:@" origin:    %@\n", originatingSourceName];

    expires = [self expires];
    v6 = MapsSuggestionsAMPMStringFromDate(expires);
    [v27 appendFormat:@" expires:   %@\n", v6];

    [self weight];
    *&v7 = v7;
    [v27 appendFormat:@" weight:    %.3f\n", *&v7];
    geoMapItem = [self geoMapItem];
    v9 = @"<present>";
    if (!geoMapItem)
    {
      v9 = @"<absent>";
    }

    [v27 appendFormat:@" mapItem:   %@\n", v9];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    v26 = selfCopy;
    [v27 appendFormat:@" specifics: %lu entries: {\n", objc_msgSend(selfCopy[2], "count")];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    allKeys = [selfCopy[2] allKeys];
    v12 = [allKeys sortedArrayUsingSelector:sel_compare_];

    obj = v12;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v13)
    {
      v14 = *v30;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v30 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v17 = [&unk_1F4471620 countByEnumeratingWithState:&v33 objects:v38 count:16];
          if (v17)
          {
            v18 = *v34;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v34 != v18)
                {
                  objc_enumerationMutation(&unk_1F4471620);
                }

                v20 = *(*(&v33 + 1) + 8 * j);
                if ([v16 hasPrefix:v20])
                {
                  v21 = [v16 substringFromIndex:{objc_msgSend(v20, "length")}];
                  goto LABEL_19;
                }
              }

              v17 = [&unk_1F4471620 countByEnumeratingWithState:&v33 objects:v38 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v21 = v16;
LABEL_19:
          v22 = v21;

          if (([v16 isEqualToString:@"MapsSuggestionsLatitudeKey"] & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"MapsSuggestionsLongitudeKey") & 1) == 0 && (objc_msgSend(v16, "isEqualToString:", @"MapsSuggestionsCurrentLocationOfInterestIdentifier") & 1) == 0)
          {
            v23 = [v26[2] objectForKeyedSubscript:v16];
            [v27 appendFormat:@" . %@ => %@\n", v22, v23];
          }
        }

        v12 = obj;
        v13 = [obj countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v13);
    }

    [v27 appendString:@" }"];
    objc_sync_exit(v26);

    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v27];
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

- (NSString)fullDescription
{
  v41 = *MEMORY[0x1E69E9840];
  if ([(MapsSuggestionsEntry *)self type]== 25)
  {
    fullDescriptionForCurrentLocationEntries = [(MapsSuggestionsEntry *)self fullDescriptionForCurrentLocationEntries];
  }

  else
  {
    v30 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v4 = NSStringFromMapsSuggestionsEntryType([(MapsSuggestionsEntry *)self type]);
    [v30 appendFormat:@"-- %@ --\n", v4];

    [v30 appendFormat:@" pointer:   %p\n", self];
    title = [(MapsSuggestionsEntry *)self title];
    [v30 appendFormat:@" title:    '%@'\n", title];

    subtitle = [(MapsSuggestionsEntry *)self subtitle];
    [v30 appendFormat:@" subtitle: '%@'\n", subtitle];

    uniqueIdentifier = [(MapsSuggestionsEntry *)self uniqueIdentifier];
    [v30 appendFormat:@" uniqueID:  %@\n", uniqueIdentifier];

    originatingSourceName = [(MapsSuggestionsEntry *)self originatingSourceName];
    [v30 appendFormat:@" origin:    %@\n", originatingSourceName];

    expires = [(MapsSuggestionsEntry *)self expires];
    v10 = MapsSuggestionsAMPMStringFromDate(expires);
    [v30 appendFormat:@" expires:   %@\n", v10];

    [(MapsSuggestionsEntry *)self weight];
    *&v11 = v11;
    [v30 appendFormat:@" weight:    %.3f\n", *&v11];
    geoMapItem = [(MapsSuggestionsEntry *)self geoMapItem];
    v13 = NSStringFromMapsSuggestionsMapItem(geoMapItem);
    [v30 appendFormat:@" mapItem:   %@\n", v13];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    [v30 appendFormat:@" specifics: %lu entries: {\n", -[NSMutableDictionary count](selfCopy->_sourceSpecificInfo, "count")];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    allKeys = [(NSMutableDictionary *)selfCopy->_sourceSpecificInfo allKeys];
    v16 = [allKeys sortedArrayUsingSelector:sel_compare_];

    obj = v16;
    v17 = [v16 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v17)
    {
      v18 = *v32;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v32 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v31 + 1) + 8 * i);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v21 = [&unk_1F4471620 countByEnumeratingWithState:&v35 objects:v40 count:16];
          if (v21)
          {
            v22 = *v36;
            while (2)
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v36 != v22)
                {
                  objc_enumerationMutation(&unk_1F4471620);
                }

                v24 = *(*(&v35 + 1) + 8 * j);
                if ([v20 hasPrefix:v24])
                {
                  v25 = [v20 substringFromIndex:{objc_msgSend(v24, "length")}];
                  goto LABEL_18;
                }
              }

              v21 = [&unk_1F4471620 countByEnumeratingWithState:&v35 objects:v40 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }
          }

          v25 = v20;
LABEL_18:
          v26 = v25;

          if ([v20 isEqualToString:@"MapsSuggestionsResumeRouteRouteRequestStorage"] && (MapsSuggestionsLoggingIsVerbose() & 1) == 0)
          {
            v27 = [(NSMutableDictionary *)selfCopy->_sourceSpecificInfo objectForKeyedSubscript:v20];
            [v30 appendFormat:@" . %@ => %lu waypoints:\n", v26, objc_msgSend(v27, "waypointsCount")];
          }

          else
          {
            v27 = [(NSMutableDictionary *)selfCopy->_sourceSpecificInfo objectForKeyedSubscript:v20];
            [v30 appendFormat:@" . %@ => %@\n", v26, v27];
          }
        }

        v16 = obj;
        v17 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v17);
    }

    [v30 appendString:@" }"];
    objc_sync_exit(selfCopy);

    fullDescriptionForCurrentLocationEntries = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v30];
  }

  return fullDescriptionForCurrentLocationEntries;
}

- (void)setAvailableRemovalBehavior:(int64_t)behavior
{
  v4 = [(MapsSuggestionsEntry *)self availableRemovalBehaviors]| behavior;

  [(MapsSuggestionsEntry *)self setInteger:v4 forKey:@"MapsSuggestionsRemovalBehaviorKey"];
}

- (void)resetAvailableRemovalBehavior:(int64_t)behavior
{
  v4 = [(MapsSuggestionsEntry *)self availableRemovalBehaviors]& ~behavior;

  [(MapsSuggestionsEntry *)self setInteger:v4 forKey:@"MapsSuggestionsRemovalBehaviorKey"];
}

- (void)setLocationCoordinateKeysFromLocation:(id)location
{
  v20 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v5 = locationCopy;
  if (!locationCopy)
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry.mm";
      v14 = 1024;
      v15 = 704;
      v16 = 2082;
      v17 = "[MapsSuggestionsEntry setLocationCoordinateKeysFromLocation:]";
      v18 = 2082;
      v19 = "nil == (location)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Location to set the keys cannot be nil", &v12, 0x26u);
    }

    goto LABEL_9;
  }

  [locationCopy coordinate];
  if (!CLLocationCoordinate2DIsValid(v21))
  {
    v11 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = 136446978;
      v13 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry.mm";
      v14 = 1024;
      v15 = 705;
      v16 = 2082;
      v17 = "[MapsSuggestionsEntry setLocationCoordinateKeysFromLocation:]";
      v18 = 2082;
      v19 = "!CLLocationCoordinate2DIsValid(location.coordinate)";
      _os_log_impl(&dword_1C5126000, v11, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Coordinates are invalid", &v12, 0x26u);
    }

LABEL_9:

    goto LABEL_10;
  }

  v6 = MEMORY[0x1E696AD98];
  [v5 coordinate];
  v7 = [v6 numberWithDouble:?];
  [(MapsSuggestionsEntry *)self setNumber:v7 forKey:@"MapsSuggestionsLatitudeKey"];

  v8 = MEMORY[0x1E696AD98];
  [v5 coordinate];
  v10 = [v8 numberWithDouble:v9];
  [(MapsSuggestionsEntry *)self setNumber:v10 forKey:@"MapsSuggestionsLongitudeKey"];

LABEL_10:
}

- (NSString)serializedHexString
{
  data = [(MapsSuggestionsEntry *)self data];
  if (data)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    _geo_hexString = [data _geo_hexString];
    v5 = [v3 initWithFormat:@"%@%@", @"{16}", _geo_hexString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)serializedBase64String
{
  data = [(MapsSuggestionsEntry *)self data];
  if (data)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [data base64EncodedStringWithOptions:0];
    v5 = [v3 initWithFormat:@"%@%@", @"{64}", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)entryFromSerializedHexString:(id)string hasPrefix:(BOOL)prefix
{
  prefixCopy = prefix;
  stringCopy = string;
  if (prefixCopy)
  {
    v7 = [stringCopy substringFromIndex:{objc_msgSend(@"{16}", "length")}];
    v8 = [self entryFromSerializedHexString:v7 hasPrefix:0];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E695DEF0] _geo_dataForHexString:stringCopy];
  if (v7)
  {
    v8 = [MapsSuggestionsEntry entryWithData:v7];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)entryFromSerializedBase64String:(id)string hasPrefix:(BOOL)prefix
{
  prefixCopy = prefix;
  stringCopy = string;
  if (prefixCopy)
  {
    v7 = [stringCopy substringFromIndex:{objc_msgSend(@"{64}", "length")}];
    v8 = [self entryFromSerializedBase64String:v7 hasPrefix:0];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:stringCopy options:0];
  if (v7)
  {
    v8 = [MapsSuggestionsEntry entryWithData:v7];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)entryFromSerializedString:(id)string
{
  stringCopy = string;
  v5 = MapsSuggestionsStringDataEncodingTypeOfString(stringCopy);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [self entryFromSerializedBase64String:stringCopy hasPrefix:1];
    }

    else
    {
      [self entryFromSerializedHexString:stringCopy hasPrefix:v5 == 3];
    }
    v9 = ;
    goto LABEL_13;
  }

  if (v5)
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "Cannot decode an empty string";
      v8 = buf;
      goto LABEL_11;
    }
  }

  else
  {
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 0;
      v7 = "Cannot determine the encoding of this string";
      v8 = &v11;
LABEL_11:
      _os_log_impl(&dword_1C5126000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
    }
  }

  v9 = 0;
LABEL_13:

  return v9;
}

- (id)objectForJSON
{
  v22[6] = *MEMORY[0x1E69E9840];
  v21[0] = @"type";
  v19 = NSStringFromMapsSuggestionsEntryType([(MapsSuggestionsEntry *)self type]);
  v18 = MSg::jsonFor(v19);
  v22[0] = v18;
  v21[1] = @"title";
  title = [(MapsSuggestionsEntry *)self title];
  v16 = MSg::jsonFor(title);
  v22[1] = v16;
  v21[2] = @"subtitle";
  subtitle = [(MapsSuggestionsEntry *)self subtitle];
  v14 = MSg::jsonFor(subtitle);
  v22[2] = v14;
  v21[3] = @"location";
  v3 = [(MapsSuggestionsEntry *)self numberForKey:@"MapsSuggestionsLatitudeKey"];
  v4 = MSg::jsonFor(v3);
  v20[0] = v4;
  v5 = [(MapsSuggestionsEntry *)self numberForKey:@"MapsSuggestionsLongitudeKey"];
  v6 = MSg::jsonFor(v5);
  v20[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
  v22[3] = v7;
  v21[4] = @"address";
  v8 = [(MapsSuggestionsEntry *)self stringForKey:@"MapsSuggestionsDestinationAddressKey"];
  v9 = MSg::jsonFor(v8);
  v22[4] = v9;
  v21[5] = @"eta";
  v10 = [(MapsSuggestionsEntry *)self ETAForKey:@"MapsSuggestionsETAKey"];
  v11 = MSg::jsonFor(v10);
  v22[5] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:6];

  return v12;
}

- (void)_overrideType:(int64_t)type
{
  self->_type = type;
  obj = self;
  objc_sync_enter(obj);
  typeHistory = obj->_typeHistory;
  if (!typeHistory)
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:1];
    v6 = obj->_typeHistory;
    obj->_typeHistory = v5;

    typeHistory = obj->_typeHistory;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  [(NSMutableSet *)typeHistory addObject:v7];

  objc_sync_exit(obj);
}

- (BOOL)_wasEverOfType:(int64_t)type
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  typeHistory = selfCopy->_typeHistory;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:type];
  LOBYTE(typeHistory) = [(NSMutableSet *)typeHistory containsObject:v6];

  objc_sync_exit(selfCopy);
  return typeHistory;
}

- (BOOL)_wasEverOneOfTypes:(id)types
{
  selfCopy = self;
  typesCopy = types;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableSet *)selfCopy->_typeHistory intersectsSet:typesCopy];

  objc_sync_exit(selfCopy);
  return v6;
}

- (id)copyWithNewType:(int64_t)type
{
  type = self->_type;
  self->_type = type;
  result = [(MapsSuggestionsEntry *)self copy];
  self->_type = type;
  return result;
}

- (BOOL)isMultiPointRoute
{
  if ([(MapsSuggestionsEntry *)self type]!= 11 || ![(MapsSuggestionsEntry *)self containsKey:@"MapsSuggestionsResumeRouteWaypointIndex"])
  {
    return 0;
  }

  v3 = [(MapsSuggestionsEntry *)self routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)hasMultipleWaypointsLeft
{
  result = 0;
  if ([(MapsSuggestionsEntry *)self isMultiPointRoute])
  {
    v3 = [(MapsSuggestionsEntry *)self routeRequestStorageForKey:@"MapsSuggestionsResumeRouteRouteRequestStorage"];
    waypoints = [v3 waypoints];
    v5 = [(MapsSuggestionsEntry *)self uint64ForKey:@"MapsSuggestionsResumeRouteWaypointIndex"];
    v6 = [waypoints count];

    if (v6 > v5 + 1)
    {
      return 1;
    }
  }

  return result;
}

- (void)_selectETAFrom:(void *)from destinationKey:(void *)key otherEntry:
{
  v17 = a2;
  fromCopy = from;
  keyCopy = key;
  if (self)
  {
    v9 = MapsSuggestionsDestinationKey(self);
    v10 = [self stringForKey:@"MapsSuggestionsDestinationForETAKey"];
    v11 = [v9 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      if ([v9 isEqualToString:fromCopy])
      {
        selfCopy2 = self;
        v13 = v17;
LABEL_8:
        [selfCopy2 setETA:v13 forKey:@"MapsSuggestionsETAKey"];
        goto LABEL_9;
      }

      v14 = [keyCopy stringForKey:@"MapsSuggestionsDestinationForETAKey"];
      v15 = [v9 isEqualToString:v14];

      if (!v15)
      {
        selfCopy2 = self;
        v13 = 0;
        goto LABEL_8;
      }

      v16 = [keyCopy ETAForKey:@"MapsSuggestionsETAKey"];
      [self setETA:v16 forKey:@"MapsSuggestionsETAKey"];
    }

LABEL_9:
  }
}

- (void)_setValue:(NSObject *)a1 forKey:class:.cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a class", v4, v5, v6, v7, 2u);
  }
}

- (void)_setValue:(NSObject *)a1 forKey:class:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a key", v4, v5, v6, v7, 2u);
  }
}

- (void)_valueForKey:(void *)a3 class:.cold.1(NSObject *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v7 = 136315394;
    v8 = "[MapsSuggestionsEntry _valueForKey:class:]";
    v9 = 2112;
    v10 = a3;
    _os_log_impl(&dword_1C5126000, a1, OS_LOG_TYPE_ERROR, "%s failure: %@", &v7, 0x16u);
  }

  v6 = a2;
}

- (void)_valueForKey:(NSObject *)a1 class:.cold.2(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a class", v4, v5, v6, v7, 2u);
  }
}

- (void)_valueForKey:(NSObject *)a1 class:.cold.3(NSObject *a1)
{
  if (OUTLINED_FUNCTION_11_0(a1, *MEMORY[0x1E69E9840]))
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_2_1(&dword_1C5126000, v2, v3, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a key", v4, v5, v6, v7, 2u);
  }
}

@end