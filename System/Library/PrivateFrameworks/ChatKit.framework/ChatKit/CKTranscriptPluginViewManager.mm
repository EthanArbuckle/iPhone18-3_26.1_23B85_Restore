@interface CKTranscriptPluginViewManager
+ (id)sharedInstance;
- (BOOL)_objectSupportsPluginViewReuse:(id)a3;
- (CKTranscriptPluginViewManager)init;
- (id)dequeuePluginViewForBalloonController:(id)a3;
- (void)_registerPluginView:(id)a3 withReuseDelegate:(id)a4;
- (void)dealloc;
- (void)enqueuePluginViewForReuse:(id)a3;
- (void)resetState;
@end

@implementation CKTranscriptPluginViewManager

+ (id)sharedInstance
{
  if (sharedInstance_creation_2 != -1)
  {
    +[CKTranscriptPluginViewManager sharedInstance];
  }

  v3 = sharedInstance_sInstance_5;

  return v3;
}

void __47__CKTranscriptPluginViewManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CKTranscriptPluginViewManager);
  v1 = sharedInstance_sInstance_5;
  sharedInstance_sInstance_5 = v0;
}

- (CKTranscriptPluginViewManager)init
{
  v6.receiver = self;
  v6.super_class = CKTranscriptPluginViewManager;
  v2 = [(CKTranscriptPluginViewManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];

    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

  v4.receiver = self;
  v4.super_class = CKTranscriptPluginViewManager;
  [(CKTranscriptPluginViewManager *)&v4 dealloc];
}

- (void)resetState
{
  [(IMMultiDict *)self->_reusablePluginViewsByClassName removeAllObjects];
  pluginViewToReuseDelegateMap = self->_pluginViewToReuseDelegateMap;

  [(NSMutableDictionary *)pluginViewToReuseDelegateMap removeAllObjects];
}

- (id)dequeuePluginViewForBalloonController:(id)a3
{
  v4 = a3;
  if ([(CKTranscriptPluginViewManager *)self _objectSupportsPluginViewReuse:v4])
  {
    v5 = NSStringFromClass([v4 pluginViewClassType]);
    if (v5)
    {
      v6 = [(IMMultiDict *)self->_reusablePluginViewsByClassName dequeueObjectForKey:v5];
      if (!v6)
      {
        v6 = [v4 createNewPluginView];
        if (([objc_opt_class() isEqual:{objc_msgSend(v4, "pluginViewClassType")}] & 1) == 0)
        {
          v7 = MEMORY[0x1E696AEC0];
          v8 = IMFileLocationTrimFileName();
          v9 = [MEMORY[0x1E696AEC0] stringWithFormat:&stru_1F04268F8];
          v10 = [v7 stringWithFormat:@"Unexpected false '%@' in %s at %s:%d. %@", @"[[pluginView class] isEqual:[balloonController pluginViewClassType]]", "-[CKTranscriptPluginViewManager dequeuePluginViewForBalloonController:]", v8, 58, v9];

          v11 = IMGetAssertionFailureHandler();
          if (v11)
          {
            v11(v10);
          }

          else
          {
            v14 = [MEMORY[0x1E69A6138] warning];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              [(CKTranscriptPluginViewManager *)v10 dequeuePluginViewForBalloonController:v14];
            }
          }
        }
      }

      [(CKTranscriptPluginViewManager *)self _registerPluginView:v6 withReuseDelegate:v4];
    }

    else
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptPluginViewManager dequeuePluginViewForBalloonController:v13];
      }

      v6 = 0;
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptPluginViewManager dequeuePluginViewForBalloonController:v12];
    }

    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 createNewPluginView];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_objectSupportsPluginViewReuse:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 allowsReusablePluginViews];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_registerPluginView:(id)a3 withReuseDelegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (!v6 || !v7)
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptPluginViewManager _registerPluginView:withReuseDelegate:];
    }

    goto LABEL_9;
  }

  if ([(CKTranscriptPluginViewManager *)self _objectSupportsPluginViewReuse:v7])
  {
    pluginViewToReuseDelegateMap = self->_pluginViewToReuseDelegateMap;
    if (!pluginViewToReuseDelegateMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v11 = self->_pluginViewToReuseDelegateMap;
      self->_pluginViewToReuseDelegateMap = Mutable;

      pluginViewToReuseDelegateMap = self->_pluginViewToReuseDelegateMap;
    }

    v12 = [(CKTranscriptPluginViewManager *)self _pointerKeyForPluginView:v6];
    [(NSMutableDictionary *)pluginViewToReuseDelegateMap setObject:v8 forKey:v12];
LABEL_9:
  }
}

- (void)enqueuePluginViewForReuse:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (v4 && v6)
  {
    v8 = [(CKTranscriptPluginViewManager *)self _pointerKeyForPluginView:v4];
    v9 = [(NSMutableDictionary *)self->_pluginViewToReuseDelegateMap objectForKey:v8];
    if (v9 && [(CKTranscriptPluginViewManager *)self _objectSupportsPluginViewReuse:v9])
    {
      reusablePluginViewsByClassName = self->_reusablePluginViewsByClassName;
      if (reusablePluginViewsByClassName)
      {
        v11 = reusablePluginViewsByClassName;
      }

      else
      {
        v11 = objc_alloc_init(MEMORY[0x1E69A6110]);
      }

      v13 = self->_reusablePluginViewsByClassName;
      self->_reusablePluginViewsByClassName = v11;

      [(IMMultiDict *)self->_reusablePluginViewsByClassName enqueueObject:v4 forKey:v7];
      [v9 pluginViewDidEnterReuseQueue:v4];
      [(NSMutableDictionary *)self->_pluginViewToReuseDelegateMap removeObjectForKey:v8];
    }
  }

  else
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptPluginViewManager enqueuePluginViewForReuse:];
    }
  }
}

- (void)dequeuePluginViewForBalloonController:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %@", &v2, 0xCu);
}

@end