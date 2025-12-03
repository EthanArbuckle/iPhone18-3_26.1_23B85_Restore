@interface FMFMapImageRequest
- (FMFMapImageRequest)initWithCoder:(id)coder;
- (NSString)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMFMapImageRequest

- (FMFMapImageRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FMFMapImageRequest *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"latitude"];
    v7 = v6;
    [coderCopy decodeDoubleForKey:@"longtitude"];
    v9 = [objc_alloc(MEMORY[0x277CE41F8]) initWithLatitude:v7 longitude:v8];
    [(FMFMapImageRequest *)v5 setLocation:v9];

    -[FMFMapImageRequest setIsShifted:](v5, "setIsShifted:", [coderCopy decodeBoolForKey:@"isShifted"]);
    [coderCopy decodeDoubleForKey:@"altitude"];
    [(FMFMapImageRequest *)v5 setAltitude:?];
    [coderCopy decodeDoubleForKey:@"pitch"];
    [(FMFMapImageRequest *)v5 setPitch:?];
    [coderCopy decodeDoubleForKey:@"width"];
    [(FMFMapImageRequest *)v5 setWidth:?];
    [coderCopy decodeDoubleForKey:@"height"];
    [(FMFMapImageRequest *)v5 setHeight:?];
    -[FMFMapImageRequest setCachingEnabled:](v5, "setCachingEnabled:", [coderCopy decodeBoolForKey:@"cachingEnabled"]);
    -[FMFMapImageRequest setPriority:](v5, "setPriority:", [coderCopy decodeIntegerForKey:@"priority"]);
    [coderCopy decodeDoubleForKey:@"radius"];
    [(FMFMapImageRequest *)v5 setRadius:?];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  location = [(FMFMapImageRequest *)self location];
  [location coordinate];
  [coderCopy encodeDouble:@"latitude" forKey:?];

  location2 = [(FMFMapImageRequest *)self location];
  [location2 coordinate];
  [coderCopy encodeDouble:@"longtitude" forKey:v6];

  [coderCopy encodeBool:-[FMFMapImageRequest isShifted](self forKey:{"isShifted"), @"isShifted"}];
  [(FMFMapImageRequest *)self altitude];
  [coderCopy encodeDouble:@"altitude" forKey:?];
  [(FMFMapImageRequest *)self pitch];
  [coderCopy encodeDouble:@"pitch" forKey:?];
  [(FMFMapImageRequest *)self width];
  [coderCopy encodeDouble:@"width" forKey:?];
  [(FMFMapImageRequest *)self height];
  [coderCopy encodeDouble:@"height" forKey:?];
  [coderCopy encodeBool:-[FMFMapImageRequest cachingEnabled](self forKey:{"cachingEnabled"), @"cachingEnabled"}];
  [coderCopy encodeInteger:-[FMFMapImageRequest priority](self forKey:{"priority"), @"priority"}];
  [(FMFMapImageRequest *)self radius];
  [coderCopy encodeDouble:@"radius" forKey:?];
}

- (NSString)key
{
  location = [(FMFMapImageRequest *)self location];
  [location coordinate];
  v5 = round(v4 * 1000.0) / 1000.0;

  location2 = [(FMFMapImageRequest *)self location];
  [location2 coordinate];
  v8 = round(v7 * 1000.0) / 1000.0;

  [(FMFMapImageRequest *)self radius];
  v10 = round(v9);
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  stringValue = [v11 stringValue];

  v13 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  stringValue2 = [v13 stringValue];

  v15 = MEMORY[0x277CCABB0];
  [(FMFMapImageRequest *)self altitude];
  v16 = [v15 numberWithDouble:?];
  stringValue3 = [v16 stringValue];

  v18 = MEMORY[0x277CCABB0];
  [(FMFMapImageRequest *)self pitch];
  v19 = [v18 numberWithDouble:?];
  stringValue4 = [v19 stringValue];

  v21 = MEMORY[0x277CCABB0];
  [(FMFMapImageRequest *)self width];
  v22 = [v21 numberWithDouble:?];
  stringValue5 = [v22 stringValue];

  v24 = MEMORY[0x277CCABB0];
  [(FMFMapImageRequest *)self height];
  v25 = [v24 numberWithDouble:?];
  stringValue6 = [v25 stringValue];

  v27 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  stringValue7 = [v27 stringValue];

  v29 = [@"mapImage" stringByAppendingFormat:@"%@%@%@%@%@%@%@", stringValue, stringValue2, stringValue3, stringValue4, stringValue5, stringValue6, stringValue7];

  return v29;
}

@end