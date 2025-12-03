@interface PXPhotosLayoutAnimationContext
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXPhotosLayoutAnimationContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(PXPhotosLayoutAnimationContext);
  fromState = [(PXPhotosLayoutAnimationContext *)self fromState];
  v6 = [fromState copy];
  [(PXPhotosLayoutAnimationContext *)v4 setFromState:v6];

  toState = [(PXPhotosLayoutAnimationContext *)self toState];
  v8 = [toState copy];
  [(PXPhotosLayoutAnimationContext *)v4 setToState:v8];

  return v4;
}

@end