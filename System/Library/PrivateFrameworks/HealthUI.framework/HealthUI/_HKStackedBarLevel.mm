@interface _HKStackedBarLevel
- (_HKStackedBarLevel)init;
@end

@implementation _HKStackedBarLevel

- (_HKStackedBarLevel)init
{
  v6.receiver = self;
  v6.super_class = _HKStackedBarLevel;
  v2 = [(_HKStackedBarLevel *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    segments = v2->_segments;
    v2->_segments = array;
  }

  return v2;
}

@end