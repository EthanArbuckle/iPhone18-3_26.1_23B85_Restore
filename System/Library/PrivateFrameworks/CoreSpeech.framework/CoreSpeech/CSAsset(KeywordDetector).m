@interface CSAsset(KeywordDetector)
- (float)keywordDetectorThreshold;
- (float)keywordDetectorWaitTimeSinceVT;
- (id)keywordDetectorConfigPathRecognizer;
@end

@implementation CSAsset(KeywordDetector)

- (float)keywordDetectorWaitTimeSinceVT
{
  v1 = [a1 getNumberForKey:@"waitTimeSinceVT" category:@"keywordDetector" default:&unk_283668168];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

- (id)keywordDetectorConfigPathRecognizer
{
  v2 = [a1 resourcePath];
  v3 = [a1 getStringForKey:@"configFileRecognizer" category:@"keywordDetector" default:@"keyword_detector.json"];
  v4 = [v2 stringByAppendingPathComponent:v3];

  return v4;
}

- (float)keywordDetectorThreshold
{
  v1 = [a1 getNumberForKey:@"threshold" category:@"keywordDetector" default:&unk_283668158];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

@end