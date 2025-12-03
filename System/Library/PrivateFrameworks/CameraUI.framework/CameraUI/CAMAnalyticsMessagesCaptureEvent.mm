@interface CAMAnalyticsMessagesCaptureEvent
- (CAMAnalyticsMessagesCaptureEvent)init;
- (void)populateFromReviewAsset:(id)asset withSourceType:(unint64_t)type;
@end

@implementation CAMAnalyticsMessagesCaptureEvent

- (CAMAnalyticsMessagesCaptureEvent)init
{
  v6.receiver = self;
  v6.super_class = CAMAnalyticsMessagesCaptureEvent;
  v2 = [(CAMAnalyticsEvent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

- (void)populateFromReviewAsset:(id)asset withSourceType:(unint64_t)type
{
  assetCopy = asset;
  _eventMap = [(CAMAnalyticsEvent *)self _eventMap];
  v12 = _eventMap;
  if (type == 2)
  {
    v8 = @"MessagesCamera";
  }

  else
  {
    v8 = 0;
  }

  [_eventMap setObject:v8 forKeyedSubscript:@"Origin"];
  mediaType = [assetCopy mediaType];

  v10 = @"Photo";
  if (mediaType != 1)
  {
    v10 = 0;
  }

  if (mediaType == 2)
  {
    v11 = @"Video";
  }

  else
  {
    v11 = v10;
  }

  [v12 setObject:v11 forKeyedSubscript:@"CaptureType"];
}

@end