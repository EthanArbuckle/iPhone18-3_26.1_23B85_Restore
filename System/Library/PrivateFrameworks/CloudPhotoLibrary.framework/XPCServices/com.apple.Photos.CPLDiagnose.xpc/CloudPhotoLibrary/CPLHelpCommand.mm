@interface CPLHelpCommand
- (BOOL)parseCommandOptionsWithArgc:(int)argc argv:(char *)argv;
- (int)execute;
- (void)_printUsageWithFirstLine:(id)line mainCommandName:(id)name secondLine:(id)secondLine;
- (void)executeWithCommandClass:(Class)class mainCommandName:(id)name;
- (void)executeWithCommandClasses:(id)classes mainCommandName:(id)name;
@end

@implementation CPLHelpCommand

- (BOOL)parseCommandOptionsWithArgc:(int)argc argv:(char *)argv
{
  if (argc == 1)
  {
    return 1;
  }

  if (argc == 2)
  {
    v5 = [NSString stringWithUTF8String:argv[1]];
    helpCommandName = self->_helpCommandName;
    self->_helpCommandName = v5;
    v7 = 1;
  }

  else
  {
    helpCommandName = [objc_opt_class() commandName];
    [(CPLCTLCommand *)self printFormat:@"%@ can only take one argument", helpCommandName];
    v7 = 0;
  }

  return v7;
}

- (void)_printUsageWithFirstLine:(id)line mainCommandName:(id)name secondLine:(id)secondLine
{
  lineCopy = line;
  nameCopy = name;
  secondLineCopy = secondLine;
  toolName = [objc_opt_class() toolName];
  if (nameCopy)
  {
    [(CPLCTLCommand *)self printFormat:@"Usage: %@ %@ %@", toolName, nameCopy, lineCopy];
  }

  else
  {
    [(CPLCTLCommand *)self printFormat:@"Usage: %@ %@", toolName, lineCopy, v11];
  }

  if (secondLineCopy)
  {
    [(CPLCTLCommand *)self printFormat:@"\n%@", secondLineCopy];
  }
}

- (void)executeWithCommandClass:(Class)class mainCommandName:(id)name
{
  nameCopy = name;
  parameters = [(objc_class *)class parameters];
  shortDescription = [(objc_class *)class shortDescription];
  standaloneTool = self->_standaloneTool;
  v9 = [NSString alloc];
  if (standaloneTool)
  {
    if (!parameters)
    {
      v10 = [v9 initWithFormat:@"\n\t%@", shortDescription, v17, v19];
      goto LABEL_9;
    }

    helpCommandName = parameters;
    v18 = shortDescription;
  }

  else
  {
    if (parameters)
    {
      v10 = [v9 initWithFormat:@"%@ %@\n\t%@", self->_helpCommandName, parameters, shortDescription];
      goto LABEL_9;
    }

    helpCommandName = self->_helpCommandName;
    v18 = shortDescription;
  }

  v10 = [v9 initWithFormat:@"%@\n\t%@", helpCommandName, v18, v19];
LABEL_9:
  v11 = v10;
  help = [(objc_class *)class help];
  v13 = [help componentsSeparatedByString:@"\n"];

  if (v13)
  {
    v14 = [v13 componentsJoinedByString:@"\n\t"];
    v15 = [NSString stringWithFormat:@"\t%@", v14];
  }

  else
  {
    v15 = 0;
  }

  [(CPLHelpCommand *)self _printUsageWithFirstLine:v11 mainCommandName:nameCopy secondLine:v15];
}

- (void)executeWithCommandClasses:(id)classes mainCommandName:(id)name
{
  classesCopy = classes;
  nameCopy = name;
  v7 = @"<subcommand> [subcommand-options and arguments]";
  v30 = nameCopy;
  if (!nameCopy)
  {
    v7 = @"<command> [command-options and arguments]";
  }

  v28 = v7;
  v32 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = classesCopy;
  v8 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [NSString alloc];
        commandName = [v12 commandName];
        parameters = [v12 parameters];
        v16 = parameters;
        if (parameters)
        {
          v17 = parameters;
        }

        else
        {
          v17 = &stru_100035A18;
        }

        shortDescription = [v12 shortDescription];
        v19 = [v13 initWithFormat:@"\t%@ %@\n\t\t%@", commandName, v17, shortDescription];

        [v32 addObject:v19];
      }

      v9 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v9);
  }

  v20 = [NSString alloc];
  if (v30)
  {
    v21 = "subcommands";
  }

  else
  {
    v21 = "commands";
  }

  v22 = [v32 componentsJoinedByString:@"\n"];
  v23 = [v20 initWithFormat:@"Available %s:\n%@", v21, v22];

  [(CPLHelpCommand *)self _printUsageWithFirstLine:v28 mainCommandName:v30 secondLine:v23];
  toolName = [objc_opt_class() toolName];
  commandName2 = [objc_opt_class() commandName];
  v26 = commandName2;
  if (v30)
  {
    [(CPLCTLCommand *)self printFormat:@"\nTry %@ %@ %@ <subcommand> to get help on a specific subcommand.", toolName, v30, commandName2];
  }

  else
  {
    [(CPLCTLCommand *)self printFormat:@"\nTry %@ %@ <command> to get help on a specific command.", toolName, commandName2, v27];
  }
}

- (int)execute
{
  helpCommandName = self->_helpCommandName;
  v4 = objc_opt_class();
  if (!helpCommandName)
  {
    allCommandNames = [v4 allCommandNames];
    v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(allCommandNames, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = allCommandNames;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        v12 = 0;
        do
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [v7 addObject:{objc_msgSend(objc_opt_class(), "commandClassWithName:", *(*(&v15 + 1) + 8 * v12))}];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [(CPLHelpCommand *)self executeWithCommandClasses:v7 mainCommandName:0];
    return 0;
  }

  v5 = [v4 commandClassWithName:self->_helpCommandName];
  if (v5)
  {
    [(CPLHelpCommand *)self executeWithCommandClass:v5 mainCommandName:0];
    return 0;
  }

  [(CPLCTLCommand *)self printFormat:@"Unknown command '%@'", self->_helpCommandName];
  v14 = self->_helpCommandName;
  self->_helpCommandName = 0;

  [(CPLHelpCommand *)self execute];
  return 1;
}

@end