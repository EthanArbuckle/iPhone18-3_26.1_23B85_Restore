@interface FMFMapImageRequest
- (FMFMapImageRequest)initWithCoder:(id)a3;
- (NSString)key;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMFMapImageRequest

- (FMFMapImageRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMFMapImageRequest *)self init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"latitude"];
    v7 = v6;
    [v4 decodeDoubleForKey:@"longtitude"];
    v9 = [[CLLocation alloc] initWithLatitude:v7 longitude:v8];
    [(FMFMapImageRequest *)v5 setLocation:v9];

    -[FMFMapImageRequest setIsShifted:](v5, "setIsShifted:", [v4 decodeBoolForKey:@"isShifted"]);
    [v4 decodeDoubleForKey:@"altitude"];
    [(FMFMapImageRequest *)v5 setAltitude:?];
    [v4 decodeDoubleForKey:@"pitch"];
    [(FMFMapImageRequest *)v5 setPitch:?];
    [v4 decodeDoubleForKey:@"width"];
    [(FMFMapImageRequest *)v5 setWidth:?];
    [v4 decodeDoubleForKey:@"height"];
    [(FMFMapImageRequest *)v5 setHeight:?];
    -[FMFMapImageRequest setCachingEnabled:](v5, "setCachingEnabled:", [v4 decodeBoolForKey:@"cachingEnabled"]);
    -[FMFMapImageRequest setPriority:](v5, "setPriority:", [v4 decodeIntegerForKey:@"priority"]);
    [v4 decodeDoubleForKey:@"radius"];
    [(FMFMapImageRequest *)v5 setRadius:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(FMFMapImageRequest *)self location];
  [v4 coordinate];
  [v7 encodeDouble:@"latitude" forKey:?];

  v5 = [(FMFMapImageRequest *)self location];
  [v5 coordinate];
  [v7 encodeDouble:@"longtitude" forKey:v6];

  [v7 encodeBool:-[FMFMapImageRequest isShifted](self forKey:{"isShifted"), @"isShifted"}];
  [(FMFMapImageRequest *)self altitude];
  [v7 encodeDouble:@"altitude" forKey:?];
  [(FMFMapImageRequest *)self pitch];
  [v7 encodeDouble:@"pitch" forKey:?];
  [(FMFMapImageRequest *)self width];
  [v7 encodeDouble:@"width" forKey:?];
  [(FMFMapImageRequest *)self height];
  [v7 encodeDouble:@"height" forKey:?];
  [v7 encodeBool:-[FMFMapImageRequest cachingEnabled](self forKey:{"cachingEnabled"), @"cachingEnabled"}];
  [v7 encodeInteger:-[FMFMapImageRequest priority](self forKey:{"priority"), @"priority"}];
  [(FMFMapImageRequest *)self radius];
  [v7 encodeDouble:@"radius" forKey:?];
}

- (NSString)key
{
  v3 = [(FMFMapImageRequest *)self location];
  [v3 coordinate];
  v5 = round(v4 * 1000.0) / 1000.0;

  v6 = [(FMFMapImageRequest *)self location];
  [v6 coordinate];
  v8 = round(v7 * 1000.0) / 1000.0;

  [(FMFMapImageRequest *)self radius];
  v10 = round(v9);
  v11 = [NSNumber numberWithDouble:v5];
  v12 = [v11 stringValue];

  v13 = [NSNumber numberWithDouble:v8];
  v14 = [v13 stringValue];

  [(FMFMapImageRequest *)self altitude];
  v15 = [NSNumber numberWithDouble:?];
  v16 = [v15 stringValue];

  [(FMFMapImageRequest *)self pitch];
  v17 = [NSNumber numberWithDouble:?];
  v18 = [v17 stringValue];

  [(FMFMapImageRequest *)self width];
  v19 = [NSNumber numberWithDouble:?];
  v20 = [v19 stringValue];

  [(FMFMapImageRequest *)self height];
  v21 = [NSNumber numberWithDouble:?];
  v22 = [v21 stringValue];

  v23 = [NSNumber numberWithDouble:v10];
  v24 = [v23 stringValue];

  v25 = [@"mapImage" stringByAppendingFormat:@"%@%@%@%@%@%@%@", v12, v14, v16, v18, v20, v22, v24];

  return v25;
}

@end