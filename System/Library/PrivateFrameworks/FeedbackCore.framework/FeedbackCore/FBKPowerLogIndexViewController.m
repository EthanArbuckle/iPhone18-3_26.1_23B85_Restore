@interface FBKPowerLogIndexViewController
+ (BOOL)canDisplayURL:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)prepareForSegue:(id)a3 sender:(id)a4;
- (void)setPowerLogURL:(id)a3;
- (void)viewDidLoad;
@end

@implementation FBKPowerLogIndexViewController

+ (BOOL)canDisplayURL:(id)a3
{
  v3 = [a3 pathExtension];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"plsql"];

  return v5;
}

- (void)setPowerLogURL:(id)a3
{
  [(FBKPowerLogIndexViewController *)self setLogURL:a3];
  v4 = [(FBKPowerLogIndexViewController *)self logURL];
  v5 = [v4 lastPathComponent];
  v6 = [(FBKPowerLogIndexViewController *)self navigationItem];
  [v6 setTitle:v5];

  v7 = objc_alloc(getPLDatabaseReaderClass());
  v8 = [(FBKPowerLogIndexViewController *)self logURL];
  v9 = [v8 path];
  v10 = [v7 initWithDatabaseFile:v9];
  [(FBKPowerLogIndexViewController *)self setDatabaseReader:v10];

  v11 = [(FBKPowerLogIndexViewController *)self databaseReader];
  v12 = [v11 tableNamesFromDatabase];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = MEMORY[0x1E695E0F0];
  }

  [(FBKPowerLogIndexViewController *)self setTableNames:v14];

  v15 = [(FBKPowerLogIndexViewController *)self tableView];
  [v15 reloadData];
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = FBKPowerLogIndexViewController;
  [(FBKPowerLogIndexViewController *)&v7 viewDidLoad];
  v3 = [(FBKPowerLogIndexViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];

  [(FBKPowerLogIndexViewController *)self setClearsSelectionOnViewWillAppear:1];
  v4 = *MEMORY[0x1E69DE3D0];
  v5 = [(FBKPowerLogIndexViewController *)self tableView];
  [v5 setRowHeight:v4];

  v6 = [(FBKPowerLogIndexViewController *)self tableView];
  [v6 setEstimatedRowHeight:80.0];

  [(FBKPowerLogIndexViewController *)self setEnteringDetail:0];
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = [(FBKPowerLogIndexViewController *)self tableNames:a3];
  if (v5)
  {
    v6 = [(FBKPowerLogIndexViewController *)self tableNames];
    v7 = [v6 count];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 dequeueReusableCellWithIdentifier:@"TextCell" forIndexPath:v6];
  v8 = [(FBKPowerLogIndexViewController *)self tableNames];
  v9 = [v6 row];

  v10 = [v8 objectAtIndex:v9];

  v11 = [v10 stringByReplacingOccurrencesOfString:@"_" withString:@" "];
  v12 = [v7 textLabel];
  [v12 setText:v11];

  return v7;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"POWER_LOG_SECTION" value:&stru_1F5F14EC0 table:0];

  return v5;
}

- (void)prepareForSegue:(id)a3 sender:(id)a4
{
  v13 = [a3 destinationViewController];
  v5 = [(FBKPowerLogIndexViewController *)self tableView];
  v6 = [v5 indexPathForSelectedRow];

  v7 = [(FBKPowerLogIndexViewController *)self tableNames];
  v8 = [v7 objectAtIndex:{objc_msgSend(v6, "row")}];

  v9 = [v8 stringByReplacingOccurrencesOfString:@"_" withString:@" "];
  v10 = [v13 navigationItem];
  [v10 setTitle:v9];

  v11 = [(FBKPowerLogIndexViewController *)self databaseReader];
  v12 = [v11 stringValueOfTable:v8];
  [v13 displayText:v12];

  [(FBKPowerLogIndexViewController *)self setEnteringDetail:1];
}

@end