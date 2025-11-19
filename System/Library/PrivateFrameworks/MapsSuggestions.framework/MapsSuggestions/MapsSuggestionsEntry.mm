@interface MapsSuggestionsEntry
+ (id)entryFromSerializedBase64String:(id)a3 hasPrefix:(BOOL)a4;
+ (id)entryFromSerializedHexString:(id)a3 hasPrefix:(BOOL)a4;
+ (id)entryFromSerializedString:(id)a3;
+ (id)entryWithData:(id)a3;
+ (id)entryWithType:(int64_t)a3 title:(id)a4 subtitle:(id)a5 weight:(double)a6 expires:(id)a7 sourceSpecificInfo:(id)a8;
- (BOOL)BOOLeanForKey:(id)a3;
- (BOOL)BOOLeanForKey:(id)a3 is:(BOOL)a4;
- (BOOL)_wasEverOfType:(int64_t)a3;
- (BOOL)_wasEverOneOfTypes:(id)a3;
- (BOOL)containsKey:(id)a3;
- (BOOL)expiresBeforeEntry:(id)a3;
- (BOOL)hasEssentialFlightInfo;
- (BOOL)hasExpired;
- (BOOL)hasFullFlightInfoAndGate;
- (BOOL)hasMultipleWaypointsLeft;
- (BOOL)hasStartAndEndTime;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEntry:(id)a3;
- (BOOL)isLockedOrHidden;
- (BOOL)isMultiPointRoute;
- (BOOL)isPureShortcut;
- (BOOL)isShortcutForSetup;
- (BOOL)startsBeforeEntry:(id)a3;
- (BOOL)updateUndecoratedSubtitle:(id)a3;
- (BOOL)updateUndecoratedTitle:(id)a3;
- (MapsSuggestionsEntry)initWithCoder:(id)a3;
- (MapsSuggestionsEntry)initWithType:(int64_t)a3 title:(id)a4 subtitle:(id)a5 weight:(double)a6 expires:(id)a7 geoMapItem:(id)a8 sourceSpecificInfo:(id)a9;
- (NSString)fullDescription;
- (NSString)serializedBase64String;
- (NSString)serializedHexString;
- (NSString)shortDescription;
- (NSString)uniqueIdentifier;
- (NSString)uniqueName;
- (id)ETAForKey:(id)a3;
- (id)URLForKey:(id)a3;
- (id)UUIDForKey:(id)a3;
- (id)_valueForKey:(uint64_t)a3 class:;
- (id)arrayForKey:(id)a3;
- (id)arrivingAirportCode;
- (id)contacts;
- (id)copyWithNewType:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)data;
- (id)dataForKey:(id)a3;
- (id)dateForKey:(id)a3;
- (id)departingAirportCode;
- (id)fullDescriptionForCurrentLocationEntries;
- (id)mapItemHandleData;
- (id)numberForKey:(id)a3;
- (id)objectForJSON;
- (id)routeRequestStorageForKey:(id)a3;
- (id)setForKey:(id)a3;
- (id)sourceSpecificInfo;
- (id)stringForKey:(id)a3;
- (int64_t)integerForKey:(id)a3;
- (uint64_t)isSourceSpecificDictionaryEqual:(void *)a1;
- (unint64_t)hash;
- (unint64_t)uint64ForKey:(id)a3;
- (void)_overrideType:(int64_t)a3;
- (void)_selectETAFrom:(void *)a3 destinationKey:(void *)a4 otherEntry:;
- (void)_setValue:(void *)a3 forKey:(uint64_t)a4 class:;
- (void)encodeWithCoder:(id)a3;
- (void)mergeFromSuggestionEntry:(id)a3 behavior:(unint64_t)a4 protectTitles:(BOOL)a5 protectTitleDecorations:(BOOL)a6 protectMapItem:(BOOL)a7 protectWeight:(BOOL)a8 protectExpiration:(BOOL)a9 protectIcon:(BOOL)a10;
- (void)mergeSpecificsFromSuggestionEntry:(id)a3 behavior:(unint64_t)a4;
- (void)replaceByEntry:(id)a3 forceDecoratedOverwrites:(BOOL)a4;
- (void)resetAvailableRemovalBehavior:(int64_t)a3;
- (void)setArray:(id)a3 forKey:(id)a4;
- (void)setAvailableRemovalBehavior:(int64_t)a3;
- (void)setBoolean:(BOOL)a3 forKey:(id)a4;
- (void)setContacts:(id)a3;
- (void)setData:(id)a3 forKey:(id)a4;
- (void)setDate:(id)a3 forKey:(id)a4;
- (void)setDeleted:(BOOL)a3;
- (void)setETA:(id)a3 forKey:(id)a4;
- (void)setInteger:(int64_t)a3 forKey:(id)a4;
- (void)setLocationCoordinateKeysFromLocation:(id)a3;
- (void)setMapItemHandleData:(id)a3;
- (void)setNumber:(id)a3 forKey:(id)a4;
- (void)setRouteRequestStorage:(id)a3 forKey:(id)a4;
- (void)setSet:(id)a3 forKey:(id)a4;
- (void)setShareETAHandles:(id)a3;
- (void)setSourceSpecificInfo:(id)a3;
- (void)setString:(id)a3 forKey:(id)a4;
- (void)setURL:(id)a3 forKey:(id)a4;
- (void)setUUID:(id)a3 forKey:(id)a4;
- (void)setUndecoratedSubtitle:(id)a3;
- (void)setUndecoratedSubtitleWhenLocked:(id)a3;
- (void)setUndecoratedTitle:(id)a3;
- (void)setUndecoratedTitleWhenLocked:(id)a3;
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
  v3 = [(MapsSuggestionsEntry *)self expires];

  if (v3)
  {
    v4 = [(MapsSuggestionsEntry *)self expires];
    LOBYTE(v3) = MapsSuggestionsIsInThePast(v4);
  }

  return v3;
}

- (BOOL)updateUndecoratedTitle:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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

  v5 = [(MapsSuggestionsEntry *)self undecoratedTitle];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [v4 copy];
  [(MapsSuggestionsEntry *)self setUndecoratedTitle:v7];

  v8 = 1;
LABEL_8:

  return v8;
}

- (BOOL)updateUndecoratedSubtitle:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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

  v5 = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
  v6 = [v4 isEqualToString:v5];

  if (v6)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v7 = [v4 copy];
  [(MapsSuggestionsEntry *)self setUndecoratedSubtitle:v7];

  v8 = 1;
LABEL_8:

  return v8;
}

- (BOOL)startsBeforeEntry:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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

  if (!-[MapsSuggestionsEntry hasStartTime](self, "hasStartTime") || ![v4 hasStartTime])
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v5 = [(MapsSuggestionsEntry *)self startTime];
  v6 = [v4 startTime];
  [v5 timeIntervalSinceDate:v6];
  v8 = v7 < 0.0;

LABEL_9:
  return v8;
}

- (BOOL)expiresBeforeEntry:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
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

  v6 = [v4 expires];

  if (!v6)
  {
    v11 = 1;
    goto LABEL_10;
  }

  v7 = [(MapsSuggestionsEntry *)self expires];

  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = [(MapsSuggestionsEntry *)self expires];
  v9 = [v5 expires];
  [v8 timeIntervalSinceDate:v9];
  v11 = v10 < 0.0;

LABEL_10:
  return v11;
}

- (void)mergeFromSuggestionEntry:(id)a3 behavior:(unint64_t)a4 protectTitles:(BOOL)a5 protectTitleDecorations:(BOOL)a6 protectMapItem:(BOOL)a7 protectWeight:(BOOL)a8 protectExpiration:(BOOL)a9 protectIcon:(BOOL)a10
{
  v12 = a6;
  v13 = a5;
  v94 = *MEMORY[0x1E69E9840];
  v16 = a3;
  if (!v16)
  {
    v24 = GEOFindOrCreateLog();
    if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_ERROR))
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
      _os_log_impl(&dword_1C5126000, &v24->super, OS_LOG_TYPE_ERROR, v25, buf, 0x26u);
    }

LABEL_113:

    goto LABEL_114;
  }

  if (![(MapsSuggestionsEntry *)self isEqualToEntry:v16])
  {
    v17 = a9;
    if (a4)
    {
      if (a4 == 1)
      {
        if (v13)
        {
          goto LABEL_69;
        }

        v18 = [(MapsSuggestionsEntry *)self title];
        v19 = [(MapsSuggestionsEntry *)v16 undecoratedTitle];
        if (v19 && (v20 = v19, -[MapsSuggestionsEntry undecoratedTitle](v16, "undecoratedTitle"), v21 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedTitle](self, "undecoratedTitle"), v22 = objc_claimAutoreleasedReturnValue(), v23 = [v21 isEqualToString:v22], v22, v21, v20, (v23 & 1) == 0))
        {
          v43 = [(MapsSuggestionsEntry *)v16 undecoratedTitle];
          [(MapsSuggestionsEntry *)self setUndecoratedTitle:v43];
        }

        else if (v12)
        {
          goto LABEL_56;
        }

        v44 = [(MapsSuggestionsEntry *)v16 title];

        v18 = v44;
LABEL_56:
        if (v18)
        {
          v45 = [(MapsSuggestionsEntry *)self title];
          v46 = [v18 isEqualToString:v45];

          if ((v46 & 1) == 0)
          {
            [(MapsSuggestionsEntry *)self setTitle:v18];
          }
        }

        v13 = [(MapsSuggestionsEntry *)self subtitle];
        v47 = [(MapsSuggestionsEntry *)v16 undecoratedSubtitle];
        if (v47 && (v48 = v47, -[MapsSuggestionsEntry undecoratedSubtitle](v16, "undecoratedSubtitle"), v49 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedSubtitle](self, "undecoratedSubtitle"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v49 isEqualToString:v50], v50, v49, v48, (v51 & 1) == 0))
        {
          v52 = [(MapsSuggestionsEntry *)v16 undecoratedSubtitle];
          [(MapsSuggestionsEntry *)self setUndecoratedSubtitle:v52];
        }

        else if (v12)
        {
LABEL_65:
          v17 = a9;
          if (v13)
          {
            v12 = [(MapsSuggestionsEntry *)self subtitle];
            v53 = [v13 isEqualToString:v12];

            if ((v53 & 1) == 0)
            {
              [(MapsSuggestionsEntry *)self setSubtitle:v13];
            }
          }

LABEL_69:
          if (a7)
          {
            goto LABEL_84;
          }

          v54 = [(MapsSuggestionsEntry *)self geoMapItem];
          if (v54)
          {
            v12 = [(MapsSuggestionsEntry *)self geoMapItem];
            v13 = [(MapsSuggestionsEntry *)v16 geoMapItem];
            if (([v12 isEqual:v13] & 1) == 0)
            {

              goto LABEL_80;
            }

            v85 = v17;
          }

          else
          {
            v85 = v17;
          }

          v55 = [(MapsSuggestionsEntry *)v16 geoMapItem];
          if (!v55)
          {

            v17 = v85;
            if (!v54)
            {
              goto LABEL_84;
            }

            goto LABEL_83;
          }

          v56 = [(MapsSuggestionsEntry *)v16 geoMapItem];
          v57 = [(MapsSuggestionsEntry *)self geoMapItem];
          v58 = [v56 isEqual:v57];

          if (v54)
          {
          }

          v17 = v85;
          if (v58)
          {
LABEL_84:
            if (!a8)
            {
              [(MapsSuggestionsEntry *)self weight];
              v60 = v59;
              [(MapsSuggestionsEntry *)v16 weight];
              if (v60 <= v61)
              {
                v62 = v16;
              }

              else
              {
                v62 = self;
              }

              [(MapsSuggestionsEntry *)v62 weight];
              [(MapsSuggestionsEntry *)self setWeight:?];
            }

            v63 = [(MapsSuggestionsEntry *)self type];
            if (v63 != [(MapsSuggestionsEntry *)v16 type])
            {
              [(MapsSuggestionsEntry *)self _overrideType:[(MapsSuggestionsEntry *)v16 type]];
            }

            if (v17)
            {
              goto LABEL_100;
            }

            v64 = self;
            v65 = v16;
            if (!v64)
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

              v66 = 0;
              goto LABEL_99;
            }

            if ([(MapsSuggestionsEntry *)v64 deleted]|| [(MapsSuggestionsEntry *)v65 deleted])
            {
              v66 = [MEMORY[0x1E695DF00] distantPast];
LABEL_99:

              [(MapsSuggestionsEntry *)v64 setExpires:v66];
LABEL_100:
              if (!a10)
              {
                v68 = [(MapsSuggestionsEntry *)v16 iconData];
                [(MapsSuggestionsEntry *)self setIconData:v68];
              }

              v69 = [(MapsSuggestionsEntry *)v16 deleted]|| [(MapsSuggestionsEntry *)self deleted];
              [(MapsSuggestionsEntry *)self setDeleted:v69];
              [(MapsSuggestionsEntry *)self mergeSpecificsFromSuggestionEntry:v16 behavior:1];
              v24 = self;
              v70 = v16;
              if (v24)
              {
                v71 = [(MapsSuggestionsEntry *)v24 originatingSourceName];
                v72 = [(MapsSuggestionsEntry *)v70 originatingSourceName];
                if (v71 && ([v71 isEqualToString:v72]& 1) == 0)
                {
                  [(MapsSuggestionsEntry *)v24 setString:v72 forKey:@"MapsSuggestionsNewSourceKey"];
                }
              }

              else
              {
                v71 = GEOFindOrCreateLog();
                if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136446978;
                  v87 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
                  v88 = 1024;
                  v89 = 81;
                  v90 = 2082;
                  v91 = "void _mergeOriginsOfEntries(MapsSuggestionsEntry *__strong, MapsSuggestionsEntry *__strong)";
                  v92 = 2082;
                  v93 = "nil == (oriEntry)";
                  _os_log_impl(&dword_1C5126000, v71, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires suggestion oriEntry", buf, 0x26u);
                }
              }

              goto LABEL_113;
            }

            v73 = [(MapsSuggestionsEntry *)v64 expires];
            if (v73)
            {
            }

            else
            {
              v66 = [(MapsSuggestionsEntry *)v65 expires];

              if (!v66)
              {
                goto LABEL_99;
              }
            }

            v75 = [(MapsSuggestionsEntry *)v64 expires];

            v76 = [(MapsSuggestionsEntry *)v65 expires];
            v66 = v76;
            if (v75)
            {

              v77 = [(MapsSuggestionsEntry *)v64 expires];
              v78 = v77;
              if (v66)
              {
                v79 = [(MapsSuggestionsEntry *)v65 expires];
                v66 = [v78 laterDate:v79];
              }

              else
              {
                v66 = v77;
              }
            }

            goto LABEL_99;
          }

LABEL_80:
          v54 = [(MapsSuggestionsEntry *)v16 geoMapItem];
          [(MapsSuggestionsEntry *)self setGeoMapItem:v54];
LABEL_83:

          goto LABEL_84;
        }

        v12 = [(MapsSuggestionsEntry *)v16 subtitle];

        v13 = v12;
        goto LABEL_65;
      }

      v24 = GEOFindOrCreateLog();
      if (os_log_type_enabled(&v24->super, OS_LOG_TYPE_ERROR))
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

    if (v13)
    {
      goto LABEL_29;
    }

    v26 = [(MapsSuggestionsEntry *)self undecoratedTitle];
    if (!v26)
    {
      v27 = [(MapsSuggestionsEntry *)v16 undecoratedTitle];

      if (!v27)
      {
        goto LABEL_17;
      }

      v26 = [(MapsSuggestionsEntry *)v16 undecoratedTitle];
      [(MapsSuggestionsEntry *)self setUndecoratedTitle:v26];
    }

LABEL_17:
    v28 = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
    if (!v28)
    {
      v29 = [(MapsSuggestionsEntry *)v16 undecoratedSubtitle];

      if (!v29)
      {
        goto LABEL_21;
      }

      v28 = [(MapsSuggestionsEntry *)v16 undecoratedSubtitle];
      [(MapsSuggestionsEntry *)self setUndecoratedSubtitle:v28];
    }

LABEL_21:
    v30 = [(MapsSuggestionsEntry *)self title];
    if (!v30)
    {
      v31 = [(MapsSuggestionsEntry *)v16 title];

      if (!v31)
      {
LABEL_25:
        v32 = [(MapsSuggestionsEntry *)self subtitle];
        if (!v32)
        {
          v33 = [(MapsSuggestionsEntry *)v16 subtitle];

          if (!v33)
          {
            goto LABEL_29;
          }

          v32 = [(MapsSuggestionsEntry *)v16 subtitle];
          [(MapsSuggestionsEntry *)self setSubtitle:v32];
        }

LABEL_29:
        if (!a7)
        {
          v34 = [(MapsSuggestionsEntry *)self geoMapItem];
          if (v34)
          {
LABEL_33:

            goto LABEL_34;
          }

          v35 = [(MapsSuggestionsEntry *)v16 geoMapItem];

          if (v35)
          {
            v34 = [(MapsSuggestionsEntry *)v16 geoMapItem];
            [(MapsSuggestionsEntry *)self setGeoMapItem:v34];
            goto LABEL_33;
          }
        }

LABEL_34:
        if (!a8)
        {
          [(MapsSuggestionsEntry *)self weight];
          if (v36 == 0.0)
          {
            [(MapsSuggestionsEntry *)v16 weight];
            if (v37 != 0.0)
            {
              [(MapsSuggestionsEntry *)v16 weight];
              [(MapsSuggestionsEntry *)self setWeight:?];
            }
          }
        }

        if (a9)
        {
          goto LABEL_50;
        }

        v38 = self;
        v39 = v16;
        if (!v38)
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

          v40 = 0;
          goto LABEL_49;
        }

        if ([(MapsSuggestionsEntry *)v38 deleted]|| [(MapsSuggestionsEntry *)v39 deleted])
        {
          v40 = [MEMORY[0x1E695DF00] distantPast];
LABEL_49:

          [(MapsSuggestionsEntry *)v38 setExpires:v40];
LABEL_50:
          v42 = [(MapsSuggestionsEntry *)v16 deleted]|| [(MapsSuggestionsEntry *)self deleted];
          [(MapsSuggestionsEntry *)self setDeleted:v42];
          [(MapsSuggestionsEntry *)self mergeSpecificsFromSuggestionEntry:v16 behavior:0];
          goto LABEL_114;
        }

        v74 = [(MapsSuggestionsEntry *)v38 expires];
        if (v74)
        {
        }

        else
        {
          v40 = [(MapsSuggestionsEntry *)v39 expires];

          if (!v40)
          {
            goto LABEL_49;
          }
        }

        v80 = [(MapsSuggestionsEntry *)v38 expires];

        v81 = [(MapsSuggestionsEntry *)v39 expires];
        v40 = v81;
        if (v80)
        {

          v82 = [(MapsSuggestionsEntry *)v38 expires];
          v83 = v82;
          if (v40)
          {
            v84 = [(MapsSuggestionsEntry *)v39 expires];
            v40 = [v83 laterDate:v84];
          }

          else
          {
            v40 = v82;
          }
        }

        goto LABEL_49;
      }

      v30 = [(MapsSuggestionsEntry *)v16 title];
      [(MapsSuggestionsEntry *)self setTitle:v30];
    }

    goto LABEL_25;
  }

LABEL_114:
}

- (void)mergeSpecificsFromSuggestionEntry:(id)a3 behavior:(unint64_t)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = self;
    objc_sync_enter(v7);
    v8 = [(MapsSuggestionsEntry *)v7 sourceSpecificInfo];
    v9 = [v6 sourceSpecificInfo];
    v10 = [v8 isEqualToDictionary:v9];

    if (v10)
    {
LABEL_11:
      objc_sync_exit(v7);

      goto LABEL_12;
    }

    v11 = [(MapsSuggestionsEntry *)v7 ETAForKey:@"MapsSuggestionsETAKey"];
    v12 = [(MapsSuggestionsEntry *)v7 stringForKey:@"MapsSuggestionsDestinationForETAKey"];
    v13 = v12;
    if (!a4)
    {
      v20 = objc_alloc(MEMORY[0x1E695DF90]);
      v21 = [v6 sourceSpecificInfo];
      v16 = [v20 initWithDictionary:v21];

      v22 = [(MapsSuggestionsEntry *)v7 sourceSpecificInfo];
      [v16 addEntriesFromDictionary:v22];

      v23 = [v16 mutableCopy];
      [(MapsSuggestionsEntry *)v7 setSourceSpecificInfo:v23];

      [(MapsSuggestionsEntry *)v7 _selectETAFrom:v11 destinationKey:v13 otherEntry:v6];
      goto LABEL_10;
    }

    if (a4 == 1)
    {
      v14 = objc_alloc(MEMORY[0x1E695DF90]);
      v15 = [(MapsSuggestionsEntry *)v7 sourceSpecificInfo];
      v16 = [v14 initWithDictionary:v15];

      v17 = [v6 sourceSpecificInfo];
      [v16 addEntriesFromDictionary:v17];

      v18 = [v16 mutableCopy];
      [(MapsSuggestionsEntry *)v7 setSourceSpecificInfo:v18];

      [(MapsSuggestionsEntry *)v7 _selectETAFrom:v11 destinationKey:v13 otherEntry:v6];
LABEL_10:

      goto LABEL_11;
    }

    objc_sync_exit(v7);
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

- (void)replaceByEntry:(id)a3 forceDecoratedOverwrites:(BOOL)a4
{
  v69 = a4;
  v78 = *MEMORY[0x1E69E9840];
  v7 = a3;
  if (v7)
  {
    v8 = [(MapsSuggestionsEntry *)self undecoratedTitle];
    if (v8)
    {
      v4 = [(MapsSuggestionsEntry *)self undecoratedTitle];
      v5 = [v7 undecoratedTitle];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_11:
        v8 = [v7 undecoratedTitle];
        [(MapsSuggestionsEntry *)self setUndecoratedTitle:v8];
LABEL_14:

        goto LABEL_15;
      }
    }

    v10 = [v7 undecoratedTitle];
    if (v10)
    {
      v11 = [v7 undecoratedTitle];
      v12 = [(MapsSuggestionsEntry *)self undecoratedTitle];
      v13 = [v11 isEqual:v12];

      if (v8)
      {
      }

      if ((v13 & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (v8)
      {

        goto LABEL_14;
      }
    }

LABEL_15:
    v14 = [(MapsSuggestionsEntry *)self undecoratedTitleWhenLocked];
    if (v14)
    {
      v4 = [(MapsSuggestionsEntry *)self undecoratedTitleWhenLocked];
      v5 = [v7 undecoratedTitleWhenLocked];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_22:
        v14 = [v7 undecoratedTitleWhenLocked];
        [(MapsSuggestionsEntry *)self setUndecoratedTitleWhenLocked:v14];
LABEL_25:

        goto LABEL_26;
      }
    }

    v15 = [v7 undecoratedTitleWhenLocked];
    if (v15)
    {
      v16 = [v7 undecoratedTitleWhenLocked];
      v17 = [(MapsSuggestionsEntry *)self undecoratedTitleWhenLocked];
      v18 = [v16 isEqual:v17];

      if (v14)
      {
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if (v14)
      {

        goto LABEL_25;
      }
    }

LABEL_26:
    v19 = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
    if (v19)
    {
      v4 = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
      v5 = [v7 undecoratedSubtitle];
      if (([v4 isEqual:v5] & 1) == 0)
      {

LABEL_33:
        v19 = [v7 undecoratedSubtitle];
        [(MapsSuggestionsEntry *)self setUndecoratedSubtitle:v19];
LABEL_36:

        goto LABEL_37;
      }
    }

    v20 = [v7 undecoratedSubtitle];
    if (v20)
    {
      v21 = [v7 undecoratedSubtitle];
      v22 = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
      v23 = [v21 isEqual:v22];

      if (v19)
      {
      }

      if ((v23 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else
    {

      if (v19)
      {

        goto LABEL_36;
      }
    }

LABEL_37:
    v24 = [(MapsSuggestionsEntry *)self undecoratedSubtitleWhenLocked];
    if (!v24 || (-[MapsSuggestionsEntry undecoratedSubtitleWhenLocked](self, "undecoratedSubtitleWhenLocked"), v4 = objc_claimAutoreleasedReturnValue(), [v7 undecoratedSubtitleWhenLocked], v5 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v4, "isEqual:", v5) & 1) != 0))
    {
      v25 = [v7 undecoratedSubtitleWhenLocked];
      if (!v25)
      {

        if (!v24)
        {
          goto LABEL_48;
        }

        goto LABEL_47;
      }

      v26 = [v7 undecoratedSubtitleWhenLocked];
      v27 = [(MapsSuggestionsEntry *)self undecoratedSubtitleWhenLocked];
      v28 = [v26 isEqual:v27];

      if (v24)
      {
      }

      if (v28)
      {
LABEL_48:
        if (!v69)
        {
          goto LABEL_93;
        }

        v29 = [(MapsSuggestionsEntry *)self title];
        if (v29)
        {
          v24 = [(MapsSuggestionsEntry *)self title];
          v4 = [v7 title];
          if (([v24 isEqual:v4] & 1) == 0)
          {

LABEL_56:
            v29 = [v7 title];
            [(MapsSuggestionsEntry *)self setTitle:v29];
LABEL_59:

            goto LABEL_60;
          }
        }

        v30 = [v7 title];
        if (v30)
        {
          v31 = [v7 title];
          v32 = [(MapsSuggestionsEntry *)self title];
          v33 = [v31 isEqual:v32];

          if (v29)
          {
          }

          if ((v33 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        else
        {

          if (v29)
          {

            goto LABEL_59;
          }
        }

LABEL_60:
        v34 = [(MapsSuggestionsEntry *)self titleWhenLocked];
        if (v34)
        {
          v24 = [(MapsSuggestionsEntry *)self titleWhenLocked];
          v4 = [v7 titleWhenLocked];
          if (([v24 isEqual:v4] & 1) == 0)
          {

LABEL_67:
            v34 = [v7 titleWhenLocked];
            [(MapsSuggestionsEntry *)self setTitleWhenLocked:v34];
LABEL_70:

            goto LABEL_71;
          }
        }

        v35 = [v7 titleWhenLocked];
        if (v35)
        {
          v36 = [v7 titleWhenLocked];
          v37 = [(MapsSuggestionsEntry *)self titleWhenLocked];
          v38 = [v36 isEqual:v37];

          if (v34)
          {
          }

          if ((v38 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else
        {

          if (v34)
          {

            goto LABEL_70;
          }
        }

LABEL_71:
        v39 = [(MapsSuggestionsEntry *)self subtitle];
        if (!v39 || (-[MapsSuggestionsEntry subtitle](self, "subtitle"), v24 = objc_claimAutoreleasedReturnValue(), [v7 subtitle], v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v24, "isEqual:", v4) & 1) != 0))
        {
          v40 = [v7 subtitle];
          if (!v40)
          {

            if (!v39)
            {
              goto LABEL_82;
            }

LABEL_81:
LABEL_82:
            v44 = [(MapsSuggestionsEntry *)self subtitleWhenLocked];
            if (v44)
            {
              v24 = [(MapsSuggestionsEntry *)self subtitleWhenLocked];
              v4 = [v7 subtitleWhenLocked];
              if (([v24 isEqual:v4] & 1) == 0)
              {

LABEL_89:
                v44 = [v7 subtitleWhenLocked];
                [(MapsSuggestionsEntry *)self setSubtitleWhenLocked:v44];
LABEL_92:

                goto LABEL_93;
              }
            }

            v45 = [v7 subtitleWhenLocked];
            if (v45)
            {
              v46 = [v7 subtitleWhenLocked];
              v47 = [(MapsSuggestionsEntry *)self subtitleWhenLocked];
              v48 = [v46 isEqual:v47];

              if (v44)
              {
              }

              if ((v48 & 1) == 0)
              {
                goto LABEL_89;
              }
            }

            else
            {

              if (v44)
              {

                goto LABEL_92;
              }
            }

LABEL_93:
            v49 = [(MapsSuggestionsEntry *)self geoMapItem];
            if (v49)
            {
              v24 = [(MapsSuggestionsEntry *)self geoMapItem];
              v4 = [v7 geoMapItem];
              if (([v24 isEqual:v4] & 1) == 0)
              {

LABEL_100:
                v49 = [v7 geoMapItem];
                [(MapsSuggestionsEntry *)self setGeoMapItem:v49];
LABEL_103:

                goto LABEL_104;
              }
            }

            v50 = [v7 geoMapItem];
            if (v50)
            {
              v51 = [v7 geoMapItem];
              v52 = [(MapsSuggestionsEntry *)self geoMapItem];
              v53 = [v51 isEqual:v52];

              if (v49)
              {
              }

              if ((v53 & 1) == 0)
              {
                goto LABEL_100;
              }
            }

            else
            {

              if (v49)
              {

                goto LABEL_103;
              }
            }

LABEL_104:
            v54 = [(MapsSuggestionsEntry *)self expires];
            if (!v54 || (-[MapsSuggestionsEntry expires](self, "expires"), v24 = objc_claimAutoreleasedReturnValue(), [v7 expires], v4 = objc_claimAutoreleasedReturnValue(), (objc_msgSend(v24, "isEqual:", v4) & 1) != 0))
            {
              v55 = [v7 expires];
              if (!v55)
              {

                if (!v54)
                {
LABEL_115:
                  v59 = [(MapsSuggestionsEntry *)self type];
                  if (v59 != [v7 type])
                  {
                    -[MapsSuggestionsEntry _overrideType:](self, "_overrideType:", [v7 type]);
                  }

                  [(MapsSuggestionsEntry *)self setIconData:0];
                  [v7 weight];
                  [(MapsSuggestionsEntry *)self setWeight:?];
                  v9 = [(MapsSuggestionsEntry *)self originatingSourceName];
                  v60 = [v7 originatingSourceName];
                  if (([v9 isEqualToString:v60]& 1) == 0)
                  {
                    [(MapsSuggestionsEntry *)self setString:v60 forKey:@"MapsSuggestionsNewSourceKey"];
                  }

                  v61 = self;
                  objc_sync_enter(v61);
                  v62 = [v7 sourceSpecificInfo];
                  v63 = [v62 copy];
                  [(MapsSuggestionsEntry *)v61 setSourceSpecificInfo:v63];

                  objc_sync_exit(v61);
                  v64 = v61;
                  v65 = v7;
                  if (v64)
                  {
                    v66 = [(MapsSuggestionsEntry *)v64 originatingSourceName];
                    v67 = [v65 originatingSourceName];
                    if (v66 && ([v66 isEqualToString:v67] & 1) == 0)
                    {
                      [(MapsSuggestionsEntry *)v64 setString:v67 forKey:@"MapsSuggestionsNewSourceKey"];
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

              v56 = [v7 expires];
              v57 = [(MapsSuggestionsEntry *)self expires];
              v58 = [v56 isEqual:v57];

              if (v54)
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

            v54 = [v7 expires];
            [(MapsSuggestionsEntry *)self setExpires:v54];
            goto LABEL_114;
          }

          v41 = [v7 subtitle];
          v42 = [(MapsSuggestionsEntry *)self subtitle];
          v43 = [v41 isEqual:v42];

          if (v39)
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

        v39 = [v7 subtitle];
        [(MapsSuggestionsEntry *)self setSubtitle:v39];
        goto LABEL_81;
      }
    }

    else
    {
    }

    v24 = [v7 undecoratedSubtitleWhenLocked];
    [(MapsSuggestionsEntry *)self setUndecoratedSubtitleWhenLocked:v24];
LABEL_47:

    goto LABEL_48;
  }

  v9 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v71 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/MapsSuggestionsEntry+BusinessLogic.m";
    v72 = 1024;
    v73 = 331;
    v74 = 2082;
    v75 = "[MapsSuggestionsEntry(BusinessLogic) replaceByEntry:forceDecoratedOverwrites:]";
    v76 = 2082;
    v77 = "nil == (otherEntry)";
    _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_ERROR, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires an other suggestions entry", buf, 0x26u);
  }

LABEL_128:
}

- (BOOL)hasStartAndEndTime
{
  v3 = [(MapsSuggestionsEntry *)self hasStartTime];
  if (v3)
  {

    LOBYTE(v3) = [(MapsSuggestionsEntry *)self hasEndTime];
  }

  return v3;
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

+ (id)entryWithType:(int64_t)a3 title:(id)a4 subtitle:(id)a5 weight:(double)a6 expires:(id)a7 sourceSpecificInfo:(id)a8
{
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v17 = [[MapsSuggestionsEntry alloc] initWithType:a3 title:v13 subtitle:v14 weight:v15 expires:0 geoMapItem:v16 sourceSpecificInfo:a6];

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
      v7 = self;
      _os_log_impl(&dword_1C5126000, v4, OS_LOG_TYPE_ERROR, "Error archiving entry %@", &v6, 0xCu);
    }
  }

  return v3;
}

+ (id)entryWithData:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v9 = 0;
    v4 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:&v9];
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

- (MapsSuggestionsEntry)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MapsSuggestionsEntry *)self initWithType:0 title:&stru_1F444C108];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"mseType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseTitle"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseSubtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseUndecoratedTitle"];
    undecoratedTitle = v5->_undecoratedTitle;
    v5->_undecoratedTitle = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseUndecoratedSubtitle"];
    undecoratedSubtitle = v5->_undecoratedSubtitle;
    v5->_undecoratedSubtitle = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseTitleWhenLocked"];
    titleWhenLocked = v5->_titleWhenLocked;
    v5->_titleWhenLocked = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseSubtitleWhenLocked"];
    subtitleWhenLocked = v5->_subtitleWhenLocked;
    v5->_subtitleWhenLocked = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseUndecoratedTitleWhenLocked"];
    undecoratedTitleWhenLocked = v5->_undecoratedTitleWhenLocked;
    v5->_undecoratedTitleWhenLocked = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseUndecoratedSubtitleWhenLocked"];
    undecoratedSubtitleWhenLocked = v5->_undecoratedSubtitleWhenLocked;
    v5->_undecoratedSubtitleWhenLocked = v20;

    [v4 decodeDoubleForKey:@"mseWeight"];
    *&v22 = v22;
    v5->_weight = *&v22;
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseExpires"];
    expires = v5->_expires;
    v5->_expires = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseIconData"];
    iconData = v5->_iconData;
    v5->_iconData = v25;

    v5->_deleted = [v4 decodeBoolForKey:@"mseDeleted"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseOriginatingSourceName"];
    originatingSourceName = v5->_originatingSourceName;
    v5->_originatingSourceName = v27;

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mseGEOMapItem"];
    geoMapItem = v5->_geoMapItem;
    v5->_geoMapItem = v29;

    if ([MapsSuggestionsEntry initWithCoder:]::s_onceToken != -1)
    {
      [MapsSuggestionsEntry initWithCoder:];
    }

    v31 = [v4 decodeObjectOfClasses:-[MapsSuggestionsEntry initWithCoder:]::s_entryClasses forKey:@"mseSSI"];
    v32 = [v31 mutableCopy];
    sourceSpecificInfo = v5->_sourceSpecificInfo;
    v5->_sourceSpecificInfo = v32;

    v34 = [v4 decodeObjectOfClasses:-[MapsSuggestionsEntry initWithCoder:]::s_typeHistoryClasses forKey:@"mseTypeHistory"];
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

- (void)encodeWithCoder:(id)a3
{
  v19 = a3;
  [v19 encodeInteger:-[MapsSuggestionsEntry type](self forKey:{"type"), @"mseType"}];
  v4 = [(MapsSuggestionsEntry *)self title];
  [v19 encodeObject:v4 forKey:@"mseTitle"];

  v5 = [(MapsSuggestionsEntry *)self subtitle];
  [v19 encodeObject:v5 forKey:@"mseSubtitle"];

  v6 = [(MapsSuggestionsEntry *)self undecoratedTitle];
  [v19 encodeObject:v6 forKey:@"mseUndecoratedTitle"];

  v7 = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
  [v19 encodeObject:v7 forKey:@"mseUndecoratedSubtitle"];

  v8 = [(MapsSuggestionsEntry *)self titleWhenLocked];
  [v19 encodeObject:v8 forKey:@"mseTitleWhenLocked"];

  v9 = [(MapsSuggestionsEntry *)self subtitleWhenLocked];
  [v19 encodeObject:v9 forKey:@"mseSubtitleWhenLocked"];

  v10 = [(MapsSuggestionsEntry *)self undecoratedTitleWhenLocked];
  [v19 encodeObject:v10 forKey:@"mseUndecoratedTitleWhenLocked"];

  v11 = [(MapsSuggestionsEntry *)self undecoratedSubtitleWhenLocked];
  [v19 encodeObject:v11 forKey:@"mseUndecoratedSubtitleWhenLocked"];

  [(MapsSuggestionsEntry *)self weight];
  [v19 encodeDouble:@"mseWeight" forKey:?];
  v12 = [(MapsSuggestionsEntry *)self expires];
  [v19 encodeObject:v12 forKey:@"mseExpires"];

  v13 = [(MapsSuggestionsEntry *)self iconData];
  [v19 encodeObject:v13 forKey:@"mseIconData"];

  [v19 encodeBool:-[MapsSuggestionsEntry deleted](self forKey:{"deleted"), @"mseDeleted"}];
  v14 = [(MapsSuggestionsEntry *)self originatingSourceName];
  [v19 encodeObject:v14 forKey:@"mseOriginatingSourceName"];

  v15 = [(MapsSuggestionsEntry *)self geoMapItem];
  [v19 encodeObject:v15 forKey:@"mseGEOMapItem"];

  v16 = self;
  objc_sync_enter(v16);
  v17 = [(NSMutableDictionary *)v16->_sourceSpecificInfo copy];
  [v19 encodeObject:v17 forKey:@"mseSSI"];

  v18 = [(NSMutableSet *)v16->_typeHistory copy];
  [v19 encodeObject:v18 forKey:@"mseTypeHistory"];

  objc_sync_exit(v16);
}

- (MapsSuggestionsEntry)initWithType:(int64_t)a3 title:(id)a4 subtitle:(id)a5 weight:(double)a6 expires:(id)a7 geoMapItem:(id)a8 sourceSpecificInfo:(id)a9
{
  v26 = a4;
  v25 = a5;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v27.receiver = self;
  v27.super_class = MapsSuggestionsEntry;
  v20 = [(MapsSuggestionsEntry *)&v27 init];
  v21 = v20;
  if (v20)
  {
    [(MapsSuggestionsEntry *)v20 _overrideType:a3, v25, v26];
    objc_storeStrong(&v21->_undecoratedTitle, a4);
    objc_storeStrong(&v21->_title, v21->_undecoratedTitle);
    objc_storeStrong(&v21->_undecoratedSubtitle, a5);
    objc_storeStrong(&v21->_subtitle, v21->_undecoratedSubtitle);
    v21->_weight = a6;
    objc_storeStrong(&v21->_expires, a7);
    objc_storeStrong(&v21->_geoMapItem, a8);
    if (v19)
    {
      v22 = [v19 mutableCopy];
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

- (id)copyWithZone:(_NSZone *)a3
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

  v13 = self;
  objc_sync_enter(v13);
  v14 = [(NSString *)v13->_originatingSourceName copy];
  originatingSourceName = v4->_originatingSourceName;
  v4->_originatingSourceName = v14;

  v16 = [(NSMutableDictionary *)v13->_sourceSpecificInfo mutableCopy];
  sourceSpecificInfo = v4->_sourceSpecificInfo;
  v4->_sourceSpecificInfo = v16;

  objc_sync_exit(v13);
  return v4;
}

- (void)setUndecoratedTitle:(id)a3
{
  objc_storeStrong(&self->_undecoratedTitle, a3);
  v5 = a3;
  [(MapsSuggestionsEntry *)self setTitle:self->_undecoratedTitle];
}

- (void)setUndecoratedSubtitle:(id)a3
{
  objc_storeStrong(&self->_undecoratedSubtitle, a3);
  v5 = a3;
  [(MapsSuggestionsEntry *)self setSubtitle:self->_undecoratedSubtitle];
}

- (void)setUndecoratedTitleWhenLocked:(id)a3
{
  objc_storeStrong(&self->_undecoratedTitleWhenLocked, a3);
  v5 = a3;
  [(MapsSuggestionsEntry *)self setTitleWhenLocked:self->_undecoratedTitleWhenLocked];
}

- (void)setUndecoratedSubtitleWhenLocked:(id)a3
{
  objc_storeStrong(&self->_undecoratedSubtitleWhenLocked, a3);
  v5 = a3;
  [(MapsSuggestionsEntry *)self setSubtitleWhenLocked:self->_undecoratedSubtitleWhenLocked];
}

- (void)setDeleted:(BOOL)a3
{
  self->_deleted = a3;
  if (a3)
  {
    v4 = [MEMORY[0x1E695DF00] distantPast];
    [(MapsSuggestionsEntry *)self setExpires:?];
  }
}

- (uint64_t)isSourceSpecificDictionaryEqual:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = a1;
    objc_sync_enter(v4);
    v5 = [v4[2] isEqualToDictionary:v3];
    objc_sync_exit(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MapsSuggestionsEntry *)self isEqualToEntry:v4];
  }

  return v5;
}

- (BOOL)isEqualToEntry:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v38 = 1;
  }

  else
  {
    v5 = [(MapsSuggestionsEntry *)self type];
    if (v5 == [(MapsSuggestionsEntry *)v4 type]
      && ((-[MapsSuggestionsEntry undecoratedTitle](self, "undecoratedTitle"), v6 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedTitle](v4, "undecoratedTitle"), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v6 == v7) || (-[MapsSuggestionsEntry undecoratedTitle](self, "undecoratedTitle"), v8 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedTitle](v4, "undecoratedTitle"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqualToString:v9], v9, v8, (v10 & 1) != 0))
      && ((-[MapsSuggestionsEntry undecoratedSubtitle](self, "undecoratedSubtitle"), v11 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedSubtitle](v4, "undecoratedSubtitle"), v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v11 == v12) || (-[MapsSuggestionsEntry undecoratedSubtitle](self, "undecoratedSubtitle"), v13 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry undecoratedSubtitle](v4, "undecoratedSubtitle"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v13 isEqualToString:v14], v14, v13, (v15 & 1) != 0))
      && ((-[MapsSuggestionsEntry title](self, "title"), v16 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry title](v4, "title"), v17 = objc_claimAutoreleasedReturnValue(), v17, v16, v16 == v17) || (-[MapsSuggestionsEntry title](self, "title"), v18 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry title](v4, "title"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v18 isEqualToString:v19], v19, v18, (v20 & 1) != 0))
      && ((-[MapsSuggestionsEntry subtitle](self, "subtitle"), v21 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry subtitle](v4, "subtitle"), v22 = objc_claimAutoreleasedReturnValue(), v22, v21, v21 == v22) || (-[MapsSuggestionsEntry subtitle](self, "subtitle"), v23 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry subtitle](v4, "subtitle"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v23 isEqualToString:v24], v24, v23, (v25 & 1) != 0))
      && ((-[MapsSuggestionsEntry expires](self, "expires"), v26 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry expires](v4, "expires"), v27 = objc_claimAutoreleasedReturnValue(), v27, v26, v26 == v27) || (-[MapsSuggestionsEntry expires](self, "expires"), v28 = objc_claimAutoreleasedReturnValue(), -[MapsSuggestionsEntry expires](v4, "expires"), v29 = objc_claimAutoreleasedReturnValue(), v30 = [v28 isEqualToDate:v29], v29, v28, (v30 & 1) != 0))
      && (([(MapsSuggestionsEntry *)self geoMapItem], v31 = objc_claimAutoreleasedReturnValue(), [(MapsSuggestionsEntry *)v4 geoMapItem], v32 = objc_claimAutoreleasedReturnValue(), v32, v31, v31 == v32) || ([(MapsSuggestionsEntry *)self geoMapItem], v33 = objc_claimAutoreleasedReturnValue(), [(MapsSuggestionsEntry *)v4 geoMapItem], v34 = objc_claimAutoreleasedReturnValue(), v35 = MapsSuggestionsMapItemsAreEqual(v33, v34, 1, 1, 1), v34, v33, (v35 & 1) != 0)))
    {
      v36 = self;
      objc_sync_enter(v36);
      v37 = [(NSMutableDictionary *)v36->_sourceSpecificInfo copy];
      objc_sync_exit(v36);

      v38 = [(MapsSuggestionsEntry *)v4 isSourceSpecificDictionaryEqual:v37];
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
  v3 = [(MapsSuggestionsEntry *)self type];
  v4 = [(MapsSuggestionsEntry *)self undecoratedTitle];
  v5 = [v4 hash];
  v6 = [(MapsSuggestionsEntry *)self undecoratedSubtitle];
  v7 = [v6 hash];
  v8 = [(MapsSuggestionsEntry *)self uniqueIdentifier];
  v9 = v5 ^ v3;
  v10 = v7 ^ [v8 hash];

  return v9 ^ v10;
}

- (NSString)uniqueName
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MapsSuggestionsEntry *)self undecoratedTitle];
  v5 = [(MapsSuggestionsEntry *)self uniqueIdentifier];
  v6 = [v3 stringWithFormat:@"MapsSuggestionsEntry '%@' '%@'", v4, v5];

  return v6;
}

- (id)sourceSpecificInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_sourceSpecificInfo;
  objc_sync_exit(v2);

  return v3;
}

- (void)setSourceSpecificInfo:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v7];
  sourceSpecificInfo = v4->_sourceSpecificInfo;
  v4->_sourceSpecificInfo = v5;

  objc_sync_exit(v4);
}

- (void)_setValue:(void *)a3 forKey:(uint64_t)a4 class:
{
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (a1)
  {
    if (v8)
    {
      if (a4)
      {
        v10 = a1;
        objc_sync_enter(v10);
        v11 = v10[2];
        if (v7)
        {
          [v11 setObject:v7 forKey:v9];
        }

        else
        {
          [v11 removeObjectForKey:v9];
        }

        objc_sync_exit(v10);
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

- (void)setSet:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v8 forKey:v6 class:v7];
}

- (void)setArray:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v8 forKey:v6 class:v7];
}

- (void)setString:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v8 forKey:v6 class:v7];
}

- (void)setNumber:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v8 forKey:v6 class:v7];
}

- (void)setInteger:(int64_t)a3 forKey:(id)a4
{
  v8 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v6 forKey:v8 class:v7];
}

- (void)setBoolean:(BOOL)a3 forKey:(id)a4
{
  v4 = a3;
  v8 = a4;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v6 forKey:v8 class:v7];
}

- (void)setDate:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v8 forKey:v6 class:v7];
}

- (void)setURL:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v8 forKey:v6 class:v7];
}

- (void)setUUID:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v8 forKey:v6 class:v7];
}

- (void)setData:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v8 forKey:v6 class:v7];
}

- (void)setRouteRequestStorage:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v8 forKey:v6 class:v7];
}

- (void)setETA:(id)a3 forKey:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v11 forKey:v6 class:v7];
  if (v11)
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

- (void)setMapItemHandleData:(id)a3
{
  v5 = a3;
  v4 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v5 forKey:@"MapsSuggestionsMapItemHandleDataKey" class:v4];
}

- (void)setContacts:(id)a3
{
  v5 = a3;
  v4 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v5 forKey:@"MapsSuggestionsShortcutContactsKey" class:v4];
}

- (void)setShareETAHandles:(id)a3
{
  v5 = a3;
  v4 = objc_opt_class();
  [(MapsSuggestionsEntry *)self _setValue:v5 forKey:@"MapsSuggestionSharedETAHandlesFromFavorite" class:v4];
}

- (BOOL)containsKey:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(NSMutableDictionary *)v5->_sourceSpecificInfo objectForKey:v4];
    v7 = v6 != 0;

    objc_sync_exit(v5);
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

- (id)_valueForKey:(uint64_t)a3 class:
{
  v5 = a2;
  v6 = v5;
  if (!a1)
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

  if (!a3)
  {
    v12 = GEOFindOrCreateLog();
    [MapsSuggestionsEntry _valueForKey:v12 class:?];
    goto LABEL_13;
  }

  v7 = a1;
  objc_sync_enter(v7);
  v8 = [v7[2] objectForKey:v6];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"The class of key '%@' is not '%@'", v6, a3];
      v14 = GEOFindOrCreateLog();
      [(MapsSuggestionsEntry *)v14 _valueForKey:v8 class:v13];
    }
  }

  objc_sync_exit(v7);
LABEL_8:

  return v8;
}

- (id)setForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];

  return v6;
}

- (id)arrayForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];

  return v6;
}

- (id)stringForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];

  return v6;
}

- (id)numberForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];

  return v6;
}

- (int64_t)integerForKey:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 integerValue];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Defaulting to 0 instead of nil integer value for key '%@'", v4];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (unint64_t)uint64ForKey:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 unsignedLongLongValue];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Defaulting to 0 instead of nil integer value for key '%@'", v4];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)BOOLeanForKey:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 BOOLValue];
  }

  else
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Defaulting to NO instead of nil BOOLean value for key '%@'", v4];
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_1C5126000, v10, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)BOOLeanForKey:(id)a3 is:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v8 = [(MapsSuggestionsEntry *)self _valueForKey:v6 class:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 BOOLValue] ^ v4 ^ 1;
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (id)dateForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];

  return v6;
}

- (id)URLForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];

  return v6;
}

- (id)UUIDForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];

  return v6;
}

- (id)dataForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];

  return v6;
}

- (id)routeRequestStorageForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];

  return v6;
}

- (id)ETAForKey:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(MapsSuggestionsEntry *)self _valueForKey:v4 class:v5];

  return v6;
}

- (id)contacts
{
  v3 = objc_opt_class();

  return [(MapsSuggestionsEntry *)self _valueForKey:v3 class:?];
}

- (NSString)shortDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(MapsSuggestionsEntry *)v2 title];
  v5 = [(MapsSuggestionsEntry *)v2 subtitle];
  v6 = NSStringFromMapsSuggestionsEntryType([(MapsSuggestionsEntry *)v2 type]);
  v7 = [(MapsSuggestionsEntry *)v2 uniqueIdentifier];
  v8 = [v3 initWithFormat:@"'%@' / '%@' (%@) %@", v4, v5, v6, v7];

  objc_sync_exit(v2);

  return v8;
}

- (id)fullDescriptionForCurrentLocationEntries
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v27 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v2 = NSStringFromMapsSuggestionsEntryType([a1 type]);
    [v27 appendFormat:@"-- %@ --\n", v2];

    [v27 appendFormat:@" pointer:   %p\n", a1];
    v3 = [a1 subtitle];
    [v27 appendFormat:@" subtitle: '%@'\n", v3];

    v4 = [a1 originatingSourceName];
    [v27 appendFormat:@" origin:    %@\n", v4];

    v5 = [a1 expires];
    v6 = MapsSuggestionsAMPMStringFromDate(v5);
    [v27 appendFormat:@" expires:   %@\n", v6];

    [a1 weight];
    *&v7 = v7;
    [v27 appendFormat:@" weight:    %.3f\n", *&v7];
    v8 = [a1 geoMapItem];
    v9 = @"<present>";
    if (!v8)
    {
      v9 = @"<absent>";
    }

    [v27 appendFormat:@" mapItem:   %@\n", v9];

    v10 = a1;
    objc_sync_enter(v10);
    v26 = v10;
    [v27 appendFormat:@" specifics: %lu entries: {\n", objc_msgSend(v10[2], "count")];
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = [v10[2] allKeys];
    v12 = [v11 sortedArrayUsingSelector:sel_compare_];

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
    v3 = [(MapsSuggestionsEntry *)self fullDescriptionForCurrentLocationEntries];
  }

  else
  {
    v30 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v4 = NSStringFromMapsSuggestionsEntryType([(MapsSuggestionsEntry *)self type]);
    [v30 appendFormat:@"-- %@ --\n", v4];

    [v30 appendFormat:@" pointer:   %p\n", self];
    v5 = [(MapsSuggestionsEntry *)self title];
    [v30 appendFormat:@" title:    '%@'\n", v5];

    v6 = [(MapsSuggestionsEntry *)self subtitle];
    [v30 appendFormat:@" subtitle: '%@'\n", v6];

    v7 = [(MapsSuggestionsEntry *)self uniqueIdentifier];
    [v30 appendFormat:@" uniqueID:  %@\n", v7];

    v8 = [(MapsSuggestionsEntry *)self originatingSourceName];
    [v30 appendFormat:@" origin:    %@\n", v8];

    v9 = [(MapsSuggestionsEntry *)self expires];
    v10 = MapsSuggestionsAMPMStringFromDate(v9);
    [v30 appendFormat:@" expires:   %@\n", v10];

    [(MapsSuggestionsEntry *)self weight];
    *&v11 = v11;
    [v30 appendFormat:@" weight:    %.3f\n", *&v11];
    v12 = [(MapsSuggestionsEntry *)self geoMapItem];
    v13 = NSStringFromMapsSuggestionsMapItem(v12);
    [v30 appendFormat:@" mapItem:   %@\n", v13];

    v14 = self;
    objc_sync_enter(v14);
    [v30 appendFormat:@" specifics: %lu entries: {\n", -[NSMutableDictionary count](v14->_sourceSpecificInfo, "count")];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v15 = [(NSMutableDictionary *)v14->_sourceSpecificInfo allKeys];
    v16 = [v15 sortedArrayUsingSelector:sel_compare_];

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
            v27 = [(NSMutableDictionary *)v14->_sourceSpecificInfo objectForKeyedSubscript:v20];
            [v30 appendFormat:@" . %@ => %lu waypoints:\n", v26, objc_msgSend(v27, "waypointsCount")];
          }

          else
          {
            v27 = [(NSMutableDictionary *)v14->_sourceSpecificInfo objectForKeyedSubscript:v20];
            [v30 appendFormat:@" . %@ => %@\n", v26, v27];
          }
        }

        v16 = obj;
        v17 = [obj countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v17);
    }

    [v30 appendString:@" }"];
    objc_sync_exit(v14);

    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v30];
  }

  return v3;
}

- (void)setAvailableRemovalBehavior:(int64_t)a3
{
  v4 = [(MapsSuggestionsEntry *)self availableRemovalBehaviors]| a3;

  [(MapsSuggestionsEntry *)self setInteger:v4 forKey:@"MapsSuggestionsRemovalBehaviorKey"];
}

- (void)resetAvailableRemovalBehavior:(int64_t)a3
{
  v4 = [(MapsSuggestionsEntry *)self availableRemovalBehaviors]& ~a3;

  [(MapsSuggestionsEntry *)self setInteger:v4 forKey:@"MapsSuggestionsRemovalBehaviorKey"];
}

- (void)setLocationCoordinateKeysFromLocation:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
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

  [v4 coordinate];
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
  v2 = [(MapsSuggestionsEntry *)self data];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [v2 _geo_hexString];
    v5 = [v3 initWithFormat:@"%@%@", @"{16}", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)serializedBase64String
{
  v2 = [(MapsSuggestionsEntry *)self data];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = [v2 base64EncodedStringWithOptions:0];
    v5 = [v3 initWithFormat:@"%@%@", @"{64}", v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)entryFromSerializedHexString:(id)a3 hasPrefix:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [v6 substringFromIndex:{objc_msgSend(@"{16}", "length")}];
    v8 = [a1 entryFromSerializedHexString:v7 hasPrefix:0];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v7 = [MEMORY[0x1E695DEF0] _geo_dataForHexString:v6];
  if (v7)
  {
    v8 = [MapsSuggestionsEntry entryWithData:v7];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)entryFromSerializedBase64String:(id)a3 hasPrefix:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v7 = [v6 substringFromIndex:{objc_msgSend(@"{64}", "length")}];
    v8 = [a1 entryFromSerializedBase64String:v7 hasPrefix:0];
LABEL_5:
    v9 = v8;
    goto LABEL_6;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
  if (v7)
  {
    v8 = [MapsSuggestionsEntry entryWithData:v7];
    goto LABEL_5;
  }

  v9 = 0;
LABEL_6:

  return v9;
}

+ (id)entryFromSerializedString:(id)a3
{
  v4 = a3;
  v5 = MapsSuggestionsStringDataEncodingTypeOfString(v4);
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      [a1 entryFromSerializedBase64String:v4 hasPrefix:1];
    }

    else
    {
      [a1 entryFromSerializedHexString:v4 hasPrefix:v5 == 3];
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
  v17 = [(MapsSuggestionsEntry *)self title];
  v16 = MSg::jsonFor(v17);
  v22[1] = v16;
  v21[2] = @"subtitle";
  v15 = [(MapsSuggestionsEntry *)self subtitle];
  v14 = MSg::jsonFor(v15);
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

- (void)_overrideType:(int64_t)a3
{
  self->_type = a3;
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

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(NSMutableSet *)typeHistory addObject:v7];

  objc_sync_exit(obj);
}

- (BOOL)_wasEverOfType:(int64_t)a3
{
  v4 = self;
  objc_sync_enter(v4);
  typeHistory = v4->_typeHistory;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  LOBYTE(typeHistory) = [(NSMutableSet *)typeHistory containsObject:v6];

  objc_sync_exit(v4);
  return typeHistory;
}

- (BOOL)_wasEverOneOfTypes:(id)a3
{
  v4 = self;
  v5 = a3;
  objc_sync_enter(v4);
  v6 = [(NSMutableSet *)v4->_typeHistory intersectsSet:v5];

  objc_sync_exit(v4);
  return v6;
}

- (id)copyWithNewType:(int64_t)a3
{
  type = self->_type;
  self->_type = a3;
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
    v4 = [v3 waypoints];
    v5 = [(MapsSuggestionsEntry *)self uint64ForKey:@"MapsSuggestionsResumeRouteWaypointIndex"];
    v6 = [v4 count];

    if (v6 > v5 + 1)
    {
      return 1;
    }
  }

  return result;
}

- (void)_selectETAFrom:(void *)a3 destinationKey:(void *)a4 otherEntry:
{
  v17 = a2;
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = MapsSuggestionsDestinationKey(a1);
    v10 = [a1 stringForKey:@"MapsSuggestionsDestinationForETAKey"];
    v11 = [v9 isEqualToString:v10];

    if ((v11 & 1) == 0)
    {
      if ([v9 isEqualToString:v7])
      {
        v12 = a1;
        v13 = v17;
LABEL_8:
        [v12 setETA:v13 forKey:@"MapsSuggestionsETAKey"];
        goto LABEL_9;
      }

      v14 = [v8 stringForKey:@"MapsSuggestionsDestinationForETAKey"];
      v15 = [v9 isEqualToString:v14];

      if (!v15)
      {
        v12 = a1;
        v13 = 0;
        goto LABEL_8;
      }

      v16 = [v8 ETAForKey:@"MapsSuggestionsETAKey"];
      [a1 setETA:v16 forKey:@"MapsSuggestionsETAKey"];
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