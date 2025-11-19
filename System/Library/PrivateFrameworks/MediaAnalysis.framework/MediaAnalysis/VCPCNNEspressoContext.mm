@interface VCPCNNEspressoContext
+ (void)createContextPreferred;
+ (void)createContextWithForceCPU;
+ (void)createContextWithMPSGraph;
+ (void)sharedContextPreferred:(BOOL)a3;
+ (void)sharedContextWithForceCPU:(BOOL)a3;
+ (void)sharedContextWithMPSGraph:(BOOL)a3;
- (VCPCNNEspressoContext)initWithForceCPU:(BOOL)a3 forceNNGraph:(BOOL)a4 shared:(BOOL)a5;
- (void)dealloc;
@end

@implementation VCPCNNEspressoContext

+ (void)createContextWithForceCPU
{
  context = espresso_create_context();
  v3 = MediaAnalysisLogLevel();
  if (context)
  {
    if (v3 >= 7)
    {
      v4 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v10 = 0;
        v5 = MEMORY[0x1E69E9C10];
        v6 = "[VCPCNNEspressoContext] created CPU context";
        v7 = &v10;
LABEL_8:
        _os_log_impl(&dword_1C9B70000, v5, v4, v6, v7, 2u);
      }
    }
  }

  else if (v3 >= 3)
  {
    v4 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = 0;
      v5 = MEMORY[0x1E69E9C10];
      v6 = "[VCPCNNEspressoContext] Failed to CPU context";
      v7 = &v9;
      goto LABEL_8;
    }
  }

  return context;
}

+ (void)createContextWithMPSGraph
{
  context = espresso_create_context();
  v4 = MediaAnalysisLogLevel();
  if (context)
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPCNNEspressoContext] created MPSGraph context", buf, 2u);
    }
  }

  else
  {
    if (v4 >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPCNNEspressoContext] Failed to create MPSGraph context, fall back to CPU context", v6, 2u);
    }

    return [a1 createContextWithForceCPU];
  }

  return context;
}

+ (void)createContextPreferred
{
  context = espresso_create_context();
  v4 = MediaAnalysisLogLevel();
  if (context)
  {
    if (v4 >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPCNNEspressoContext] created preferred context", buf, 2u);
    }
  }

  else
  {
    if (v4 >= 5 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPCNNEspressoContext] Failed to create ANE context, fall back to MPS context", v7, 2u);
    }

    context = espresso_create_context();
    if (!context)
    {
      if (MediaAnalysisLogLevel() >= 4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[VCPCNNEspressoContext] Failed to create MPS context, fall back to CPU context", v6, 2u);
      }

      return [a1 createContextWithForceCPU];
    }
  }

  return context;
}

+ (void)sharedContextWithForceCPU:(BOOL)a3
{
  if (a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VCPCNNEspressoContext_sharedContextWithForceCPU___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (+[VCPCNNEspressoContext sharedContextWithForceCPU:]::onceToken != -1)
    {
      dispatch_once(&+[VCPCNNEspressoContext sharedContextWithForceCPU:]::onceToken, block);
    }
  }

  return +[VCPCNNEspressoContext sharedContextWithForceCPU:]::espressoContext;
}

void __51__VCPCNNEspressoContext_sharedContextWithForceCPU___block_invoke(uint64_t a1)
{
  +[VCPCNNEspressoContext sharedContextWithForceCPU:]::espressoContext = [*(a1 + 32) createContextWithForceCPU];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPCNNEspressoContext] sharing CPU context", v1, 2u);
  }
}

+ (void)sharedContextWithMPSGraph:(BOOL)a3
{
  if (a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VCPCNNEspressoContext_sharedContextWithMPSGraph___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (+[VCPCNNEspressoContext sharedContextWithMPSGraph:]::onceToken != -1)
    {
      dispatch_once(&+[VCPCNNEspressoContext sharedContextWithMPSGraph:]::onceToken, block);
    }
  }

  return +[VCPCNNEspressoContext sharedContextWithMPSGraph:]::espressoContext;
}

void __51__VCPCNNEspressoContext_sharedContextWithMPSGraph___block_invoke(uint64_t a1)
{
  +[VCPCNNEspressoContext sharedContextWithMPSGraph:]::espressoContext = [*(a1 + 32) createContextWithMPSGraph];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPCNNEspressoContext] sharing MPSGraph context", v1, 2u);
  }
}

+ (void)sharedContextPreferred:(BOOL)a3
{
  if (a3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__VCPCNNEspressoContext_sharedContextPreferred___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = a1;
    if (+[VCPCNNEspressoContext sharedContextPreferred:]::onceToken != -1)
    {
      dispatch_once(&+[VCPCNNEspressoContext sharedContextPreferred:]::onceToken, block);
    }
  }

  return +[VCPCNNEspressoContext sharedContextPreferred:]::espressoContext;
}

void __48__VCPCNNEspressoContext_sharedContextPreferred___block_invoke(uint64_t a1)
{
  +[VCPCNNEspressoContext sharedContextPreferred:]::espressoContext = [*(a1 + 32) createContextPreferred];
  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *v1 = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPCNNEspressoContext] sharing preferred context", v1, 2u);
  }
}

- (VCPCNNEspressoContext)initWithForceCPU:(BOOL)a3 forceNNGraph:(BOOL)a4 shared:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v13.receiver = self;
  v13.super_class = VCPCNNEspressoContext;
  v8 = [(VCPCNNEspressoContext *)&v13 init];
  if (v8)
  {
    if (v5)
    {
      if (v7)
      {
        v9 = [objc_opt_class() sharedContextWithForceCPU:1];
      }

      else if (v6)
      {
        v9 = [objc_opt_class() sharedContextWithMPSGraph:1];
      }

      else
      {
        v9 = [objc_opt_class() sharedContextPreferred:1];
      }
    }

    else if (v7)
    {
      v9 = [objc_opt_class() createContextWithForceCPU];
    }

    else if (v6)
    {
      v9 = [objc_opt_class() createContextWithMPSGraph];
    }

    else
    {
      v9 = [objc_opt_class() createContextPreferred];
    }

    v8->_espressoContext = v9;
  }

  else
  {
    v9 = MEMORY[8];
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v11;
}

- (void)dealloc
{
  espressoContext = self->_espressoContext;
  if (!espressoContext)
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[VCPCNNEspressoContext] No valid context; skip dealloc";
LABEL_15:
    _os_log_impl(&dword_1C9B70000, v6, OS_LOG_TYPE_DEBUG, v7, buf, 2u);
    goto LABEL_16;
  }

  if (espressoContext == [objc_opt_class() sharedContextWithForceCPU:0] || (v4 = self->_espressoContext, v4 == objc_msgSend(objc_opt_class(), "sharedContextWithMPSGraph:", 0)) || (v5 = self->_espressoContext, v5 == objc_msgSend(objc_opt_class(), "sharedContextPreferred:", 0)))
  {
    if (MediaAnalysisLogLevel() < 7 || !os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_16;
    }

    *buf = 0;
    v6 = MEMORY[0x1E69E9C10];
    v7 = "[VCPCNNEspressoContext] dealloc shared context; keep alive";
    goto LABEL_15;
  }

  if (MediaAnalysisLogLevel() >= 7 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[VCPCNNEspressoContext] dealloc context;", buf, 2u);
  }

  espresso_context_destroy();
LABEL_16:
  v8.receiver = self;
  v8.super_class = VCPCNNEspressoContext;
  [(VCPCNNEspressoContext *)&v8 dealloc];
}

@end