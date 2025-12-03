@interface MADSceneClassification
+ (id)entryWithLabel:(id)label confidence:(double)confidence boundingBox:(CGRect)box;
+ (id)entryWithLabel:(id)label confidence:(double)confidence boundingBox:(CGRect)box videoEntries:(id)entries;
- (CGRect)boundingBox;
- (MADSceneClassification)initWithCoder:(id)coder;
- (MADSceneClassification)initWithLabel:(id)label confidence:(double)confidence boundingBox:(CGRect)box videoEntries:(id)entries;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADSceneClassification

- (MADSceneClassification)initWithLabel:(id)label confidence:(double)confidence boundingBox:(CGRect)box videoEntries:(id)entries
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  labelCopy = label;
  entriesCopy = entries;
  v19.receiver = self;
  v19.super_class = MADSceneClassification;
  v16 = [(MADSceneClassification *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_label, label);
    v17->_confidence = confidence;
    v17->_boundingBox.origin.x = x;
    v17->_boundingBox.origin.y = y;
    v17->_boundingBox.size.width = width;
    v17->_boundingBox.size.height = height;
    objc_storeStrong(&v17->_videoEntries, entries);
  }

  return v17;
}

+ (id)entryWithLabel:(id)label confidence:(double)confidence boundingBox:(CGRect)box
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  labelCopy = label;
  v12 = [[self alloc] initWithLabel:labelCopy confidence:0 boundingBox:confidence videoEntries:{x, y, width, height}];

  return v12;
}

+ (id)entryWithLabel:(id)label confidence:(double)confidence boundingBox:(CGRect)box videoEntries:(id)entries
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  labelCopy = label;
  entriesCopy = entries;
  v15 = [[self alloc] initWithLabel:labelCopy confidence:entriesCopy boundingBox:confidence videoEntries:{x, y, width, height}];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_label forKey:@"Label"];
  [coderCopy encodeDouble:@"Confidence" forKey:self->_confidence];
  [coderCopy encodeRect:@"BoundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
  [coderCopy encodeObject:self->_videoEntries forKey:@"VideoEntries"];
}

- (MADSceneClassification)initWithCoder:(id)coder
{
  v20[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MADSceneClassification;
  v5 = [(MADSceneClassification *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v6;

    [coderCopy decodeDoubleForKey:@"Confidence"];
    v5->_confidence = v8;
    [coderCopy decodeRectForKey:@"BoundingBox"];
    v5->_boundingBox.origin.x = v9;
    v5->_boundingBox.origin.y = v10;
    v5->_boundingBox.size.width = v11;
    v5->_boundingBox.size.height = v12;
    v13 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v15 = [v13 setWithArray:v14];

    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"VideoEntries"];
    videoEntries = v5->_videoEntries;
    v5->_videoEntries = v16;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  label = [(MADSceneClassification *)self label];
  [string appendFormat:@"%@: %@, ", @"Label", label];

  [(MADSceneClassification *)self boundingBox];
  if (v7 != 0.0)
  {
    [(MADSceneClassification *)self boundingBox];
    v8 = NSStringFromRect(v13);
    [string appendFormat:@"%@: %@, ", @"BoundingBox", v8];
  }

  [(MADSceneClassification *)self confidence];
  [string appendFormat:@"%@: %.2f ", @"Confidence", v9];
  videoEntries = [(MADSceneClassification *)self videoEntries];
  [string appendFormat:@"%@: %lu count>", @"VideoEntries", objc_msgSend(videoEntries, "count")];

  return string;
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