@interface HKWorkoutRouteTableViewController
- (HKWorkoutRoute)workoutRoute;
- (HKWorkoutRouteTableViewController)initWithSample:(id)sample usingInsetStyling:(BOOL)styling profileName:(id)name delegate:(id)delegate;
- (HKWorkoutRouteTableViewController)initWithWorkoutRoute:(id)route healthStore:(id)store usingInsetStyling:(BOOL)styling profileName:(id)name delegate:(id)delegate;
- (id)_convertIndexPathToSuper:(id)super;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForFooterInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)addRouteData:(id)data hasFinishedQuery:(BOOL)query;
- (void)loadRoute;
- (void)parseAndDisplayRouteData;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation HKWorkoutRouteTableViewController

- (HKWorkoutRouteTableViewController)initWithWorkoutRoute:(id)route healthStore:(id)store usingInsetStyling:(BOOL)styling profileName:(id)name delegate:(id)delegate
{
  stylingCopy = styling;
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = HKWorkoutRouteTableViewController;
  v13 = [(HKDataMetadataViewController *)&v17 initWithSample:route usingInsetStyling:stylingCopy profileName:name delegate:delegate];
  v14 = v13;
  if (v13)
  {
    [(HKWorkoutRouteTableViewController *)v13 setHealthStore:storeCopy];
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
  tableView = [(HKWorkoutRouteTableViewController *)self tableView];
  v4 = objc_opt_class();
  v5 = +[HKMapRouteTableViewCell defaultReuseIdentifier];
  [tableView registerClass:v4 forCellReuseIdentifier:v5];
}

- (HKWorkoutRouteTableViewController)initWithSample:(id)sample usingInsetStyling:(BOOL)styling profileName:(id)name delegate:(id)delegate
{
  stylingCopy = styling;
  v10 = MEMORY[0x1E695DF30];
  v11 = *MEMORY[0x1E695D940];
  delegateCopy = delegate;
  nameCopy = name;
  v14 = NSStringFromSelector(a2);
  [v10 raise:v11 format:{@"The -%@ method is not available on %@", v14, objc_opt_class()}];

  v15 = [(HKWorkoutRouteTableViewController *)self initWithWorkoutRoute:0 healthStore:0 usingInsetStyling:stylingCopy profileName:nameCopy delegate:delegateCopy];
  return v15;
}

- (HKWorkoutRoute)workoutRoute
{
  sample = [(HKDataMetadataViewController *)self sample];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    sample2 = [(HKDataMetadataViewController *)self sample];
  }

  else
  {
    sample2 = 0;
  }

  return sample2;
}

- (void)loadRoute
{
  v3 = objc_alloc(MEMORY[0x1E696C5C8]);
  workoutRoute = [(HKWorkoutRouteTableViewController *)self workoutRoute];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__HKWorkoutRouteTableViewController_loadRoute__block_invoke;
  v7[3] = &unk_1E81B8398;
  v7[4] = self;
  v5 = [v3 initWithRoute:workoutRoute dataHandler:v7];

  healthStore = [(HKWorkoutRouteTableViewController *)self healthStore];
  [healthStore executeQuery:v5];
}

- (void)addRouteData:(id)data hasFinishedQuery:(BOOL)query
{
  queryCopy = query;
  dataCopy = data;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  routeData = [(HKWorkoutRouteTableViewController *)selfCopy routeData];

  if (!routeData)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(dataCopy, "count")}];
    [(HKWorkoutRouteTableViewController *)selfCopy setRouteData:v9];
  }

  routeData2 = [(HKWorkoutRouteTableViewController *)selfCopy routeData];
  [routeData2 addObjectsFromArray:dataCopy];

  objc_sync_exit(selfCopy);
  if (queryCopy)
  {
    routeData3 = [(HKWorkoutRouteTableViewController *)selfCopy routeData];
    if (routeData3 && (v12 = routeData3, v13 = MEMORY[0x1E696C640], -[HKWorkoutRouteTableViewController routeData](selfCopy, "routeData"), v14 = objc_claimAutoreleasedReturnValue(), LODWORD(v13) = [v13 isShiftRequiredForLocations:v14], v14, v12, v13))
    {
      locationShifter = [(HKWorkoutRouteTableViewController *)selfCopy locationShifter];
      routeData4 = [(HKWorkoutRouteTableViewController *)selfCopy routeData];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __67__HKWorkoutRouteTableViewController_addRouteData_hasFinishedQuery___block_invoke;
      v17[3] = &unk_1E81B83C0;
      v17[4] = selfCopy;
      [locationShifter shiftLocations:routeData4 withCompletion:v17];
    }

    else
    {
      [(HKWorkoutRouteTableViewController *)selfCopy parseAndDisplayRouteData];
    }
  }
}

- (void)parseAndDisplayRouteData
{
  routeData = [(HKWorkoutRouteTableViewController *)self routeData];
  v4 = malloc_type_malloc(16 * [routeData count], 0x1000040451B5BE8uLL);

  routeData2 = [(HKWorkoutRouteTableViewController *)self routeData];
  v6 = [routeData2 count];

  if (v6)
  {
    v7 = 0;
    v8 = v4 + 8;
    do
    {
      routeData3 = [(HKWorkoutRouteTableViewController *)self routeData];
      v10 = [routeData3 objectAtIndexedSubscript:v7];
      [v10 coordinate];
      *(v8 - 8) = MKMapPointForCoordinate(v34);

      ++v7;
      routeData4 = [(HKWorkoutRouteTableViewController *)self routeData];
      v12 = [routeData4 count];

      v8 += 16;
    }

    while (v7 < v12);
  }

  v13 = MEMORY[0x1E696F368];
  routeData5 = [(HKWorkoutRouteTableViewController *)self routeData];
  v15 = [v13 polylineWithPoints:v4 count:{objc_msgSend(routeData5, "count")}];

  [v15 boundingMapRect];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(HKWorkoutRouteTableViewController *)selfCopy setRouteData:0];
  objc_sync_exit(selfCopy);

  mainQueue = [MEMORY[0x1E696ADC8] mainQueue];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __61__HKWorkoutRouteTableViewController_parseAndDisplayRouteData__block_invoke;
  v27[3] = &unk_1E81B83E8;
  v27[4] = selfCopy;
  v28 = v15;
  v29 = v4;
  v30 = v17;
  v31 = v19;
  v32 = v21;
  v33 = v23;
  v26 = v15;
  [mainQueue addOperationWithBlock:v27];
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

- (id)_convertIndexPathToSuper:(id)super
{
  v3 = MEMORY[0x1E696AC88];
  superCopy = super;
  v5 = [superCopy row];
  section = [superCopy section];

  return [v3 indexPathForRow:v5 inSection:section - 1];
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v4.receiver = self;
  v4.super_class = HKWorkoutRouteTableViewController;
  return [(HKDataMetadataViewController *)&v4 numberOfSectionsInTableView:view]+ 1;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (!section)
  {
    return 1;
  }

  v5.receiver = self;
  v5.super_class = HKWorkoutRouteTableViewController;
  return [(HKDataMetadataViewController *)&v5 tableView:view numberOfRowsInSection:section - 1];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v8 = [(HKWorkoutRouteTableViewController *)self _convertIndexPathToSuper:pathCopy];
    v14.receiver = self;
    v14.super_class = HKWorkoutRouteTableViewController;
    mapRouteTableViewCell = [(HKDataMetadataViewController *)&v14 tableView:viewCopy cellForRowAtIndexPath:v8];
  }

  else
  {
    tableView = [(HKWorkoutRouteTableViewController *)self tableView];
    v11 = +[HKMapRouteTableViewCell defaultReuseIdentifier];
    v12 = [tableView dequeueReusableCellWithIdentifier:v11];
    [(HKWorkoutRouteTableViewController *)self setMapRouteTableViewCell:v12];

    [(HKWorkoutRouteTableViewController *)self loadRoute];
    mapRouteTableViewCell = [(HKWorkoutRouteTableViewController *)self mapRouteTableViewCell];
  }

  return mapRouteTableViewCell;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v7.receiver = self;
    v7.super_class = HKWorkoutRouteTableViewController;
    v4 = [(HKDataMetadataViewController *)&v7 tableView:view titleForHeaderInSection:section - 1];
  }

  else
  {
    v5 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
    v4 = [v5 localizedStringForKey:@"WORKOUT_ROUTE_MAP" value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  }

  return v4;
}

- (id)tableView:(id)view viewForFooterInSection:(int64_t)section
{
  if (section)
  {
    v7.receiver = self;
    v7.super_class = HKWorkoutRouteTableViewController;
    v5 = [(HKDataMetadataViewController *)&v7 tableView:view viewForFooterInSection:section - 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section)
  {
    v7.receiver = self;
    v7.super_class = HKWorkoutRouteTableViewController;
    v5 = [(HKDataMetadataViewController *)&v7 tableView:view titleForFooterInSection:section - 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if ([pathCopy section])
  {
    v8 = [(HKWorkoutRouteTableViewController *)self _convertIndexPathToSuper:pathCopy];

    v9.receiver = self;
    v9.super_class = HKWorkoutRouteTableViewController;
    [(HKDataMetadataViewController *)&v9 tableView:viewCopy didSelectRowAtIndexPath:v8];
    pathCopy = v8;
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }
}

@end