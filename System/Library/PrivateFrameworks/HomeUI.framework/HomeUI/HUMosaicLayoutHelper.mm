@interface HUMosaicLayoutHelper
+ (HUGridSize)gridSizeForGeometry:(id)geometry withEmptyCells:(int64_t)cells;
+ (id)fakeFramesForGeometry:(id)geometry inBounds:(CGRect)bounds;
+ (id)framesForSizes:(id)sizes withGeometry:(id)geometry inBounds:(CGRect)bounds;
@end

@implementation HUMosaicLayoutHelper

+ (id)fakeFramesForGeometry:(id)geometry inBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  geometryCopy = geometry;
  array = [MEMORY[0x277CBEB18] array];
  isPortrait = [geometryCopy isPortrait];
  v11 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:2];
  [array addObject:v11];

  v12 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:2];
  [array addObject:v12];

  v13 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:1];
  [array addObject:v13];

  v14 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:1];
  [array addObject:v14];

  if (isPortrait)
  {
    v15 = [HUMosaicCellSize createMosaicCellSizeForSizeDescription:2];
    [array addObject:v15];
  }

  height = [HUMosaicLayoutHelper framesForSizes:array withGeometry:geometryCopy inBounds:x, y, width, height];

  return height;
}

+ (id)framesForSizes:(id)sizes withGeometry:(id)geometry inBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  sizesCopy = sizes;
  geometryCopy = geometry;
  array = [MEMORY[0x277CBEB18] array];
  if ([sizesCopy count] >= 1)
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
      v14 = [sizesCopy objectAtIndexedSubscript:v9];
      numRows = [v14 numRows];
      numCols = [v14 numCols];
      [geometryCopy cellSize];
      v18 = v17;
      [geometryCopy cellSpacing];
      v20 = v19 * (numCols - 1) + v18 * numCols;
      [geometryCopy cellSize];
      v22 = v21;
      [geometryCopy cellSpacing];
      v24 = v23;
      v25 = v11 + v20 - width;
      if (v25 > 0.00000011920929)
      {
        [geometryCopy cellSpacing];
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
      v28 = v24 * (numRows - 1) + v22 * numRows;
      if (v25 > 0.00000011920929)
      {
        v29 = 1;
      }

      else
      {
        v29 = v10;
      }

      if (numRows >= 2 && v29)
      {
        [geometryCopy cellSpacing];
        v39 = v28 + v12;
        v40 = v20 + v11 + v30;
      }

      v31 = v28;
      if ((v29 & 1) == 0)
      {
        [geometryCopy cellSize];
        v31 = v32;
      }

      [geometryCopy cellSpacing];
      if (v20 - width > 0.00000011920929 || v28 + v12 - height > 0.00000011920929)
      {
        break;
      }

      v13 = v12 + v31;
      v35 = v11 + v20 + v33;
      v36 = [MEMORY[0x277CCAE60] valueWithCGRect:{v11, v12, v20, v28}];
      [array addObject:v36];

      ++v9;
      v11 = v35;
      if (v9 >= [sizesCopy count])
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:

  return array;
}

+ (HUGridSize)gridSizeForGeometry:(id)geometry withEmptyCells:(int64_t)cells
{
  geometryCopy = geometry;
  gridSize = [geometryCopy gridSize];
  [geometryCopy gridSize];
  v8 = v7 * gridSize - cells;
  [geometryCopy gridSize];
  v10 = v8 / v9;
  if (v8 / v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8 / v9;
  }

  if (([geometryCopy isPortrait] & 1) == 0 && v10 <= 1)
  {
    [geometryCopy gridSize];
    if (v8 == v12 + 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  [geometryCopy gridSize];
  v14 = v13;

  v15 = v11;
  v16 = v14;
  result.columnsAcross = v16;
  result.rowsDown = v15;
  return result;
}

@end