@interface DDScannerHelper
- (DDScannerHelper)init;
- (id)runDataDetectorsOnBody:(id)a3 locale:(id)a4;
- (int64_t)getExtractionResultType:(__DDResult *)a3;
- (void)dealloc;
@end

@implementation DDScannerHelper

- (DDScannerHelper)init
{
  v6.receiver = self;
  v6.super_class = DDScannerHelper;
  v2 = [(DDScannerHelper *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    scanners = v2->_scanners;
    v2->_scanners = v3;
  }

  return v2;
}

- (void)dealloc
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSMutableDictionary *)self->_scanners allValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        CFRelease([*(*(&v8 + 1) + 8 * v6) pointerValue]);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7.receiver = self;
  v7.super_class = DDScannerHelper;
  [(DDScannerHelper *)&v7 dealloc];
}

- (int64_t)getExtractionResultType:(__DDResult *)a3
{
  v3 = [DDResultGetType() copy];
  if ([v3 isEqualToString:@"Date"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Time"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"DateTime"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"DateDuration"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"TimeDuration"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"BeginDate"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"EndDate"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"FlightInformation"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)runDataDetectorsOnBody:(id)a3 locale:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[NSDate date];
  v9 = objc_opt_new();
  if (v6 && v7)
  {
    v10 = objc_opt_new();
    [v9 setObject:v10 forKeyedSubscript:@"extractions"];
    v11 = [(NSMutableDictionary *)self->_scanners objectForKeyedSubscript:v7];
    v12 = [v11 pointerValue];

    if (v12 || (v21 = 0, v12 = DDScannerCreateWithLocale(), [NSValue valueWithPointer:v12], v13 = objc_claimAutoreleasedReturnValue(), [(NSMutableDictionary *)self->_scanners setObject:v13 forKeyedSubscript:v7], v13, v12))
    {
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100001DC8;
      v15[3] = &unk_1000AC948;
      v16 = v6;
      v17 = v8;
      v18 = v7;
      v19 = self;
      v20 = v10;
      DataDetectorsScan(v12, v16, 0, v15);
    }
  }

  return v9;
}

@end