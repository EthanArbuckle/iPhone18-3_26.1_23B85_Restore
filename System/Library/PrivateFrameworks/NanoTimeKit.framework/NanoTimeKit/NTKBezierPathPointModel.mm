@interface NTKBezierPathPointModel
- (CGPoint)_computePointOnPathForHorizontalPercentage:(double)a3;
- (CGPoint)pointOnPathForHorizontalPercentage:(double)a3;
- (CGPoint)pointOnPathForHorizontalPercentage:(double)a3 withEndPadding:(double)a4;
- (NTKBezierPathPointModel)initWithPath:(id)a3;
- (double)_computeDistanceBetweenPointA:(CGPoint)a3 andPointB:(CGPoint)a4;
- (double)_estimatePercentageForEndPadding:(double)a3;
- (id)_buildHorizontalPercentageCache;
@end

@implementation NTKBezierPathPointModel

- (NTKBezierPathPointModel)initWithPath:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = NTKBezierPathPointModel;
  v6 = [(NTKBezierPathPointModel *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_path, a3);
    v8 = [MEMORY[0x277CBEB18] array];
    pathElements = v7->_pathElements;
    v7->_pathElements = v8;

    CGPathApply([v5 CGPath], v7->_pathElements, NTKBuildPathElement);
    v10 = [(NTKBezierPathPointModel *)v7 _buildHorizontalPercentageCache];
    horizontalPercentageCache = v7->_horizontalPercentageCache;
    v7->_horizontalPercentageCache = v10;

    v12 = v7;
  }

  return v7;
}

- (CGPoint)pointOnPathForHorizontalPercentage:(double)a3
{
  [(NTKBezierPathPointModel *)self pointOnPathForHorizontalPercentage:a3 withEndPadding:0.0];
  result.y = v4;
  result.x = v3;
  return result;
}

- (CGPoint)pointOnPathForHorizontalPercentage:(double)a3 withEndPadding:(double)a4
{
  [(NTKBezierPathPointModel *)self _estimatePercentageForEndPadding:a4];
  v7 = 1.0 - v6;
  if (v6 < a3)
  {
    v6 = a3;
  }

  if (v7 <= v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = floor(v8 * 100.0);
  horizontalPercentageCache = self->_horizontalPercentageCache;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v12 = [(NSDictionary *)horizontalPercentageCache objectForKeyedSubscript:v11];

  v13 = self->_horizontalPercentageCache;
  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v9 + 1.0];
  v15 = [(NSDictionary *)v13 objectForKeyedSubscript:v14];

  if (v12)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    [(NTKBezierPathPointModel *)self _computePointOnPathForHorizontalPercentage:v8];
  }

  else
  {
    [v12 floatValue];
    [v15 floatValue];
    v17 = [(NTKBezierPathPointModel *)self path];
    [v17 bounds];
    CGRectGetWidth(v26);

    v18 = [(NTKBezierPathPointModel *)self path];
    [v18 bounds];
    CGRectGetWidth(v27);

    CLKInterpolateBetweenPoints();
  }

  v21 = v19;
  v22 = v20;

  v23 = v21;
  v24 = v22;
  result.y = v24;
  result.x = v23;
  return result;
}

- (id)_buildHorizontalPercentageCache
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  for (i = 0; i != 101; ++i)
  {
    [(NTKBezierPathPointModel *)self _computePointOnPathForHorizontalPercentage:i * 0.01];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
    [v3 setObject:v6 forKeyedSubscript:v7];
  }

  return v3;
}

- (CGPoint)_computePointOnPathForHorizontalPercentage:(double)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = 0.0;
  v5 = fmin(fmax(a3, 0.0), 1.0);
  v6 = [(NTKBezierPathPointModel *)self path];
  [v6 bounds];
  v7 = v5 * CGRectGetWidth(v27);

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_pathElements;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        if ([v13 type])
        {
          [v13 startPoint];
          if (v14 <= v7)
          {
            [v13 endPoint];
            if (v15 >= v7)
            {
              [v13 pointOnPathForX:v7];
              v7 = v16;
              v4 = v17;
              goto LABEL_13;
            }
          }
        }
      }

      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v18 = v7;
  v19 = v4;
  result.y = v19;
  result.x = v18;
  return result;
}

- (double)_estimatePercentageForEndPadding:(double)a3
{
  v5 = [(NSDictionary *)self->_horizontalPercentageCache objectForKeyedSubscript:&unk_284182B18];
  [v5 floatValue];
  v7 = v6;
  v8 = [(NTKBezierPathPointModel *)self path];
  [v8 bounds];
  Width = CGRectGetWidth(v22);

  v9 = 0;
  v10 = 0.0;
  v20 = 0.01;
  while (1)
  {
    horizontalPercentageCache = self->_horizontalPercentageCache;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v9, *&v20}];
    v13 = [(NSDictionary *)horizontalPercentageCache objectForKeyedSubscript:v12];

    [v13 floatValue];
    [(NTKBezierPathPointModel *)self _computeDistanceBetweenPointA:Width * v9 * v20 andPointB:v14, 0.0, v7];
    v16 = v15;
    if (v10 <= a3 && v15 >= a3)
    {
      break;
    }

    ++v9;
    v10 = v16;
    if (v9 == 100)
    {
      v17 = 0.0;
      goto LABEL_7;
    }
  }

  CLKInterpolateBetweenPoints();
  v17 = v18 / Width;

LABEL_7:
  return v17;
}

- (double)_computeDistanceBetweenPointA:(CGPoint)a3 andPointB:(CGPoint)a4
{
  v4 = a3.x - a4.x;
  v5 = a3.y - a4.y;
  return hypotf(v4, v5);
}

@end