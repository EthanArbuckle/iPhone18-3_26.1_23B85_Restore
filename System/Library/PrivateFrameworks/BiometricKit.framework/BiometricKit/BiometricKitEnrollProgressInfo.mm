@interface BiometricKitEnrollProgressInfo
- (BiometricKitEnrollProgressInfo)init;
- (void)dealloc;
@end

@implementation BiometricKitEnrollProgressInfo

- (BiometricKitEnrollProgressInfo)init
{
  v8.receiver = self;
  v8.super_class = BiometricKitEnrollProgressInfo;
  v2 = [(BiometricKitEnrollProgressInfo *)&v8 init];
  v3 = v2;
  if (v2)
  {
    messageDetails = v2->_messageDetails;
    v2->_messageDetails = 0;

    captureImage = v3->_captureImage;
    v3->_captureImage = 0;

    renderedImage = v3->_renderedImage;
    v3->_renderedImage = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(BiometricKitEnrollProgressInfo *)self setMessageDetails:0];
  [(BiometricKitEnrollProgressInfo *)self setCaptureImage:0];
  [(BiometricKitEnrollProgressInfo *)self setRenderedImage:0];
  v3.receiver = self;
  v3.super_class = BiometricKitEnrollProgressInfo;
  [(BiometricKitEnrollProgressInfo *)&v3 dealloc];
}

@end