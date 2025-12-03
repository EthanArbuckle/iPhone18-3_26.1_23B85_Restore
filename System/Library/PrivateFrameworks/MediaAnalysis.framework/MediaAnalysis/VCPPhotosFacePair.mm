@interface VCPPhotosFacePair
+ (id)pairWithFace:(id)face andFace:(id)andFace distance:(double)distance;
- (VCPPhotosFacePair)initWithFace:(id)face andFace:(id)andFace distance:(double)distance;
@end

@implementation VCPPhotosFacePair

- (VCPPhotosFacePair)initWithFace:(id)face andFace:(id)andFace distance:(double)distance
{
  faceCopy = face;
  andFaceCopy = andFace;
  v14.receiver = self;
  v14.super_class = VCPPhotosFacePair;
  v11 = [(VCPPhotosFacePair *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_face1, face);
    objc_storeStrong(&v12->_face2, andFace);
    v12->_distance = distance;
  }

  return v12;
}

+ (id)pairWithFace:(id)face andFace:(id)andFace distance:(double)distance
{
  andFaceCopy = andFace;
  faceCopy = face;
  v9 = [objc_alloc(objc_opt_class()) initWithFace:faceCopy andFace:andFaceCopy distance:distance];

  return v9;
}

@end