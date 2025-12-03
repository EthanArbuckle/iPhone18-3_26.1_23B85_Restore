@interface _HDWorkoutStatistics
- (_HDWorkoutStatistics)initWithQuantityType:(id)type quantity:(id)quantity min:(id)min max:(id)max;
@end

@implementation _HDWorkoutStatistics

- (_HDWorkoutStatistics)initWithQuantityType:(id)type quantity:(id)quantity min:(id)min max:(id)max
{
  typeCopy = type;
  quantityCopy = quantity;
  minCopy = min;
  maxCopy = max;
  v18.receiver = self;
  v18.super_class = _HDWorkoutStatistics;
  v15 = [(_HDWorkoutStatistics *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_quantityType, type);
    objc_storeStrong(&v16->_quantity, quantity);
    objc_storeStrong(&v16->_min, min);
    objc_storeStrong(&v16->_max, max);
  }

  return v16;
}

@end