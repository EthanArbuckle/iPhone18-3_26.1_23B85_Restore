@interface MKFCloudSyncMetadata
- (void)willSave;
@end

@implementation MKFCloudSyncMetadata

- (void)willSave
{
  v3.receiver = self;
  v3.super_class = MKFCloudSyncMetadata;
  [(MKFCloudSyncMetadata *)&v3 willSave];
  if (([(MKFCloudSyncMetadata *)self unique]& 1) == 0)
  {
    [(MKFCloudSyncMetadata *)self setUnique:1];
  }
}

@end