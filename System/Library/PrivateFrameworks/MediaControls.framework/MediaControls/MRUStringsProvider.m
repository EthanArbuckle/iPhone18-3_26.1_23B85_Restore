@interface MRUStringsProvider
+ (id)accessoryBatteryLevelCase:(id)a3;
+ (id)accessoryBatteryLevelCombinedLeft:(id)a3 right:(id)a4;
+ (id)accessoryBatteryLevelLeft:(id)a3;
+ (id)accessoryBatteryLevelRight:(id)a3;
+ (id)accessoryBatteryLevelSingle:(id)a3;
+ (id)accessoryBatteryWithFormatter:(id)a3 chargeCase:(double)a4;
+ (id)accessoryBatteryWithFormatter:(id)a3 left:(double)a4;
+ (id)accessoryBatteryWithFormatter:(id)a3 left:(double)a4 right:(double)a5;
+ (id)accessoryBatteryWithFormatter:(id)a3 right:(double)a4;
+ (id)accessoryBatteryWithFormatter:(id)a3 solo:(double)a4;
+ (id)airPlayConnectionErrorMessage:(id)a3;
+ (id)composedBy:(id)a3;
+ (id)localizedNameForBundleIdentifier:(id)a3;
+ (id)localizedStringWithKey:(id)a3;
+ (id)localizedStringWithKey:(id)a3 count:(unint64_t)a4;
+ (id)localizedStringWithKey:(id)a3 inTable:(id)a4;
+ (id)localizedUppercaseStringWithKey:(id)a3 expectedFormat:(id)a4;
+ (id)nowPlayingSiriSuggestion:(id)a3;
+ (id)routeName:(id)a3 plusCount:(int64_t)a4;
+ (id)routeNameArrowFormat:(id)a3 rightSideText:(id)a4;
+ (id)routeNameHeadphonesCount:(int64_t)a3;
+ (id)routeRecommendationAddWithFormattedExistingRouteName:(id)a3;
+ (id)routingHijackLocalMessagePresentingApp:(id)a3 busyRouteName:(id)a4;
+ (id)routingHijackLocalTitle:(id)a3;
+ (id)routingInUseOnPairedDevice:(id)a3;
+ (id)vendorSpecificGroupConnectWith:(id)a3;
+ (id)vendorSpecificGroupConnectedWith:(id)a3;
+ (id)vendorSpecificRouteConnectWith:(id)a3;
+ (id)vendorSpecificRouteConnectedWith:(id)a3;
@end

@implementation MRUStringsProvider

+ (id)composedBy:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"COMPOSED_BY_TITLE_%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)airPlayConnectionErrorMessage:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"AIRPLAY_CONNECTION_ERROR_MESSAGE" expectedFormat:@"%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)routingInUseOnPairedDevice:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"ROUTING_IN_USE_ON_PAIRED_DEVICE" expectedFormat:@"%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)routingHijackLocalTitle:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"ROUTING_HIJACK_LOCAL_TITLE" expectedFormat:@"%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)routingHijackLocalMessagePresentingApp:(id)a3 busyRouteName:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [a1 localizedStringWithKey:@"ROUTING_HIJACK_LOCAL_MESSAGE" expectedFormat:@"%@ %@"];
  v10 = [v6 stringWithFormat:v9, v8, v7];

  return v10;
}

+ (id)accessoryBatteryLevelSingle:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"ACCESSORY_BATTERY_LEVEL_SINGLE" expectedFormat:@"%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)accessoryBatteryLevelLeft:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"ACCESSORY_BATTERY_LEVEL_LEFT" expectedFormat:@"%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)accessoryBatteryLevelRight:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"ACCESSORY_BATTERY_LEVEL_RIGHT" expectedFormat:@"%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)accessoryBatteryLevelCombinedLeft:(id)a3 right:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [a1 localizedStringWithKey:@"ACCESSORY_BATTERY_LEVEL_COMBINED" expectedFormat:@"%@ %@"];
  v10 = [v6 stringWithFormat:v9, v8, v7];

  return v10;
}

+ (id)accessoryBatteryLevelCase:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"ACCESSORY_BATTERY_LEVEL_CASE" expectedFormat:@"%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)accessoryBatteryWithFormatter:(id)a3 left:(double)a4 right:(double)a5
{
  v8 = MEMORY[0x1E696AD98];
  v9 = a3;
  v10 = [v8 numberWithDouble:a4];
  v11 = [v9 stringFromNumber:v10];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a5];
  v13 = [v9 stringFromNumber:v12];

  v14 = [a1 accessoryBatteryLevelCombinedLeft:v11 right:v13];

  return v14;
}

+ (id)accessoryBatteryWithFormatter:(id)a3 left:(double)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  v9 = [v7 stringFromNumber:v8];

  v10 = [a1 accessoryBatteryLevelLeft:v9];

  return v10;
}

+ (id)accessoryBatteryWithFormatter:(id)a3 right:(double)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  v9 = [v7 stringFromNumber:v8];

  v10 = [a1 accessoryBatteryLevelRight:v9];

  return v10;
}

+ (id)accessoryBatteryWithFormatter:(id)a3 solo:(double)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  v9 = [v7 stringFromNumber:v8];

  v10 = [a1 accessoryBatteryLevelSingle:v9];

  return v10;
}

+ (id)accessoryBatteryWithFormatter:(id)a3 chargeCase:(double)a4
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v8 = [v6 numberWithDouble:a4];
  v9 = [v7 stringFromNumber:v8];

  v10 = [a1 accessoryBatteryLevelCase:v9];

  return v10;
}

+ (id)routeRecommendationAddWithFormattedExistingRouteName:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"ROUTE_RECOMMENDATION_ADD_TO_EXISTING_%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)vendorSpecificRouteConnectWith:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"VENDOR_SPECIFIC_ROUTE_CONNECT_WITH_%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)vendorSpecificRouteConnectedWith:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"VENDOR_SPECIFIC_ROUTE_CONNECTED_WITH_%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)vendorSpecificGroupConnectWith:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"VENDOR_SPECIFIC_GROUP_CONNECT_WITH_%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)vendorSpecificGroupConnectedWith:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedStringWithKey:@"VENDOR_SPECIFIC_GROUP_CONNECTED_WITH_%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)routeName:(id)a3 plusCount:(int64_t)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a3;
  v8 = [a1 localizedStringWithKey:@"ROUTE_NAME_PLUS_COUNT" expectedFormat:@"%@ %lu"];
  v9 = [v6 stringWithFormat:v8, v7, a4];

  return v9;
}

+ (id)routeNameArrowFormat:(id)a3 rightSideText:(id)a4
{
  v6 = MEMORY[0x1E696AEC0];
  v7 = a4;
  v8 = a3;
  v9 = [a1 localizedStringWithKey:@"ROUTE_NAME_ARROW_FORMAT" expectedFormat:@"%@ %@"];
  v10 = [v6 stringWithFormat:v9, v8, v7];

  return v10;
}

+ (id)nowPlayingSiriSuggestion:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [a1 localizedUppercaseStringWithKey:@"NOW_PLAYING_SIRI_SUGGESTION" expectedFormat:@"%@"];
  v7 = [v4 stringWithFormat:v6, v5];

  return v7;
}

+ (id)routeNameHeadphonesCount:(int64_t)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = [a1 localizedStringWithKey:@"ROUTE_NAME_HEADPHONES_COUNT" expectedFormat:@"%lu"];
  v6 = [v4 stringWithFormat:v5, a3];

  return v6;
}

+ (id)localizedNameForBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = v3;
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

  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = [localizedNameForBundleIdentifier___localizedNamesForBundleIdentifiers objectForKey:v4];

  if (!v5)
  {
    v6 = [MEMORY[0x1E69635F8] bundleRecordWithApplicationIdentifier:v4 error:0];
    v7 = [v6 localizedName];
    v8 = v7;
    v9 = &stru_1F1445548;
    if (v7)
    {
      v9 = v7;
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

+ (id)localizedStringWithKey:(id)a3
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a3;
  v5 = [v3 mediaRemoteUIBundle];
  v6 = [v5 localizedStringForKey:v4 value:&stru_1F1445548 table:@"MediaControls"];

  return v6;
}

+ (id)localizedUppercaseStringWithKey:(id)a3 expectedFormat:(id)a4
{
  v4 = [a1 localizedStringWithKey:a3 expectedFormat:a4];
  v5 = [v4 localizedUppercaseString];

  return v5;
}

+ (id)localizedStringWithKey:(id)a3 inTable:(id)a4
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 mediaRemoteUIBundle];
  v9 = [v8 localizedStringForKey:v7 value:&stru_1F1445548 table:v6];

  return v9;
}

+ (id)localizedStringWithKey:(id)a3 count:(unint64_t)a4
{
  v5 = MEMORY[0x1E696AEC0];
  v6 = MEMORY[0x1E696AAE8];
  v7 = a3;
  v8 = [v6 mediaRemoteUIBundle];
  v9 = [v8 localizedStringForKey:v7 value:&stru_1F1445548 table:@"MediaControls"];

  v10 = [v5 stringWithFormat:v9, a4];

  return v10;
}

@end