@interface RTRoutineManager
- (void)_maps_fetchLocationsOfInterestWithTypes:(int)a3 handler:(id)a4;
@end

@implementation RTRoutineManager

- (void)_maps_fetchLocationsOfInterestWithTypes:(int)a3 handler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = dispatch_group_create();
  +[NSMutableSet set];
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = sub_1000076C4;
  v30[4] = sub_1000076D4;
  v31 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000076DC;
  v26[3] = &unk_10001D5F0;
  v8 = v29 = v30;
  v27 = v8;
  v9 = v7;
  v28 = v9;
  v10 = objc_retainBlock(v26);
  if (v4)
  {
    dispatch_group_enter(v9);
    [(RTRoutineManager *)self fetchLocationsOfInterestOfType:0 withHandler:v10];
    dispatch_group_enter(v9);
    [(RTRoutineManager *)self fetchLocationsOfInterestOfType:1 withHandler:v10];
  }

  if ((v4 & 2) != 0)
  {
    v11 = +[NSDate date];
    v12 = [v11 dateByAddingTimeInterval:-4233600.0];
    dispatch_group_enter(v9);
    [(RTRoutineManager *)self fetchLocationsOfInterestVisitedBetweenStartDate:v12 endDate:v11 withHandler:v10];
  }

  if ((v4 & 4) != 0)
  {
    v13 = [NSDateInterval alloc];
    v14 = +[NSDate date];
    v15 = [v13 initWithStartDate:v14 duration:3024000.0];

    dispatch_group_enter(v9);
    v16 = [v15 startDate];
    v17 = [v15 endDate];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100007828;
    v24[3] = &unk_10001D618;
    v25 = v10;
    [(RTRoutineManager *)self fetchPredictedLocationsOfInterestBetweenStartDate:v16 endDate:v17 withHandler:v24];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000079B0;
  block[3] = &unk_10001D640;
  v22 = v6;
  v23 = v30;
  v21 = v8;
  v18 = v8;
  v19 = v6;
  dispatch_group_notify(v9, &_dispatch_main_q, block);

  _Block_object_dispose(v30, 8);
}

@end