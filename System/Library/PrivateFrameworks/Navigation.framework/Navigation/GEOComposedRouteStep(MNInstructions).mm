@interface GEOComposedRouteStep(MNInstructions)
- (id)contentsForContext:()MNInstructions;
@end

@implementation GEOComposedRouteStep(MNInstructions)

- (id)contentsForContext:()MNInstructions
{
  v23 = *MEMORY[0x1E69E9840];
  composedRoute = [self composedRoute];
  v6 = [composedRoute legIndexForStepIndex:{objc_msgSend(self, "stepIndex")}];
  legs = [composedRoute legs];
  v8 = [legs count];

  if (v6 < v8)
  {
    legs2 = [composedRoute legs];
    v10 = [legs2 objectAtIndexedSubscript:v6];

    destination = [v10 destination];
    if ([self transportType] == 1)
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
      if ([self transportType] != 6)
      {
        if (a3 == 1 || a3 == 3)
        {
          v16 = [MNSignInstructionContents contentsWithStep:self destination:destination];
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

          v16 = [MNListInstructionContents contentsWithStep:self];
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