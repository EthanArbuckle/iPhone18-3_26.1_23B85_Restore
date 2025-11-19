@interface VCPPhotosFacePair
+ (id)pairWithFace:(id)a3 andFace:(id)a4 distance:(double)a5;
- (VCPPhotosFacePair)initWithFace:(id)a3 andFace:(id)a4 distance:(double)a5;
@end

@implementation VCPPhotosFacePair

- (VCPPhotosFacePair)initWithFace:(id)a3 andFace:(id)a4 distance:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = VCPPhotosFacePair;
  v11 = [(VCPPhotosFacePair *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_face1, a3);
    objc_storeStrong(&v12->_face2, a4);
    v12->_distance = a5;
  }

  return v12;
}

+ (id)pairWithFace:(id)a3 andFace:(id)a4 distance:(double)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_alloc(objc_opt_class()) initWithFace:v8 andFace:v7 distance:a5];

  return v9;
}

@end