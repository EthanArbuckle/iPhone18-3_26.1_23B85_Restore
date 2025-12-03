@interface _EARLmEvaluator
+ (void)initialize;
- (BOOL)runEvaluationWithData:(id)data handle:(id)handle result:(id *)result bestWeight:(float *)weight;
- (_EARLmEvaluator)initWithConfiguration:(id)configuration root:(id)root recognizerConfiguration:(id)recognizerConfiguration;
- (id).cxx_construct;
@end

@implementation _EARLmEvaluator

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == self)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARLmEvaluator)initWithConfiguration:(id)configuration root:(id)root recognizerConfiguration:(id)recognizerConfiguration
{
  v20 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  rootCopy = root;
  recognizerConfigurationCopy = recognizerConfiguration;
  v17.receiver = self;
  v17.super_class = _EARLmEvaluator;
  v11 = [(_EARLmEvaluator *)&v17 init];
  if (v11)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [defaultManager fileExistsAtPath:configurationCopy];

    if (v13)
    {
      if (configurationCopy)
      {
        [configurationCopy ear_toString];
        if (rootCopy)
        {
          goto LABEL_5;
        }
      }

      else
      {
        buf = 0uLL;
        v19 = 0;
        if (rootCopy)
        {
LABEL_5:
          [rootCopy ear_toString];
          if (!recognizerConfigurationCopy)
          {
            goto LABEL_12;
          }

          goto LABEL_6;
        }
      }

      if (!recognizerConfigurationCopy)
      {
LABEL_12:
        std::allocate_shared[abi:ne200100]<quasar::LmEvaluator,std::allocator<quasar::LmEvaluator>,std::string,std::string,std::string,0>();
      }

LABEL_6:
      [recognizerConfigurationCopy ear_toString];
      goto LABEL_12;
    }

    v14 = EarLmLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = configurationCopy;
      _os_log_impl(&dword_1B501D000, v14, OS_LOG_TYPE_DEFAULT, "File does not exist %@", &buf, 0xCu);
    }

    v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)runEvaluationWithData:(id)data handle:(id)handle result:(id *)result bestWeight:(float *)weight
{
  v21 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handleCopy = handle;
  if (result)
  {
    *result = 0;
  }

  v12 = quasar::PTree::PTree(v20);
  if (handleCopy)
  {
    [handleCopy handle];
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  ptr = self->_evaluator.__ptr_;
  [dataCopy data];
  v14 = quasar::LmEvaluator::runEvaluation(ptr, v16, &v18, v20, weight, self->_roundingEnabled, 0);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (result)
  {
    *result = EARHelpers::dictFromPTree(v20, 1);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  quasar::PTree::~PTree(v20);

  return v14;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end