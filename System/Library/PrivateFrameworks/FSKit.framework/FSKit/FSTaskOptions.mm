@interface FSTaskOptions
- (FSTaskOptions)initWithCoder:(id)a3;
- (FSTaskOptions)initWithOptions:(id)a3;
- (FSTaskOptions)initWithOptions:(id)a3 extras:(id)a4;
- (id)urlForOption:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setSecureURL:(id)a3 forKey:(id)a4;
- (void)setURL:(id)a3 forKey:(id)a4;
@end

@implementation FSTaskOptions

- (id)urlForOption:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_extras objectForKeyedSubscript:v4];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 url];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v5);

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_taskOptions forKey:@"FSTO.o"];
  if ([(NSMutableDictionary *)self->_extras count])
  {
    [v4 encodeObject:self->_extras forKey:@"FSTO.x"];
  }
}

- (FSTaskOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = FSTaskOptions;
  v5 = [(FSTaskOptions *)&v16 init];
  if (!v5)
  {
LABEL_8:
    v13 = v5;
    goto LABEL_9;
  }

  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"FSTO.o"];
  v7 = [v6 mutableCopy];
  taskOptions = v5->_taskOptions;
  v5->_taskOptions = v7;

  v9 = objc_opt_class();
  v10 = [v4 decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"FSTO.x"];
  v11 = v10;
  if (v5->_taskOptions)
  {
    if (v10)
    {
      v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v10];
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    extras = v5->_extras;
    v5->_extras = v12;

    goto LABEL_8;
  }

  v13 = 0;
LABEL_9:

  return v13;
}

- (FSTaskOptions)initWithOptions:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = FSTaskOptions;
  v5 = [(FSTaskOptions *)&v11 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    taskOptions = v5->_taskOptions;
    v5->_taskOptions = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    extras = v5->_extras;
    v5->_extras = v8;
  }

  return v5;
}

- (FSTaskOptions)initWithOptions:(id)a3 extras:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = FSTaskOptions;
  v8 = [(FSTaskOptions *)&v14 init];
  if (v8)
  {
    v9 = [v6 mutableCopy];
    taskOptions = v8->_taskOptions;
    v8->_taskOptions = v9;

    v11 = [v7 mutableCopy];
    extras = v8->_extras;
    v8->_extras = v11;
  }

  return v8;
}

- (void)setURL:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[FSPathURLResource alloc] initWithURL:v6 readOnly:0];
  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    [(NSMutableDictionary *)v9->_extras setObject:v8 forKey:v7];
    objc_sync_exit(v9);
  }

  else
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      [FSTaskOptions(Project) setURL:v6 forKey:&v9->super];
    }
  }
}

- (void)setSecureURL:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[FSPathURLResource alloc] initAsSecureURL:v6 readOnly:0];
  if (v8)
  {
    v9 = self;
    objc_sync_enter(v9);
    [(NSMutableDictionary *)v9->_extras setObject:v8 forKey:v7];
    objc_sync_exit(v9);
  }

  else
  {
    v9 = fskit_std_log();
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      [FSTaskOptions(Project) setURL:v6 forKey:&v9->super];
    }
  }
}

@end