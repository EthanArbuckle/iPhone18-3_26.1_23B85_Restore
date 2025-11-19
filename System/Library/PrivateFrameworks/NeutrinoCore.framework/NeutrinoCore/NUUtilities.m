@interface NUUtilities
+ (BOOL)runningUnderDebugger;
@end

@implementation NUUtilities

+ (BOOL)runningUnderDebugger
{
  if (runningUnderDebugger_onceToken != -1)
  {
    dispatch_once(&runningUnderDebugger_onceToken, &__block_literal_global_29907);
  }

  return runningUnderDebugger_runningUnderDebugger;
}

uint64_t __35__NUUtilities_runningUnderDebugger__block_invoke()
{
  v36 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v3 = 0u;
  v4 = 0u;
  memset(v2, 0, sizeof(v2));
  LODWORD(v3) = 0;
  *v33 = 0xE00000001;
  v34 = 1;
  v35 = getpid();
  v1 = 648;
  result = sysctl(v33, 4u, v2, &v1, 0, 0);
  runningUnderDebugger_runningUnderDebugger = (v3 & 0x800) != 0;
  return result;
}

@end