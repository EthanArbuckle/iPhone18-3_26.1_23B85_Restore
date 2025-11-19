@interface CRSUIClusterThemeLinearGradient
- (CGPoint)endPoint;
- (CGPoint)startPoint;
- (CRSUIClusterThemeLinearGradient)initWithBSXPCCoder:(id)a3;
- (CRSUIClusterThemeLinearGradient)initWithLocations:(id)a3 colors:(id)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CRSUIClusterThemeLinearGradient

- (CRSUIClusterThemeLinearGradient)initWithLocations:(id)a3 colors:(id)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6
{
  y = a6.y;
  x = a6.x;
  v8 = a5.y;
  v9 = a5.x;
  v12 = a3;
  v13 = a4;
  v18.receiver = self;
  v18.super_class = CRSUIClusterThemeLinearGradient;
  v14 = [(CRSUIClusterThemeLinearGradient *)&v18 init];
  if (v14)
  {
    v15 = [v12 copy];
    locations = v14->_locations;
    v14->_locations = v15;

    objc_storeStrong(&v14->_themeColors, a4);
    v14->_startPoint.x = v9;
    v14->_startPoint.y = v8;
    v14->_endPoint.x = x;
    v14->_endPoint.y = y;
  }

  return v14;
}

- (CRSUIClusterThemeLinearGradient)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeCollectionOfClass:v5 containingClass:objc_opt_class() forKey:@"locations"];
  v7 = objc_opt_class();
  v8 = [v4 decodeCollectionOfClass:v7 containingClass:objc_opt_class() forKey:@"colors"];
  [v4 decodeCGPointForKey:@"startPoint"];
  v10 = v9;
  v12 = v11;
  [v4 decodeCGPointForKey:@"endPoint"];
  v14 = v13;
  v16 = v15;

  v17 = [(CRSUIClusterThemeLinearGradient *)self initWithLocations:v6 colors:v8 startPoint:v10 endPoint:v12, v14, v16];
  return v17;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  locations = self->_locations;
  v5 = a3;
  [v5 encodeCollection:locations forKey:@"locations"];
  [v5 encodeCollection:self->_themeColors forKey:@"colors"];
  [v5 encodeCGPoint:@"startPoint" forKey:{self->_startPoint.x, self->_startPoint.y}];
  [v5 encodeCGPoint:@"endPoint" forKey:{self->_endPoint.x, self->_endPoint.y}];
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