@interface MRDInitiatePlaybackMessage
- (MRDInitiatePlaybackMessage)initWithBundleID:(id)a3 indexPathData:(id)a4;
@end

@implementation MRDInitiatePlaybackMessage

- (MRDInitiatePlaybackMessage)initWithBundleID:(id)a3 indexPathData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MRDInitiatePlaybackMessage;
  v8 = [(MRDInitiatePlaybackMessage *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    bundleID = v8->_bundleID;
    v8->_bundleID = v9;

    v11 = [v7 copy];
    indexPathData = v8->_indexPathData;
    v8->_indexPathData = v11;
  }

  return v8;
}

@end