@interface _NAUIAutoUpdatingFontObserver
+ (BOOL)canObserveFontsForTarget:(id)target;
- (_NAUIAutoUpdatingFontObserver)initWithTarget:(id)target;
- (id)target;
- (void)dealloc;
- (void)updateDyamicFontForCurrentContentSize;
@end

@implementation _NAUIAutoUpdatingFontObserver

- (_NAUIAutoUpdatingFontObserver)initWithTarget:(id)target
{
  targetCopy = target;
  if ([objc_opt_class() canObserveFontsForTarget:targetCopy])
  {
    v17.receiver = self;
    v17.super_class = _NAUIAutoUpdatingFontObserver;
    v5 = [(_NAUIAutoUpdatingFontObserver *)&v17 init];
    v6 = v5;
    if (v5)
    {
      objc_storeWeak(&v5->_target, targetCopy);
      objc_initWeak(&location, v6);
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      mainQueue = [MEMORY[0x277CCABD8] mainQueue];
      v9 = *MEMORY[0x277D76810];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __48___NAUIAutoUpdatingFontObserver_initWithTarget___block_invoke;
      v14[3] = &unk_279966658;
      objc_copyWeak(&v15, &location);
      v10 = [defaultCenter addObserverForName:v9 object:0 queue:mainQueue usingBlock:v14];
      notificationObserver = v6->_notificationObserver;
      v6->_notificationObserver = v10;

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }

    self = v6;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (BOOL)canObserveFontsForTarget:(id)target
{
  targetCopy = target;
  v4 = 1;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if ((objc_opt_respondsToSelector() & 1) == 0 || ([targetCopy viewForLastBaselineLayout], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, (v6 & 1) == 0))
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
    naui_dynamicFontTextStyleDescriptor = [v5 naui_dynamicFontTextStyleDescriptor];

    v6 = objc_loadWeakRetained(&self->_target);
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = objc_loadWeakRetained(&self->_target);
      [v8 naui_reloadDynamicFontWithTextStyleDescriptor:naui_dynamicFontTextStyleDescriptor];
    }

    v9 = objc_loadWeakRetained(&self->_target);
    viewForLastBaselineLayout = [v9 viewForLastBaselineLayout];

    if (objc_opt_respondsToSelector())
    {
      v11 = [NAUITextStyleDescriptor fontWithTextStyleDescriptor:naui_dynamicFontTextStyleDescriptor];
      [viewForLastBaselineLayout setFont:v11];
    }

    v12 = objc_loadWeakRetained(&self->_target);
    [v12 setNeedsLayout];
  }
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_notificationObserver];

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