@interface _HKBaseBlockCoordinateList
- (_HKBaseBlockCoordinateList)initWithCoordinates:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4;
- (id)_coordinatesInChartableRange:(id)a3;
- (id)firstCoordinateWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
- (id)lastCoordinateWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4;
- (int64_t)_numCoordinatesInChartableRange:(id)a3;
- (void)_enumerateCoordinatesWithTransform:(CGAffineTransform *)a3 chartableValueRange:(id)a4 roundToViewScale:(BOOL)a5 block:(id)a6;
@end

@implementation _HKBaseBlockCoordinateList

- (_HKBaseBlockCoordinateList)initWithCoordinates:(id)a3 blockPath:(HKGraphSeriesDataBlockPath *)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = _HKBaseBlockCoordinateList;
  v8 = [(_HKBaseBlockCoordinateList *)&v12 init];
  v9 = v8;
  if (v8)
  {
    resolution = a4->resolution;
    *&v8->_blockPath.index = *&a4->index;
    v8->_blockPath.resolution = resolution;
    objc_storeStrong(&v8->_coordinates, a3);
  }

  return v9;
}

- (void)_enumerateCoordinatesWithTransform:(CGAffineTransform *)a3 chartableValueRange:(id)a4 roundToViewScale:(BOOL)a5 block:(id)a6
{
  v10 = a6;
  v11 = a4;
  v12 = [v11 minValue];
  v13 = [v11 maxValue];

  [v12 doubleValue];
  v15 = v14;
  [v13 doubleValue];
  v17 = v16;
  if (!v10)
  {
    [_HKBaseBlockCoordinateList _enumerateCoordinatesWithTransform:chartableValueRange:roundToViewScale:block:];
  }

  coordinates = self->_coordinates;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __108___HKBaseBlockCoordinateList__enumerateCoordinatesWithTransform_chartableValueRange_roundToViewScale_block___block_invoke;
  v23[3] = &unk_1E81B9540;
  v24 = v12;
  v25 = v13;
  v28 = v17;
  v29 = v15;
  v19 = *&a3->c;
  v30 = *&a3->a;
  v31 = v19;
  v32 = *&a3->tx;
  v33 = a5;
  v26 = self;
  v27 = v10;
  v20 = v10;
  v21 = v13;
  v22 = v12;
  [(NSArray *)coordinates enumerateObjectsUsingBlock:v23];
}

- (id)_coordinatesInChartableRange:(id)a3
{
  v5 = self->_coordinates;
  if (a3)
  {
    v6 = MEMORY[0x1E695DF70];
    v7 = a3;
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
    [(_HKBaseBlockCoordinateList *)self _enumerateCoordinatesWithTransform:v13 chartableValueRange:v7 roundToViewScale:0 block:v14];

    v11 = v9;
    v5 = v11;
  }

  return v5;
}

- (int64_t)_numCoordinatesInChartableRange:(id)a3
{
  v4 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (v4)
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
    [(_HKBaseBlockCoordinateList *)self _enumerateCoordinatesWithTransform:v8 chartableValueRange:v4 roundToViewScale:0 block:v9];
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

- (id)firstCoordinateWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v4 = a4;
  v6 = [(NSArray *)self->_coordinates firstObject];
  v7 = *&a3->c;
  v10[0] = *&a3->a;
  v10[1] = v7;
  v10[2] = *&a3->tx;
  v8 = [v6 copyWithTransform:v10 roundToViewScale:v4];

  return v8;
}

- (id)lastCoordinateWithTransform:(CGAffineTransform *)a3 roundToViewScale:(BOOL)a4
{
  v4 = a4;
  v6 = [(NSArray *)self->_coordinates lastObject];
  v7 = *&a3->c;
  v10[0] = *&a3->a;
  v10[1] = v7;
  v10[2] = *&a3->tx;
  v8 = [v6 copyWithTransform:v10 roundToViewScale:v4];

  return v8;
}

- (void)_enumerateCoordinatesWithTransform:chartableValueRange:roundToViewScale:block:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"HKGraphSeriesBlockCoordinate.m" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"block != NULL"}];
}

@end