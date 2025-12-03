@interface CAMTextRegionResult
- (CAMTextRegionResult)initWithTextRegionObject:(id)object;
- (CGRect)bounds;
- (NSString)description;
- (float)confidence;
@end

@implementation CAMTextRegionResult

- (CAMTextRegionResult)initWithTextRegionObject:(id)object
{
  objectCopy = object;
  v19.receiver = self;
  v19.super_class = CAMTextRegionResult;
  v6 = [(CAMTextRegionResult *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__metadataTextRegionObject, object);
    [objectCopy angularOffsetBounds];
    v7->_bounds.origin.x = v8;
    v7->_bounds.origin.y = v9;
    v7->_bounds.size.width = v10;
    v7->_bounds.size.height = v11;
    [objectCopy angularOffset];
    v7->_baselineAngle = v12 * 3.14159265 / 180.0;
    v13 = MEMORY[0x1E696AEC0];
    metadataType = [(CAMTextRegionResult *)v7 metadataType];
    v15 = [v13 stringWithFormat:@"%@ %ld", metadataType, objc_msgSend(objectCopy, "regionID")];
    uniqueIdentifier = v7->_uniqueIdentifier;
    v7->_uniqueIdentifier = v15;

    v17 = v7;
  }

  return v7;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  _metadataTextRegionObject = [(CAMTextRegionResult *)self _metadataTextRegionObject];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier: %ld>", v5, self, objc_msgSend(_metadataTextRegionObject, "regionID")];

  return v7;
}

- (float)confidence
{
  _metadataTextRegionObject = [(CAMTextRegionResult *)self _metadataTextRegionObject];
  [_metadataTextRegionObject confidence];
  v4 = v3;

  return v4;
}

- (CGRect)bounds
{
  x = self->_bounds.origin.x;
  y = self->_bounds.origin.y;
  width = self->_bounds.size.width;
  height = self->_bounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end