@interface HFAnalyticsFaceRecognitionOpenPhotosLibraryPeopleAlbumEvent
- (HFAnalyticsFaceRecognitionOpenPhotosLibraryPeopleAlbumEvent)initWithData:(id)a3;
@end

@implementation HFAnalyticsFaceRecognitionOpenPhotosLibraryPeopleAlbumEvent

- (HFAnalyticsFaceRecognitionOpenPhotosLibraryPeopleAlbumEvent)initWithData:(id)a3
{
  v4.receiver = self;
  v4.super_class = HFAnalyticsFaceRecognitionOpenPhotosLibraryPeopleAlbumEvent;
  return [(HFAnalyticsEvent *)&v4 initWithEventType:6];
}

@end