@interface DTKPCPU
+ (id)cpuNamed:(id)named fromSerializedData:(id)data error:(id *)error;
+ (id)localCPU:(id *)u;
+ (void)initialize;
- (DTKPCPU)initWithName:(id)name database:(kpep_db *)database;
- (id)_fixupAlias:(id)alias;
- (id)allAliasAndNameStrings;
- (id)description;
- (id)eventFromName:(id)name;
- (id)eventFromNameOrAlias:(id)alias;
- (id)mnemonicToAliasMapping;
- (void)dealloc;
@end

@implementation DTKPCPU

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    DTKPSetupLogging();
    v2 = objc_opt_new();
    v3 = qword_27EE84378;
    qword_27EE84378 = v2;

    v4 = dispatch_semaphore_create(1);
    v5 = qword_27EE84380;
    qword_27EE84380 = v4;
  }
}

+ (id)localCPU:(id *)u
{
  v4 = *MEMORY[0x277D85F48];
  if (CSTaskIsTranslated())
  {
    DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPU", u, 4294966596, @"CPU Counters are not supported when running under Rosetta.");
    v5 = 0;
    goto LABEL_14;
  }

  dispatch_semaphore_wait(qword_27EE84380, 0xFFFFFFFFFFFFFFFFLL);
  if (!qword_27EE84388)
  {
    v6 = kpep_db_create();
    v7 = v6;
    if (v6 == 7)
    {
      if (!DTCoreIs64BitCapable())
      {
LABEL_12:
        v5 = 0;
        goto LABEL_13;
      }
    }

    else if (!v6)
    {
      v8 = kpep_db_name();
      if (!v8)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:0];
        v12 = qword_27EE84388;
        qword_27EE84388 = v11;

        v13 = [DTKPCPU alloc];
        v5 = [(DTKPCPU *)v13 initWithName:qword_27EE84388 database:0];
        [qword_27EE84378 setObject:v5 forKeyedSubscript:qword_27EE84388];
        goto LABEL_13;
      }

      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error getting CPU database name local machine (%d).", v8];
      DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPU", u, 4294966596, v9);
      goto LABEL_11;
    }

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error creating CPU database for local machine (%d).", v7];
    DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPU", u, 4294966596, v9);
LABEL_11:

    goto LABEL_12;
  }

  v5 = [qword_27EE84378 objectForKeyedSubscript:?];
LABEL_13:
  dispatch_semaphore_signal(qword_27EE84380);
LABEL_14:

  return v5;
}

+ (id)cpuNamed:(id)named fromSerializedData:(id)data error:(id *)error
{
  namedCopy = named;
  dataCopy = data;
  dispatch_semaphore_wait(qword_27EE84380, 0xFFFFFFFFFFFFFFFFLL);
  v9 = [qword_27EE84378 objectForKeyedSubscript:namedCopy];
  if (!v9)
  {
    [dataCopy bytes];
    [dataCopy length];
    v10 = kpep_db_deserialize();
    if (v10)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error creating CPU database from serialized data for '%@' (%d).", namedCopy, v10];
      DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPU", error, 4294966596, v11);

      v9 = 0;
    }

    else
    {
      v9 = [[DTKPCPU alloc] initWithName:namedCopy database:0];
      [qword_27EE84378 setObject:v9 forKeyedSubscript:namedCopy];
    }
  }

  dispatch_semaphore_signal(qword_27EE84380);

  return v9;
}

- (id)description
{
  v3 = [(NSString *)self->_lookupName isEqualToString:self->_name];
  name = self->_name;
  if (v3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ CPU with %ld events", name, -[NSMutableArray count](self->_events, "count"), v7];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%@) CPU with %ld events", name, self->_lookupName, -[NSMutableArray count](self->_events, "count")];
  }
  v5 = ;

  return v5;
}

- (DTKPCPU)initWithName:(id)name database:(kpep_db *)database
{
  v26 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = DTKPCPU;
  v7 = [(DTKPCPU *)&v24 init];
  if (v7)
  {
    v8 = sDTKPLogClient;
    if (os_log_type_enabled(sDTKPLogClient, OS_LOG_TYPE_INFO))
    {
      v9 = nameCopy;
      v10 = v8;
      uTF8String = [nameCopy UTF8String];
      buf[0] = 136315138;
      *&buf[1] = uTF8String;
      _os_log_impl(&dword_247F67000, v10, OS_LOG_TYPE_INFO, "DTKPCPU: Loading KPEP database for %s", buf, 0xCu);
    }

    if (!database)
    {
      sub_24802F7F8();
    }

    v12 = [nameCopy copy];
    lookupName = v7->_lookupName;
    v7->_lookupName = v12;

    v7->_kpepDB = database;
    v14 = objc_opt_new();
    events = v7->_events;
    v7->_events = v14;

    v16 = objc_opt_new();
    v23 = 0;
    if (kpep_db_name())
    {
      v17 = [(NSString *)v7->_lookupName copy];
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:v23];
    }

    name = v7->_name;
    v7->_name = v17;

    count = 0;
    kpepDB = v7->_kpepDB;
    if (kpep_db_events_count())
    {
      DTKPSetErrorAndOrLogWithFileAndLine(1, "DTKPCPU", 0, 4294966496, @"Error fetching events count from counters database.");

      v7 = 0;
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)dealloc
{
  if (self->_kpepDB)
  {
    kpep_db_free();
    self->_kpepDB = 0;
  }

  v3.receiver = self;
  v3.super_class = DTKPCPU;
  [(DTKPCPU *)&v3 dealloc];
}

- (id)eventFromName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_247FC9670;
  v16 = sub_247FC9680;
  v17 = 0;
  events = self->_events;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_247FC9688;
  v9[3] = &unk_278EF33C8;
  v6 = nameCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableArray *)events enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (id)_fixupAlias:(id)alias
{
  if ([alias isEqualToString:@"CORE_ACTIVE_CYCLE"])
  {
    return @"Cycles";
  }

  else
  {
    return 0;
  }
}

- (id)eventFromNameOrAlias:(id)alias
{
  aliasCopy = alias;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_247FC9670;
  v21 = sub_247FC9680;
  v22 = 0;
  events = self->_events;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = sub_247FC98C8;
  v14 = &unk_278EF33C8;
  v6 = aliasCopy;
  v15 = v6;
  v16 = &v17;
  [(NSMutableArray *)events enumerateObjectsUsingBlock:&v11];
  v7 = v18[5];
  if (v7)
  {
    goto LABEL_2;
  }

  v9 = [(DTKPCPU *)self _fixupAlias:v6, v11, v12, v13, v14];
  if (!v9)
  {
    v7 = v18[5];
LABEL_2:
    v8 = v7;
    goto LABEL_5;
  }

  v8 = [(DTKPCPU *)self eventFromNameOrAlias:v9];

LABEL_5:
  _Block_object_dispose(&v17, 8);

  return v8;
}

- (id)allAliasAndNameStrings
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  events = self->_events;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_247FC9AEC;
  v11[3] = &unk_278EF33F0;
  v12 = v3;
  v5 = v3;
  [(NSMutableArray *)events enumerateObjectsUsingBlock:v11];
  v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v13[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
  v8 = [v5 sortedArrayUsingDescriptors:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)mnemonicToAliasMapping
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = self->_events;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        alias = [v9 alias];
        if (alias)
        {
          v11 = alias;
          name = [v9 name];

          if (name)
          {
            alias2 = [v9 alias];
            name2 = [v9 name];
            [v3 setObject:alias2 forKeyedSubscript:name2];
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

@end