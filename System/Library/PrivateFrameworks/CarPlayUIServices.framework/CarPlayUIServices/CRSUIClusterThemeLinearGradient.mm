@interface CRSUIClusterThemeLinearGradient
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (CRSUIClusterThemeLinearGradient)initWithBSXPCCoder:(id)coder;
- (CRSUIClusterThemeLinearGradient)initWithLocations:(id)locations colors:(id)colors startPoint:(CGPoint)point endPoint:(CGPoint)endPoint;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CRSUIClusterThemeLinearGradient

- (CRSUIClusterThemeLinearGradient)initWithLocations:(id)locations colors:(id)colors startPoint:(CGPoint)point endPoint:(CGPoint)endPoint
{
  y = endPoint.y;
  x = endPoint.x;
  v8 = point.y;
  v9 = point.x;
  locationsCopy = locations;
  colorsCopy = colors;
  v18.receiver = self;
  v18.super_class = CRSUIClusterThemeLinearGradient;
  v14 = [(CRSUIClusterThemeLinearGradient *)&v18 init];
  if (v14)
  {
    v15 = [locationsCopy copy];
    locations = v14->_locations;
    v14->_locations = v15;

    objc_storeStrong(&v14->_themeColors, colors);
    v14->_startPoint.x = v9;
    v14->_startPoint.y = v8;
    v14->_endPoint.x = x;
    v14->_endPoint.y = y;
  }

  return v14;
}

- (CRSUIClusterThemeLinearGradient)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"locations"];
  v7 = objc_opt_class();
  v8 = [coderCopy decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"colors"];
  [coderCopy decodeCGPointForKey:@"startPoint"];
  v10 = v9;
  v12 = v11;
  [coderCopy decodeCGPointForKey:@"endPoint"];
  v14 = v13;
  v16 = v15;

  v17 = [(CRSUIClusterThemeLinearGradient *)self initWithLocations:v6 colors:v8 startPoint:v10 endPoint:v12, v14, v16];
  return v17;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  locations = self->_locations;
  coderCopy = coder;
  [coderCopy encodeCollection:locations forKey:@"locations"];
  [coderCopy encodeCollection:self->_themeColors forKey:@"colors"];
  [coderCopy encodeCGPoint:@"startPoint" forKey:{self->_startPoint.x, self->_startPoint.y}];
  [coderCopy encodeCGPoint:@"endPoint" forKey:{self->_endPoint.x, self->_endPoint.y}];
}

- (CGPoint)startPoint
{
  x = self->_startPoint.x;
  y = self->_startPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)endPoint
{
  x = self->_endPoint.x;
  y = self->_endPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end