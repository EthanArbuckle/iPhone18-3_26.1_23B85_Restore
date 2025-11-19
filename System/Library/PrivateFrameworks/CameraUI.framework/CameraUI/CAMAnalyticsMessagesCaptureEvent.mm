@interface CAMAnalyticsMessagesCaptureEvent
- (CAMAnalyticsMessagesCaptureEvent)init;
- (void)populateFromReviewAsset:(id)a3 withSourceType:(unint64_t)a4;
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

- (void)populateFromReviewAsset:(id)a3 withSourceType:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CAMAnalyticsEvent *)self _eventMap];
  v12 = v7;
  if (a4 == 2)
  {
    v8 = @"MessagesCamera";
  }

  else
  {
    v8 = 0;
  }

  [v7 setObject:v8 forKeyedSubscript:@"Origin"];
  v9 = [v6 mediaType];

  v10 = @"Photo";
  if (v9 != 1)
  {
    v10 = 0;
  }

  if (v9 == 2)
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