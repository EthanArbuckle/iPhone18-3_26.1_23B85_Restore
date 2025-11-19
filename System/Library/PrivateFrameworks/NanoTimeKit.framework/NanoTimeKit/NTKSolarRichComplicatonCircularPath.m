@interface NTKSolarRichComplicatonCircularPath
+ (id)_cachedSolarPathForDiameter:(double)a3 horizonLineTop:(double)a4 horizonLineHeight:(double)a5 maxCurveHeight:(double)a6 solarTimeModel:(id)a7 sunriseWaypoint:(id)a8 sunsetWayPoint:(id)a9 cacheMissBlock:(id)a10;
+ (id)_cachedSolarPathKeyForDiameter:(double)a3 horizonLineTop:(double)a4 horizonLineHeight:(double)a5 maxCurveHeight:(double)a6 solarTimeModel:(id)a7 sunriseWaypoint:(id)a8 sunsetWayPoint:(id)a9;
+ (id)_solarPathCache;
+ (id)pathWithDiameter:(double)a3 horizonLineTop:(double)a4 horizonLineHeight:(double)a5 maxCurveHeight:(double)a6 solarTimeModel:(id)a7 sunriseWaypoint:(id)a8 sunsetWayPoint:(id)a9;
@end

@implementation NTKSolarRichComplicatonCircularPath

+ (id)pathWithDiameter:(double)a3 horizonLineTop:(double)a4 horizonLineHeight:(double)a5 maxCurveHeight:(double)a6 solarTimeModel:(id)a7 sunriseWaypoint:(id)a8 sunsetWayPoint:(id)a9
{
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __150__NTKSolarRichComplicatonCircularPath_pathWithDiameter_horizonLineTop_horizonLineHeight_maxCurveHeight_solarTimeModel_sunriseWaypoint_sunsetWayPoint___block_invoke;
  v24[3] = &unk_2787824F8;
  v28 = a3;
  v29 = a6;
  v25 = v16;
  v26 = v17;
  v27 = v18;
  v30 = a5;
  v31 = a4;
  v19 = v18;
  v20 = v17;
  v21 = v16;
  v22 = [a1 _cachedSolarPathForDiameter:v21 horizonLineTop:v20 horizonLineHeight:v19 maxCurveHeight:v24 solarTimeModel:a3 sunriseWaypoint:a4 sunsetWayPoint:a5 cacheMissBlock:a6];

  return v22;
}

NTKSolarPath *__150__NTKSolarRichComplicatonCircularPath_pathWithDiameter_horizonLineTop_horizonLineHeight_maxCurveHeight_solarTimeModel_sunriseWaypoint_sunsetWayPoint___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = 0.0;
  if (vabdd_f64(0.0, v1) >= 1.0)
  {
    v3 = 0;
    v6 = v1 * 0.5;
    while (1)
    {
      v7 = v3;
      v3 = -[NTKSolarPath initWithBounds:solarTimeModel:verticallyFitsPathToBounds:usePlaceholderData:]([NTKSolarPath alloc], "initWithBounds:solarTimeModel:verticallyFitsPathToBounds:usePlaceholderData:", *(a1 + 32), 0, [*(a1 + 32) usePlaceholderData], 0.0, 0.0, (v1 + v2) * 0.5, *(a1 + 64));

      v8 = [NTKBezierPathPointModel alloc];
      v9 = [(NTKSolarPath *)v3 bezierPath];
      v10 = [(NTKBezierPathPointModel *)v8 initWithPath:v9];

      [*(a1 + 40) percentageThroughPeriodForWaypointDate];
      if (v11 == -1.0)
      {
        [*(a1 + 48) percentageThroughPeriodForWaypointDate];
        if (v14 == -1.0)
        {
          [(NTKBezierPathPointModel *)v10 pointOnPathForHorizontalPercentage:0.5];
          v25 = v24;
          [(NTKSolarPath *)v3 altitudeAtPercentage:0.5];
          v20 = v26 + v25;
          goto LABEL_12;
        }

        v13 = *(a1 + 32);
        v12 = *(a1 + 48);
      }

      else
      {
        v13 = *(a1 + 32);
        v12 = *(a1 + 40);
      }

      v15 = [v12 waypointDate];
      [v13 percentageThroughPeriodForDate:v15];
      v17 = v16;

      [(NTKBezierPathPointModel *)v10 pointOnPathForHorizontalPercentage:v17];
      v19 = v18 + *(a1 + 72);
      v20 = floorf(v19);
LABEL_12:
      v21 = *(a1 + 80) - v20;
      [(NTKBezierPathPointModel *)v10 pointOnPathForHorizontalPercentage:0.0];
      if (sqrt((v6 - (v21 + v23)) * (v6 - (v21 + v23)) + (v6 - (v22 + (*(a1 + 56) - (v1 + v2) * 0.5) * 0.5)) * (v6 - (v22 + (*(a1 + 56) - (v1 + v2) * 0.5) * 0.5))) < *(a1 + 56) * 0.5)
      {
        v2 = (v1 + v2) * 0.5;
      }

      else
      {
        v1 = (v1 + v2) * 0.5;
      }

      if (vabdd_f64(v2, v1) < 1.0)
      {
        goto LABEL_3;
      }
    }
  }

  v3 = 0;
LABEL_3:

  return v3;
}

+ (id)_solarPathCache
{
  if (_solarPathCache_once != -1)
  {
    +[NTKSolarRichComplicatonCircularPath _solarPathCache];
  }

  v3 = _solarPathCache___solarPathCache;

  return v3;
}

void __54__NTKSolarRichComplicatonCircularPath__solarPathCache__block_invoke()
{
  v0 = objc_opt_new();
  v1 = _solarPathCache___solarPathCache;
  _solarPathCache___solarPathCache = v0;
}

+ (id)_cachedSolarPathForDiameter:(double)a3 horizonLineTop:(double)a4 horizonLineHeight:(double)a5 maxCurveHeight:(double)a6 solarTimeModel:(id)a7 sunriseWaypoint:(id)a8 sunsetWayPoint:(id)a9 cacheMissBlock:(id)a10
{
  v18 = a10;
  v19 = [a1 _cachedSolarPathKeyForDiameter:a7 horizonLineTop:a8 horizonLineHeight:a9 maxCurveHeight:a3 solarTimeModel:a4 sunriseWaypoint:a5 sunsetWayPoint:a6];
  v20 = [a1 _solarPathCache];
  v21 = [v20 ntkCachedObjectForKey:v19 creationBlock:v18];

  return v21;
}

+ (id)_cachedSolarPathKeyForDiameter:(double)a3 horizonLineTop:(double)a4 horizonLineHeight:(double)a5 maxCurveHeight:(double)a6 solarTimeModel:(id)a7 sunriseWaypoint:(id)a8 sunsetWayPoint:(id)a9
{
  v15 = MEMORY[0x277CCAB68];
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = [v15 stringWithFormat:@"diameter:%f-horizonLineTop:%f-horizonLineHeight:%f-maxCurveHeight:%f-", *&a3, *&a4, *&a5, *&a6];
  v20 = [v18 ntkCacheableKey];

  [v19 appendFormat:@"solarTimeModel:%@-", v20];
  v21 = [v17 ntkCacheableKey];

  [v19 appendFormat:@"sunriseWaypoint:%@-", v21];
  v22 = [v16 ntkCacheableKey];

  [v19 appendFormat:@"sunsetWaypoint:%@", v22];

  return v19;
}

@end