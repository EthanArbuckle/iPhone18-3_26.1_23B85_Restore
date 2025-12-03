@interface CSAsset(KeywordDetector)
- (float)keywordDetectorThreshold;
- (float)keywordDetectorWaitTimeSinceVT;
- (id)keywordDetectorConfigPathRecognizer;
@end

@implementation CSAsset(KeywordDetector)

- (float)keywordDetectorWaitTimeSinceVT
{
  v1 = [self getNumberForKey:@"waitTimeSinceVT" category:@"keywordDetector" default:&unk_283668168];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (id)keywordDetectorConfigPathRecognizer
{
  resourcePath = [self resourcePath];
  v3 = [self getStringForKey:@"configFileRecognizer" category:@"keywordDetector" default:@"keyword_detector.json"];
  v4 = [resourcePath stringByAppendingPathComponent:v3];

  return v4;
}

- (float)keywordDetectorThreshold
{
  v1 = [self getNumberForKey:@"threshold" category:@"keywordDetector" default:&unk_283668158];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

@end