@interface CKTranscriptPluginViewManager
+ (id)sharedInstance;
- (BOOL)_objectSupportsPluginViewReuse:(id)reuse;
- (CKTranscriptPluginViewManager)init;
- (id)dequeuePluginViewForBalloonController:(id)controller;
- (void)_registerPluginView:(id)view withReuseDelegate:(id)delegate;
- (void)dealloc;
- (void)enqueuePluginViewForReuse:(id)reuse;
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_didReceiveMemoryWarning name:*MEMORY[0x1E69DDAD8] object:0];

    v4 = v2;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69DDAD8] object:0];

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

- (id)dequeuePluginViewForBalloonController:(id)controller
{
  controllerCopy = controller;
  if ([(CKTranscriptPluginViewManager *)self _objectSupportsPluginViewReuse:controllerCopy])
  {
    v5 = NSStringFromClass([controllerCopy pluginViewClassType]);
    if (v5)
    {
      createNewPluginView = [(IMMultiDict *)self->_reusablePluginViewsByClassName dequeueObjectForKey:v5];
      if (!createNewPluginView)
      {
        createNewPluginView = [controllerCopy createNewPluginView];
        if (([objc_opt_class() isEqual:{objc_msgSend(controllerCopy, "pluginViewClassType")}] & 1) == 0)
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
            warning = [MEMORY[0x1E69A6138] warning];
            if (os_log_type_enabled(warning, OS_LOG_TYPE_ERROR))
            {
              [(CKTranscriptPluginViewManager *)v10 dequeuePluginViewForBalloonController:warning];
            }
          }
        }
      }

      [(CKTranscriptPluginViewManager *)self _registerPluginView:createNewPluginView withReuseDelegate:controllerCopy];
    }

    else
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CKTranscriptPluginViewManager dequeuePluginViewForBalloonController:v13];
      }

      createNewPluginView = 0;
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
      createNewPluginView = [controllerCopy createNewPluginView];
    }

    else
    {
      createNewPluginView = 0;
    }
  }

  return createNewPluginView;
}

- (BOOL)_objectSupportsPluginViewReuse:(id)reuse
{
  reuseCopy = reuse;
  if (objc_opt_respondsToSelector())
  {
    allowsReusablePluginViews = [reuseCopy allowsReusablePluginViews];
  }

  else
  {
    allowsReusablePluginViews = 0;
  }

  return allowsReusablePluginViews;
}

- (void)_registerPluginView:(id)view withReuseDelegate:(id)delegate
{
  viewCopy = view;
  delegateCopy = delegate;
  v8 = delegateCopy;
  if (!viewCopy || !delegateCopy)
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKTranscriptPluginViewManager _registerPluginView:withReuseDelegate:];
    }

    goto LABEL_9;
  }

  if ([(CKTranscriptPluginViewManager *)self _objectSupportsPluginViewReuse:delegateCopy])
  {
    pluginViewToReuseDelegateMap = self->_pluginViewToReuseDelegateMap;
    if (!pluginViewToReuseDelegateMap)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v11 = self->_pluginViewToReuseDelegateMap;
      self->_pluginViewToReuseDelegateMap = Mutable;

      pluginViewToReuseDelegateMap = self->_pluginViewToReuseDelegateMap;
    }

    v12 = [(CKTranscriptPluginViewManager *)self _pointerKeyForPluginView:viewCopy];
    [(NSMutableDictionary *)pluginViewToReuseDelegateMap setObject:v8 forKey:v12];
LABEL_9:
  }
}

- (void)enqueuePluginViewForReuse:(id)reuse
{
  reuseCopy = reuse;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = v6;
  if (reuseCopy && v6)
  {
    v8 = [(CKTranscriptPluginViewManager *)self _pointerKeyForPluginView:reuseCopy];
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

      [(IMMultiDict *)self->_reusablePluginViewsByClassName enqueueObject:reuseCopy forKey:v7];
      [v9 pluginViewDidEnterReuseQueue:reuseCopy];
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