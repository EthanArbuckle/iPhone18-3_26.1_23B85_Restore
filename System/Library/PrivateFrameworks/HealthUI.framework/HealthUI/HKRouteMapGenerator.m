@interface HKRouteMapGenerator
- ($00C252D827C7059747F93C85745A0A56)_adjustRectForPolyline:(id)a3 withSize:(CGSize)a4;
- ($00C252D827C7059747F93C85745A0A56)_adjustedMapRectForPolyline:(id)a3 size:(CGSize)a4;
- ($00C252D827C7059747F93C85745A0A56)_adjustedMapRectForPolyline:(id)a3 size:(CGSize)a4 offsets:(CGRect)a5;
- (HKRouteMapGenerator)init;
- (id)_annotationViewWithIsStartPoint:(BOOL)a3;
- (id)_imageWithPolyline:(id)a3 lineWidth:(double)a4 mapRect:(id)a5 onSnapshot:(id)a6;
- (id)relativeColorForSpeed:(double)a3;
- (void)_drawLineFromPointA:(CGPoint)a3 toPointB:(CGPoint)a4 atSpeed:(double)a5 context:(CGContext *)a6 drawDashes:(BOOL)a7 lineWidth:(double)a8;
- (void)_overlayAnnotationView:(id)a3 point:(id)a4 onSnapshot:(id)a5 context:(CGContext *)a6;
- (void)drawLinesWithPolyline:(id)a3 lineWidth:(double)a4 mapRect:(id)a5 context:(CGContext *)a6 pointFromMapPoint:(id)a7;
- (void)snapshotWithSize:(CGSize)a3 lineWidth:(double)a4 traitCollection:(id)a5 offsets:(CGRect)a6 completion:(id)a7;
@end

@implementation HKRouteMapGenerator

- (HKRouteMapGenerator)init
{
  v5.receiver = self;
  v5.super_class = HKRouteMapGenerator;
  v2 = [(HKRouteMapGenerator *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HKRouteMapGenerator *)v2 setUseRelativeColorForSpeed:1];
    [(HKRouteMapGenerator *)v3 setUseMarkerAnnotations:1];
  }

  return v3;
}

- (void)drawLinesWithPolyline:(id)a3 lineWidth:(double)a4 mapRect:(id)a5 context:(CGContext *)a6 pointFromMapPoint:(id)a7
{
  var1 = a5.var1.var1;
  var0 = a5.var1.var0;
  v11 = a5.var0.var1;
  v12 = a5.var0.var0;
  v64 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v14 = a7;
  v67.origin.x = v12;
  v67.origin.y = v11;
  v67.size.width = var0;
  v67.size.height = var1;
  v68 = MKMapRectInset(v67, var0 * -0.05, var1 * -0.05);
  y = v68.origin.y;
  x = v68.origin.x;
  height = v68.size.height;
  width = v68.size.width;
  v15 = [(HKRouteMapGenerator *)self locationReadings];
  v16 = [v15 workout];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 workoutActivityType];
    v19 = 5.0;
    if (v18 == 46)
    {
      v19 = 15.0;
    }
  }

  else
  {
    v19 = 5.0;
  }

  v52 = v19;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v20 = [(HKRouteMapGenerator *)self locationReadings];
  v21 = [v20 inOrderLocationArrays];

  obj = v21;
  v50 = [v21 countByEnumeratingWithState:&v59 objects:v63 count:16];
  if (v50)
  {
    v49 = *v60;
    do
    {
      for (i = 0; i != v50; ++i)
      {
        if (*v60 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v59 + 1) + 8 * i);
        v24 = [v23 firstObject];
        v25 = [v24 timestamp];
        [v25 timeIntervalSinceReferenceDate];
        v27 = v26;

        if ([v23 count] >= 2)
        {
          v28 = 1;
          do
          {
            v58 = v27;
            v29 = [v23 objectAtIndexedSubscript:v28];
            [v24 coordinate];
            v30 = MKMapPointForCoordinate(v65);
            [v29 coordinate];
            v31 = MKMapPointForCoordinate(v66);
            v32 = v14[2](v14, v30.x, v30.y);
            v34 = v33;
            v35 = v14[2](v14, v31.x, v31.y);
            v37 = v36;
            v57 = v32;
            v38 = (v35 - v32) * (v35 - v32) + (v36 - v34) * (v36 - v34);
            if (v38 >= 4.0)
            {
              v70.origin.x = fmin(v30.x, v31.x);
              v70.origin.y = fmin(v30.y, v31.y);
              v70.size.width = vabdd_f64(v30.x, v31.x);
              v70.size.height = vabdd_f64(v30.y, v31.y);
              v69.origin.y = y;
              v69.origin.x = x;
              v69.size.height = height;
              v69.size.width = width;
              if (MKMapRectIntersectsRect(v69, v70))
              {
                v39 = [v29 timestamp];
                [v39 timeIntervalSinceReferenceDate];
                v41 = v40 - v58;

                if (v38 >= a4 * a4 || v41 <= v52)
                {
                  [v29 speed];
                  [(HKRouteMapGenerator *)self _drawLineFromPointA:a6 toPointB:v41 > v52 atSpeed:v57 context:v34 drawDashes:v35 lineWidth:v37, v43, a4];
                }
              }

              v44 = v29;

              v24 = v44;
            }

            v45 = [v29 timestamp];
            [v45 timeIntervalSinceReferenceDate];
            v27 = v46;

            ++v28;
          }

          while (v28 < [v23 count]);
        }
      }

      v50 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
    }

    while (v50);
  }
}

- (void)_drawLineFromPointA:(CGPoint)a3 toPointB:(CGPoint)a4 atSpeed:(double)a5 context:(CGContext *)a6 drawDashes:(BOOL)a7 lineWidth:(double)a8
{
  v9 = a7;
  y = a4.y;
  x = a4.x;
  v14 = a3.y;
  v15 = a3.x;
  lengths[2] = *MEMORY[0x1E69E9840];
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v15, v14);
  CGPathAddLineToPoint(Mutable, 0, x, y);
  if (v9)
  {
    lengths[0] = 0.0;
    lengths[1] = a8 + a8;
    CopyByDashingPath = CGPathCreateCopyByDashingPath(Mutable, 0, 0.0, lengths, 2uLL);
    CGContextAddPath(a6, CopyByDashingPath);
    CGContextSetLineWidth(a6, a8);
    CGContextSetLineCap(a6, kCGLineCapRound);
    v19 = [MEMORY[0x1E69DC888] grayColor];
    CGContextSetStrokeColorWithColor(a6, [v19 CGColor]);

    v20 = a6;
    v21 = kCGPathStroke;
  }

  else
  {
    CopyByDashingPath = CGPathCreateCopyByStrokingPath(Mutable, 0, a8, kCGLineCapRound, kCGLineJoinRound, 10.0);
    CGContextAddPath(a6, CopyByDashingPath);
    if ([(HKRouteMapGenerator *)self useRelativeColorForSpeed])
    {
      [(HKRouteMapGenerator *)self relativeColorForSpeed:a5];
    }

    else
    {
      [MEMORY[0x1E69DC888] colorWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
    }
    v22 = ;
    CGContextSetFillColorWithColor(a6, [v22 CGColor]);

    v20 = a6;
    v21 = kCGPathFill;
  }

  CGContextDrawPath(v20, v21);
  CGPathRelease(CopyByDashingPath);
  CGPathRelease(Mutable);
}

- (id)relativeColorForSpeed:(double)a3
{
  v5 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
  v6 = [(HKRouteMapGenerator *)self locationReadings];
  [v6 averageSpeed];
  v8 = v7;

  v9 = [(HKRouteMapGenerator *)self locationReadings];
  [v9 topSpeed];
  v11 = v10;

  v12 = [(HKRouteMapGenerator *)self locationReadings];
  [v12 bottomSpeed];
  v14 = v13;

  if (a3 >= 0.0 && v8 != 0.0 && (v8 * 0.9 < a3 ? (v15 = v8 * 1.1 <= a3) : (v15 = 1), v15))
  {
    v16 = (a3 - v14) / (v11 - v14);
    if (v16 >= 0.5)
    {
      v22 = v16 + -0.5 + v16 + -0.5;
      v18 = round(v22 * -179.0 + 255.0);
      v19 = round(v22 * 13.0 + 204.0);
      v20 = v22 * 100.0 + 0.0;
    }

    else
    {
      v17 = v16 + v16;
      v18 = round((v16 + v16) * 0.0 + 255.0);
      v19 = round(v17 * 145.0 + 59.0);
      v20 = v17 * -48.0 + 48.0;
    }

    v21 = [MEMORY[0x1E69DC888] colorWithRed:v18 / 255.0 green:v19 / 255.0 blue:round(v20) / 255.0 alpha:0.85];
  }

  else
  {
    v21 = v5;
  }

  v23 = v21;

  return v23;
}

- ($00C252D827C7059747F93C85745A0A56)_adjustedMapRectForPolyline:(id)a3 size:(CGSize)a4
{
  [(HKRouteMapGenerator *)self _adjustRectForPolyline:a3 withSize:a4.width, a4.height];

  return MKMapRectInset(*&v4, v6 * -0.05, v7 * -0.05);
}

- ($00C252D827C7059747F93C85745A0A56)_adjustedMapRectForPolyline:(id)a3 size:(CGSize)a4 offsets:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  [(HKRouteMapGenerator *)self _adjustRectForPolyline:a3 withSize:a4.width, a4.height];
  v11 = v9 + v10 * x;
  v14 = v12 + v13 * y;
  v15 = v10 - v10 * width;
  v16 = v13 - v13 * height;
  result.var1.var1 = v16;
  result.var1.var0 = v15;
  result.var0.var1 = v14;
  result.var0.var0 = v11;
  return result;
}

- ($00C252D827C7059747F93C85745A0A56)_adjustRectForPolyline:(id)a3 withSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3;
  [v6 boundingMapRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [v6 points];
  v16 = *v15;
  v17 = v15[1];
  v18 = [v6 points];
  v19 = [v6 pointCount];

  v20 = v18 + 16 * v19;
  v21 = *(v20 - 16);
  v22 = fmin(v17, *(v20 - 8));
  v23 = 16.0 / width * v12;
  v24 = fmin(v16, v21);
  v25 = v23 - (v24 - v8);
  v26 = fmax(v16, v21);
  *&v21 = v23 + v26 - (v8 + v12);
  v27 = fmaxf(v25, 0.0) * 1.5;
  v28 = fmaxf(*&v21, 0.0) * 1.5;
  if (v24 + -32.0 < v8)
  {
    v27 = v27 * 1.5;
  }

  v29 = v8 - v27;
  if (v26 + 32.0 <= v12 + v8 - v27)
  {
    v30 = v28;
  }

  else
  {
    v30 = v28 * 1.5;
  }

  v31 = 32.0 / height * v14 - (v22 - v10);
  v32 = fmaxf(v31, 0.0) * 1.5;
  v33 = v14 + v32;
  v34 = v10 - v32;
  v35 = v12 + v27 + v30;
  result.var1.var1 = v33;
  result.var1.var0 = v35;
  result.var0.var1 = v34;
  result.var0.var0 = v29;
  return result;
}

- (id)_annotationViewWithIsStartPoint:(BOOL)a3
{
  v3 = a3;
  if (self->_useMarkerAnnotations)
  {
    v4 = [objc_alloc(MEMORY[0x1E696F2C8]) initWithAnnotation:0 reuseIdentifier:0];
    [(MKAnnotationView *)v4 setBounds:0.0, 0.0, 32.0, 32.0];
    if (v3)
    {
      v5 = 0.298039216;
      v6 = 0.850980392;
      v7 = 0.392156863;
    }

    else
    {
      v6 = 0.231372549;
      v7 = 0.188235294;
      v5 = 1.0;
    }

    v12 = [MEMORY[0x1E69DC888] colorWithRed:v5 green:v6 blue:v7 alpha:1.0];
    [(HKDotAnnotationView *)v4 setMarkerTintColor:v12];
  }

  else
  {
    v4 = [[HKDotAnnotationView alloc] initWithAnnotation:0 reuseIdentifier:0];
    [(MKAnnotationView *)v4 setBounds:0.0, 0.0, 20.0, 20.0];
    if (v3)
    {
      v9 = [(HKRouteMapGenerator *)self startPointColor];

      if (v9)
      {
        [(HKRouteMapGenerator *)self startPointColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] colorWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
      }
    }

    else
    {
      v11 = [(HKRouteMapGenerator *)self endPointColor];

      if (v11)
      {
        [(HKRouteMapGenerator *)self endPointColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] hk_chartGrayGraphColor];
      }
    }
    v10 = ;
    v12 = v10;
    [(HKDotAnnotationView *)v4 setDotColor:v10];
  }

  return v4;
}

- (void)snapshotWithSize:(CGSize)a3 lineWidth:(double)a4 traitCollection:(id)a5 offsets:(CGRect)a6 completion:(id)a7
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v13 = a3.height;
  v14 = a3.width;
  v16 = a5;
  v17 = a7;
  v18 = objc_alloc_init(MEMORY[0x1E696F2B0]);
  [v18 setTraitCollection:v16];
  v19 = [(HKRouteMapGenerator *)self locationReadings];
  v20 = [v19 count];

  v21 = [(HKRouteMapGenerator *)self locationReadings];
  v22 = [v21 allValidLocations];
  v23 = v22;
  if (v20 == 1)
  {
    v24 = [v22 firstObject];

    [v24 coordinate];
    v25 = MKMapPointForCoordinate(v56);
    v26 = v25.x + -750.0 + -32.0;
    v27 = v25.y + -750.0 + -32.0;
    v28 = 1500.0;

    v29 = 0;
    v30 = 1500.0;
  }

  else
  {
    v50 = v17;
    v31 = [v22 count];

    v32 = malloc_type_malloc(16 * v31, 0x1000040451B5BE8uLL);
    v33 = v32;
    if (v31)
    {
      v34 = 0;
      v35 = v32 + 8;
      do
      {
        v36 = [(HKRouteMapGenerator *)self locationReadings];
        v37 = [v36 allValidLocations];
        v38 = [v37 objectAtIndexedSubscript:v34];

        [v38 coordinate];
        *(v35 - 8) = MKMapPointForCoordinate(v57);

        ++v34;
        v35 += 16;
      }

      while (v31 != v34);
    }

    v29 = [MEMORY[0x1E696F368] polylineWithPoints:v33 count:v31];
    free(v33);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = width;
    v58.size.height = height;
    if (CGRectEqualToRect(v58, *MEMORY[0x1E695F050]))
    {
      [(HKRouteMapGenerator *)self _adjustedMapRectForPolyline:v29 size:v14, v13];
    }

    else
    {
      [(HKRouteMapGenerator *)self _adjustedMapRectForPolyline:v29 size:v14 offsets:v13, x, y, width, height];
    }

    v26 = v39;
    v27 = v40;
    v28 = v41;
    v30 = v42;
    v17 = v50;
  }

  [v18 setMapRect:{v26, v27, v28, v30}];
  [v18 setMapType:5];
  [v18 setSize:{v14, v13}];
  [(MKMapSnapshotter *)self->_runningSnapshotter cancel];
  runningSnapshotter = self->_runningSnapshotter;
  self->_runningSnapshotter = 0;

  v44 = [objc_alloc(MEMORY[0x1E696F2B8]) initWithOptions:v18];
  v45 = self->_runningSnapshotter;
  self->_runningSnapshotter = v44;

  v46 = dispatch_get_global_queue(25, 0);
  objc_initWeak(location, self);
  v47 = self->_runningSnapshotter;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __85__HKRouteMapGenerator_snapshotWithSize_lineWidth_traitCollection_offsets_completion___block_invoke;
  v51[3] = &unk_1E81BA870;
  v48 = v17;
  v53 = v48;
  objc_copyWeak(v54, location);
  v49 = v29;
  v52 = v49;
  v54[1] = *&a4;
  v54[2] = *&v26;
  v54[3] = *&v27;
  v54[4] = *&v28;
  v54[5] = *&v30;
  [(MKMapSnapshotter *)v47 startWithQueue:v46 completionHandler:v51];

  objc_destroyWeak(v54);
  objc_destroyWeak(location);
}

void __85__HKRouteMapGenerator_snapshotWithSize_lineWidth_traitCollection_offsets_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  _HKInitializeLogging();
  v8 = *MEMORY[0x1E696B928];
  v9 = *MEMORY[0x1E696B928];
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __85__HKRouteMapGenerator_snapshotWithSize_lineWidth_traitCollection_offsets_completion___block_invoke_cold_1(v6, v8);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v19 = v5;
      _os_log_impl(&dword_1C3942000, v8, OS_LOG_TYPE_DEFAULT, "[routes] Received snapshot back from MKMapSnapshotter: %@", buf, 0xCu);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__HKRouteMapGenerator_snapshotWithSize_lineWidth_traitCollection_offsets_completion___block_invoke_318;
    block[3] = &unk_1E81BA848;
    objc_copyWeak(v15, (a1 + 48));
    v12 = *(a1 + 32);
    v15[1] = *(a1 + 56);
    v10 = *(a1 + 80);
    v16 = *(a1 + 64);
    v17 = v10;
    v13 = v5;
    v14 = *(a1 + 40);
    dispatch_async(MEMORY[0x1E69E96A0], block);

    objc_destroyWeak(v15);
  }

  objc_autoreleasePoolPop(v7);
}

void __85__HKRouteMapGenerator_snapshotWithSize_lineWidth_traitCollection_offsets_completion___block_invoke_318(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained _imageWithPolyline:*(a1 + 32) lineWidth:*(a1 + 40) mapRect:*(a1 + 64) onSnapshot:{*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];

  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (id)_imageWithPolyline:(id)a3 lineWidth:(double)a4 mapRect:(id)a5 onSnapshot:(id)a6
{
  var1 = a5.var1.var1;
  var0 = a5.var1.var0;
  v9 = a5.var0.var1;
  v10 = a5.var0.var0;
  v13 = a3;
  v14 = a6;
  v15 = [v14 image];
  [v15 size];
  v17 = v16;
  v19 = v18;
  v20 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v20 scale];
  v22 = v21;
  v48.width = v17;
  v48.height = v19;
  UIGraphicsBeginImageContextWithOptions(v48, 0, v22);

  v23 = [v14 image];
  [v23 size];
  v25 = v24;
  v26 = [v14 image];
  [v26 size];
  v28 = v27;

  v29 = [v14 image];
  [v29 drawInRect:{0.0, 0.0, v25, v28}];

  CurrentContext = UIGraphicsGetCurrentContext();
  v31 = [(HKRouteMapGenerator *)self _annotationViewWithIsStartPoint:1];
  v32 = [(HKRouteMapGenerator *)self locationReadings];
  v33 = [v32 count];

  if (v33 == 1)
  {
    v34 = [(HKRouteMapGenerator *)self locationReadings];
    v35 = [v34 allValidLocations];
    v36 = [v35 firstObject];
    [v36 coordinate];
    v37 = MKMapPointForCoordinate(v49);

    [(HKRouteMapGenerator *)self _overlayAnnotationView:v31 point:v14 onSnapshot:CurrentContext context:v37.x, v37.y];
  }

  else
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __71__HKRouteMapGenerator__imageWithPolyline_lineWidth_mapRect_onSnapshot___block_invoke;
    v45[3] = &unk_1E81BA898;
    v38 = v14;
    v46 = v38;
    [(HKRouteMapGenerator *)self drawLinesWithPolyline:v13 lineWidth:CurrentContext mapRect:v45 context:a4 pointFromMapPoint:v10, v9, var0, var1];
    CGContextStrokePath(CurrentContext);
    v39 = [(HKRouteMapGenerator *)self _annotationViewWithIsStartPoint:0];
    if ([v13 pointCount])
    {
      v40 = [v13 points];
      [(HKRouteMapGenerator *)self _overlayAnnotationView:v31 point:v38 onSnapshot:CurrentContext context:*v40, v40[1]];
      v41 = [v13 points];
      v42 = [v13 pointCount];
      [(HKRouteMapGenerator *)self _overlayAnnotationView:v39 point:v38 onSnapshot:CurrentContext context:*(v41 + 16 * v42 - 16), *(v41 + 16 * v42 - 8)];
    }
  }

  v43 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v43;
}

uint64_t __71__HKRouteMapGenerator__imageWithPolyline_lineWidth_mapRect_onSnapshot___block_invoke(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 32);
  v4 = MKCoordinateForMapPoint(*&a2);

  return [v3 pointForCoordinate:{v4.latitude, v4.longitude}];
}

- (void)_overlayAnnotationView:(id)a3 point:(id)a4 onSnapshot:(id)a5 context:(CGContext *)a6
{
  var1 = a4.var1;
  var0 = a4.var0;
  v10 = a5;
  v11 = a3;
  v25.x = var0;
  v25.y = var1;
  v12 = MKCoordinateForMapPoint(v25);
  [v10 pointForCoordinate:{v12.latitude, v12.longitude}];
  v14 = v13;
  v16 = v15;

  [v11 bounds];
  v17 = v14 - CGRectGetMidX(v26);
  [v11 centerOffset];
  v19 = v17 + v18;
  [v11 bounds];
  v20 = v16 - CGRectGetMidY(v27);
  [v11 centerOffset];
  v22 = v20 + v21;
  CGContextSaveGState(a6);
  CGContextTranslateCTM(a6, v19, v22);
  [v11 prepareForSnapshotting];
  v23 = [v11 layer];

  [v23 renderInContext:a6];

  CGContextRestoreGState(a6);
}

void __85__HKRouteMapGenerator_snapshotWithSize_lineWidth_traitCollection_offsets_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "[routes] Error generating snapshot: %@", &v2, 0xCu);
}

@end