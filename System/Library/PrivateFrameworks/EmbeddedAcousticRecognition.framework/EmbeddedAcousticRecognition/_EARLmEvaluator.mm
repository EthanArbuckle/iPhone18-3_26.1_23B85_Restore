@interface _EARLmEvaluator
+ (void)initialize;
- (BOOL)runEvaluationWithData:(id)a3 handle:(id)a4 result:(id *)a5 bestWeight:(float *)a6;
- (_EARLmEvaluator)initWithConfiguration:(id)a3 root:(id)a4 recognizerConfiguration:(id)a5;
- (id).cxx_construct;
@end

@implementation _EARLmEvaluator

+ (void)initialize
{
  v3 = objc_opt_class();
  if (v3 == a1)
  {

    EARLogger::initializeLogging(v3);
  }
}

- (_EARLmEvaluator)initWithConfiguration:(id)a3 root:(id)a4 recognizerConfiguration:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = _EARLmEvaluator;
  v11 = [(_EARLmEvaluator *)&v17 init];
  if (v11)
  {
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v12 fileExistsAtPath:v8];

    if (v13)
    {
      if (v8)
      {
        [v8 ear_toString];
        if (v9)
        {
          goto LABEL_5;
        }
      }

      else
      {
        buf = 0uLL;
        v19 = 0;
        if (v9)
        {
LABEL_5:
          [v9 ear_toString];
          if (!v10)
          {
            goto LABEL_12;
          }

          goto LABEL_6;
        }
      }

      if (!v10)
      {
LABEL_12:
        std::allocate_shared[abi:ne200100]<quasar::LmEvaluator,std::allocator<quasar::LmEvaluator>,std::string,std::string,std::string,0>();
      }

LABEL_6:
      [v10 ear_toString];
      goto LABEL_12;
    }

    v14 = EarLmLogger();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v8;
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

- (BOOL)runEvaluationWithData:(id)a3 handle:(id)a4 result:(id *)a5 bestWeight:(float *)a6
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (a5)
  {
    *a5 = 0;
  }

  v12 = quasar::PTree::PTree(v20);
  if (v11)
  {
    [v11 handle];
  }

  else
  {
    v18 = 0;
    v19 = 0;
  }

  ptr = self->_evaluator.__ptr_;
  [v10 data];
  v14 = quasar::LmEvaluator::runEvaluation(ptr, v16, &v18, v20, a6, self->_roundingEnabled, 0);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (a5)
  {
    *a5 = EARHelpers::dictFromPTree(v20, 1);
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