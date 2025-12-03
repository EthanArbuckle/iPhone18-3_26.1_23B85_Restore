@interface CalMigrationToolArgumentParser
+ (id)_argumentParseErrorWithCode:(unint64_t)code argument:(id)argument;
+ (id)commandLineArgumentsForToolOptions:(id)options;
+ (id)parseOptionsFromCommandLineArguments:(id)arguments printUsage:(BOOL *)usage error:(id *)error;
+ (id)usageStringWithToolPath:(id)path parseError:(id)error;
+ (unint64_t)_argumentFromCommandLineArgument:(id)argument;
+ (void)_appendToArguments:(id)arguments ifNeededForTriStateOption:(int64_t)option forceEnableArgument:(id)argument forceDisableArgument:(id)disableArgument;
@end

@implementation CalMigrationToolArgumentParser

+ (id)parseOptionsFromCommandLineArguments:(id)arguments printUsage:(BOOL *)usage error:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  argumentsCopy = arguments;
  if (![argumentsCopy count])
  {
    if (usage)
    {
      *usage = 1;
    }

    v22 = 0;
    if (error)
    {
      *error = 0;
    }

    goto LABEL_76;
  }

  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v9 = argumentsCopy;
  v10 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (!v10)
  {

    v17 = 0;
    v15 = -1;
    v27 = -1;
    v28 = -1;
    v29 = -1;
    v30 = -1;
    v31 = -1;
    goto LABEL_42;
  }

  v11 = v10;
  usageCopy = usage;
  errorCopy = error;
  v12 = 0;
  v13 = 0;
  v14 = *v51;
  v48 = -1;
  v49 = -1;
  v46 = -1;
  v47 = -1;
  v45 = -1;
  v15 = -1;
LABEL_4:
  v16 = 0;
  while (2)
  {
    v17 = v13;
    if (*v51 != v14)
    {
      objc_enumerationMutation(v9);
    }

    v18 = *(*(&v50 + 1) + 8 * v16);
    v19 = [self _argumentFromCommandLineArgument:v18];
    if (v12 && v19 != 1)
    {
      v23 = errorCopy;
      if (errorCopy)
      {
        selfCopy7 = self;
        v25 = 2;
        v26 = v17;
LABEL_40:
        [selfCopy7 _argumentParseErrorWithCode:v25 argument:v26];
        *v23 = v22 = 0;
        goto LABEL_74;
      }

LABEL_73:
      v22 = 0;
LABEL_74:

      goto LABEL_75;
    }

    switch(v19)
    {
      case -1:
        goto LABEL_54;
      case 0:
        if (usageCopy)
        {
          *usageCopy = 1;
        }

        if (!errorCopy)
        {
          goto LABEL_73;
        }

        v22 = 0;
        *errorCopy = 0;
        goto LABEL_74;
      case 1:
        if (!v12)
        {
LABEL_54:
          v37 = errorCopy;
          if (!errorCopy)
          {
            goto LABEL_73;
          }

          selfCopy3 = self;
          v39 = 0;
LABEL_67:
          [selfCopy3 _argumentParseErrorWithCode:v39 argument:v18];
          *v37 = v22 = 0;
          goto LABEL_74;
        }

        v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v18];
        v21 = *v12;
        *v12 = v20;

        if (!*v12)
        {
          v37 = errorCopy;
          if (!errorCopy)
          {
            goto LABEL_73;
          }

          selfCopy3 = self;
          v39 = 3;
          goto LABEL_67;
        }

        v12 = 0;
LABEL_29:
        v13 = v18;

        if (v11 != ++v16)
        {
          continue;
        }

        v11 = [v9 countByEnumeratingWithState:&v50 objects:v58 count:16];
        if (v11)
        {
          goto LABEL_4;
        }

        if (!v12)
        {
          v17 = v13;
          error = errorCopy;
          v27 = v45;
          v30 = v48;
          v31 = v49;
          v28 = v46;
          v29 = v47;
LABEL_42:
          if (v57)
          {
            if (!v56)
            {
              v32 = [v57 URLByAppendingPathComponent:@"Library/Group Containers/group.com.apple.calendar" isDirectory:1];
              v33 = v56;
              v56 = v32;
            }

            if (!v54 || v55)
            {
              v36 = objc_alloc(MEMORY[0x277CF7528]);
              v22 = [v36 initWithHomeDirectory:v57 destinationDirectory:v56 performCalendarMigration:v15 performReminderMigration:v31 performCleanup:v30 deleteMigratedData:v29 backupBeforeCalendarMigration:v28 backupBeforeReminderMigration:v27 saveAccountsChangesToFile:v55 accountsDatabaseFile:v54];
              goto LABEL_75;
            }

            if (error)
            {
              selfCopy5 = self;
              v35 = 6;
LABEL_51:
              [selfCopy5 _argumentParseErrorWithCode:v35 argument:0];
              *error = v22 = 0;
              goto LABEL_75;
            }
          }

          else if (error)
          {
            selfCopy5 = self;
            v35 = 1;
            goto LABEL_51;
          }

          v22 = 0;
          goto LABEL_75;
        }

        if (errorCopy)
        {
          [self _argumentParseErrorWithCode:2 argument:v13];
          *errorCopy = v22 = 0;
        }

        else
        {
          v22 = 0;
        }

        v17 = v13;
LABEL_75:

LABEL_76:
        v41 = *MEMORY[0x277D85DE8];

        return v22;
      case 2:
        v12 = &v57;
        goto LABEL_29;
      case 3:
        v12 = &v56;
        goto LABEL_29;
      case 4:
        if ([v9 count] == 1)
        {
          initUsingCalendarDaemon = [objc_alloc(MEMORY[0x277CF7528]) initUsingCalendarDaemon];
          goto LABEL_64;
        }

        v23 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_73;
        }

        selfCopy7 = self;
        v25 = 4;
        goto LABEL_72;
      case 5:
        if ([v9 count] == 1)
        {
          initUsingCalendarDaemon = [objc_alloc(MEMORY[0x277CF7528]) initUsingCalendarDaemonWaitingForRemindersOnly];
LABEL_64:
          v22 = initUsingCalendarDaemon;
          goto LABEL_74;
        }

        v23 = errorCopy;
        if (!errorCopy)
        {
          goto LABEL_73;
        }

        selfCopy7 = self;
        v25 = 5;
LABEL_72:
        v26 = 0;
        goto LABEL_40;
      case 6:
        v15 = 1;
        goto LABEL_29;
      case 7:
        v15 = 0;
        goto LABEL_29;
      case 8:
        v49 = 1;
        goto LABEL_29;
      case 9:
        v49 = 0;
        goto LABEL_29;
      case 10:
        v48 = 1;
        goto LABEL_29;
      case 11:
        v48 = 0;
        goto LABEL_29;
      case 12:
        v47 = 1;
        goto LABEL_29;
      case 13:
        v47 = 0;
        goto LABEL_29;
      case 14:
        v46 = 1;
        goto LABEL_29;
      case 15:
        v46 = 0;
        goto LABEL_29;
      case 16:
        v45 = 1;
        goto LABEL_29;
      case 17:
        v45 = 0;
        goto LABEL_29;
      case 18:
        v12 = &v55;
        goto LABEL_29;
      case 19:
        v12 = &v54;
        goto LABEL_29;
      default:
        goto LABEL_29;
    }
  }
}

+ (unint64_t)_argumentFromCommandLineArgument:(id)argument
{
  argumentCopy = argument;
  if ([argumentCopy hasPrefix:@"--"])
  {
    if ([argumentCopy isEqualToString:@"--help"])
    {
      v4 = 0;
    }

    else if ([argumentCopy isEqualToString:@"--homeDirectory"])
    {
      v4 = 2;
    }

    else if ([argumentCopy isEqualToString:@"--destinationDirectory"])
    {
      v4 = 3;
    }

    else if ([argumentCopy isEqualToString:@"--migrateUsingCalendarDaemon"])
    {
      v4 = 4;
    }

    else if ([argumentCopy isEqualToString:@"--migrateUsingCalendarDaemonWaitingForRemindersOnly"])
    {
      v4 = 5;
    }

    else if ([argumentCopy isEqualToString:@"--performCalendarMigration"])
    {
      v4 = 6;
    }

    else if ([argumentCopy isEqualToString:@"--skipCalendarMigration"])
    {
      v4 = 7;
    }

    else if ([argumentCopy isEqualToString:@"--performReminderMigration"])
    {
      v4 = 8;
    }

    else if ([argumentCopy isEqualToString:@"--skipReminderMigration"])
    {
      v4 = 9;
    }

    else if ([argumentCopy isEqualToString:@"--performCleanup"])
    {
      v4 = 10;
    }

    else if ([argumentCopy isEqualToString:@"--skipCleanup"])
    {
      v4 = 11;
    }

    else if ([argumentCopy isEqualToString:@"--deleteMigratedData"])
    {
      v4 = 12;
    }

    else if ([argumentCopy isEqualToString:@"--skipDeleteMigratedData"])
    {
      v4 = 13;
    }

    else if ([argumentCopy isEqualToString:@"--backupBeforeCalendarMigration"])
    {
      v4 = 14;
    }

    else if ([argumentCopy isEqualToString:@"--skipBackupBeforeCalendarMigration"])
    {
      v4 = 15;
    }

    else if ([argumentCopy isEqualToString:@"--backupBeforeReminderMigration"])
    {
      v4 = 16;
    }

    else if ([argumentCopy isEqualToString:@"--skipBackupBeforeReminderMigration"])
    {
      v4 = 17;
    }

    else if ([argumentCopy isEqualToString:@"--saveAccountChangesToFile"])
    {
      v4 = 18;
    }

    else if ([argumentCopy isEqualToString:@"--accountsDatabaseFile"])
    {
      v4 = 19;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)_argumentParseErrorWithCode:(unint64_t)code argument:(id)argument
{
  argumentCopy = argument;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  [v6 setObject:@"kCalMigrationToolOptionsArgumentParseErrorUserInfoKey_Argument" forKeyedSubscript:@"kCalMigrationToolOptionsArgumentParseErrorUserInfoKey_Argument"];
  if (code <= 2)
  {
    if (code)
    {
      if (code == 1)
      {
        v7 = @"Missing required option: --homeDirectory";
        goto LABEL_19;
      }

      if (code != 2)
      {
        v7 = 0;
        goto LABEL_19;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"Missing required argument for option %@", argumentCopy];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized option: %@", argumentCopy];
    }

    v7 = LABEL_16:;
    goto LABEL_19;
  }

  if (code <= 4)
  {
    if (code != 3)
    {
      v7 = @"--migrateUsingCalendarDaemon cannot be used in combination with any other options";
      goto LABEL_19;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid path: %@", argumentCopy];
    goto LABEL_16;
  }

  v8 = @"--accountsDatabaseFile requires --saveAccountChangesToFile";
  if (code != 6)
  {
    v8 = 0;
  }

  if (code == 5)
  {
    v7 = @"--migrateUsingCalendarDaemonWaitingForRemindersOnly cannot be used in combination with any other options";
  }

  else
  {
    v7 = v8;
  }

LABEL_19:
  [v6 setObject:v7 forKeyedSubscript:@"kCalMigrationToolOptionsArgumentParseErrorUserInfoKey_Message"];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kCalMigrationToolOptionsArgumentParseErrorDomain" code:code userInfo:v6];

  return v9;
}

+ (id)usageStringWithToolPath:(id)path parseError:(id)error
{
  pathCopy = path;
  errorCopy = error;
  if (pathCopy)
  {
    v7 = pathCopy;
  }

  else
  {
    v7 = @"CalendarMigrationTool";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Usage:\n  %@ --migrateUsingCalendarDaemon\n    Asks the calendar daemon to perform migration and blocks until migration is finished\n  %@ --migrateUsingCalendarDaemonWaitingForRemindersOnly\n    Asks the calendar daemon to perform migration and blocks only until reminder migration is finished\n\n  %@ --homeDirectory <path to user home directory> [options]\n    Performs migration with the given options in this tool's process\n\nOptions:\n--help                                               Print this usage message\n--migrateUsingCalendarDaemon                         Asks the calendar daemon to perform migration and blocks until migration is finished\n--migrateUsingCalendarDaemonWaitingForRemindersOnly  Asks the calendar daemon to perform migration and blocks only until reminder migration is finished\n--homeDirectory                                      The home directory of the user to migrate\n--destinationDirectory                               The directory to migrate into\n--performCalendarMigration                           Force migration of calendar data\n--skipCalendarMigration                              Skip migration of calendar data\n--performReminderMigration                           Force migration of reminder data\n--skipReminderMigration                              Skip migration of reminder data\n--performCleanup                                     Force cleanup\n--skipCleanup                                        Skip cleanup\n--deleteMigratedData                                 Force deletion of migrated data\n--skipDeleteMigratedData                             Skip deletion of migrated data\n--backupBeforeCalendarMigration                      Perform a backup of the Calendars directory before calendar migration\n--skipBackupBeforeCalendarMigration                  Skip backup of the Calendars directory before calendar migration\n--backupBeforeReminderMigration                      Perform a backup of the Calendars directory before reminder migration\n--skipBackupBeforeReminderMigration                  Skip backup of the Calendars directory before reminder migration\n--saveAccountChangesToFile                           Save any account changes to the given file instead of modifying the actual account store\n--accountsDatabaseFile                               Use the specified Accounts database instead of the current user's (requires --saveAccountChangesToFile).\n", v7, v7, v7];
  if (errorCopy)
  {
    domain = [errorCopy domain];
    v10 = [domain isEqualToString:@"kCalMigrationToolOptionsArgumentParseErrorDomain"];

    if (v10)
    {
      userInfo = [errorCopy userInfo];
      v12 = [userInfo objectForKeyedSubscript:@"kCalMigrationToolOptionsArgumentParseErrorUserInfoKey_Message"];

      if (v12)
      {
        goto LABEL_16;
      }

      userInfo2 = [errorCopy userInfo];
      v14 = [userInfo2 objectForKeyedSubscript:@"kCalMigrationToolOptionsArgumentParseErrorUserInfoKey_Argument"];

      if (v14)
      {
        localizedDescription = [MEMORY[0x277CCACA8] stringWithFormat:@"Error parsing command line arguments here: %@", v14];
      }

      else
      {
        localizedDescription = 0;
      }
    }

    else
    {
      localizedDescription = [errorCopy localizedDescription];
    }

    if (localizedDescription)
    {
      v12 = localizedDescription;
    }

    else
    {
      v12 = @"Unknown error parsing arguments";
    }
  }

  else
  {
    v12 = @"Performs migration of legacy calendar files";
  }

LABEL_16:
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\n\n%@", v12, v8];

  return v16;
}

+ (id)commandLineArgumentsForToolOptions:(id)options
{
  optionsCopy = options;
  array = [MEMORY[0x277CBEB18] array];
  if ([optionsCopy migrateUsingCalendarDaemon])
  {
    if ([optionsCopy waitForRemindersOnly])
    {
      v6 = @"--migrateUsingCalendarDaemonWaitingForRemindersOnly";
    }

    else
    {
      v6 = @"--migrateUsingCalendarDaemon";
    }

    [array addObject:v6];
  }

  else
  {
    [array addObject:@"--homeDirectory"];
    homeDirectory = [optionsCopy homeDirectory];
    path = [homeDirectory path];
    [array addObject:path];

    destinationDirectory = [optionsCopy destinationDirectory];

    if (destinationDirectory)
    {
      [array addObject:@"--destinationDirectory"];
      destinationDirectory2 = [optionsCopy destinationDirectory];
      path2 = [destinationDirectory2 path];
      [array addObject:path2];
    }

    [self _appendToArguments:array ifNeededForTriStateOption:objc_msgSend(optionsCopy forceEnableArgument:"performCalendarMigration") forceDisableArgument:{@"--performCalendarMigration", @"--skipCalendarMigration"}];
    [self _appendToArguments:array ifNeededForTriStateOption:objc_msgSend(optionsCopy forceEnableArgument:"performReminderMigration") forceDisableArgument:{@"--performReminderMigration", @"--skipReminderMigration"}];
    [self _appendToArguments:array ifNeededForTriStateOption:objc_msgSend(optionsCopy forceEnableArgument:"performCleanup") forceDisableArgument:{@"--performCleanup", @"--skipCleanup"}];
    [self _appendToArguments:array ifNeededForTriStateOption:objc_msgSend(optionsCopy forceEnableArgument:"deleteMigratedData") forceDisableArgument:{@"--deleteMigratedData", @"--skipDeleteMigratedData"}];
    [self _appendToArguments:array ifNeededForTriStateOption:objc_msgSend(optionsCopy forceEnableArgument:"backupBeforeCalendarMigration") forceDisableArgument:{@"--backupBeforeCalendarMigration", @"--skipBackupBeforeCalendarMigration"}];
    [self _appendToArguments:array ifNeededForTriStateOption:objc_msgSend(optionsCopy forceEnableArgument:"backupBeforeReminderMigration") forceDisableArgument:{@"--backupBeforeReminderMigration", @"--skipBackupBeforeReminderMigration"}];
    accountsChangesFile = [optionsCopy accountsChangesFile];

    if (accountsChangesFile)
    {
      [array addObject:@"--saveAccountChangesToFile"];
      accountsChangesFile2 = [optionsCopy accountsChangesFile];
      path3 = [accountsChangesFile2 path];
      [array addObject:path3];
    }

    accountsDatabaseFile = [optionsCopy accountsDatabaseFile];

    if (accountsDatabaseFile)
    {
      [array addObject:@"--accountsDatabaseFile"];
      accountsDatabaseFile2 = [optionsCopy accountsDatabaseFile];
      path4 = [accountsDatabaseFile2 path];
      [array addObject:path4];
    }
  }

  v18 = [array copy];

  return v18;
}

+ (void)_appendToArguments:(id)arguments ifNeededForTriStateOption:(int64_t)option forceEnableArgument:(id)argument forceDisableArgument:(id)disableArgument
{
  argumentsCopy = arguments;
  argumentCopy = argument;
  disableArgumentCopy = disableArgument;
  v11 = disableArgumentCopy;
  v12 = argumentCopy;
  if (option != 1)
  {
    if (option)
    {
      goto LABEL_5;
    }

    v12 = disableArgumentCopy;
  }

  [argumentsCopy addObject:v12];
LABEL_5:
}

@end