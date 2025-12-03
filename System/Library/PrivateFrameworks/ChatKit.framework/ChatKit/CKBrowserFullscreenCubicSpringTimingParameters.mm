@interface CKBrowserFullscreenCubicSpringTimingParameters
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CKBrowserFullscreenCubicSpringTimingParameters

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = CKBrowserFullscreenCubicSpringTimingParameters;
  v4 = [(CKBrowserFullscreenCubicSpringTimingParameters *)&v7 copyWithZone:zone];
  springCubicTimingParameters = [(CKBrowserFullscreenCubicSpringTimingParameters *)self springCubicTimingParameters];
  [v4 setSpringCubicTimingParameters:springCubicTimingParameters];

  return v4;
}

@end