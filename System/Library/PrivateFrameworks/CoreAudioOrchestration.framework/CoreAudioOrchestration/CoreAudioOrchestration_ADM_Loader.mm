@interface CoreAudioOrchestration_ADM_Loader
- (CoreAudioOrchestration_ADM_Loader)initWithLogger:(id)logger;
- (id)createFactory;
- (void)createFactory;
- (void)dealloc;
@end

@implementation CoreAudioOrchestration_ADM_Loader

- (CoreAudioOrchestration_ADM_Loader)initWithLogger:(id)logger
{
  loggerCopy = logger;
  v14.receiver = self;
  v14.super_class = CoreAudioOrchestration_ADM_Loader;
  v6 = [(CoreAudioOrchestration_ADM_Loader *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->logger, logger);
    logger = v7->logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_24508F000, logger, OS_LOG_TYPE_INFO, "Calling dlopen() on ADM.", v13, 2u);
    }

    v9 = dlopen("/System/Library/PrivateFrameworks/AudioDSPManager.framework/AudioDSPManager", 1);
    v7->_admLibrary = v9;
    if (!v9)
    {
      v10 = dlerror();
      v11 = v7->logger;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(CoreAudioOrchestration_ADM_Loader *)v10 initWithLogger:v11];
      }
    }
  }

  return v7;
}

- (void)dealloc
{
  if (self->_admLibrary)
  {
    logger = self->logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_24508F000, logger, OS_LOG_TYPE_INFO, "Calling dlclose() on ADM.", buf, 2u);
    }

    dlclose(self->_admLibrary);
    self->_admLibrary = 0;
  }

  v4.receiver = self;
  v4.super_class = CoreAudioOrchestration_ADM_Loader;
  [(CoreAudioOrchestration_ADM_Loader *)&v4 dealloc];
}

- (id)createFactory
{
  admLibrary = [(CoreAudioOrchestration_ADM_Loader *)self admLibrary];
  logger = self->logger;
  if (admLibrary)
  {
    if (os_log_type_enabled(self->logger, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_24508F000, logger, OS_LOG_TYPE_INFO, "Calling dlsym() on ADM.", v10, 2u);
    }

    v5 = dlsym([(CoreAudioOrchestration_ADM_Loader *)self admLibrary], "CreateAudioDSPManager");
    if (v5)
    {
      v6 = v5();
      goto LABEL_11;
    }

    v7 = dlerror();
    v8 = self->logger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CoreAudioOrchestration_ADM_Loader *)v7 createFactory];
    }
  }

  else if (os_log_type_enabled(self->logger, OS_LOG_TYPE_ERROR))
  {
    [(CoreAudioOrchestration_ADM_Loader *)logger createFactory];
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (void)initWithLogger:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = a1;
  _os_log_error_impl(&dword_24508F000, a2, OS_LOG_TYPE_ERROR, "ADM dlopen() failed: %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)createFactory
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  selfCopy = self;
  _os_log_error_impl(&dword_24508F000, a2, OS_LOG_TYPE_ERROR, "ADM dlsym failed: %s", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end