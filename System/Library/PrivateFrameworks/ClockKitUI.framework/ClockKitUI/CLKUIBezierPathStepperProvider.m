@interface CLKUIBezierPathStepperProvider
- (CLKUIBezierPathStepperProvider)init;
- (void)_calculateNorthOffset;
- (void)pointAtOffset:(double)a3 outPoint:(CGPoint *)a4 outTangent:(CGVector *)a5;
- (void)setPath:(id)a3;
@end

@implementation CLKUIBezierPathStepperProvider

- (CLKUIBezierPathStepperProvider)init
{
  v6.receiver = self;
  v6.super_class = CLKUIBezierPathStepperProvider;
  v2 = [(CLKUIBezierPathStepperProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CLKUIBezierPathStepper);
    pathStepper = v2->_pathStepper;
    v2->_pathStepper = v3;

    v2->_pathLength = 0.0;
    v2->_offsetNorth = 0.0;
  }

  return v2;
}

- (void)setPath:(id)a3
{
  v5 = a3;
  p_path = &self->_path;
  if (self->_path != v5)
  {
    v8 = v5;
    objc_storeStrong(p_path, a3);
    [(CLKUIBezierPathStepper *)self->_pathStepper setPath:v8];
    [(CLKUIBezierPathStepper *)self->_pathStepper totalLength];
    self->_pathLength = v7;
    p_path = [(CLKUIBezierPathStepperProvider *)self _calculateNorthOffset];
  }

  MEMORY[0x1EEE66BE0](p_path);
}

- (void)_calculateNorthOffset
{
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0x7FEFFFFFFFFFFFFFLL;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0x7FF8000000000000;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0x7FF8000000000000;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v11[3] = 0xBFF0000000000000;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__CLKUIBezierPathStepperProvider__calculateNorthOffset__block_invoke;
  aBlock[3] = &unk_1E8762970;
  aBlock[4] = self;
  aBlock[5] = v11;
  aBlock[6] = v20;
  aBlock[7] = &v16;
  aBlock[8] = &v12;
  v3 = _Block_copy(aBlock);
  if (self->_pathLength > 0.0)
  {
    v4 = 0.0;
    do
    {
      v3[2](v3, v4);
      v4 = v4 + 0.25;
    }

    while (v4 < self->_pathLength);
  }

  (v3[2])(v3);
  v5 = v17[3];
  v6 = v13[3];
  pathLength = self->_pathLength;
  if (vabdd_f64(v6, v5) <= pathLength * 0.5)
  {
    v9 = (v6 - v5) * 0.5;
  }

  else
  {
    if (pathLength - v5 <= v6)
    {
      v8 = v6 + v5 - pathLength;
    }

    else
    {
      v8 = v5 + v6 + pathLength;
    }

    v9 = v8 * 0.5;
  }

  self->_offsetNorth = v9 / pathLength;

  _Block_object_dispose(v11, 8);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

void __55__CLKUIBezierPathStepperProvider__calculateNorthOffset__block_invoke(void *a1, double a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1[4] + 8);
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:?];
  v14[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  v7 = [v4 mapOffsetsToPathPositions:v6];

  v8 = [v7 firstObject];
  [v8 point];
  v10 = *(*(a1[5] + 8) + 24);
  if (v9 < v10 && v10 >= 0.0 && v9 == *(*(a1[6] + 8) + 24))
  {
    v12 = 7;
    goto LABEL_10;
  }

  if (v9 > v10 && v10 == *(*(a1[6] + 8) + 24))
  {
    v12 = 8;
LABEL_10:
    *(*(a1[v12] + 8) + 24) = a2;
  }

  v13 = *(a1[6] + 8);
  if (v9 < *(v13 + 24))
  {
    *(v13 + 24) = v9;
  }

  *(*(a1[5] + 8) + 24) = v9;
}

- (void)pointAtOffset:(double)a3 outPoint:(CGPoint *)a4 outTangent:(CGVector *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = self->_offsetNorth + a3;
  if (v7 > 1.0)
  {
    v7 = v7 + -1.0;
  }

  pathStepper = self->_pathStepper;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_pathLength * v7];
  v19[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v11 = [(CLKUIBezierPathStepper *)pathStepper mapOffsetsToPathPositions:v10];

  v12 = [v11 firstObject];
  [v12 tangent];
  v14 = v13;
  v16 = v15;
  [v12 point];
  a4->x = v17;
  a4->y = v18;
  a5->dx = v14;
  a5->dy = v16;
}

@end