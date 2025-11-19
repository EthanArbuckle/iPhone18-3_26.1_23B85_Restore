@interface CKBrowserFullscreenCubicSpringTimingParameters
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CKBrowserFullscreenCubicSpringTimingParameters

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = CKBrowserFullscreenCubicSpringTimingParameters;
  v4 = [(CKBrowserFullscreenCubicSpringTimingParameters *)&v7 copyWithZone:a3];
  v5 = [(CKBrowserFullscreenCubicSpringTimingParameters *)self springCubicTimingParameters];
  [v4 setSpringCubicTimingParameters:v5];

  return v4;
}

@end