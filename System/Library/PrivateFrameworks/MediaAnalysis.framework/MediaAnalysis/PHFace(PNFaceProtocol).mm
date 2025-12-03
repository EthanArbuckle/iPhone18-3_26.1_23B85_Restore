@interface PHFace(PNFaceProtocol)
- (id)faceprintData;
- (void)setQualityMeasure:()PNFaceProtocol;
@end

@implementation PHFace(PNFaceProtocol)

- (id)faceprintData
{
  [self fetchPropertySetsIfNeeded];
  faceClusteringProperties = [self faceClusteringProperties];
  faceprint = [faceClusteringProperties faceprint];
  faceprintData = [faceprint faceprintData];

  return faceprintData;
}

- (void)setQualityMeasure:()PNFaceProtocol
{
  v4 = [MEMORY[0x1E69787E0] changeRequestForFace:self];
  [v4 setQualityMeasure:a3];
}

@end