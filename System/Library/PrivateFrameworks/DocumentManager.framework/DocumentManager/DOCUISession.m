@interface DOCUISession
+ (UIWindow)anyWindowPreferingKeyWindow;
+ (id)shared;
+ (id)windowWithRootViewController:(id)a3;
@end

@implementation DOCUISession

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[DOCUISession shared];
  }

  return 0;
}

uint64_t __22__DOCUISession_shared__block_invoke()
{
  shared_session = objc_alloc_init(DOCUISession);

  return MEMORY[0x1EEE66BB8]();
}

+ (UIWindow)anyWindowPreferingKeyWindow
{
  v2 = [a1 keyWindow];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = [*MEMORY[0x1E69DDA98] windows];
    v4 = [v5 firstObject];
  }

  return v4;
}

+ (id)windowWithRootViewController:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [*MEMORY[0x1E69DDA98] windows];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [v8 rootViewController];

        if (v9 == v3)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

@end