@interface MADSceneClassification
+ (id)entryWithLabel:(id)a3 confidence:(double)a4 boundingBox:(CGRect)a5;
+ (id)entryWithLabel:(id)a3 confidence:(double)a4 boundingBox:(CGRect)a5 videoEntries:(id)a6;
- (CGRect)boundingBox;
- (MADSceneClassification)initWithCoder:(id)a3;
- (MADSceneClassification)initWithLabel:(id)a3 confidence:(double)a4 boundingBox:(CGRect)a5 videoEntries:(id)a6;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADSceneClassification

- (MADSceneClassification)initWithLabel:(id)a3 confidence:(double)a4 boundingBox:(CGRect)a5 videoEntries:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v14 = a3;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = MADSceneClassification;
  v16 = [(MADSceneClassification *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_label, a3);
    v17->_confidence = a4;
    v17->_boundingBox.origin.x = x;
    v17->_boundingBox.origin.y = y;
    v17->_boundingBox.size.width = width;
    v17->_boundingBox.size.height = height;
    objc_storeStrong(&v17->_videoEntries, a6);
  }

  return v17;
}

+ (id)entryWithLabel:(id)a3 confidence:(double)a4 boundingBox:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3;
  v12 = [[a1 alloc] initWithLabel:v11 confidence:0 boundingBox:a4 videoEntries:{x, y, width, height}];

  return v12;
}

+ (id)entryWithLabel:(id)a3 confidence:(double)a4 boundingBox:(CGRect)a5 videoEntries:(id)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = a3;
  v14 = a6;
  v15 = [[a1 alloc] initWithLabel:v13 confidence:v14 boundingBox:a4 videoEntries:{x, y, width, height}];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_label forKey:@"Label"];
  [v4 encodeDouble:@"Confidence" forKey:self->_confidence];
  [v4 encodeRect:@"BoundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
  [v4 encodeObject:self->_videoEntries forKey:@"VideoEntries"];
}

- (MADSceneClassification)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MADSceneClassification;
  v5 = [(MADSceneClassification *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v6;

    [v4 decodeDoubleForKey:@"Confidence"];
    v5->_confidence = v8;
    [v4 decodeRectForKey:@"BoundingBox"];
    v5->_boundingBox.origin.x = v9;
    v5->_boundingBox.origin.y = v10;
    v5->_boundingBox.size.width = v11;
    v5->_boundingBox.size.height = v12;
    v13 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v15 = [v13 setWithArray:v14];

    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"VideoEntries"];
    videoEntries = v5->_videoEntries;
    v5->_videoEntries = v16;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  v6 = [(MADSceneClassification *)self label];
  [v3 appendFormat:@"%@: %@, ", @"Label", v6];

  [(MADSceneClassification *)self boundingBox];
  if (v7 != 0.0)
  {
    [(MADSceneClassification *)self boundingBox];
    v8 = NSStringFromRect(v13);
    [v3 appendFormat:@"%@: %@, ", @"BoundingBox", v8];
  }

  [(MADSceneClassification *)self confidence];
  [v3 appendFormat:@"%@: %.2f ", @"Confidence", v9];
  v10 = [(MADSceneClassification *)self videoEntries];
  [v3 appendFormat:@"%@: %lu count>", @"VideoEntries", objc_msgSend(v10, "count")];

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