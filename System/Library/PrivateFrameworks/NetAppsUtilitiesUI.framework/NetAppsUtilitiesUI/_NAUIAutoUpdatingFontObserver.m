@interface _NAUIAutoUpdatingFontObserver
+ (BOOL)canObserveFontsForTarget:(id)a3;
- (_NAUIAutoUpdatingFontObserver)initWithTarget:(id)a3;
- (id)target;
- (void)dealloc;
- (void)updateDyamicFontForCurrentContentSize;
@end

@implementation _NAUIAutoUpdatingFontObserver

- (_NAUIAutoUpdatingFontObserver)initWithTarget:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() canObserveFontsForTarget:v4])
  {
    v17.receiver = self;
    v17.super_class = _NAUIAutoUpdatingFontObserver;
    v5 = [(_NAUIAutoUpdatingFontObserver *)&v17 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_target, v4);
      objc_initWeak(&location, v6);
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      v8 = [MEMORY[0x277CCABD8] mainQueue];
      v9 = *MEMORY[0x277D76810];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48___NAUIAutoUpdatingFontObserver_initWithTarget___block_invoke;
      v14[3] = &unk_279966658;
      objc_copyWeak(&v15, &location);
      v10 = [v7 addObserverForName:v9 object:0 queue:v8 usingBlock:v14];
      notificationObserver = v6->_notificationObserver;
      v6->_notificationObserver = v10;

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    self = v6;
    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (BOOL)canObserveFontsForTarget:(id)a3
{
  v3 = a3;
  v4 = 1;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([v3 viewForLastBaselineLayout], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)updateDyamicFontForCurrentContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_target);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = objc_loadWeakRetained(&self->_target);
    v13 = [v5 naui_dynamicFontTextStyleDescriptor];

    v6 = objc_loadWeakRetained(&self->_target);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_target);
      [v8 naui_reloadDynamicFontWithTextStyleDescriptor:v13];
    }

    v9 = objc_loadWeakRetained(&self->_target);
    v10 = [v9 viewForLastBaselineLayout];

    if (objc_opt_respondsToSelector())
    {
      v11 = [NAUITextStyleDescriptor fontWithTextStyleDescriptor:v13];
      [v10 setFont:v11];
    }

    v12 = objc_loadWeakRetained(&self->_target);
    [v12 setNeedsLayout];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_notificationObserver];

  v4.receiver = self;
  v4.super_class = _NAUIAutoUpdatingFontObserver;
  [(_NAUIAutoUpdatingFontObserver *)&v4 dealloc];
}

- (id)target
{
  WeakRetained = objc_loadWeakRetained(&self->_target);

  return WeakRetained;
}

@end