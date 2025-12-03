@interface FBKPowerLogIndexViewController
+ (BOOL)canDisplayURL:(id)l;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)prepareForSegue:(id)segue sender:(id)sender;
- (void)setPowerLogURL:(id)l;
- (void)viewDidLoad;
@end

@implementation FBKPowerLogIndexViewController

+ (BOOL)canDisplayURL:(id)l
{
  pathExtension = [l pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v5 = [lowercaseString isEqualToString:@"plsql"];

  return v5;
}

- (void)setPowerLogURL:(id)l
{
  [(FBKPowerLogIndexViewController *)self setLogURL:l];
  logURL = [(FBKPowerLogIndexViewController *)self logURL];
  lastPathComponent = [logURL lastPathComponent];
  navigationItem = [(FBKPowerLogIndexViewController *)self navigationItem];
  [navigationItem setTitle:lastPathComponent];

  v7 = objc_alloc(getPLDatabaseReaderClass());
  logURL2 = [(FBKPowerLogIndexViewController *)self logURL];
  path = [logURL2 path];
  v10 = [v7 initWithDatabaseFile:path];
  [(FBKPowerLogIndexViewController *)self setDatabaseReader:v10];

  databaseReader = [(FBKPowerLogIndexViewController *)self databaseReader];
  tableNamesFromDatabase = [databaseReader tableNamesFromDatabase];
  v13 = tableNamesFromDatabase;
  if (tableNamesFromDatabase)
  {
    v14 = tableNamesFromDatabase;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  [(FBKPowerLogIndexViewController *)self setTableNames:v14];

  tableView = [(FBKPowerLogIndexViewController *)self tableView];
  [tableView reloadData];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = FBKPowerLogIndexViewController;
  [(FBKPowerLogIndexViewController *)&v7 viewDidLoad];
  navigationItem = [(FBKPowerLogIndexViewController *)self navigationItem];
  [navigationItem setLargeTitleDisplayMode:2];

  [(FBKPowerLogIndexViewController *)self setClearsSelectionOnViewWillAppear:1];
  v4 = *MEMORY[0x1E69DE3D0];
  tableView = [(FBKPowerLogIndexViewController *)self tableView];
  [tableView setRowHeight:v4];

  tableView2 = [(FBKPowerLogIndexViewController *)self tableView];
  [tableView2 setEstimatedRowHeight:80.0];

  [(FBKPowerLogIndexViewController *)self setEnteringDetail:0];
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = [(FBKPowerLogIndexViewController *)self tableNames:view];
  if (v5)
  {
    tableNames = [(FBKPowerLogIndexViewController *)self tableNames];
    v7 = [tableNames count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view dequeueReusableCellWithIdentifier:@"TextCell" forIndexPath:pathCopy];
  tableNames = [(FBKPowerLogIndexViewController *)self tableNames];
  v9 = [pathCopy row];

  v10 = [tableNames objectAtIndex:v9];

  v11 = [v10 stringByReplacingOccurrencesOfString:@"_" withString:@" "];
  textLabel = [v7 textLabel];
  [textLabel setText:v11];

  return v7;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"POWER_LOG_SECTION" value:&stru_1F5F14EC0 table:0];

  return v5;
}

- (void)prepareForSegue:(id)segue sender:(id)sender
{
  destinationViewController = [segue destinationViewController];
  tableView = [(FBKPowerLogIndexViewController *)self tableView];
  indexPathForSelectedRow = [tableView indexPathForSelectedRow];

  tableNames = [(FBKPowerLogIndexViewController *)self tableNames];
  v8 = [tableNames objectAtIndex:{objc_msgSend(indexPathForSelectedRow, "row")}];

  v9 = [v8 stringByReplacingOccurrencesOfString:@"_" withString:@" "];
  navigationItem = [destinationViewController navigationItem];
  [navigationItem setTitle:v9];

  databaseReader = [(FBKPowerLogIndexViewController *)self databaseReader];
  v12 = [databaseReader stringValueOfTable:v8];
  [destinationViewController displayText:v12];

  [(FBKPowerLogIndexViewController *)self setEnteringDetail:1];
}

@end