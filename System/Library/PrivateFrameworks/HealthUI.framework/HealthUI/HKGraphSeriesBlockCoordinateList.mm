@interface HKGraphSeriesBlockCoordinateList
+ (id)coordinateListByCombiningSubCoordinates:(id)a3 chartableValueRange:(id)a4;
+ (id)coordinateListWithCoordinates:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4;
- (HKGraphSeriesDataBlockPath)blockPathEnd;
- (HKGraphSeriesDataBlockPath)blockPathStart;
- (NSArray)coordinates;
- (id)_coordinatesInChartableRange:(id)a3;
- (id)firstCoordinateWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
- (id)lastCoordinateWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
- (int64_t)_numCoordinatesInChartableRange:(id)a3;
- (int64_t)numCoordinates;
- (void)_enumerateCoordinatesWithTransform:(CGAffineTransform *)a3 chartableValueRange:(id)a4 roundToViewScale:(BOOL)a5 block:(id)a6;
- (void)enumerateCoordinatesWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4 block:(id)a5;
@end

@implementation HKGraphSeriesBlockCoordinateList

+ (id)coordinateListByCombiningSubCoordinates:(id)a3 chartableValueRange:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_HKCompoundBlockCoordinateList alloc] initWithSubCoordinates:v6 chartableValueRange:v5];

  return v7;
}

+ (id)coordinateListWithCoordinates:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4
{
  v5 = a3;
  v6 = [_HKBaseBlockCoordinateList alloc];
  v9 = *a4;
  v7 = [(_HKBaseBlockCoordinateList *)v6 initWithCoordinates:v5 blockPath:&v9];

  return v7;
}

- (void)enumerateCoordinatesWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4 block:(id)a5
{
  v5 = *&a3->c;
  v6[0] = *&a3->a;
  v6[1] = v5;
  v6[2] = *&a3->tx;
  [(HKGraphSeriesBlockCoordinateList *)self _enumerateCoordinatesWithTransform:v6 chartableValueRange:0 roundToViewScale:a4 block:a5];
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

- (void)_enumerateCoordinatesWithTransform:(CGAffineTransform *)a3 chartableValueRange:(id)a4 roundToViewScale:(BOOL)a5 block:(id)a6
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();

  NSRequestConcreteImplementation();
}

- (id)firstCoordinateWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)lastCoordinateWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (id)_coordinatesInChartableRange:(id)a3
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

- (int64_t)_numCoordinatesInChartableRange:(id)a3
{
  OUTLINED_FUNCTION_1_1();
  objc_opt_class();
  OUTLINED_FUNCTION_0_10();
  NSRequestConcreteImplementation();
  return 0;
}

@end