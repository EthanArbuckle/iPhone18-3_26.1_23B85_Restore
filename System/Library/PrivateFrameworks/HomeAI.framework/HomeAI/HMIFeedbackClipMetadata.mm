@interface HMIFeedbackClipMetadata
- (HMIFeedbackClipMetadata)initWithClipMetadata:(id)metadata cameraMetadata:(id)cameraMetadata homeMetadata:(id)homeMetadata;
@end

@implementation HMIFeedbackClipMetadata

- (HMIFeedbackClipMetadata)initWithClipMetadata:(id)metadata cameraMetadata:(id)cameraMetadata homeMetadata:(id)homeMetadata
{
  metadataCopy = metadata;
  cameraMetadataCopy = cameraMetadata;
  homeMetadataCopy = homeMetadata;
  v15.receiver = self;
  v15.super_class = HMIFeedbackClipMetadata;
  v12 = [(HMIFeedbackClipMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clipMetadata, metadata);
    objc_storeStrong(&v13->_cameraMetadata, cameraMetadata);
    objc_storeStrong(&v13->_homeMetadata, homeMetadata);
  }

  return v13;
}

@end