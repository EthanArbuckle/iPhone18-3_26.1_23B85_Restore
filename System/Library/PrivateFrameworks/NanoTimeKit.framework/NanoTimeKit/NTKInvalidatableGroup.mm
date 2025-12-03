@interface NTKInvalidatableGroup
- (NTKInvalidatableGroup)initWithInvalidatables:(id)invalidatables;
@end

@implementation NTKInvalidatableGroup

- (NTKInvalidatableGroup)initWithInvalidatables:(id)invalidatables
{
  invalidatablesCopy = invalidatables;
  v9.receiver = self;
  v9.super_class = NTKInvalidatableGroup;
  v5 = [(NTKInvalidatableGroup *)&v9 init];
  if (v5)
  {
    v6 = [invalidatablesCopy copy];
    invalidatables = v5->_invalidatables;
    v5->_invalidatables = v6;
  }

  return v5;
}

@end