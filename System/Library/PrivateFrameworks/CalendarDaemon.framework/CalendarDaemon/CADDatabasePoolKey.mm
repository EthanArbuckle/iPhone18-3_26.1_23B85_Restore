@interface CADDatabasePoolKey
- (BOOL)isEqual:(id)a3;
- (CADDatabaseInitializationOptions)options;
- (CADDatabasePoolKey)initWithInitializationOptions:(id)a3;
- (id)description;
@end

@implementation CADDatabasePoolKey

- (CADDatabasePoolKey)initWithInitializationOptions:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CADDatabasePoolKey;
  v5 = [(CADDatabasePoolKey *)&v11 init];
  if (v5)
  {
    v5->_initOptions = [v4 databaseInitOptions] & 0xFFFFFFF9;
    v6 = [v4 databaseDirectory];
    databaseDirectory = v5->_databaseDirectory;
    v5->_databaseDirectory = v6;

    v8 = [v4 calendarDataContainerProvider];
    calendarDataContainerProvider = v5->_calendarDataContainerProvider;
    v5->_calendarDataContainerProvider = v8;

    v5->_unitTesting = [v4 unitTesting];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v8 = self->_initOptions == v5[2] && ((databaseDirectory = self->_databaseDirectory, !(databaseDirectory | *(v5 + 2))) || [(NSURL *)databaseDirectory isEqual:?]) && ((calendarDataContainerProvider = self->_calendarDataContainerProvider, !(calendarDataContainerProvider | *(v5 + 3))) || [(CalCalendarDataContainerProvider *)calendarDataContainerProvider isEqual:?]) && self->_unitTesting == *(v5 + 32);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CADDatabaseInitializationOptions)options
{
  v3 = objc_alloc_init(CADDatabaseInitializationOptions);
  [(CADDatabaseInitializationOptions *)v3 setDatabaseInitOptions:self->_initOptions];
  [(CADDatabaseInitializationOptions *)v3 setDatabaseDirectory:self->_databaseDirectory];
  [(CADDatabaseInitializationOptions *)v3 setCalendarDataContainerProvider:self->_calendarDataContainerProvider];
  [(CADDatabaseInitializationOptions *)v3 setUnitTesting:self->_unitTesting];

  return v3;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"[CADDatabasePoolKey <%p>:", self];
  v4 = v3;
  initOptions = self->_initOptions;
  if (initOptions)
  {
    [v3 appendFormat:@" options = %x", self->_initOptions];
  }

  databaseDirectory = self->_databaseDirectory;
  if (databaseDirectory)
  {
    v7 = [(NSURL *)databaseDirectory path];
    v8 = CalDatabaseCopyDirectoryPath();
    v9 = [v7 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      if (initOptions)
      {
        [v4 appendString:@"; "];
      }

      v10 = [(NSURL *)self->_databaseDirectory path];
      [v4 appendFormat:@" path = %@", v10];
    }
  }

  calendarDataContainerProvider = self->_calendarDataContainerProvider;
  if (calendarDataContainerProvider)
  {
    if (initOptions)
    {
      [v4 appendString:@"; "];
      calendarDataContainerProvider = self->_calendarDataContainerProvider;
    }

    [v4 appendFormat:@" containerProvider = %@", calendarDataContainerProvider];
  }

  if (self->_unitTesting)
  {
    if (initOptions)
    {
      [v4 appendString:@"; "];
    }

    [v4 appendString:@" unitTesting = YES"];
  }

  if (initOptions)
  {
    [v4 appendFormat:@"]"];
  }

  else
  {
    [v4 appendString:@"default]"];
  }

  return v4;
}

@end