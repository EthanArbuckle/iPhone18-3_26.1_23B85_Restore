@interface BCSMeasurementFactory
- (id)blastDoorTimingMeasurementForItemIdentifier:(id)identifier;
- (id)businessCallerFetchTimingMeasurementForItemIdentifier:(id)identifier;
- (id)businessEmailFetchTimingMeasurementForItemIdentifier:(id)identifier;
- (id)businessLinkChoppedFetchTimingMeasurementForItemIdentifier:(id)identifier;
- (id)businessLinkFetchByHashTimingMeasurementForItemIdentifier:(id)identifier;
- (id)configCacheHitMeasurementForConfigType:(int64_t)type;
- (id)configCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier;
- (id)configCloudKitFetchTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier;
- (id)configResolutionTimingMeasurementForConfigType:(int64_t)type;
- (id)itemCacheHitMeasurementForItemIdentifier:(id)identifier;
- (id)itemCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier;
- (id)itemCloudKitFetchTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier;
- (id)itemFetchTimingMeasurementForItemIdentifier:(id)identifier;
- (id)itemIsRegisteredTimingMeasurementForItemIdentifier:(id)identifier;
- (id)itemResolutionTimingMeasurementForItemIdentifier:(id)identifier;
- (id)megashardCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier;
- (id)megashardCloudKitFetchTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier;
- (id)pirFetchTimingMeasurementForItemIdentifier:(id)identifier;
- (id)shardCacheHitMeasurementForShardIdentifier:(id)identifier;
- (id)shardCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier;
- (id)shardCloudKitFetchTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier;
- (id)shardResolutionTimingMeasurementForShardIdentifier:(id)identifier;
- (id)webPresentmentFetchTimingMeasurementForItemIdentifier:(id)identifier;
@end

@implementation BCSMeasurementFactory

- (id)configCacheHitMeasurementForConfigType:(int64_t)type
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeFlagSignposter signposterForBCSType:type];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSFlagMeasurement newFlagMeasurement:0 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)shardCacheHitMeasurementForShardIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeFlagSignposter signposterForShardIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSFlagMeasurement newFlagMeasurement:1 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)itemCacheHitMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeFlagSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSFlagMeasurement newFlagMeasurement:2 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)configCloudKitFetchTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:type signpostIdentifier:identifier];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:0 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)shardCloudKitFetchTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:type signpostIdentifier:identifier];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:1 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)itemCloudKitFetchTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:type signpostIdentifier:identifier];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:2 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)megashardCloudKitFetchTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:type signpostIdentifier:identifier];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:3 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)configCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:type signpostIdentifier:identifier];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:4 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)shardCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:type signpostIdentifier:identifier];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:5 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)itemCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:type signpostIdentifier:identifier];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:6 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)megashardCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)type identifier:(unint64_t)identifier
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:type signpostIdentifier:identifier];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:7 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)configResolutionTimingMeasurementForConfigType:(int64_t)type
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForBCSType:type];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:8 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)shardResolutionTimingMeasurementForShardIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForShardIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:9 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)itemResolutionTimingMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:10 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)itemFetchTimingMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:11 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)businessLinkChoppedFetchTimingMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:12 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)businessLinkFetchByHashTimingMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:13 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)itemIsRegisteredTimingMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:14 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)businessCallerFetchTimingMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:15 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)businessEmailFetchTimingMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:17 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)webPresentmentFetchTimingMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:18 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)blastDoorTimingMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:20 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)pirFetchTimingMeasurementForItemIdentifier:(id)identifier
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:identifier];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:19 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end