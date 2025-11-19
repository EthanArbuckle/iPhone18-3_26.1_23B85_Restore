@interface CalMigrationToolArgumentParser
+ (id)_argumentParseErrorWithCode:(unint64_t)a3 argument:(id)a4;
+ (id)commandLineArgumentsForToolOptions:(id)a3;
+ (id)parseOptionsFromCommandLineArguments:(id)a3 printUsage:(BOOL *)a4 error:(id *)a5;
+ (id)usageStringWithToolPath:(id)a3 parseError:(id)a4;
+ (unint64_t)_argumentFromCommandLineArgument:(id)a3;
+ (void)_appendToArguments:(id)a3 ifNeededForTriStateOption:(int64_t)a4 forceEnableArgument:(id)a5 forceDisableArgument:(id)a6;
@end

@implementation CalMigrationToolArgumentParser

+ (id)parseOptionsFromCommandLineArguments:(id)a3 printUsage:(BOOL *)a4 error:(id *)a5
{
  v59 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (![v8 count])
  {
    if (a4)
    {
      *a4 = 1;
    }

    v22 = 0;
    if (a5)
    {
      *a5 = 0;
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
  v9 = v8;
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
  v43 = a4;
  v44 = a5;
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
    v19 = [a1 _argumentFromCommandLineArgument:v18];
    if (v12 && v19 != 1)
    {
      v23 = v44;
      if (v44)
      {
        v24 = a1;
        v25 = 2;
        v26 = v17;
LABEL_40:
        [v24 _argumentParseErrorWithCode:v25 argument:v26];
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
        if (v43)
        {
          *v43 = 1;
        }

        if (!v44)
        {
          goto LABEL_73;
        }

        v22 = 0;
        *v44 = 0;
        goto LABEL_74;
      case 1:
        if (!v12)
        {
LABEL_54:
          v37 = v44;
          if (!v44)
          {
            goto LABEL_73;
          }

          v38 = a1;
          v39 = 0;
LABEL_67:
          [v38 _argumentParseErrorWithCode:v39 argument:v18];
          *v37 = v22 = 0;
          goto LABEL_74;
        }

        v20 = [MEMORY[0x277CBEBC0] fileURLWithPath:v18];
        v21 = *v12;
        *v12 = v20;

        if (!*v12)
        {
          v37 = v44;
          if (!v44)
          {
            goto LABEL_73;
          }

          v38 = a1;
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
          a5 = v44;
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

            if (a5)
            {
              v34 = a1;
              v35 = 6;
LABEL_51:
              [v34 _argumentParseErrorWithCode:v35 argument:0];
              *a5 = v22 = 0;
              goto LABEL_75;
            }
          }

          else if (a5)
          {
            v34 = a1;
            v35 = 1;
            goto LABEL_51;
          }

          v22 = 0;
          goto LABEL_75;
        }

        if (v44)
        {
          [a1 _argumentParseErrorWithCode:2 argument:v13];
          *v44 = v22 = 0;
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
          v40 = [objc_alloc(MEMORY[0x277CF7528]) initUsingCalendarDaemon];
          goto LABEL_64;
        }

        v23 = v44;
        if (!v44)
        {
          goto LABEL_73;
        }

        v24 = a1;
        v25 = 4;
        goto LABEL_72;
      case 5:
        if ([v9 count] == 1)
        {
          v40 = [objc_alloc(MEMORY[0x277CF7528]) initUsingCalendarDaemonWaitingForRemindersOnly];
LABEL_64:
          v22 = v40;
          goto LABEL_74;
        }

        v23 = v44;
        if (!v44)
        {
          goto LABEL_73;
        }

        v24 = a1;
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

+ (unint64_t)_argumentFromCommandLineArgument:(id)a3
{
  v3 = a3;
  if ([v3 hasPrefix:@"--"])
  {
    if ([v3 isEqualToString:@"--help"])
    {
      v4 = 0;
    }

    else if ([v3 isEqualToString:@"--homeDirectory"])
    {
      v4 = 2;
    }

    else if ([v3 isEqualToString:@"--destinationDirectory"])
    {
      v4 = 3;
    }

    else if ([v3 isEqualToString:@"--migrateUsingCalendarDaemon"])
    {
      v4 = 4;
    }

    else if ([v3 isEqualToString:@"--migrateUsingCalendarDaemonWaitingForRemindersOnly"])
    {
      v4 = 5;
    }

    else if ([v3 isEqualToString:@"--performCalendarMigration"])
    {
      v4 = 6;
    }

    else if ([v3 isEqualToString:@"--skipCalendarMigration"])
    {
      v4 = 7;
    }

    else if ([v3 isEqualToString:@"--performReminderMigration"])
    {
      v4 = 8;
    }

    else if ([v3 isEqualToString:@"--skipReminderMigration"])
    {
      v4 = 9;
    }

    else if ([v3 isEqualToString:@"--performCleanup"])
    {
      v4 = 10;
    }

    else if ([v3 isEqualToString:@"--skipCleanup"])
    {
      v4 = 11;
    }

    else if ([v3 isEqualToString:@"--deleteMigratedData"])
    {
      v4 = 12;
    }

    else if ([v3 isEqualToString:@"--skipDeleteMigratedData"])
    {
      v4 = 13;
    }

    else if ([v3 isEqualToString:@"--backupBeforeCalendarMigration"])
    {
      v4 = 14;
    }

    else if ([v3 isEqualToString:@"--skipBackupBeforeCalendarMigration"])
    {
      v4 = 15;
    }

    else if ([v3 isEqualToString:@"--backupBeforeReminderMigration"])
    {
      v4 = 16;
    }

    else if ([v3 isEqualToString:@"--skipBackupBeforeReminderMigration"])
    {
      v4 = 17;
    }

    else if ([v3 isEqualToString:@"--saveAccountChangesToFile"])
    {
      v4 = 18;
    }

    else if ([v3 isEqualToString:@"--accountsDatabaseFile"])
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

+ (id)_argumentParseErrorWithCode:(unint64_t)a3 argument:(id)a4
{
  v5 = a4;
  v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  [v6 setObject:@"kCalMigrationToolOptionsArgumentParseErrorUserInfoKey_Argument" forKeyedSubscript:@"kCalMigrationToolOptionsArgumentParseErrorUserInfoKey_Argument"];
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v7 = @"Missing required option: --homeDirectory";
        goto LABEL_19;
      }

      if (a3 != 2)
      {
        v7 = 0;
        goto LABEL_19;
      }

      [MEMORY[0x277CCACA8] stringWithFormat:@"Missing required argument for option %@", v5];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Unrecognized option: %@", v5];
    }

    v7 = LABEL_16:;
    goto LABEL_19;
  }

  if (a3 <= 4)
  {
    if (a3 != 3)
    {
      v7 = @"--migrateUsingCalendarDaemon cannot be used in combination with any other options";
      goto LABEL_19;
    }

    [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid path: %@", v5];
    goto LABEL_16;
  }

  v8 = @"--accountsDatabaseFile requires --saveAccountChangesToFile";
  if (a3 != 6)
  {
    v8 = 0;
  }

  if (a3 == 5)
  {
    v7 = @"--migrateUsingCalendarDaemonWaitingForRemindersOnly cannot be used in combination with any other options";
  }

  else
  {
    v7 = v8;
  }

LABEL_19:
  [v6 setObject:v7 forKeyedSubscript:@"kCalMigrationToolOptionsArgumentParseErrorUserInfoKey_Message"];
  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"kCalMigrationToolOptionsArgumentParseErrorDomain" code:a3 userInfo:v6];

  return v9;
}

+ (id)usageStringWithToolPath:(id)a3 parseError:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = @"CalendarMigrationTool";
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Usage:\n  %@ --migrateUsingCalendarDaemon\n    Asks the calendar daemon to perform migration and blocks until migration is finished\n  %@ --migrateUsingCalendarDaemonWaitingForRemindersOnly\n    Asks the calendar daemon to perform migration and blocks only until reminder migration is finished\n\n  %@ --homeDirectory <path to user home directory> [options]\n    Performs migration with the given options in this tool's process\n\nOptions:\n--help                                               Print this usage message\n--migrateUsingCalendarDaemon                         Asks the calendar daemon to perform migration and blocks until migration is finished\n--migrateUsingCalendarDaemonWaitingForRemindersOnly  Asks the calendar daemon to perform migration and blocks only until reminder migration is finished\n--homeDirectory                                      The home directory of the user to migrate\n--destinationDirectory                               The directory to migrate into\n--performCalendarMigration                           Force migration of calendar data\n--skipCalendarMigration                              Skip migration of calendar data\n--performReminderMigration                           Force migration of reminder data\n--skipReminderMigration                              Skip migration of reminder data\n--performCleanup                                     Force cleanup\n--skipCleanup                                        Skip cleanup\n--deleteMigratedData                                 Force deletion of migrated data\n--skipDeleteMigratedData                             Skip deletion of migrated data\n--backupBeforeCalendarMigration                      Perform a backup of the Calendars directory before calendar migration\n--skipBackupBeforeCalendarMigration                  Skip backup of the Calendars directory before calendar migration\n--backupBeforeReminderMigration                      Perform a backup of the Calendars directory before reminder migration\n--skipBackupBeforeReminderMigration                  Skip backup of the Calendars directory before reminder migration\n--saveAccountChangesToFile                           Save any account changes to the given file instead of modifying the actual account store\n--accountsDatabaseFile                               Use the specified Accounts database instead of the current user's (requires --saveAccountChangesToFile).\n", v7, v7, v7];
  if (v6)
  {
    v9 = [v6 domain];
    v10 = [v9 isEqualToString:@"kCalMigrationToolOptionsArgumentParseErrorDomain"];

    if (v10)
    {
      v11 = [v6 userInfo];
      v12 = [v11 objectForKeyedSubscript:@"kCalMigrationToolOptionsArgumentParseErrorUserInfoKey_Message"];

      if (v12)
      {
        goto LABEL_16;
      }

      v13 = [v6 userInfo];
      v14 = [v13 objectForKeyedSubscript:@"kCalMigrationToolOptionsArgumentParseErrorUserInfoKey_Argument"];

      if (v14)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error parsing command line arguments here: %@", v14];
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = [v6 localizedDescription];
    }

    if (v15)
    {
      v12 = v15;
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

+ (id)commandLineArgumentsForToolOptions:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  if ([v4 migrateUsingCalendarDaemon])
  {
    if ([v4 waitForRemindersOnly])
    {
      v6 = @"--migrateUsingCalendarDaemonWaitingForRemindersOnly";
    }

    else
    {
      v6 = @"--migrateUsingCalendarDaemon";
    }

    [v5 addObject:v6];
  }

  else
  {
    [v5 addObject:@"--homeDirectory"];
    v7 = [v4 homeDirectory];
    v8 = [v7 path];
    [v5 addObject:v8];

    v9 = [v4 destinationDirectory];

    if (v9)
    {
      [v5 addObject:@"--destinationDirectory"];
      v10 = [v4 destinationDirectory];
      v11 = [v10 path];
      [v5 addObject:v11];
    }

    [a1 _appendToArguments:v5 ifNeededForTriStateOption:objc_msgSend(v4 forceEnableArgument:"performCalendarMigration") forceDisableArgument:{@"--performCalendarMigration", @"--skipCalendarMigration"}];
    [a1 _appendToArguments:v5 ifNeededForTriStateOption:objc_msgSend(v4 forceEnableArgument:"performReminderMigration") forceDisableArgument:{@"--performReminderMigration", @"--skipReminderMigration"}];
    [a1 _appendToArguments:v5 ifNeededForTriStateOption:objc_msgSend(v4 forceEnableArgument:"performCleanup") forceDisableArgument:{@"--performCleanup", @"--skipCleanup"}];
    [a1 _appendToArguments:v5 ifNeededForTriStateOption:objc_msgSend(v4 forceEnableArgument:"deleteMigratedData") forceDisableArgument:{@"--deleteMigratedData", @"--skipDeleteMigratedData"}];
    [a1 _appendToArguments:v5 ifNeededForTriStateOption:objc_msgSend(v4 forceEnableArgument:"backupBeforeCalendarMigration") forceDisableArgument:{@"--backupBeforeCalendarMigration", @"--skipBackupBeforeCalendarMigration"}];
    [a1 _appendToArguments:v5 ifNeededForTriStateOption:objc_msgSend(v4 forceEnableArgument:"backupBeforeReminderMigration") forceDisableArgument:{@"--backupBeforeReminderMigration", @"--skipBackupBeforeReminderMigration"}];
    v12 = [v4 accountsChangesFile];

    if (v12)
    {
      [v5 addObject:@"--saveAccountChangesToFile"];
      v13 = [v4 accountsChangesFile];
      v14 = [v13 path];
      [v5 addObject:v14];
    }

    v15 = [v4 accountsDatabaseFile];

    if (v15)
    {
      [v5 addObject:@"--accountsDatabaseFile"];
      v16 = [v4 accountsDatabaseFile];
      v17 = [v16 path];
      [v5 addObject:v17];
    }
  }

  v18 = [v5 copy];

  return v18;
}

+ (void)_appendToArguments:(id)a3 ifNeededForTriStateOption:(int64_t)a4 forceEnableArgument:(id)a5 forceDisableArgument:(id)a6
{
  v13 = a3;
  v9 = a5;
  v10 = a6;
  v11 = v10;
  v12 = v9;
  if (a4 != 1)
  {
    if (a4)
    {
      goto LABEL_5;
    }

    v12 = v10;
  }

  [v13 addObject:v12];
LABEL_5:
}

@end