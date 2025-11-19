@interface BCSMeasurementFactory
- (id)blastDoorTimingMeasurementForItemIdentifier:(id)a3;
- (id)businessCallerFetchTimingMeasurementForItemIdentifier:(id)a3;
- (id)businessEmailFetchTimingMeasurementForItemIdentifier:(id)a3;
- (id)businessLinkChoppedFetchTimingMeasurementForItemIdentifier:(id)a3;
- (id)businessLinkFetchByHashTimingMeasurementForItemIdentifier:(id)a3;
- (id)configCacheHitMeasurementForConfigType:(int64_t)a3;
- (id)configCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4;
- (id)configCloudKitFetchTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4;
- (id)configResolutionTimingMeasurementForConfigType:(int64_t)a3;
- (id)itemCacheHitMeasurementForItemIdentifier:(id)a3;
- (id)itemCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4;
- (id)itemCloudKitFetchTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4;
- (id)itemFetchTimingMeasurementForItemIdentifier:(id)a3;
- (id)itemIsRegisteredTimingMeasurementForItemIdentifier:(id)a3;
- (id)itemResolutionTimingMeasurementForItemIdentifier:(id)a3;
- (id)megashardCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4;
- (id)megashardCloudKitFetchTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4;
- (id)pirFetchTimingMeasurementForItemIdentifier:(id)a3;
- (id)shardCacheHitMeasurementForShardIdentifier:(id)a3;
- (id)shardCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4;
- (id)shardCloudKitFetchTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4;
- (id)shardResolutionTimingMeasurementForShardIdentifier:(id)a3;
- (id)webPresentmentFetchTimingMeasurementForItemIdentifier:(id)a3;
@end

@implementation BCSMeasurementFactory

- (id)configCacheHitMeasurementForConfigType:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeFlagSignposter signposterForBCSType:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSFlagMeasurement newFlagMeasurement:0 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)shardCacheHitMeasurementForShardIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeFlagSignposter signposterForShardIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSFlagMeasurement newFlagMeasurement:1 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)itemCacheHitMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeFlagSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSFlagMeasurement newFlagMeasurement:2 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)configCloudKitFetchTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:a3 signpostIdentifier:a4];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:0 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)shardCloudKitFetchTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:a3 signpostIdentifier:a4];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:1 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)itemCloudKitFetchTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:a3 signpostIdentifier:a4];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:2 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)megashardCloudKitFetchTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:a3 signpostIdentifier:a4];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:3 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)configCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:a3 signpostIdentifier:a4];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:4 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)shardCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:a3 signpostIdentifier:a4];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:5 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)itemCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:a3 signpostIdentifier:a4];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:6 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)megashardCloudKitFetchAndDecodeTimingMeasurementForType:(int64_t)a3 identifier:(unint64_t)a4
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = [BCSRealTimeTimingSignposter signposterForBCSType:a3 signpostIdentifier:a4];
  v9[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  v6 = [BCSTimingMeasurement newTimingMeasurement:7 withHandlers:v5];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)configResolutionTimingMeasurementForConfigType:(int64_t)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForBCSType:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:8 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)shardResolutionTimingMeasurementForShardIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForShardIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:9 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)itemResolutionTimingMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:10 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)itemFetchTimingMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:11 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)businessLinkChoppedFetchTimingMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:12 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)businessLinkFetchByHashTimingMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:13 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)itemIsRegisteredTimingMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:14 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)businessCallerFetchTimingMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:15 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)businessEmailFetchTimingMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:17 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)webPresentmentFetchTimingMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:18 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)blastDoorTimingMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:20 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)pirFetchTimingMeasurementForItemIdentifier:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [BCSRealTimeTimingSignposter signposterForItemIdentifier:a3];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [BCSTimingMeasurement newTimingMeasurement:19 withHandlers:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

@end