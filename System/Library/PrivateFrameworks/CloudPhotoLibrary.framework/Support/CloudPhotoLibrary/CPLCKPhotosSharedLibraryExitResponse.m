@interface CPLCKPhotosSharedLibraryExitResponse
- (CKRecordZoneID)stagingZoneID;
- (CPLCKPhotosSharedLibraryExitResponse)init;
- (NSError)error;
- (void)setError:(id)a3;
- (void)setStagingZoneID:(id)a3;
@end

@implementation CPLCKPhotosSharedLibraryExitResponse

- (CKRecordZoneID)stagingZoneID
{
  v3 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_stagingZoneID;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setStagingZoneID:(id)a3
{
  v5 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_stagingZoneID;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (NSError)error
{
  v3 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_error;
  swift_beginAccess();
  if (*(self + v3))
  {
    swift_errorRetain();
    v4 = _convertErrorToNSError(_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setError:(id)a3
{
  v5 = OBJC_IVAR___CPLCKPhotosSharedLibraryExitResponse_error;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = self;
  v8 = a3;
}

- (CPLCKPhotosSharedLibraryExitResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end