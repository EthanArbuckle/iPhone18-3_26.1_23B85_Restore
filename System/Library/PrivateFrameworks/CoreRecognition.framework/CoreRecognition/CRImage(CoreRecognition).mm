@interface CRImage(CoreRecognition)
- (id)imageByCroppingTextFeature:()CoreRecognition correctedBoundingBox:padding:networkInputSize:;
@end

@implementation CRImage(CoreRecognition)

- (id)imageByCroppingTextFeature:()CoreRecognition correctedBoundingBox:padding:networkInputSize:
{
  v14 = a7;
  v15 = a8;
  [self vImage];
  if ([GeometricCutTools derotateContentsOf:v15 inImage:v19 andOutputTo:v20 withPadding:a2 networkInputSize:a3, a4, a5])
  {
    v16 = objc_alloc(MEMORY[0x277D70088]);
    v19[0] = *v20;
    v19[1] = v21;
    v17 = [v16 initWithVImageBuffer:v19 inColorSpace:0];
    free(v20[0]);
  }

  else
  {
    NSLog(&cfstr_CrimageImageby.isa, v14);
    v17 = 0;
  }

  return v17;
}

@end