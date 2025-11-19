@interface CPLHelpCommand
- (BOOL)parseCommandOptionsWithArgc:(int)a3 argv:(char *)a4;
- (int)execute;
- (void)_printUsageWithFirstLine:(id)a3 mainCommandName:(id)a4 secondLine:(id)a5;
- (void)executeWithCommandClass:(Class)a3 mainCommandName:(id)a4;
- (void)executeWithCommandClasses:(id)a3 mainCommandName:(id)a4;
@end

@implementation CPLHelpCommand

- (BOOL)parseCommandOptionsWithArgc:(int)a3 argv:(char *)a4
{
  if (a3 == 1)
  {
    return 1;
  }

  if (a3 == 2)
  {
    v5 = [NSString stringWithUTF8String:a4[1]];
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

- (void)_printUsageWithFirstLine:(id)a3 mainCommandName:(id)a4 secondLine:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_opt_class() toolName];
  if (v8)
  {
    [(CPLCTLCommand *)self printFormat:@"Usage: %@ %@ %@", v10, v8, v12];
  }

  else
  {
    [(CPLCTLCommand *)self printFormat:@"Usage: %@ %@", v10, v12, v11];
  }

  if (v9)
  {
    [(CPLCTLCommand *)self printFormat:@"\n%@", v9];
  }
}

- (void)executeWithCommandClass:(Class)a3 mainCommandName:(id)a4
{
  v20 = a4;
  v6 = [(objc_class *)a3 parameters];
  v7 = [(objc_class *)a3 shortDescription];
  standaloneTool = self->_standaloneTool;
  v9 = [NSString alloc];
  if (standaloneTool)
  {
    if (!v6)
    {
      v10 = [v9 initWithFormat:@"\n\t%@", v7, v17, v19];
      goto LABEL_9;
    }

    helpCommandName = v6;
    v18 = v7;
  }

  else
  {
    if (v6)
    {
      v10 = [v9 initWithFormat:@"%@ %@\n\t%@", self->_helpCommandName, v6, v7];
      goto LABEL_9;
    }

    helpCommandName = self->_helpCommandName;
    v18 = v7;
  }

  v10 = [v9 initWithFormat:@"%@\n\t%@", helpCommandName, v18, v19];
LABEL_9:
  v11 = v10;
  v12 = [(objc_class *)a3 help];
  v13 = [v12 componentsSeparatedByString:@"\n"];

  if (v13)
  {
    v14 = [v13 componentsJoinedByString:@"\n\t"];
    v15 = [NSString stringWithFormat:@"\t%@", v14];
  }

  else
  {
    v15 = 0;
  }

  [(CPLHelpCommand *)self _printUsageWithFirstLine:v11 mainCommandName:v20 secondLine:v15];
}

- (void)executeWithCommandClasses:(id)a3 mainCommandName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = @"<subcommand> [subcommand-options and arguments]";
  v30 = v6;
  if (!v6)
  {
    v7 = @"<command> [command-options and arguments]";
  }

  v28 = v7;
  v32 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
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
        v14 = [v12 commandName];
        v15 = [v12 parameters];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = &stru_100035A18;
        }

        v18 = [v12 shortDescription];
        v19 = [v13 initWithFormat:@"\t%@ %@\n\t\t%@", v14, v17, v18];

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
  v24 = [objc_opt_class() toolName];
  v25 = [objc_opt_class() commandName];
  v26 = v25;
  if (v30)
  {
    [(CPLCTLCommand *)self printFormat:@"\nTry %@ %@ %@ <subcommand> to get help on a specific subcommand.", v24, v30, v25];
  }

  else
  {
    [(CPLCTLCommand *)self printFormat:@"\nTry %@ %@ <command> to get help on a specific command.", v24, v25, v27];
  }
}

- (int)execute
{
  helpCommandName = self->_helpCommandName;
  v4 = objc_opt_class();
  if (!helpCommandName)
  {
    v6 = [v4 allCommandNames];
    v7 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v6;
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