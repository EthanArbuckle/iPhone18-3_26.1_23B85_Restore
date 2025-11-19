@interface MADDetectedFace
+ (id)entryWithFaceID:(int)a3 confidence:(double)a4 boundingBox:(CGRect)a5;
+ (id)entryWithFaceID:(int)a3 confidence:(double)a4 boundingBox:(CGRect)a5 videoEntries:(id)a6;
- (CGRect)boundingBox;
- (MADDetectedFace)initWithCoder:(id)a3;
- (MADDetectedFace)initWithFaceID:(int)a3 confidence:(double)a4 boundingBox:(CGRect)a5 videoEntries:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADDetectedFace

- (MADDetectedFace)initWithFaceID:(int)a3 confidence:(double)a4 boundingBox:(CGRect)a5 videoEntries:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = MADDetectedFace;
  v15 = [(MADDetectedFace *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_faceID = a3;
    v15->_confidence = a4;
    v15->_boundingBox.origin.x = x;
    v15->_boundingBox.origin.y = y;
    v15->_boundingBox.size.width = width;
    v15->_boundingBox.size.height = height;
    objc_storeStrong(&v15->_videoEntries, a6);
  }

  return v16;
}

+ (id)entryWithFaceID:(int)a3 confidence:(double)a4 boundingBox:(CGRect)a5
{
  v5 = [[a1 alloc] initWithFaceID:*&a3 confidence:0 boundingBox:a4 videoEntries:{a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];

  return v5;
}

+ (id)entryWithFaceID:(int)a3 confidence:(double)a4 boundingBox:(CGRect)a5 videoEntries:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = *&a3;
  v13 = a6;
  v14 = [[a1 alloc] initWithFaceID:v11 confidence:v13 boundingBox:a4 videoEntries:{x, y, width, height}];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeDouble:@"Confidence" forKey:self->_confidence];
  [v4 encodeRect:@"BoundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
  [v4 encodeObject:self->_videoEntries forKey:@"VideoEntries"];
}

- (MADDetectedFace)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MADDetectedFace;
  v5 = [(MADDetectedFace *)&v17 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"Confidence"];
    v5->_confidence = v6;
    [v4 decodeRectForKey:@"BoundingBox"];
    v5->_boundingBox.origin.x = v7;
    v5->_boundingBox.origin.y = v8;
    v5->_boundingBox.size.width = v9;
    v5->_boundingBox.size.height = v10;
    v11 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"VideoEntries"];
    videoEntries = v5->_videoEntries;
    v5->_videoEntries = v14;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [(MADDetectedFace *)self boundingBox];
  v6 = NSStringFromRect(v11);
  [v3 appendFormat:@"%@: %@, ", @"BoundingBox", v6];

  [(MADDetectedFace *)self confidence];
  [v3 appendFormat:@"%@: %.2f ", @"Confidence", v7];
  v8 = [(MADDetectedFace *)self videoEntries];
  [v3 appendFormat:@"%@: %lu count>", @"VideoEntries", objc_msgSend(v8, "count")];

  return v3;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end