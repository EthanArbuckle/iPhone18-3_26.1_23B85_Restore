@interface HUMosaicLayoutHelper
+ (HUGridSize)gridSizeForGeometry:(id)a3 withEmptyCells:(int64_t)a4;
+ (id)fakeFramesForGeometry:(id)a3 inBounds:(CGRect)a4;
+ (id)framesForSizes:(id)a3 withGeometry:(id)a4 inBounds:(CGRect)a5;
@end

@implementation HUMosaicLayoutHelper

+ (id)fakeFramesForGeometry:(id)a3 inBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [v8 isPortrait];
  v11 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:2];
  [v9 addObject:v11];

  v12 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:2];
  [v9 addObject:v12];

  v13 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:1];
  [v9 addObject:v13];

  v14 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:1];
  [v9 addObject:v14];

  if (v10)
  {
    v15 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:2];
    [v9 addObject:v15];
  }

  v16 = [HUMosaicLayoutHelper framesForSizes:v9 withGeometry:v8 inBounds:x, y, width, height];

  return v16;
}

+ (id)framesForSizes:(id)a3 withGeometry:(id)a4 inBounds:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB18] array];
  if ([v6 count] >= 1)
  {
    v9 = 0;
    LOBYTE(v10) = 1;
    v11 = 0.0;
    v12 = 0.0;
    v39 = 0.0;
    v40 = 0.0;
    v13 = 0.0;
    while (1)
    {
      v14 = [v6 objectAtIndexedSubscript:v9];
      v15 = [v14 numRows];
      v16 = [v14 numCols];
      [v7 cellSize];
      v18 = v17;
      [v7 cellSpacing];
      v20 = v19 * (v16 - 1) + v18 * v16;
      [v7 cellSize];
      v22 = v21;
      [v7 cellSpacing];
      v24 = v23;
      v25 = v11 + v20 - width;
      if (v25 > 0.00000011920929)
      {
        [v7 cellSpacing];
        v12 = v13 + v26;
        v27 = v39;
        v11 = v40;
        if (v13 + v26 - v39 > 0.00000011920929)
        {
          v27 = 0.0;
          v11 = 0.0;
        }

        v39 = v27;
        v40 = v11;
      }

      v10 = (v9 == 0) & v10;
      v28 = v24 * (v15 - 1) + v22 * v15;
      if (v25 > 0.00000011920929)
      {
        v29 = 1;
      }

      else
      {
        v29 = v10;
      }

      if (v15 >= 2 && v29)
      {
        [v7 cellSpacing];
        v39 = v28 + v12;
        v40 = v20 + v11 + v30;
      }

      v31 = v28;
      if ((v29 & 1) == 0)
      {
        [v7 cellSize];
        v31 = v32;
      }

      [v7 cellSpacing];
      if (v20 - width > 0.00000011920929 || v28 + v12 - height > 0.00000011920929)
      {
        break;
      }

      v13 = v12 + v31;
      v35 = v11 + v20 + v33;
      v36 = [MEMORY[0x277CCAE60] valueWithCGRect:{v11, v12, v20, v28}];
      [v8 addObject:v36];

      ++v9;
      v11 = v35;
      if (v9 >= [v6 count])
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:

  return v8;
}

+ (HUGridSize)gridSizeForGeometry:(id)a3 withEmptyCells:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 gridSize];
  [v5 gridSize];
  v8 = v7 * v6 - a4;
  [v5 gridSize];
  v10 = v8 / v9;
  if (v8 / v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8 / v9;
  }

  if (([v5 isPortrait] & 1) == 0 && v10 <= 1)
  {
    [v5 gridSize];
    if (v8 == v12 + 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  [v5 gridSize];
  v14 = v13;

  v15 = v11;
  v16 = v14;
  result.columnsAcross = v16;
  result.rowsDown = v15;
  return result;
}

@end