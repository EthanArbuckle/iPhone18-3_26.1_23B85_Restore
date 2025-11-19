@interface HKWorkoutRouteTableViewController
- (HKWorkoutRoute)workoutRoute;
- (HKWorkoutRouteTableViewController)initWithSample:(id)a3 usingInsetStyling:(BOOL)a4 profileName:(id)a5 delegate:(id)a6;
- (HKWorkoutRouteTableViewController)initWithWorkoutRoute:(id)a3 healthStore:(id)a4 usingInsetStyling:(BOOL)a5 profileName:(id)a6 delegate:(id)a7;
- (id)_convertIndexPathToSuper:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)addRouteData:(id)a3 hasFinishedQuery:(BOOL)a4;
- (void)loadRoute;
- (void)parseAndDisplayRouteData;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation HKWorkoutRouteTableViewController

- (HKWorkoutRouteTableViewController)initWithWorkoutRoute:(id)a3 healthStore:(id)a4 usingInsetStyling:(BOOL)a5 profileName:(id)a6 delegate:(id)a7
{
  v9 = a5;
  v12 = a4;
  v17.receiver = self;
  v17.super_class = HKWorkoutRouteTableViewController;
  v13 = [(HKDataMetadataViewController *)&v17 initWithSample:a3 usingInsetStyling:v9 profileName:a6 delegate:a7];
  v14 = v13;
  if (v13)
  {
    [(HKWorkoutRouteTableViewController *)v13 setHealthStore:v12];
    v15 = objc_alloc_init(MEMORY[0x1E696C640]);
    [(HKWorkoutRouteTableViewController *)v14 setLocationShifter:v15];
  }

  return v14;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HKWorkoutRouteTableViewController;
  [(HKDataMetadataViewController *)&v6 viewDidLoad];
  v3 = [(HKWorkoutRouteTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[HKMapRouteTableViewCell defaultReuseIdentifier];
  [v3 registerClass:v4 forCellReuseIdentifier:v5];
}

- (HKWorkoutRouteTableViewController)initWithSample:(id)a3 usingInsetStyling:(BOOL)a4 profileName:(id)a5 delegate:(id)a6
{
  v7 = a4;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D940];
  v12 = a6;
  v13 = a5;
  v14 = NSStringFromSelector(a2);
  [v10 raise:v11 format:{@"The -%@ method is not available on %@", v14, objc_opt_class()}];

  v15 = [(HKWorkoutRouteTableViewController *)self initWithWorkoutRoute:0 healthStore:0 usingInsetStyling:v7 profileName:v13 delegate:v12];
  return v15;
}

- (HKWorkoutRoute)workoutRoute
{
  v3 = [(HKDataMetadataViewController *)self sample];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(HKDataMetadataViewController *)self sample];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)loadRoute
{
  v3 = objc_alloc(MEMORY[0x1E696C5C8]);
  v4 = [(HKWorkoutRouteTableViewController *)self workoutRoute];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__HKWorkoutRouteTableViewController_loadRoute__block_invoke;
  v7[3] = &unk_1E81B8398;
  v7[4] = self;
  v5 = [v3 initWithRoute:v4 dataHandler:v7];

  v6 = [(HKWorkoutRouteTableViewController *)self healthStore];
  [v6 executeQuery:v5];
}

- (void)addRouteData:(id)a3 hasFinishedQuery:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  v8 = [(HKWorkoutRouteTableViewController *)v7 routeData];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    [(HKWorkoutRouteTableViewController *)v7 setRouteData:v9];
  }

  v10 = [(HKWorkoutRouteTableViewController *)v7 routeData];
  [v10 addObjectsFromArray:v6];

  objc_sync_exit(v7);
  if (v4)
  {
    v11 = [(HKWorkoutRouteTableViewController *)v7 routeData];
    if (v11 && (v12 = v11, v13 = MEMORY[0x1E696C640], -[HKWorkoutRouteTableViewController routeData](v7, "routeData"), v14 = objc_claimAutoreleasedReturnValue(), LODWORD(v13) = [v13 isShiftRequiredForLocations:v14], v14, v12, v13))
    {
      v15 = [(HKWorkoutRouteTableViewController *)v7 locationShifter];
      v16 = [(HKWorkoutRouteTableViewController *)v7 routeData];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __67__HKWorkoutRouteTableViewController_addRouteData_hasFinishedQuery___block_invoke;
      v17[3] = &unk_1E81B83C0;
      v17[4] = v7;
      [v15 shiftLocations:v16 withCompletion:v17];
    }

    else
    {
      [(HKWorkoutRouteTableViewController *)v7 parseAndDisplayRouteData];
    }
  }
}

- (void)parseAndDisplayRouteData
{
  v3 = [(HKWorkoutRouteTableViewController *)self routeData];
  v4 = malloc_type_malloc(16 * [v3 count], 0x1000040451B5BE8uLL);

  v5 = [(HKWorkoutRouteTableViewController *)self routeData];
  v6 = [v5 count];

  if (v6)
  {
    v7 = 0;
    v8 = v4 + 8;
    do
    {
      v9 = [(HKWorkoutRouteTableViewController *)self routeData];
      v10 = [v9 objectAtIndexedSubscript:v7];
      [v10 coordinate];
      *(v8 - 8) = MKMapPointForCoordinate(v34);

      ++v7;
      v11 = [(HKWorkoutRouteTableViewController *)self routeData];
      v12 = [v11 count];

      v8 += 16;
    }

    while (v7 < v12);
  }

  v13 = MEMORY[0x1E696F368];
  v14 = [(HKWorkoutRouteTableViewController *)self routeData];
  v15 = [v13 polylineWithPoints:v4 count:{objc_msgSend(v14, "count")}];

  [v15 boundingMapRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = self;
  objc_sync_enter(v24);
  [(HKWorkoutRouteTableViewController *)v24 setRouteData:0];
  objc_sync_exit(v24);

  v25 = [MEMORY[0x1E696ADC8] mainQueue];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__HKWorkoutRouteTableViewController_parseAndDisplayRouteData__block_invoke;
  v27[3] = &unk_1E81B83E8;
  v27[4] = v24;
  v28 = v15;
  v29 = v4;
  v30 = v17;
  v31 = v19;
  v32 = v21;
  v33 = v23;
  v26 = v15;
  [v25 addOperationWithBlock:v27];
}

void __61__HKWorkoutRouteTableViewController_parseAndDisplayRouteData__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) mapRouteTableViewCell];
  v3 = [v2 mapView];
  [v3 addOverlay:*(a1 + 40) level:0];

  free(*(a1 + 48));
  v5 = [*(a1 + 32) mapRouteTableViewCell];
  v4 = [v5 mapView];
  [v4 setVisibleMapRect:0 edgePadding:*(a1 + 56) animated:{*(a1 + 64), *(a1 + 72), *(a1 + 80), 50.0, 20.0, 50.0, 20.0}];
}

- (id)_convertIndexPathToSuper:(id)a3
{
  v3 = MEMORY[0x1E696AC88];
  v4 = a3;
  v5 = [v4 row];
  v6 = [v4 section];

  return [v3 indexPathForRow:v5 inSection:v6 - 1];
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4.receiver = self;
  v4.super_class = HKWorkoutRouteTableViewController;
  return [(HKDataMetadataViewController *)&v4 numberOfSectionsInTableView:a3]+ 1;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (!a4)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = HKWorkoutRouteTableViewController;
  return [(HKDataMetadataViewController *)&v5 tableView:a3 numberOfRowsInSection:a4 - 1];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    v8 = [(HKWorkoutRouteTableViewController *)self _convertIndexPathToSuper:v7];
    v14.receiver = self;
    v14.super_class = HKWorkoutRouteTableViewController;
    v9 = [(HKDataMetadataViewController *)&v14 tableView:v6 cellForRowAtIndexPath:v8];
  }

  else
  {
    v10 = [(HKWorkoutRouteTableViewController *)self tableView];
    v11 = +[HKMapRouteTableViewCell defaultReuseIdentifier];
    v12 = [v10 dequeueReusableCellWithIdentifier:v11];
    [(HKWorkoutRouteTableViewController *)self setMapRouteTableViewCell:v12];

    [(HKWorkoutRouteTableViewController *)self loadRoute];
    v9 = [(HKWorkoutRouteTableViewController *)self mapRouteTableViewCell];
  }

  return v9;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v7.receiver = self;
    v7.super_class = HKWorkoutRouteTableViewController;
    v4 = [(HKDataMetadataViewController *)&v7 tableView:a3 titleForHeaderInSection:a4 - 1];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v4 = [v5 localizedStringForKey:@"WORKOUT_ROUTE_MAP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v4;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v7.receiver = self;
    v7.super_class = HKWorkoutRouteTableViewController;
    v5 = [(HKDataMetadataViewController *)&v7 tableView:a3 viewForFooterInSection:a4 - 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4)
  {
    v7.receiver = self;
    v7.super_class = HKWorkoutRouteTableViewController;
    v5 = [(HKDataMetadataViewController *)&v7 tableView:a3 titleForFooterInSection:a4 - 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 section])
  {
    v8 = [(HKWorkoutRouteTableViewController *)self _convertIndexPathToSuper:v7];

    v9.receiver = self;
    v9.super_class = HKWorkoutRouteTableViewController;
    [(HKDataMetadataViewController *)&v9 tableView:v6 didSelectRowAtIndexPath:v8];
    v7 = v8;
  }

  else
  {
    [v6 deselectRowAtIndexPath:v7 animated:1];
  }
}

@end