@interface MADDetectedFace
+ (id)entryWithFaceID:(int)d confidence:(double)confidence boundingBox:(CGRect)box;
+ (id)entryWithFaceID:(int)d confidence:(double)confidence boundingBox:(CGRect)box videoEntries:(id)entries;
- (CGRect)boundingBox;
- (MADDetectedFace)initWithCoder:(id)coder;
- (MADDetectedFace)initWithFaceID:(int)d confidence:(double)confidence boundingBox:(CGRect)box videoEntries:(id)entries;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADDetectedFace

- (MADDetectedFace)initWithFaceID:(int)d confidence:(double)confidence boundingBox:(CGRect)box videoEntries:(id)entries
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  entriesCopy = entries;
  v18.receiver = self;
  v18.super_class = MADDetectedFace;
  v15 = [(MADDetectedFace *)&v18 init];
  v16 = v15;
  if (v15)
  {
    v15->_faceID = d;
    v15->_confidence = confidence;
    v15->_boundingBox.origin.x = x;
    v15->_boundingBox.origin.y = y;
    v15->_boundingBox.size.width = width;
    v15->_boundingBox.size.height = height;
    objc_storeStrong(&v15->_videoEntries, entries);
  }

  return v16;
}

+ (id)entryWithFaceID:(int)d confidence:(double)confidence boundingBox:(CGRect)box
{
  v5 = [[self alloc] initWithFaceID:*&d confidence:0 boundingBox:confidence videoEntries:{box.origin.x, box.origin.y, box.size.width, box.size.height}];

  return v5;
}

+ (id)entryWithFaceID:(int)d confidence:(double)confidence boundingBox:(CGRect)box videoEntries:(id)entries
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  v11 = *&d;
  entriesCopy = entries;
  v14 = [[self alloc] initWithFaceID:v11 confidence:entriesCopy boundingBox:confidence videoEntries:{x, y, width, height}];

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeDouble:@"Confidence" forKey:self->_confidence];
  [coderCopy encodeRect:@"BoundingBox" forKey:{self->_boundingBox.origin.x, self->_boundingBox.origin.y, self->_boundingBox.size.width, self->_boundingBox.size.height}];
  [coderCopy encodeObject:self->_videoEntries forKey:@"VideoEntries"];
}

- (MADDetectedFace)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MADDetectedFace;
  v5 = [(MADDetectedFace *)&v17 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"Confidence"];
    v5->_confidence = v6;
    [coderCopy decodeRectForKey:@"BoundingBox"];
    v5->_boundingBox.origin.x = v7;
    v5->_boundingBox.origin.y = v8;
    v5->_boundingBox.size.width = v9;
    v5->_boundingBox.size.height = v10;
    v11 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v13 = [v11 setWithArray:v12];

    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"VideoEntries"];
    videoEntries = v5->_videoEntries;
    v5->_videoEntries = v14;
  }

  return v5;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [(MADDetectedFace *)self boundingBox];
  v6 = NSStringFromRect(v11);
  [string appendFormat:@"%@: %@, ", @"BoundingBox", v6];

  [(MADDetectedFace *)self confidence];
  [string appendFormat:@"%@: %.2f ", @"Confidence", v7];
  videoEntries = [(MADDetectedFace *)self videoEntries];
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