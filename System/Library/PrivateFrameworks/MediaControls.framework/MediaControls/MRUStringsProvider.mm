@interface MRUStringsProvider
+ (id)accessoryBatteryLevelCase:(id)case;
+ (id)accessoryBatteryLevelCombinedLeft:(id)left right:(id)right;
+ (id)accessoryBatteryLevelLeft:(id)left;
+ (id)accessoryBatteryLevelRight:(id)right;
+ (id)accessoryBatteryLevelSingle:(id)single;
+ (id)accessoryBatteryWithFormatter:(id)formatter chargeCase:(double)case;
+ (id)accessoryBatteryWithFormatter:(id)formatter left:(double)left;
+ (id)accessoryBatteryWithFormatter:(id)formatter left:(double)left right:(double)right;
+ (id)accessoryBatteryWithFormatter:(id)formatter right:(double)right;
+ (id)accessoryBatteryWithFormatter:(id)formatter solo:(double)solo;
+ (id)airPlayConnectionErrorMessage:(id)message;
+ (id)composedBy:(id)by;
+ (id)localizedNameForBundleIdentifier:(id)identifier;
+ (id)localizedStringWithKey:(id)key;
+ (id)localizedStringWithKey:(id)key count:(unint64_t)count;
+ (id)localizedStringWithKey:(id)key inTable:(id)table;
+ (id)localizedUppercaseStringWithKey:(id)key expectedFormat:(id)format;
+ (id)nowPlayingSiriSuggestion:(id)suggestion;
+ (id)routeName:(id)name plusCount:(int64_t)count;
+ (id)routeNameArrowFormat:(id)format rightSideText:(id)text;
+ (id)routeNameHeadphonesCount:(int64_t)count;
+ (id)routeRecommendationAddWithFormattedExistingRouteName:(id)name;
+ (id)routingHijackLocalMessagePresentingApp:(id)app busyRouteName:(id)name;
+ (id)routingHijackLocalTitle:(id)title;
+ (id)routingInUseOnPairedDevice:(id)device;
+ (id)vendorSpecificGroupConnectWith:(id)with;
+ (id)vendorSpecificGroupConnectedWith:(id)with;
+ (id)vendorSpecificRouteConnectWith:(id)with;
+ (id)vendorSpecificRouteConnectedWith:(id)with;
@end

@implementation MRUStringsProvider

+ (id)composedBy:(id)by
{
  v4 = MEMORY[0x1E696AEC0];
  byCopy = by;
  v6 = [self localizedStringWithKey:@"COMPOSED_BY_TITLE_%@"];
  byCopy = [v4 stringWithFormat:v6, byCopy];

  return byCopy;
}

+ (id)airPlayConnectionErrorMessage:(id)message
{
  v4 = MEMORY[0x1E696AEC0];
  messageCopy = message;
  v6 = [self localizedStringWithKey:@"AIRPLAY_CONNECTION_ERROR_MESSAGE" expectedFormat:@"%@"];
  messageCopy = [v4 stringWithFormat:v6, messageCopy];

  return messageCopy;
}

+ (id)routingInUseOnPairedDevice:(id)device
{
  v4 = MEMORY[0x1E696AEC0];
  deviceCopy = device;
  v6 = [self localizedStringWithKey:@"ROUTING_IN_USE_ON_PAIRED_DEVICE" expectedFormat:@"%@"];
  deviceCopy = [v4 stringWithFormat:v6, deviceCopy];

  return deviceCopy;
}

+ (id)routingHijackLocalTitle:(id)title
{
  v4 = MEMORY[0x1E696AEC0];
  titleCopy = title;
  v6 = [self localizedStringWithKey:@"ROUTING_HIJACK_LOCAL_TITLE" expectedFormat:@"%@"];
  titleCopy = [v4 stringWithFormat:v6, titleCopy];

  return titleCopy;
}

+ (id)routingHijackLocalMessagePresentingApp:(id)app busyRouteName:(id)name
{
  v6 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  appCopy = app;
  v9 = [self localizedStringWithKey:@"ROUTING_HIJACK_LOCAL_MESSAGE" expectedFormat:@"%@ %@"];
  nameCopy = [v6 stringWithFormat:v9, appCopy, nameCopy];

  return nameCopy;
}

+ (id)accessoryBatteryLevelSingle:(id)single
{
  v4 = MEMORY[0x1E696AEC0];
  singleCopy = single;
  v6 = [self localizedStringWithKey:@"ACCESSORY_BATTERY_LEVEL_SINGLE" expectedFormat:@"%@"];
  singleCopy = [v4 stringWithFormat:v6, singleCopy];

  return singleCopy;
}

+ (id)accessoryBatteryLevelLeft:(id)left
{
  v4 = MEMORY[0x1E696AEC0];
  leftCopy = left;
  v6 = [self localizedStringWithKey:@"ACCESSORY_BATTERY_LEVEL_LEFT" expectedFormat:@"%@"];
  leftCopy = [v4 stringWithFormat:v6, leftCopy];

  return leftCopy;
}

+ (id)accessoryBatteryLevelRight:(id)right
{
  v4 = MEMORY[0x1E696AEC0];
  rightCopy = right;
  v6 = [self localizedStringWithKey:@"ACCESSORY_BATTERY_LEVEL_RIGHT" expectedFormat:@"%@"];
  rightCopy = [v4 stringWithFormat:v6, rightCopy];

  return rightCopy;
}

+ (id)accessoryBatteryLevelCombinedLeft:(id)left right:(id)right
{
  v6 = MEMORY[0x1E696AEC0];
  rightCopy = right;
  leftCopy = left;
  v9 = [self localizedStringWithKey:@"ACCESSORY_BATTERY_LEVEL_COMBINED" expectedFormat:@"%@ %@"];
  rightCopy = [v6 stringWithFormat:v9, leftCopy, rightCopy];

  return rightCopy;
}

+ (id)accessoryBatteryLevelCase:(id)case
{
  v4 = MEMORY[0x1E696AEC0];
  caseCopy = case;
  v6 = [self localizedStringWithKey:@"ACCESSORY_BATTERY_LEVEL_CASE" expectedFormat:@"%@"];
  caseCopy = [v4 stringWithFormat:v6, caseCopy];

  return caseCopy;
}

+ (id)accessoryBatteryWithFormatter:(id)formatter left:(double)left right:(double)right
{
  v8 = MEMORY[0x1E696AD98];
  formatterCopy = formatter;
  v10 = [v8 numberWithDouble:left];
  v11 = [formatterCopy stringFromNumber:v10];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:right];
  v13 = [formatterCopy stringFromNumber:v12];

  v14 = [self accessoryBatteryLevelCombinedLeft:v11 right:v13];

  return v14;
}

+ (id)accessoryBatteryWithFormatter:(id)formatter left:(double)left
{
  v6 = MEMORY[0x1E696AD98];
  formatterCopy = formatter;
  v8 = [v6 numberWithDouble:left];
  v9 = [formatterCopy stringFromNumber:v8];

  v10 = [self accessoryBatteryLevelLeft:v9];

  return v10;
}

+ (id)accessoryBatteryWithFormatter:(id)formatter right:(double)right
{
  v6 = MEMORY[0x1E696AD98];
  formatterCopy = formatter;
  v8 = [v6 numberWithDouble:right];
  v9 = [formatterCopy stringFromNumber:v8];

  v10 = [self accessoryBatteryLevelRight:v9];

  return v10;
}

+ (id)accessoryBatteryWithFormatter:(id)formatter solo:(double)solo
{
  v6 = MEMORY[0x1E696AD98];
  formatterCopy = formatter;
  v8 = [v6 numberWithDouble:solo];
  v9 = [formatterCopy stringFromNumber:v8];

  v10 = [self accessoryBatteryLevelSingle:v9];

  return v10;
}

+ (id)accessoryBatteryWithFormatter:(id)formatter chargeCase:(double)case
{
  v6 = MEMORY[0x1E696AD98];
  formatterCopy = formatter;
  v8 = [v6 numberWithDouble:case];
  v9 = [formatterCopy stringFromNumber:v8];

  v10 = [self accessoryBatteryLevelCase:v9];

  return v10;
}

+ (id)routeRecommendationAddWithFormattedExistingRouteName:(id)name
{
  v4 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  v6 = [self localizedStringWithKey:@"ROUTE_RECOMMENDATION_ADD_TO_EXISTING_%@"];
  nameCopy = [v4 stringWithFormat:v6, nameCopy];

  return nameCopy;
}

+ (id)vendorSpecificRouteConnectWith:(id)with
{
  v4 = MEMORY[0x1E696AEC0];
  withCopy = with;
  v6 = [self localizedStringWithKey:@"VENDOR_SPECIFIC_ROUTE_CONNECT_WITH_%@"];
  withCopy = [v4 stringWithFormat:v6, withCopy];

  return withCopy;
}

+ (id)vendorSpecificRouteConnectedWith:(id)with
{
  v4 = MEMORY[0x1E696AEC0];
  withCopy = with;
  v6 = [self localizedStringWithKey:@"VENDOR_SPECIFIC_ROUTE_CONNECTED_WITH_%@"];
  withCopy = [v4 stringWithFormat:v6, withCopy];

  return withCopy;
}

+ (id)vendorSpecificGroupConnectWith:(id)with
{
  v4 = MEMORY[0x1E696AEC0];
  withCopy = with;
  v6 = [self localizedStringWithKey:@"VENDOR_SPECIFIC_GROUP_CONNECT_WITH_%@"];
  withCopy = [v4 stringWithFormat:v6, withCopy];

  return withCopy;
}

+ (id)vendorSpecificGroupConnectedWith:(id)with
{
  v4 = MEMORY[0x1E696AEC0];
  withCopy = with;
  v6 = [self localizedStringWithKey:@"VENDOR_SPECIFIC_GROUP_CONNECTED_WITH_%@"];
  withCopy = [v4 stringWithFormat:v6, withCopy];

  return withCopy;
}

+ (id)routeName:(id)name plusCount:(int64_t)count
{
  v6 = MEMORY[0x1E696AEC0];
  nameCopy = name;
  v8 = [self localizedStringWithKey:@"ROUTE_NAME_PLUS_COUNT" expectedFormat:@"%@ %lu"];
  v9 = [v6 stringWithFormat:v8, nameCopy, count];

  return v9;
}

+ (id)routeNameArrowFormat:(id)format rightSideText:(id)text
{
  v6 = MEMORY[0x1E696AEC0];
  textCopy = text;
  formatCopy = format;
  v9 = [self localizedStringWithKey:@"ROUTE_NAME_ARROW_FORMAT" expectedFormat:@"%@ %@"];
  textCopy = [v6 stringWithFormat:v9, formatCopy, textCopy];

  return textCopy;
}

+ (id)nowPlayingSiriSuggestion:(id)suggestion
{
  v4 = MEMORY[0x1E696AEC0];
  suggestionCopy = suggestion;
  v6 = [self localizedUppercaseStringWithKey:@"NOW_PLAYING_SIRI_SUGGESTION" expectedFormat:@"%@"];
  suggestionCopy = [v4 stringWithFormat:v6, suggestionCopy];

  return suggestionCopy;
}

+ (id)routeNameHeadphonesCount:(int64_t)count
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [self localizedStringWithKey:@"ROUTE_NAME_HEADPHONES_COUNT" expectedFormat:@"%lu"];
  v6 = [v4 stringWithFormat:v5, count];

  return v6;
}

+ (id)localizedNameForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = identifierCopy;
  if (localizedNameForBundleIdentifier__onceToken != -1)
  {
    +[MRUStringsProvider localizedNameForBundleIdentifier:];
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = 0;
    goto LABEL_10;
  }

  if (!identifierCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = [localizedNameForBundleIdentifier___localizedNamesForBundleIdentifiers objectForKey:v4];

  if (!v5)
  {
    v6 = [MEMORY[0x1E69635F8] bundleRecordWithApplicationIdentifier:v4 error:0];
    localizedName = [v6 localizedName];
    v8 = localizedName;
    v9 = &stru_1F1445548;
    if (localizedName)
    {
      v9 = localizedName;
    }

    v10 = v9;

    [localizedNameForBundleIdentifier___localizedNamesForBundleIdentifiers setObject:v10 forKey:v4];
  }

  v11 = [localizedNameForBundleIdentifier___localizedNamesForBundleIdentifiers objectForKey:v4];
LABEL_10:

  return v11;
}

uint64_t __55__MRUStringsProvider_localizedNameForBundleIdentifier___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = localizedNameForBundleIdentifier___localizedNamesForBundleIdentifiers;
  localizedNameForBundleIdentifier___localizedNamesForBundleIdentifiers = v0;

  v2 = localizedNameForBundleIdentifier___localizedNamesForBundleIdentifiers;

  return [v2 setCountLimit:50];
}

+ (id)localizedStringWithKey:(id)key
{
  v3 = MEMORY[0x1E696AAE8];
  keyCopy = key;
  mediaRemoteUIBundle = [v3 mediaRemoteUIBundle];
  v6 = [mediaRemoteUIBundle localizedStringForKey:keyCopy value:&stru_1F1445548 table:@"MediaControls"];

  return v6;
}

+ (id)localizedUppercaseStringWithKey:(id)key expectedFormat:(id)format
{
  v4 = [self localizedStringWithKey:key expectedFormat:format];
  localizedUppercaseString = [v4 localizedUppercaseString];

  return localizedUppercaseString;
}

+ (id)localizedStringWithKey:(id)key inTable:(id)table
{
  v5 = MEMORY[0x1E696AAE8];
  tableCopy = table;
  keyCopy = key;
  mediaRemoteUIBundle = [v5 mediaRemoteUIBundle];
  v9 = [mediaRemoteUIBundle localizedStringForKey:keyCopy value:&stru_1F1445548 table:tableCopy];

  return v9;
}

+ (id)localizedStringWithKey:(id)key count:(unint64_t)count
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = MEMORY[0x1E696AAE8];
  keyCopy = key;
  mediaRemoteUIBundle = [v6 mediaRemoteUIBundle];
  v9 = [mediaRemoteUIBundle localizedStringForKey:keyCopy value:&stru_1F1445548 table:@"MediaControls"];

  v10 = [v5 stringWithFormat:v9, count];

  return v10;
}

@end