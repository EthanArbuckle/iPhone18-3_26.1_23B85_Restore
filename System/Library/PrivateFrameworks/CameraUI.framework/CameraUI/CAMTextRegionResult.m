@interface CAMTextRegionResult
- (CAMTextRegionResult)initWithTextRegionObject:(id)a3;
- (CGRect)bounds;
- (NSString)description;
- (float)confidence;
@end

@implementation CAMTextRegionResult

- (CAMTextRegionResult)initWithTextRegionObject:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = CAMTextRegionResult;
  v6 = [(CAMTextRegionResult *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__metadataTextRegionObject, a3);
    [v5 angularOffsetBounds];
    v7->_bounds.origin.x = v8;
    v7->_bounds.origin.y = v9;
    v7->_bounds.size.width = v10;
    v7->_bounds.size.height = v11;
    [v5 angularOffset];
    v7->_baselineAngle = v12 * 3.14159265 / 180.0;
    v13 = MEMORY[0x1E696AEC0];
    v14 = [(CAMTextRegionResult *)v7 metadataType];
    v15 = [v13 stringWithFormat:@"%@ %ld", v14, objc_msgSend(v5, "regionID")];
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
  v6 = [(CAMTextRegionResult *)self _metadataTextRegionObject];
  v7 = [v3 stringWithFormat:@"<%@: %p identifier: %ld>", v5, self, objc_msgSend(v6, "regionID")];

  return v7;
}

- (float)confidence
{
  v2 = [(CAMTextRegionResult *)self _metadataTextRegionObject];
  [v2 confidence];
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