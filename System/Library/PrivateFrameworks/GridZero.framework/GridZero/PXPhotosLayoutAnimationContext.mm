@interface PXPhotosLayoutAnimationContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXPhotosLayoutAnimationContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PXPhotosLayoutAnimationContext);
  v5 = [(PXPhotosLayoutAnimationContext *)self fromState];
  v6 = [v5 copy];
  [(PXPhotosLayoutAnimationContext *)v4 setFromState:v6];

  v7 = [(PXPhotosLayoutAnimationContext *)self toState];
  v8 = [v7 copy];
  [(PXPhotosLayoutAnimationContext *)v4 setToState:v8];

  return v4;
}

@end