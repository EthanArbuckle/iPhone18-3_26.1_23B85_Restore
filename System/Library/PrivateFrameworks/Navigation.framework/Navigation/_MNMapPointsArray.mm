@interface _MNMapPointsArray
- (_MNMapPointsArray)initWithCapacity:(unint64_t)capacity;
- (void)dealloc;
@end

@implementation _MNMapPointsArray

- (void)dealloc
{
  free(self->_mapPoints);
  v3.receiver = self;
  v3.super_class = _MNMapPointsArray;
  [(_MNMapPointsArray *)&v3 dealloc];
}

- (_MNMapPointsArray)initWithCapacity:(unint64_t)capacity
{
  v8.receiver = self;
  v8.super_class = _MNMapPointsArray;
  v4 = [(_MNMapPointsArray *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_count = capacity;
    v4->_mapPoints = malloc_type_malloc(16 * capacity, 0x1000040451B5BE8uLL);
    v6 = v5;
  }

  return v5;
}

@end