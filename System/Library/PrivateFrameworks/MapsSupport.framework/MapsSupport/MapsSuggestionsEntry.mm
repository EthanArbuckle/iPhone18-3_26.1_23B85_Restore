@interface MapsSuggestionsEntry
+ (id)archivedDestinationForUniqueID:(id)d;
+ (id)entryFromLOI:(id)i;
+ (id)sharedDefaults;
+ (void)removeStaleArchivedDestinations;
- (id)notificationDetailsWithTitle:(id)title message:(id)message;
- (void)archiveDestination;
@end

@implementation MapsSuggestionsEntry

+ (id)entryFromLOI:(id)i
{
  iCopy = i;
  v4 = iCopy;
  if (!iCopy)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsEntry+DoomExtras.m";
      v26 = 1024;
      *v27 = 55;
      *&v27[4] = 2082;
      *&v27[6] = "+[MapsSuggestionsEntry(DoomExtras) entryFromLOI:]";
      v28 = 2082;
      v29 = "nil == (loi)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. LOI cannot be nil";
LABEL_13:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, v12, buf, 0x26u);
    }

LABEL_14:
    v13 = 0;
    goto LABEL_19;
  }

  identifierString = [iCopy identifierString];

  if (!identifierString)
  {
    v9 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v25 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsEntry+DoomExtras.m";
      v26 = 1024;
      *v27 = 56;
      *&v27[4] = 2082;
      *&v27[6] = "+[MapsSuggestionsEntry(DoomExtras) entryFromLOI:]";
      v28 = 2082;
      v29 = "nil == (loi.identifierString)";
      v12 = "At %{public}s:%d, %{public}s forbids: %{public}s. LOI's identifier cannot be nil";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  customLabel = [v4 customLabel];
  preferredName = customLabel;
  if (!customLabel)
  {
    preferredName = [v4 preferredName];
  }

  v23[0] = preferredName;
  v22[1] = @"MapsSuggestionsCoreRoutinePK";
  identifierString2 = [v4 identifierString];
  v22[2] = @"MapsSuggestionsPrimaryKey";
  v23[1] = identifierString2;
  v23[2] = @"MapsSuggestionsCoreRoutinePK";
  v9 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:3];

  if (!customLabel)
  {
  }

  type = [v4 type];
  if (type > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = qword_100049460[type];
  }

  v14 = [MapsSuggestionsEntry alloc];
  predictedEndDate = [v4 predictedEndDate];
  mapItem = [v4 mapItem];
  v13 = [v14 initWithType:v11 title:&stru_1000689F8 subtitle:&stru_1000689F8 weight:predictedEndDate expires:mapItem geoMapItem:v9 sourceSpecificInfo:0.5];

  v17 = objc_alloc_init(MapsSuggestionsHomeWorkImprover);
  [v17 improveEntry:v13];
  v18 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    title = [v13 title];
    subtitle = [v13 subtitle];
    *buf = 138412546;
    v25 = title;
    v26 = 2112;
    *v27 = subtitle;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Title/Subtitle after improving: {%@}, {%@}", buf, 0x16u);
  }

LABEL_19:

  return v13;
}

+ (id)archivedDestinationForUniqueID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    sharedDefaults = [self sharedDefaults];
    v6 = [sharedDefaults dataForKey:@"kSavedMapsCommuteDestinations"];
    *v13 = objc_opt_class();
    *&v13[8] = objc_opt_class();
    *&v13[16] = objc_opt_class();
    *&v13[24] = objc_opt_class();
    v7 = [NSArray arrayWithObjects:v13 count:4];
    v8 = [NSSet setWithArray:v7, *v13, *&v13[8], *&v13[16]];

    v9 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v8 fromData:v6 error:0];
    v10 = [v9 objectForKeyedSubscript:@"kDestinationsKey"];

    v11 = [v10 objectForKeyedSubscript:dCopy];
  }

  else
  {
    sharedDefaults = GEOFindOrCreateLog();
    if (os_log_type_enabled(sharedDefaults, OS_LOG_TYPE_FAULT))
    {
      *v13 = 136446978;
      *&v13[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsEntry+DoomExtras.m";
      *&v13[12] = 1024;
      *&v13[14] = 81;
      *&v13[18] = 2082;
      *&v13[20] = "+[MapsSuggestionsEntry(DoomExtras) archivedDestinationForUniqueID:]";
      *&v13[28] = 2082;
      *&v13[30] = "0u == uniqueID.length";
      _os_log_impl(&_mh_execute_header, sharedDefaults, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Desintation ID is nil", v13, 0x26u);
    }

    v11 = 0;
  }

  return v11;
}

+ (void)removeStaleArchivedDestinations
{
  sharedDefaults = [self sharedDefaults];
  v2 = [sharedDefaults dataForKey:@"kSavedMapsCommuteDestinations"];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v28[3] = objc_opt_class();
  v3 = [NSArray arrayWithObjects:v28 count:4];
  v4 = [NSSet setWithArray:v3];

  v21 = v2;
  v5 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v4 fromData:v2 error:0];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKeyedSubscript:@"kDatesKey"];
  v20 = v6;
  v8 = [v6 objectForKeyedSubscript:@"kDestinationsKey"];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allKeys = [v7 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v7 objectForKeyedSubscript:v14];
        [v15 timeIntervalSinceNow];
        v17 = -v16;
        GEOConfigGetDouble();
        if (v18 < v17)
        {
          [v7 removeObjectForKey:v14];
          [v8 removeObjectForKey:v14];
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v19 = [NSKeyedArchiver archivedDataWithRootObject:v20 requiringSecureCoding:1 error:0];
  [sharedDefaults setObject:v19 forKey:@"kSavedMapsCommuteDestinations"];
  [sharedDefaults synchronize];
}

- (void)archiveDestination
{
  uniqueIdentifier = [(MapsSuggestionsEntry *)self uniqueIdentifier];

  if (uniqueIdentifier)
  {
    sharedDefaults = [objc_opt_class() sharedDefaults];
    v5 = [sharedDefaults dataForKey:@"kSavedMapsCommuteDestinations"];
    *v18 = objc_opt_class();
    *&v18[8] = objc_opt_class();
    *&v18[16] = objc_opt_class();
    *&v18[24] = objc_opt_class();
    v6 = [NSArray arrayWithObjects:v18 count:4];
    v7 = [NSSet setWithArray:v6, *v18, *&v18[8], *&v18[16]];

    v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v5 error:0];
    v9 = [v8 mutableCopy];

    v10 = [v9 objectForKeyedSubscript:@"kDatesKey"];
    v11 = [v9 objectForKeyedSubscript:@"kDestinationsKey"];
    if (!v9)
    {
      v9 = objc_opt_new();
      v12 = objc_opt_new();

      v13 = objc_opt_new();
      [v9 setObject:v12 forKeyedSubscript:@"kDatesKey"];
      [v9 setObject:v13 forKeyedSubscript:@"kDestinationsKey"];
      v10 = v12;
      v11 = v13;
    }

    uniqueIdentifier2 = [(MapsSuggestionsEntry *)self uniqueIdentifier];
    [v11 setObject:self forKeyedSubscript:uniqueIdentifier2];

    v15 = MapsSuggestionsNow();
    uniqueIdentifier3 = [(MapsSuggestionsEntry *)self uniqueIdentifier];
    [v10 setObject:v15 forKeyedSubscript:uniqueIdentifier3];

    v17 = [NSKeyedArchiver archivedDataWithRootObject:v9 requiringSecureCoding:1 error:0];
    [sharedDefaults setObject:v17 forKey:@"kSavedMapsCommuteDestinations"];
    [sharedDefaults synchronize];
  }

  else
  {
    sharedDefaults = GEOFindOrCreateLog();
    if (os_log_type_enabled(sharedDefaults, OS_LOG_TYPE_FAULT))
    {
      *v18 = 136446978;
      *&v18[4] = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/Suggestions/DOoM & Location Intelligence/MapsSuggestionsEntry+DoomExtras.m";
      *&v18[12] = 1024;
      *&v18[14] = 116;
      *&v18[18] = 2082;
      *&v18[20] = "[MapsSuggestionsEntry(DoomExtras) archiveDestination]";
      *&v18[28] = 2082;
      *&v18[30] = "nil == (self.uniqueIdentifier)";
      _os_log_impl(&_mh_execute_header, sharedDefaults, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Destination ID is nil", v18, 0x26u);
    }
  }
}

- (id)notificationDetailsWithTitle:(id)title message:(id)message
{
  messageCopy = message;
  titleCopy = title;
  GEOConfigGetDouble();
  v9 = v8;
  v10 = [NSDate alloc];
  v11 = MapsSuggestionsNow();
  v12 = [v10 initWithTimeInterval:v11 sinceDate:v9];

  v13 = [GEOCommuteNotificationDetails alloc];
  uniqueIdentifier = [(MapsSuggestionsEntry *)self uniqueIdentifier];
  v15 = [v13 initWithTitle:titleCopy message:messageCopy commuteDetailsIdentifier:uniqueIdentifier expirationDate:v12 score:1];

  return v15;
}

+ (id)sharedDefaults
{
  if (qword_1000759E0 != -1)
  {
    sub_10003EAB4();
  }

  v3 = qword_1000759D8;

  return v3;
}

@end