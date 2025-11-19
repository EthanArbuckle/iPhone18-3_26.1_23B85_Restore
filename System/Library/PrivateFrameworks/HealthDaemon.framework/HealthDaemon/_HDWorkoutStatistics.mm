@interface _HDWorkoutStatistics
- (_HDWorkoutStatistics)initWithQuantityType:(id)a3 quantity:(id)a4 min:(id)a5 max:(id)a6;
@end

@implementation _HDWorkoutStatistics

- (_HDWorkoutStatistics)initWithQuantityType:(id)a3 quantity:(id)a4 min:(id)a5 max:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = _HDWorkoutStatistics;
  v15 = [(_HDWorkoutStatistics *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_quantityType, a3);
    objc_storeStrong(&v16->_quantity, a4);
    objc_storeStrong(&v16->_min, a5);
    objc_storeStrong(&v16->_max, a6);
  }

  return v16;
}

@end