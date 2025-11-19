@interface CLLocation
+ (CLLocation)locationWithCPLLocationDictionary:(id)a3;
- (id)cplLocationDictionary;
@end

@implementation CLLocation

+ (CLLocation)locationWithCPLLocationDictionary:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [v3 cpl_validObjectForKey:@"lat" class:objc_opt_class()];
    v5 = [v3 cpl_validObjectForKey:@"lon" class:objc_opt_class()];
    v6 = [v3 cpl_validObjectForKey:@"alt" class:objc_opt_class()];
    v7 = [v3 cpl_validObjectForKey:@"horzAcc" class:objc_opt_class()];
    v8 = [v3 cpl_validObjectForKey:@"vertAcc" class:objc_opt_class()];
    v9 = [v3 cpl_validObjectForKey:@"timestamp" class:objc_opt_class()];
    v10 = [v3 cpl_validObjectForKey:@"course" class:objc_opt_class()];
    v11 = [v3 cpl_validObjectForKey:@"speed" class:objc_opt_class()];

    v12 = 0;
    if (v4 && v5)
    {
      [v4 doubleValue];
      v14 = v13;
      [v5 doubleValue];
      v16 = CLLocationCoordinate2DMake(v14, v15);
      v17 = [CLLocation alloc];
      [v6 doubleValue];
      v19 = v18;
      [v7 doubleValue];
      v21 = v20;
      [v8 doubleValue];
      v23 = v22;
      [v10 doubleValue];
      v25 = v24;
      [v11 doubleValue];
      v12 = [v17 initWithCoordinate:v9 altitude:v16.latitude horizontalAccuracy:v16.longitude verticalAccuracy:v19 course:v21 speed:v23 timestamp:{v25, v26}];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)cplLocationDictionary
{
  v14[0] = @"lat";
  [(CLLocation *)self coordinate];
  v3 = [NSNumber numberWithDouble:?];
  v15[0] = v3;
  v14[1] = @"lon";
  [(CLLocation *)self coordinate];
  v5 = [NSNumber numberWithDouble:v4];
  v15[1] = v5;
  v14[2] = @"alt";
  [(CLLocation *)self altitude];
  v6 = [NSNumber numberWithDouble:?];
  v15[2] = v6;
  v14[3] = @"horzAcc";
  [(CLLocation *)self horizontalAccuracy];
  v7 = [NSNumber numberWithDouble:?];
  v15[3] = v7;
  v14[4] = @"vertAcc";
  [(CLLocation *)self verticalAccuracy];
  v8 = [NSNumber numberWithDouble:?];
  v15[4] = v8;
  v14[5] = @"timestamp";
  v9 = [(CLLocation *)self timestamp];
  v15[5] = v9;
  v14[6] = @"course";
  [(CLLocation *)self course];
  v10 = [NSNumber numberWithDouble:?];
  v15[6] = v10;
  v14[7] = @"speed";
  [(CLLocation *)self speed];
  v11 = [NSNumber numberWithDouble:?];
  v15[7] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];

  return v12;
}

@end