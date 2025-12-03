@interface FSTaskOptions
- (FSTaskOptions)initWithCoder:(id)coder;
- (FSTaskOptions)initWithOptions:(id)options;
- (FSTaskOptions)initWithOptions:(id)options extras:(id)extras;
- (id)urlForOption:(id)option;
- (void)encodeWithCoder:(id)coder;
- (void)setSecureURL:(id)l forKey:(id)key;
- (void)setURL:(id)l forKey:(id)key;
@end

@implementation FSTaskOptions

- (id)urlForOption:(id)option
{
  optionCopy = option;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_extras objectForKeyedSubscript:optionCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 url];
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(selfCopy);

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_taskOptions forKey:@"FSTO.o"];
  if ([(NSMutableDictionary *)self->_extras count])
  {
    [coderCopy encodeObject:self->_extras forKey:@"FSTO.x"];
  }
}

- (FSTaskOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = FSTaskOptions;
  v5 = [(FSTaskOptions *)&v16 init];
  if (!v5)
  {
LABEL_8:
    v13 = v5;
    goto LABEL_9;
  }

  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"FSTO.o"];
  v7 = [v6 mutableCopy];
  taskOptions = v5->_taskOptions;
  v5->_taskOptions = v7;

  v9 = objc_opt_class();
  v10 = [coderCopy decodeDictionaryWithKeysOfClass:v9 objectsOfClass:objc_opt_class() forKey:@"FSTO.x"];
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

- (FSTaskOptions)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = FSTaskOptions;
  v5 = [(FSTaskOptions *)&v11 init];
  if (v5)
  {
    v6 = [optionsCopy mutableCopy];
    taskOptions = v5->_taskOptions;
    v5->_taskOptions = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    extras = v5->_extras;
    v5->_extras = v8;
  }

  return v5;
}

- (FSTaskOptions)initWithOptions:(id)options extras:(id)extras
{
  optionsCopy = options;
  extrasCopy = extras;
  v14.receiver = self;
  v14.super_class = FSTaskOptions;
  v8 = [(FSTaskOptions *)&v14 init];
  if (v8)
  {
    v9 = [optionsCopy mutableCopy];
    taskOptions = v8->_taskOptions;
    v8->_taskOptions = v9;

    v11 = [extrasCopy mutableCopy];
    extras = v8->_extras;
    v8->_extras = v11;
  }

  return v8;
}

- (void)setURL:(id)l forKey:(id)key
{
  lCopy = l;
  keyCopy = key;
  v8 = [[FSPathURLResource alloc] initWithURL:lCopy readOnly:0];
  if (v8)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_extras setObject:v8 forKey:keyCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = fskit_std_log();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [FSTaskOptions(Project) setURL:lCopy forKey:&selfCopy->super];
    }
  }
}

- (void)setSecureURL:(id)l forKey:(id)key
{
  lCopy = l;
  keyCopy = key;
  v8 = [[FSPathURLResource alloc] initAsSecureURL:lCopy readOnly:0];
  if (v8)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    [(NSMutableDictionary *)selfCopy->_extras setObject:v8 forKey:keyCopy];
    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = fskit_std_log();
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_ERROR))
    {
      [FSTaskOptions(Project) setURL:lCopy forKey:&selfCopy->super];
    }
  }
}

@end