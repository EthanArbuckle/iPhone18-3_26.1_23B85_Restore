@interface HKRouteMapGenerator
- ($00C252D827C7059747F93C85745A0A56)_adjustRectForPolyline:(id)polyline withSize:(CGSize)size;
- ($00C252D827C7059747F93C85745A0A56)_adjustedMapRectForPolyline:(id)polyline size:(CGSize)size;
- ($00C252D827C7059747F93C85745A0A56)_adjustedMapRectForPolyline:(id)polyline size:(CGSize)size offsets:(CGRect)offsets;
- (HKRouteMapGenerator)init;
- (id)_annotationViewWithIsStartPoint:(BOOL)point;
- (id)_imageWithPolyline:(id)polyline lineWidth:(double)width mapRect:(id)rect onSnapshot:(id)snapshot;
- (id)relativeColorForSpeed:(double)speed;
- (void)_drawLineFromPointA:(CGPoint)a toPointB:(CGPoint)b atSpeed:(double)speed context:(CGContext *)context drawDashes:(BOOL)dashes lineWidth:(double)width;
- (void)_overlayAnnotationView:(id)view point:(id)point onSnapshot:(id)snapshot context:(CGContext *)context;
- (void)drawLinesWithPolyline:(id)polyline lineWidth:(double)width mapRect:(id)rect context:(CGContext *)context pointFromMapPoint:(id)point;
- (void)snapshotWithSize:(CGSize)size lineWidth:(double)width traitCollection:(id)collection offsets:(CGRect)offsets completion:(id)completion;
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

- (void)drawLinesWithPolyline:(id)polyline lineWidth:(double)width mapRect:(id)rect context:(CGContext *)context pointFromMapPoint:(id)point
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v11 = rect.var0.var1;
  v12 = rect.var0.var0;
  v64 = *MEMORY[0x1E69E9840];
  polylineCopy = polyline;
  pointCopy = point;
  v67.origin.x = v12;
  v67.origin.y = v11;
  v67.size.width = var0;
  v67.size.height = var1;
  v68 = MKMapRectInset(v67, var0 * -0.05, var1 * -0.05);
  y = v68.origin.y;
  x = v68.origin.x;
  height = v68.size.height;
  width = v68.size.width;
  locationReadings = [(HKRouteMapGenerator *)self locationReadings];
  workout = [locationReadings workout];
  v17 = workout;
  if (workout)
  {
    workoutActivityType = [workout workoutActivityType];
    v19 = 5.0;
    if (workoutActivityType == 46)
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
  locationReadings2 = [(HKRouteMapGenerator *)self locationReadings];
  inOrderLocationArrays = [locationReadings2 inOrderLocationArrays];

  obj = inOrderLocationArrays;
  v50 = [inOrderLocationArrays countByEnumeratingWithState:&v59 objects:v63 count:16];
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
        firstObject = [v23 firstObject];
        timestamp = [firstObject timestamp];
        [timestamp timeIntervalSinceReferenceDate];
        v27 = v26;

        if ([v23 count] >= 2)
        {
          v28 = 1;
          do
          {
            v58 = v27;
            v29 = [v23 objectAtIndexedSubscript:v28];
            [firstObject coordinate];
            v30 = MKMapPointForCoordinate(v65);
            [v29 coordinate];
            v31 = MKMapPointForCoordinate(v66);
            v32 = pointCopy[2](pointCopy, v30.x, v30.y);
            v34 = v33;
            v35 = pointCopy[2](pointCopy, v31.x, v31.y);
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
                timestamp2 = [v29 timestamp];
                [timestamp2 timeIntervalSinceReferenceDate];
                v41 = v40 - v58;

                if (v38 >= width * width || v41 <= v52)
                {
                  [v29 speed];
                  [(HKRouteMapGenerator *)self _drawLineFromPointA:context toPointB:v41 > v52 atSpeed:v57 context:v34 drawDashes:v35 lineWidth:v37, v43, width];
                }
              }

              v44 = v29;

              firstObject = v44;
            }

            timestamp3 = [v29 timestamp];
            [timestamp3 timeIntervalSinceReferenceDate];
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

- (void)_drawLineFromPointA:(CGPoint)a toPointB:(CGPoint)b atSpeed:(double)speed context:(CGContext *)context drawDashes:(BOOL)dashes lineWidth:(double)width
{
  dashesCopy = dashes;
  y = b.y;
  x = b.x;
  v14 = a.y;
  v15 = a.x;
  lengths[2] = *MEMORY[0x1E69E9840];
  Mutable = CGPathCreateMutable();
  CGPathMoveToPoint(Mutable, 0, v15, v14);
  CGPathAddLineToPoint(Mutable, 0, x, y);
  if (dashesCopy)
  {
    lengths[0] = 0.0;
    lengths[1] = width + width;
    CopyByDashingPath = CGPathCreateCopyByDashingPath(Mutable, 0, 0.0, lengths, 2uLL);
    CGContextAddPath(context, CopyByDashingPath);
    CGContextSetLineWidth(context, width);
    CGContextSetLineCap(context, kCGLineCapRound);
    grayColor = [MEMORY[0x1E69DC888] grayColor];
    CGContextSetStrokeColorWithColor(context, [grayColor CGColor]);

    contextCopy2 = context;
    v21 = kCGPathStroke;
  }

  else
  {
    CopyByDashingPath = CGPathCreateCopyByStrokingPath(Mutable, 0, width, kCGLineCapRound, kCGLineJoinRound, 10.0);
    CGContextAddPath(context, CopyByDashingPath);
    if ([(HKRouteMapGenerator *)self useRelativeColorForSpeed])
    {
      [(HKRouteMapGenerator *)self relativeColorForSpeed:speed];
    }

    else
    {
      [MEMORY[0x1E69DC888] colorWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
    }
    v22 = ;
    CGContextSetFillColorWithColor(context, [v22 CGColor]);

    contextCopy2 = context;
    v21 = kCGPathFill;
  }

  CGContextDrawPath(contextCopy2, v21);
  CGPathRelease(CopyByDashingPath);
  CGPathRelease(Mutable);
}

- (id)relativeColorForSpeed:(double)speed
{
  v5 = [MEMORY[0x1E69DC888] colorWithRed:1.0 green:0.8 blue:0.0 alpha:0.85];
  locationReadings = [(HKRouteMapGenerator *)self locationReadings];
  [locationReadings averageSpeed];
  v8 = v7;

  locationReadings2 = [(HKRouteMapGenerator *)self locationReadings];
  [locationReadings2 topSpeed];
  v11 = v10;

  locationReadings3 = [(HKRouteMapGenerator *)self locationReadings];
  [locationReadings3 bottomSpeed];
  v14 = v13;

  if (speed >= 0.0 && v8 != 0.0 && (v8 * 0.9 < speed ? (v15 = v8 * 1.1 <= speed) : (v15 = 1), v15))
  {
    v16 = (speed - v14) / (v11 - v14);
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

- ($00C252D827C7059747F93C85745A0A56)_adjustedMapRectForPolyline:(id)polyline size:(CGSize)size
{
  [(HKRouteMapGenerator *)self _adjustRectForPolyline:polyline withSize:size.width, size.height];

  return MKMapRectInset(*&v4, v6 * -0.05, v7 * -0.05);
}

- ($00C252D827C7059747F93C85745A0A56)_adjustedMapRectForPolyline:(id)polyline size:(CGSize)size offsets:(CGRect)offsets
{
  height = offsets.size.height;
  width = offsets.size.width;
  y = offsets.origin.y;
  x = offsets.origin.x;
  [(HKRouteMapGenerator *)self _adjustRectForPolyline:polyline withSize:size.width, size.height];
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

- ($00C252D827C7059747F93C85745A0A56)_adjustRectForPolyline:(id)polyline withSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  polylineCopy = polyline;
  [polylineCopy boundingMapRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  points = [polylineCopy points];
  v16 = *points;
  v17 = points[1];
  points2 = [polylineCopy points];
  pointCount = [polylineCopy pointCount];

  v20 = points2 + 16 * pointCount;
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

- (id)_annotationViewWithIsStartPoint:(BOOL)point
{
  pointCopy = point;
  if (self->_useMarkerAnnotations)
  {
    v4 = [objc_alloc(MEMORY[0x1E696F2C8]) initWithAnnotation:0 reuseIdentifier:0];
    [(MKAnnotationView *)v4 setBounds:0.0, 0.0, 32.0, 32.0];
    if (pointCopy)
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
    if (pointCopy)
    {
      startPointColor = [(HKRouteMapGenerator *)self startPointColor];

      if (startPointColor)
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
      endPointColor = [(HKRouteMapGenerator *)self endPointColor];

      if (endPointColor)
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

- (void)snapshotWithSize:(CGSize)size lineWidth:(double)width traitCollection:(id)collection offsets:(CGRect)offsets completion:(id)completion
{
  height = offsets.size.height;
  width = offsets.size.width;
  y = offsets.origin.y;
  x = offsets.origin.x;
  v13 = size.height;
  v14 = size.width;
  collectionCopy = collection;
  completionCopy = completion;
  v18 = objc_alloc_init(MEMORY[0x1E696F2B0]);
  [v18 setTraitCollection:collectionCopy];
  locationReadings = [(HKRouteMapGenerator *)self locationReadings];
  v20 = [locationReadings count];

  locationReadings2 = [(HKRouteMapGenerator *)self locationReadings];
  allValidLocations = [locationReadings2 allValidLocations];
  v23 = allValidLocations;
  if (v20 == 1)
  {
    firstObject = [allValidLocations firstObject];

    [firstObject coordinate];
    v25 = MKMapPointForCoordinate(v56);
    v26 = v25.x + -750.0 + -32.0;
    v27 = v25.y + -750.0 + -32.0;
    v28 = 1500.0;

    v29 = 0;
    v30 = 1500.0;
  }

  else
  {
    v50 = completionCopy;
    v31 = [allValidLocations count];

    v32 = malloc_type_malloc(16 * v31, 0x1000040451B5BE8uLL);
    v33 = v32;
    if (v31)
    {
      v34 = 0;
      v35 = v32 + 8;
      do
      {
        locationReadings3 = [(HKRouteMapGenerator *)self locationReadings];
        allValidLocations2 = [locationReadings3 allValidLocations];
        v38 = [allValidLocations2 objectAtIndexedSubscript:v34];

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
    completionCopy = v50;
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
  v48 = completionCopy;
  v53 = v48;
  objc_copyWeak(v54, location);
  v49 = v29;
  v52 = v49;
  v54[1] = *&width;
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

- (id)_imageWithPolyline:(id)polyline lineWidth:(double)width mapRect:(id)rect onSnapshot:(id)snapshot
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v9 = rect.var0.var1;
  v10 = rect.var0.var0;
  polylineCopy = polyline;
  snapshotCopy = snapshot;
  image = [snapshotCopy image];
  [image size];
  v17 = v16;
  v19 = v18;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v22 = v21;
  v48.width = v17;
  v48.height = v19;
  UIGraphicsBeginImageContextWithOptions(v48, 0, v22);

  image2 = [snapshotCopy image];
  [image2 size];
  v25 = v24;
  image3 = [snapshotCopy image];
  [image3 size];
  v28 = v27;

  image4 = [snapshotCopy image];
  [image4 drawInRect:{0.0, 0.0, v25, v28}];

  CurrentContext = UIGraphicsGetCurrentContext();
  v31 = [(HKRouteMapGenerator *)self _annotationViewWithIsStartPoint:1];
  locationReadings = [(HKRouteMapGenerator *)self locationReadings];
  v33 = [locationReadings count];

  if (v33 == 1)
  {
    locationReadings2 = [(HKRouteMapGenerator *)self locationReadings];
    allValidLocations = [locationReadings2 allValidLocations];
    firstObject = [allValidLocations firstObject];
    [firstObject coordinate];
    v37 = MKMapPointForCoordinate(v49);

    [(HKRouteMapGenerator *)self _overlayAnnotationView:v31 point:snapshotCopy onSnapshot:CurrentContext context:v37.x, v37.y];
  }

  else
  {
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __71__HKRouteMapGenerator__imageWithPolyline_lineWidth_mapRect_onSnapshot___block_invoke;
    v45[3] = &unk_1E81BA898;
    v38 = snapshotCopy;
    v46 = v38;
    [(HKRouteMapGenerator *)self drawLinesWithPolyline:polylineCopy lineWidth:CurrentContext mapRect:v45 context:width pointFromMapPoint:v10, v9, var0, var1];
    CGContextStrokePath(CurrentContext);
    v39 = [(HKRouteMapGenerator *)self _annotationViewWithIsStartPoint:0];
    if ([polylineCopy pointCount])
    {
      points = [polylineCopy points];
      [(HKRouteMapGenerator *)self _overlayAnnotationView:v31 point:v38 onSnapshot:CurrentContext context:*points, points[1]];
      points2 = [polylineCopy points];
      pointCount = [polylineCopy pointCount];
      [(HKRouteMapGenerator *)self _overlayAnnotationView:v39 point:v38 onSnapshot:CurrentContext context:*(points2 + 16 * pointCount - 16), *(points2 + 16 * pointCount - 8)];
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

- (void)_overlayAnnotationView:(id)view point:(id)point onSnapshot:(id)snapshot context:(CGContext *)context
{
  var1 = point.var1;
  var0 = point.var0;
  snapshotCopy = snapshot;
  viewCopy = view;
  v25.x = var0;
  v25.y = var1;
  v12 = MKCoordinateForMapPoint(v25);
  [snapshotCopy pointForCoordinate:{v12.latitude, v12.longitude}];
  v14 = v13;
  v16 = v15;

  [viewCopy bounds];
  v17 = v14 - CGRectGetMidX(v26);
  [viewCopy centerOffset];
  v19 = v17 + v18;
  [viewCopy bounds];
  v20 = v16 - CGRectGetMidY(v27);
  [viewCopy centerOffset];
  v22 = v20 + v21;
  CGContextSaveGState(context);
  CGContextTranslateCTM(context, v19, v22);
  [viewCopy prepareForSnapshotting];
  layer = [viewCopy layer];

  [layer renderInContext:context];

  CGContextRestoreGState(context);
}

void __85__HKRouteMapGenerator_snapshotWithSize_lineWidth_traitCollection_offsets_completion___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C3942000, a2, OS_LOG_TYPE_ERROR, "[routes] Error generating snapshot: %@", &v2, 0xCu);
}

@end