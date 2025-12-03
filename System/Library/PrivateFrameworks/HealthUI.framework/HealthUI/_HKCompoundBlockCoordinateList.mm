@interface _HKCompoundBlockCoordinateList
- (HKGraphSeriesDataBlockPath)blockPathEnd;
- (HKGraphSeriesDataBlockPath)blockPathStart;
- (_HKCompoundBlockCoordinateList)initWithSubCoordinates:(id)coordinates chartableValueRange:(id)range;
- (id)_coordinatesInChartableRange:(id)range;
- (id)firstCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
- (id)lastCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale;
- (int64_t)_numCoordinatesInChartableRange:(id)range;
- (void)_enumerateCoordinatesWithTransform:(CGAffineTransform *)transform chartableValueRange:(id)range roundToViewScale:(BOOL)scale block:(id)block;
- (void)enumerateCoordinatesWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale block:(id)block;
@end

@implementation _HKCompoundBlockCoordinateList

- (_HKCompoundBlockCoordinateList)initWithSubCoordinates:(id)coordinates chartableValueRange:(id)range
{
  coordinatesCopy = coordinates;
  rangeCopy = range;
  v12.receiver = self;
  v12.super_class = _HKCompoundBlockCoordinateList;
  v9 = [(_HKCompoundBlockCoordinateList *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subCoordinates, coordinates);
    objc_storeStrong(&v10->_chartableValueRange, range);
  }

  return v10;
}

- (void)enumerateCoordinatesWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale block:(id)block
{
  scaleCopy = scale;
  chartableValueRange = self->_chartableValueRange;
  v8 = *&transform->c;
  v9[0] = *&transform->a;
  v9[1] = v8;
  v9[2] = *&transform->tx;
  [(_HKCompoundBlockCoordinateList *)self _enumerateCoordinatesWithTransform:v9 chartableValueRange:chartableValueRange roundToViewScale:scaleCopy block:block];
}

- (void)_enumerateCoordinatesWithTransform:(CGAffineTransform *)transform chartableValueRange:(id)range roundToViewScale:(BOOL)scale block:(id)block
{
  scaleCopy = scale;
  v31 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  blockCopy = block;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = self->_subCoordinates;
  v12 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = *v27;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v26 + 1) + 8 * v14);
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __112___HKCompoundBlockCoordinateList__enumerateCoordinatesWithTransform_chartableValueRange_roundToViewScale_block___block_invoke;
      v19[3] = &unk_1E81B94F0;
      v20 = blockCopy;
      v21 = &v22;
      v16 = *&transform->c;
      v18[0] = *&transform->a;
      v18[1] = v16;
      v18[2] = *&transform->tx;
      [v15 _enumerateCoordinatesWithTransform:v18 chartableValueRange:rangeCopy roundToViewScale:scaleCopy block:v19];
      LOBYTE(v15) = *(v23 + 24);

      _Block_object_dispose(&v22, 8);
      if (v15)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (id)_coordinatesInChartableRange:(id)range
{
  v18 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_subCoordinates;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) _coordinatesInChartableRange:{rangeCopy, v13}];
        [v5 addObjectsFromArray:v11];
      }

      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (int64_t)_numCoordinatesInChartableRange:(id)range
{
  v17 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_subCoordinates;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v8 += [*(*(&v12 + 1) + 8 * i) _numCoordinatesInChartableRange:{rangeCopy, v12}];
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (HKGraphSeriesDataBlockPath)blockPathStart
{
  firstObject = [(NSArray *)self->_subCoordinates firstObject];
  if (firstObject)
  {
    v6 = firstObject;
    [firstObject blockPathStart];
    firstObject = v6;
  }

  else
  {
    retstr->index = 0;
    retstr->zoom = 0;
    retstr->resolution = 0;
  }

  return result;
}

- (HKGraphSeriesDataBlockPath)blockPathEnd
{
  lastObject = [(NSArray *)self->_subCoordinates lastObject];
  if (lastObject)
  {
    v6 = lastObject;
    [lastObject blockPathEnd];
    lastObject = v6;
  }

  else
  {
    retstr->index = 0;
    retstr->zoom = 0;
    retstr->resolution = 0;
  }

  return result;
}

- (id)firstCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__14;
  v18 = __Block_byref_object_dispose__14;
  v19 = 0;
  subCoordinates = self->_subCoordinates;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v5 = *&transform->c;
  v12 = *&transform->tx;
  v6 = *&transform->a;
  v11 = v5;
  v9[2] = __80___HKCompoundBlockCoordinateList_firstCoordinateWithTransform_roundToViewScale___block_invoke;
  v9[3] = &unk_1E81B9518;
  v9[4] = &v14;
  v10 = v6;
  scaleCopy = scale;
  [(NSArray *)subCoordinates enumerateObjectsUsingBlock:v9];
  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (id)lastCoordinateWithTransform:(CGAffineTransform *)transform roundToViewScale:(BOOL)scale
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__14;
  v18 = __Block_byref_object_dispose__14;
  v19 = 0;
  subCoordinates = self->_subCoordinates;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v5 = *&transform->c;
  v12 = *&transform->tx;
  v6 = *&transform->a;
  v11 = v5;
  v9[2] = __79___HKCompoundBlockCoordinateList_lastCoordinateWithTransform_roundToViewScale___block_invoke;
  v9[3] = &unk_1E81B9518;
  v9[4] = &v14;
  v10 = v6;
  scaleCopy = scale;
  [(NSArray *)subCoordinates enumerateObjectsWithOptions:2 usingBlock:v9];
  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v7;
}

@end