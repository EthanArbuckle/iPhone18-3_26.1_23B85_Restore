@interface HMIFeedbackClipMetadata
- (HMIFeedbackClipMetadata)initWithClipMetadata:(id)a3 cameraMetadata:(id)a4 homeMetadata:(id)a5;
@end

@implementation HMIFeedbackClipMetadata

- (HMIFeedbackClipMetadata)initWithClipMetadata:(id)a3 cameraMetadata:(id)a4 homeMetadata:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMIFeedbackClipMetadata;
  v12 = [(HMIFeedbackClipMetadata *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_clipMetadata, a3);
    objc_storeStrong(&v13->_cameraMetadata, a4);
    objc_storeStrong(&v13->_homeMetadata, a5);
  }

  return v13;
}

@end