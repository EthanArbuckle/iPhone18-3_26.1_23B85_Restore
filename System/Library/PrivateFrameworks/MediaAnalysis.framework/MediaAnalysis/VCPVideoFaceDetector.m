@interface VCPVideoFaceDetector
+ (id)faceDetectorWithTransform:(CGAffineTransform *)a3 withExistingFaceprints:(id)a4 tracking:(BOOL)a5 faceDominated:(BOOL)a6 cancel:(id)a7;
@end

@implementation VCPVideoFaceDetector

+ (id)faceDetectorWithTransform:(CGAffineTransform *)a3 withExistingFaceprints:(id)a4 tracking:(BOOL)a5 faceDominated:(BOOL)a6 cancel:(id)a7
{
  v7 = a6;
  v8 = a5;
  v10 = a4;
  if (v8)
  {
    v11 = [VCPVideoFullFaceDetector alloc];
    v12 = *&a3->c;
    v18 = *&a3->a;
    v19 = v12;
    v20 = *&a3->tx;
    v13 = [(VCPVideoFullFaceDetector *)v11 initWithTransform:&v18 withExistingFaceprints:v10];
  }

  else
  {
    v14 = [VCPVideoLightFaceDetector alloc];
    v15 = *&a3->c;
    v18 = *&a3->a;
    v19 = v15;
    v20 = *&a3->tx;
    v13 = [(VCPVideoLightFaceDetector *)v14 initWithTransform:&v18 faceDominated:v7];
  }

  v16 = v13;

  return v16;
}

@end