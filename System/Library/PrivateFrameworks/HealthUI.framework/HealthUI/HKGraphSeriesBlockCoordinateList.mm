@interface HKGraphSeriesBlockCoordinateList
+ (id)coordinateListByCombiningSubCoordinates:(id)coordinates chartableValueRange:(id)range;
+ (id)coordinateListWithCoordinates:(id)coordinates blockPath:(HKGraphSeriesDataBlockPath *)path;
- (HKGraphSeriesDataBlockPath)blockPathEnd;
- (HKGraphSeriesDataBlockPath)blockPathStart;
- (NSArray)coordinates;
- (id)_coordinatesInChartableRange:(id)range;
- (id)firstCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
- (id)lastCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
- (int64_t)_numCoordinatesInChartableRange:(id)range;
- (int64_t)numCoordinates;
- (void)_enumerateCoordinatesWithTransform:(CGAffineTransform *)transform chartableValueRange:(id)range roundToViewScale:(BOOL)scale block:(id)block;
- (void)enumerateCoordinatesWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale block:(id)block;
@end

@implementation HKGraphSeriesBlockCoordinateList

+ (id)coordinateListByCombiningSubCoordinates:(id)coordinates chartableValueRange:(id)range
{
  rangeCopy = range;
  coordinatesCopy = coordinates;
  v7 = [[_HKCompoundBlockCoordinateList alloc] initWithSubCoordinates:coordinatesCopy chartableValueRange:rangeCopy];

  return v7;
}

+ (id)coordinateListWithCoordinates:(id)coordinates blockPath:(HKGraphSeriesDataBlockPath *)path
{
  coordinatesCopy = coordinates;
  v6 = [_HKBaseBlockCoordinateList alloc];
  v9 = *path;
  v7 = [(_HKBaseBlockCoordinateList *)v6 initWithCoordinates:coordinatesCopy blockPath:&v9];

  return v7;
}

- (void)enumerateCoordinatesWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale block:(id)block
{
  v5 = *&transform->c;
  v6[0] = *&transform->a;
  v6[1] = v5;
  v6[2] = *&transform->tx;
  [(HKGraphSeriesBlockCoordinateList *)self _enumerateCoordinatesWithTransform:v6 chartableValueRange:0 roundToViewScale:scale block:block];
}

- (NSArray)coordinates
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)numCoordinates
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (HKGraphSeriesDataBlockPath)blockPathStart
{
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  result = NSRequestConcreteImplementation();
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  return result;
}

- (HKGraphSeriesDataBlockPath)blockPathEnd
{
  OUTLINED_FUNCTION_1_1();
  v4 = v3;
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  result = NSRequestConcreteImplementation();
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  return result;
}

- (void)_enumerateCoordinatesWithTransform:(CGAffineTransform *)transform chartableValueRange:(id)range roundToViewScale:(BOOL)scale block:(id)block
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();

  NSRequestConcreteImplementation();
}

- (id)firstCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)lastCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_coordinatesInChartableRange:(id)range
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)_numCoordinatesInChartableRange:(id)range
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

@end