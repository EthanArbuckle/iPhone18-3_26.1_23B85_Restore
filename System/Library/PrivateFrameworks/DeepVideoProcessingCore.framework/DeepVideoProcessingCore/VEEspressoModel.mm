@interface VEEspressoModel
- (BOOL)buildModelWithConfiguration:(const char *)configuration;
- (BOOL)initContextWithFile:(id)file engine:(int)engine configuration:(const char *)configuration usePreCompiled:(BOOL)compiled;
- (BOOL)initContextWithFilePath:(id)path engine:(int)engine configuration:(const char *)configuration usePreCompiled:(BOOL)compiled;
- (BOOL)switchUsage:(int64_t)usage;
- (VEEspressoModel)initWithModelName:(id)name configuration:(const char *)configuration;
- (VEEspressoModel)initWithModelName:(id)name usage:(int64_t)usage;
- (VEEspressoModel)initWithModelPath:(id)path usage:(int64_t)usage useMPS:(BOOL)s;
- (int)loadModel:(id)model from:(id)from;
- (int)loadModelFromPath:(id)path;
- (void)dealloc;
- (void)freeContext;
@end

@implementation VEEspressoModel

- (VEEspressoModel)initWithModelName:(id)name usage:(int64_t)usage
{
  selfCopy = self;
  if (usage == -1)
  {
    v5 = 0;
  }

  else
  {
    self->_usage = usage;
    selfCopy = [(VEEspressoModel *)self initWithModelName:name configuration:getConfigurationName(usage)];
    v5 = selfCopy;
  }

  return v5;
}

- (VEEspressoModel)initWithModelName:(id)name configuration:(const char *)configuration
{
  v6 = [name stringByAppendingFormat:@".espresso.net"];
  v13.receiver = self;
  v13.super_class = VEEspressoModel;
  v7 = [(VEEspressoModel *)&v13 init];
  v8 = v7;
  if (!v7)
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (![(VEEspressoModel *)v7 initContextWithFile:v6 engine:10007 configuration:configuration usePreCompiled:1])
  {
    [(VEEspressoModel *)v8 freeContext];
    if ((global_logLevel & 4) != 0)
    {
      v9 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        *v12 = 0;
        _os_log_impl(&dword_24874B000, v9, OS_LOG_TYPE_INFO, "Using ANE runtime compilation", v12, 2u);
      }
    }

    if (![(VEEspressoModel *)v8 initContextWithFile:v6 engine:10007 configuration:configuration usePreCompiled:0])
    {
      if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [VEEspressoModel initWithModelName:configuration:];
      }

      goto LABEL_11;
    }
  }

  v10 = v8;
LABEL_12:

  return v10;
}

- (VEEspressoModel)initWithModelPath:(id)path usage:(int64_t)usage useMPS:(BOOL)s
{
  sCopy = s;
  v18 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  self->_usage = usage;
  v15.receiver = self;
  v15.super_class = VEEspressoModel;
  v9 = [(VEEspressoModel *)&v15 init];
  if (v9)
  {
    if (sCopy)
    {
      v10 = 5;
    }

    else
    {
      v10 = 10007;
    }

    v11 = [pathCopy stringByAppendingFormat:@".espresso.net"];
    if ((global_logLevel & 4) != 0)
    {
      v12 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v17 = pathCopy;
        _os_log_impl(&dword_24874B000, v12, OS_LOG_TYPE_INFO, "Initializing model with path: %@", buf, 0xCu);
      }
    }

    if ([(VEEspressoModel *)v9 initContextWithFilePath:v11 engine:v10 configuration:getConfigurationName(usage) usePreCompiled:0])
    {
      v13 = v9;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)initContextWithFile:(id)file engine:(int)engine configuration:(const char *)configuration usePreCompiled:(BOOL)compiled
{
  compiledCopy = compiled;
  fileCopy = file;
  v11 = dispatch_queue_create("callback queue", 0);
  callbackQueue = self->_callbackQueue;
  self->_callbackQueue = v11;

  context = espresso_create_context();
  self->_context = context;
  if (!context)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VEEspressoModel initContextWithFile:engine:configuration:usePreCompiled:];
    }

    goto LABEL_18;
  }

  plan = espresso_create_plan();
  self->_plan = plan;
  if (!plan)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VEEspressoModel initContextWithFile:engine:configuration:usePreCompiled:];
    }

    goto LABEL_18;
  }

  if (compiledCopy)
  {
    v15 = @"Networks";
  }

  else
  {
    v15 = @"NetworksOrig";
  }

  if ([(VEEspressoModel *)self loadModel:fileCopy from:v15])
  {
LABEL_18:
    v16 = 0;
    goto LABEL_19;
  }

  if (![(VEEspressoModel *)self buildModelWithConfiguration:configuration])
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VEEspressoModel initContextWithFile:engine:configuration:usePreCompiled:];
    }

    goto LABEL_18;
  }

  self->_engine = engine;
  v16 = 1;
LABEL_19:

  return v16;
}

- (BOOL)initContextWithFilePath:(id)path engine:(int)engine configuration:(const char *)configuration usePreCompiled:(BOOL)compiled
{
  pathCopy = path;
  v10 = dispatch_queue_create("callback queue", 0);
  callbackQueue = self->_callbackQueue;
  self->_callbackQueue = v10;

  context = espresso_create_context();
  self->_context = context;
  if (!context)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VEEspressoModel initContextWithFile:engine:configuration:usePreCompiled:];
    }

    goto LABEL_15;
  }

  plan = espresso_create_plan();
  self->_plan = plan;
  if (!plan)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VEEspressoModel initContextWithFile:engine:configuration:usePreCompiled:];
    }

    goto LABEL_15;
  }

  if ([(VEEspressoModel *)self loadModelFromPath:pathCopy])
  {
LABEL_15:
    v14 = 0;
    goto LABEL_16;
  }

  if (![(VEEspressoModel *)self buildModelWithConfiguration:configuration])
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      [VEEspressoModel initContextWithFile:engine:configuration:usePreCompiled:];
    }

    goto LABEL_15;
  }

  self->_engine = engine;
  v14 = 1;
LABEL_16:

  return v14;
}

- (void)freeContext
{
  if (self->_plan)
  {
    espresso_plan_destroy();
  }

  if (self->_context)
  {
    espresso_context_destroy();
  }

  self->_context = 0;
  self->_plan = 0;
  callbackQueue = self->_callbackQueue;
  self->_callbackQueue = 0;
}

- (BOOL)buildModelWithConfiguration:(const char *)configuration
{
  if (configuration && espresso_network_select_configuration())
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v3 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v3)
      {
        return v3;
      }

      [VEEspressoModel buildModelWithConfiguration:];
    }
  }

  else
  {
    if (!espresso_plan_build())
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    if ((global_logLevel & 0x10) != 0)
    {
      v3 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v3)
      {
        return v3;
      }

      [VEEspressoModel buildModelWithConfiguration:];
    }
  }

  LOBYTE(v3) = 0;
  return v3;
}

- (int)loadModel:(id)model from:(id)from
{
  v5 = MEMORY[0x277CCA8D8];
  fromCopy = from;
  modelCopy = model;
  v8 = [v5 bundleForClass:objc_opt_class()];
  v9 = [v8 pathForResource:modelCopy ofType:0 inDirectory:fromCopy];

  if (v9)
  {
    v10 = v9;
    [v9 cStringUsingEncoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v11 = espresso_plan_add_network();
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (int)loadModelFromPath:(id)path
{
  if (!path)
  {
    return -1;
  }

  pathCopy = path;
  v5 = MEMORY[0x277CCACA8];
  pathCopy2 = path;
  [pathCopy2 cStringUsingEncoding:{objc_msgSend(v5, "defaultCStringEncoding")}];

  return espresso_plan_add_network();
}

- (void)dealloc
{
  if (self->_plan)
  {
    espresso_plan_destroy();
  }

  if (self->_context)
  {
    espresso_context_destroy();
  }

  self->_context = 0;
  self->_plan = 0;
  v3.receiver = self;
  v3.super_class = VEEspressoModel;
  [(VEEspressoModel *)&v3 dealloc];
}

- (BOOL)switchUsage:(int64_t)usage
{
  if (usage == -1)
  {
LABEL_6:
    LOBYTE(v5) = 0;
    return v5;
  }

  if (self->_usage == usage)
  {
    LOBYTE(v5) = 1;
    return v5;
  }

  if (espresso_plan_build_clean())
  {
    if ((global_logLevel & 0x10) != 0)
    {
      v5 = os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR);
      if (!v5)
      {
        return v5;
      }

      [VEEspressoModel switchUsage:];
    }

    goto LABEL_6;
  }

  self->_usage = usage;
  ConfigurationName = getConfigurationName(usage);

  LOBYTE(v5) = [(VEEspressoModel *)self buildModelWithConfiguration:ConfigurationName];
  return v5;
}

@end