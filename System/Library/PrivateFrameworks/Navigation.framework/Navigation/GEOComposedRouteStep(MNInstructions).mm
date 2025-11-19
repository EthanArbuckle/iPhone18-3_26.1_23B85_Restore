@interface GEOComposedRouteStep(MNInstructions)
- (id)contentsForContext:()MNInstructions;
@end

@implementation GEOComposedRouteStep(MNInstructions)

- (id)contentsForContext:()MNInstructions
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [a1 composedRoute];
  v6 = [v5 legIndexForStepIndex:{objc_msgSend(a1, "stepIndex")}];
  v7 = [v5 legs];
  v8 = [v7 count];

  if (v6 < v8)
  {
    v9 = [v5 legs];
    v10 = [v9 objectAtIndexedSubscript:v6];

    v11 = [v10 destination];
    if ([a1 transportType] == 1)
    {
      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315650;
        v18 = "[GEOComposedRouteStep(MNInstructions) contentsForContext:]";
        v19 = 2080;
        v20 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNInstructions.m";
        v21 = 1024;
        v22 = 398;
LABEL_11:
        _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v17, 0x1Cu);
      }
    }

    else
    {
      if ([a1 transportType] != 6)
      {
        if (a3 == 1 || a3 == 3)
        {
          v16 = [MNSignInstructionContents contentsWithStep:a1 destination:v11];
        }

        else
        {
          if (a3 != 2)
          {
            v12 = GEOFindOrCreateLog();
            if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_12;
            }

            v17 = 136315650;
            v18 = "[GEOComposedRouteStep(MNInstructions) contentsForContext:]";
            v19 = 2080;
            v20 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNInstructions.m";
            v21 = 1024;
            v22 = 419;
            goto LABEL_11;
          }

          v16 = [MNListInstructionContents contentsWithStep:a1];
        }

        v13 = v16;
        goto LABEL_13;
      }

      v12 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v17 = 136315650;
        v18 = "[GEOComposedRouteStep(MNInstructions) contentsForContext:]";
        v19 = 2080;
        v20 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNInstructions.m";
        v21 = 1024;
        v22 = 404;
        goto LABEL_11;
      }
    }

LABEL_12:

    v13 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v10 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v17 = 136315650;
    v18 = "[GEOComposedRouteStep(MNInstructions) contentsForContext:]";
    v19 = 2080;
    v20 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Instructions/MNInstructions.m";
    v21 = 1024;
    v22 = 389;
    _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", &v17, 0x1Cu);
  }

  v13 = 0;
LABEL_14:

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

@end