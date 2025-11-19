@interface ActivityGoalLineSeries
@end

@implementation ActivityGoalLineSeries

void __166___ActivityGoalLineSeries_drawSeriesWithBlockCoordinates_axisRect_zoomLevelConfiguration_pointTransform_renderContext_secondaryRenderContext_seriesRenderingDelegate___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v25 = a2;
  v7 = a4;
  [v25 coordinate];
  v10 = v8;
  if (v8 < *(a1 + 64))
  {
    v11 = *(*(a1 + 40) + 8);
    v12 = v25;
LABEL_3:
    v13 = *(v11 + 40);
    *(v11 + 40) = v12;
LABEL_14:

    goto LABEL_15;
  }

  v14 = v9;
  if (v8 > *(a1 + 72))
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      goto LABEL_15;
    }

    if (([*(a1 + 32) _lineSeriesCoordinateIsPaused:v25] & 1) == 0)
    {
      [*(*(*(a1 + 40) + 8) + 40) coordinate];
      CGContextAddLineToPoint(*(a1 + 80), v15, v14);
      CGContextAddLineToPoint(*(a1 + 80), v10, v14);
      *(*(*(a1 + 48) + 8) + 24) += 2;
    }

    v16 = *(*(a1 + 40) + 8);
    v13 = *(v16 + 40);
    *(v16 + 40) = 0;
    goto LABEL_14;
  }

  v17 = [*(a1 + 32) _lineSeriesCoordinateIsPaused:v25];
  v18 = *(*(a1 + 40) + 8);
  v19 = *(v18 + 40);
  if (v19)
  {
    if (v17)
    {
      CGContextMoveToPoint(*(a1 + 80), v10, v14);
      goto LABEL_24;
    }

    [v19 coordinate];
    v22 = *(a1 + 80);
    if (*(*(*(a1 + 48) + 8) + 24) < 1)
    {
      CGContextMoveToPoint(v22, v21, v14);
    }

    else
    {
      CGContextAddLineToPoint(v22, v21, v14);
    }

    CGContextAddLineToPoint(*(a1 + 80), v10, v14);
    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 24) + 2;
  }

  else
  {
    if (v17)
    {
      v20 = v25;
      v13 = *(v18 + 40);
      *(v18 + 40) = v20;
      goto LABEL_14;
    }

    CGContextMoveToPoint(*(a1 + 80), *(a1 + 64), v14);
    CGContextAddLineToPoint(*(a1 + 80), v10, v14);
    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 24) + 1;
  }

  *(v23 + 24) = v24;
LABEL_24:
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if ((v17 & 1) == 0)
  {
    v11 = *(*(a1 + 56) + 8);
    v12 = v7;
    goto LABEL_3;
  }

LABEL_15:
}

@end