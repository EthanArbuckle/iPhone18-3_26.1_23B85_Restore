@interface PHFace(PNFaceProtocol)
- (id)faceprintData;
- (void)setQualityMeasure:()PNFaceProtocol;
@end

@implementation PHFace(PNFaceProtocol)

- (id)faceprintData
{
  [a1 fetchPropertySetsIfNeeded];
  v2 = [a1 faceClusteringProperties];
  v3 = [v2 faceprint];
  v4 = [v3 faceprintData];

  return v4;
}

- (void)setQualityMeasure:()PNFaceProtocol
{
  v4 = [MEMORY[0x1E69787E0] changeRequestForFace:a1];
  [v4 setQualityMeasure:a3];
}

@end