@interface CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem
- (CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem)init;
- (NSNumber)errorCode;
- (void)setErrorCode:(id)code;
@end

@implementation CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem

- (NSNumber)errorCode
{
  v3 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_errorCode;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setErrorCode:(id)code
{
  v5 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_errorCode;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = code;
  codeCopy = code;
}

- (CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem)init
{
  v3 = (self + OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_originRecordID);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = (self + OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_destinationRecordID);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (self + OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_errorMessage);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_errorCode;
  *(self + v6) = [objc_allocWithZone(NSNumber) init];
  v7 = (self + OBJC_IVAR___CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem_errorDomain);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  v9.receiver = self;
  v9.super_class = type metadata accessor for CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem();
  return [(CPLCKPhotosSharedLibraryExitMoveBatchFeedbackItem *)&v9 init];
}

@end