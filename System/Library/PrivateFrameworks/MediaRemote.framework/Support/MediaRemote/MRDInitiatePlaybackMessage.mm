@interface MRDInitiatePlaybackMessage
- (MRDInitiatePlaybackMessage)initWithBundleID:(id)d indexPathData:(id)data;
@end

@implementation MRDInitiatePlaybackMessage

- (MRDInitiatePlaybackMessage)initWithBundleID:(id)d indexPathData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = MRDInitiatePlaybackMessage;
  v8 = [(MRDInitiatePlaybackMessage *)&v14 init];
  if (v8)
  {
    v9 = [dCopy copy];
    bundleID = v8->_bundleID;
    v8->_bundleID = v9;

    v11 = [dataCopy copy];
    indexPathData = v8->_indexPathData;
    v8->_indexPathData = v11;
  }

  return v8;
}

@end