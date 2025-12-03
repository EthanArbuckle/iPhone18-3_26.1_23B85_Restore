@interface CalAggregateMigrationController
- (BOOL)shouldPerformMigration;
- (CalAggregateMigrationController)initWithControllers:(id)controllers;
- (void)migrationDidFinishWithResult:(unint64_t)result;
@end

@implementation CalAggregateMigrationController

- (CalAggregateMigrationController)initWithControllers:(id)controllers
{
  controllersCopy = controllers;
  v9.receiver = self;
  v9.super_class = CalAggregateMigrationController;
  v5 = [(CalAggregateMigrationController *)&v9 init];
  if (v5)
  {
    v6 = [controllersCopy copy];
    controllers = v5->_controllers;
    v5->_controllers = v6;
  }

  return v5;
}

- (BOOL)shouldPerformMigration
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  controllers = [(CalAggregateMigrationController *)self controllers];
  v3 = [controllers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(controllers);
        }

        if ([*(*(&v8 + 1) + 8 * i) shouldPerformMigration])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [controllers countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v6 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)migrationDidFinishWithResult:(unint64_t)result
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  controllers = [(CalAggregateMigrationController *)self controllers];
  v5 = [controllers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(controllers);
        }

        [*(*(&v10 + 1) + 8 * v8++) migrationDidFinishWithResult:result];
      }

      while (v6 != v8);
      v6 = [controllers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end