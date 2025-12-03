@interface HFAnalyticsFaceRecognitionOpenPhotosLibraryPeopleAlbumEvent
- (HFAnalyticsFaceRecognitionOpenPhotosLibraryPeopleAlbumEvent)initWithData:(id)data;
@end

@implementation HFAnalyticsFaceRecognitionOpenPhotosLibraryPeopleAlbumEvent

- (HFAnalyticsFaceRecognitionOpenPhotosLibraryPeopleAlbumEvent)initWithData:(id)data
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsFaceRecognitionOpenPhotosLibraryPeopleAlbumEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:6];
}

@end