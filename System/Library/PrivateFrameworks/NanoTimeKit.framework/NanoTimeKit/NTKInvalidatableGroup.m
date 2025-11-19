@interface NTKInvalidatableGroup
- (NTKInvalidatableGroup)initWithInvalidatables:(id)a3;
@end

@implementation NTKInvalidatableGroup

- (NTKInvalidatableGroup)initWithInvalidatables:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NTKInvalidatableGroup;
  v5 = [(NTKInvalidatableGroup *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    invalidatables = v5->_invalidatables;
    v5->_invalidatables = v6;
  }

  return v5;
}

@end