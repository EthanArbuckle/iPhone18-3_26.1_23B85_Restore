@interface VCPVideoFaceDetector
+ (id)faceDetectorWithTransform:(CGAffineTransform *)transform withExistingFaceprints:(id)faceprints tracking:(BOOL)tracking faceDominated:(BOOL)dominated cancel:(id)cancel;
@end

@implementation VCPVideoFaceDetector

+ (id)faceDetectorWithTransform:(CGAffineTransform *)transform withExistingFaceprints:(id)faceprints tracking:(BOOL)tracking faceDominated:(BOOL)dominated cancel:(id)cancel
{
  dominatedCopy = dominated;
  trackingCopy = tracking;
  faceprintsCopy = faceprints;
  if (trackingCopy)
  {
    v11 = [VCPVideoFullFaceDetector alloc];
    v12 = *&transform->c;
    v18 = *&transform->a;
    v19 = v12;
    v20 = *&transform->tx;
    v13 = [(VCPVideoFullFaceDetector *)v11 initWithTransform:&v18 withExistingFaceprints:faceprintsCopy];
  }

  else
  {
    v14 = [VCPVideoLightFaceDetector alloc];
    v15 = *&transform->c;
    v18 = *&transform->a;
    v19 = v15;
    v20 = *&transform->tx;
    v13 = [(VCPVideoLightFaceDetector *)v14 initWithTransform:&v18 faceDominated:dominatedCopy];
  }

  v16 = v13;

  return v16;
}

@end