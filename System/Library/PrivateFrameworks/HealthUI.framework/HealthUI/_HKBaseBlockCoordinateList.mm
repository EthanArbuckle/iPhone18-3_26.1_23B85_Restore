@interface _HKBaseBlockCoordinateList
- (_HKBaseBlockCoordinateList)initWithCoordinates:(id)coordinates blockPath:(HKGraphSeriesDataBlockPath *)path;
- (id)_coordinatesInChartableRange:(id)range;
- (id)firstCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
- (id)lastCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
- (int64_t)_numCoordinatesInChartableRange:(id)range;
- (void)_enumerateCoordinatesWithTransform:(CGAffineTransform *)transform chartableValueRange:(id)range roundToViewScale:(BOOL)scale block:(id)block;
@end

@implementation _HKBaseBlockCoordinateList

- (_HKBaseBlockCoordinateList)initWithCoordinates:(id)coordinates blockPath:(HKGraphSeriesDataBlockPath *)path
{
  coordinatesCopy = coordinates;
  v12.receiver = self;
  v12.super_class = _HKBaseBlockCoordinateList;
  v8 = [(_HKBaseBlockCoordinateList *)&v12 init];
  v9 = v8;
  if (v8)
  {
    resolution = path->resolution;
    *&v8->_blockPath.index = *&path->index;
    v8->_blockPath.resolution = resolution;
    objc_storeStrong(&v8->_coordinates, coordinates);
  }

  return v9;
}

- (void)_enumerateCoordinatesWithTransform:(CGAffineTransform *)transform chartableValueRange:(id)range roundToViewScale:(BOOL)scale block:(id)block
{
  blockCopy = block;
  rangeCopy = range;
  minValue = [rangeCopy minValue];
  maxValue = [rangeCopy maxValue];

  [minValue doubleValue];
  v15 = v14;
  [maxValue doubleValue];
  v17 = v16;
  if (!blockCopy)
  {
    [_HKBaseBlockCoordinateList _enumerateCoordinatesWithTransform:chartableValueRange:roundToViewScale:block:];
  }

  coordinates = self->_coordinates;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __108___HKBaseBlockCoordinateList__enumerateCoordinatesWithTransform_chartableValueRange_roundToViewScale_block___block_invoke;
  v23[3] = &unk_1E81B9540;
  v24 = minValue;
  v25 = maxValue;
  v28 = v17;
  v29 = v15;
  v19 = *&transform->c;
  v30 = *&transform->a;
  v31 = v19;
  v32 = *&transform->tx;
  scaleCopy = scale;
  selfCopy = self;
  v27 = blockCopy;
  v20 = blockCopy;
  v21 = maxValue;
  v22 = minValue;
  [(NSArray *)coordinates enumerateObjectsUsingBlock:v23];
}

- (id)_coordinatesInChartableRange:(id)range
{
  v5 = self->_coordinates;
  if (range)
  {
    v6 = MEMORY[0x1E695DF70];
    rangeCopy = range;
    v8 = objc_alloc_init(v6);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59___HKBaseBlockCoordinateList__coordinatesInChartableRange___block_invoke;
    v14[3] = &unk_1E81B9568;
    v9 = v8;
    v15 = v9;
    v10 = *(MEMORY[0x1E695EFD0] + 16);
    v13[0] = *MEMORY[0x1E695EFD0];
    v13[1] = v10;
    v13[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(_HKBaseBlockCoordinateList *)self _enumerateCoordinatesWithTransform:v13 chartableValueRange:rangeCopy roundToViewScale:0 block:v14];

    v11 = v9;
    v5 = v11;
  }

  return v5;
}

- (int64_t)_numCoordinatesInChartableRange:(id)range
{
  rangeCopy = range;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (rangeCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62___HKBaseBlockCoordinateList__numCoordinatesInChartableRange___block_invoke;
    v9[3] = &unk_1E81B9590;
    v9[4] = &v10;
    v5 = *(MEMORY[0x1E695EFD0] + 16);
    v8[0] = *MEMORY[0x1E695EFD0];
    v8[1] = v5;
    v8[2] = *(MEMORY[0x1E695EFD0] + 32);
    [(_HKBaseBlockCoordinateList *)self _enumerateCoordinatesWithTransform:v8 chartableValueRange:rangeCopy roundToViewScale:0 block:v9];
    v6 = v11[3];
  }

  else
  {
    v6 = [(NSArray *)self->_coordinates count];
    v11[3] = v6;
  }

  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)firstCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  scaleCopy = scale;
  firstObject = [(NSArray *)self->_coordinates firstObject];
  v7 = *&transform->c;
  v10[0] = *&transform->a;
  v10[1] = v7;
  v10[2] = *&transform->tx;
  v8 = [firstObject copyWithTransform:v10 roundToViewScale:scaleCopy];

  return v8;
}

- (id)lastCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  scaleCopy = scale;
  lastObject = [(NSArray *)self->_coordinates lastObject];
  v7 = *&transform->c;
  v10[0] = *&transform->a;
  v10[1] = v7;
  v10[2] = *&transform->tx;
  v8 = [lastObject copyWithTransform:v10 roundToViewScale:scaleCopy];

  return v8;
}

- (void)_enumerateCoordinatesWithTransform:chartableValueRange:roundToViewScale:block:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HKGraphSeriesBlockCoordinate.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];
}

@end