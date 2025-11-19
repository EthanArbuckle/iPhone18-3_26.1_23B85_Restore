@interface BiometricKitEnrollProgressMergedComponent
- (BiometricKitEnrollProgressMergedComponent)init;
- (void)dealloc;
@end

@implementation BiometricKitEnrollProgressMergedComponent

- (BiometricKitEnrollProgressMergedComponent)init
{
  v6.receiver = self;
  v6.super_class = BiometricKitEnrollProgressMergedComponent;
  v2 = [(BiometricKitEnrollProgressMergedComponent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    transformationCoordinates = v2->_transformationCoordinates;
    v2->_transformationCoordinates = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(BiometricKitEnrollProgressMergedComponent *)self setTransformationCoordinates:0];
  v3.receiver = self;
  v3.super_class = BiometricKitEnrollProgressMergedComponent;
  [(BiometricKitEnrollProgressMergedComponent *)&v3 dealloc];
}

@end