@interface NTKComplicationDisplayWrapperView
- (BOOL)_displayIsTappable;
- (BOOL)_invokeTouchUpInsideHandler;
- (BOOL)performTap;
- (CGAffineTransform)contentTransform;
- (CGAffineTransform)editingTransform;
- (CGAffineTransform)tritiumTransform;
- (CGSize)maxSize;
- (CGSize)preferredSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKComplicationDisplayWrapperAppLaunchDelegate)appLaunchDelegate;
- (NTKComplicationDisplayWrapperView)init;
- (NTKComplicationDisplayWrapperView)initWithCustomRichDisplay:(id)display;
- (NTKComplicationDisplayWrapperView)initWithCustomTemplateDisplay:(id)display isDetachedDisplay:(BOOL)detachedDisplay family:(int64_t)family;
- (NTKComplicationDisplayWrapperView)initWithFamily:(int64_t)family;
- (NTKComplicationDisplayWrapperView)initWithLegacyDisplay:(id)display;
- (NTKComplicationDisplayWrapperView)initWithLegacyDisplay:(id)display layoutOverride:(int64_t)override;
- (NTKComplicationDisplayWrapperViewAnimationDelegate)animationDelegate;
- (void)_didSetDisplayFromDisplay:(id)display withComplicationAnimation:(unint64_t)animation;
- (void)_invokeNeedsResizeHandler;
- (void)_invokeTouchDownHandler;
- (void)_prepareToSetDisplay:(id)display withComplicationAnimation:(unint64_t *)animation;
- (void)_replaceDisplayWithDisplayClass:(Class)class template:(id)template reason:(int64_t)reason animation:(unint64_t)animation animationType:(unint64_t)type animationFraction:(float)fraction;
- (void)_resetComplicationViews;
- (void)_setComplicationTemplate:(id)template reason:(int64_t)reason animation:(unint64_t)animation animationType:(unint64_t)type animationFraction:(float)fraction;
- (void)_setDimmed:(BOOL)dimmed animated:(BOOL)animated;
- (void)_setDisplay:(id)display withComplicationAnimation:(unint64_t)animation animationType:(unint64_t)type animationFraction:(float)fraction;
- (void)_setDisplayEditing:(BOOL)editing;
- (void)_setDisplayMaxSize:(CGSize)size;
- (void)_timelineAnimationDidFinish;
- (void)_tryToSetDisplayHighlighted:(BOOL)highlighted;
- (void)_updateConcatenatedTransform;
- (void)_updateVisibilityForSensitivity:(int64_t)sensitivity;
- (void)complicationDisplay:(id)display renderStatsWithTime:(double)time cost:(double)cost;
- (void)dealloc;
- (void)layoutSubviews;
- (void)sensitiveUIStateChanged;
- (void)setComplicationView:(id)view withComplicationAnimation:(unint64_t)animation animationType:(unint64_t)type animationFraction:(float)fraction;
- (void)setContentTransform:(CGAffineTransform *)transform;
- (void)setDimmed:(BOOL)dimmed animated:(BOOL)animated;
- (void)setEditing:(BOOL)editing;
- (void)setEditingTransform:(CGAffineTransform *)transform;
- (void)setFilterProvider:(id)provider;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMaxSize:(CGSize)size;
- (void)setPaused:(BOOL)paused;
- (void)setTapAnimationEnabled:(BOOL)enabled;
- (void)setTapEnabled:(BOOL)enabled;
- (void)setTapInternalInputEnabled:(BOOL)enabled;
- (void)setTimeTravelDate:(id)date animated:(BOOL)animated;
- (void)setTritiumTransform:(CGAffineTransform *)transform;
- (void)willPerformAppLaunchForComplication:(id)complication;
@end

@implementation NTKComplicationDisplayWrapperView

- (NTKComplicationDisplayWrapperView)init
{
  v12.receiver = self;
  v12.super_class = NTKComplicationDisplayWrapperView;
  v2 = [(NTKComplicationDisplayWrapperView *)&v12 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 664) = vdupq_n_s64(0x47EFFFFFE0000000uLL);
    *(v2 + 69) = -1;
    v2[550] = 1;
    *(v2 + 78) = 0;
    v2[548] = 1;
    v2[545] = 1;
    [v2 setUserInteractionEnabled:v2[548]];
    v4 = MEMORY[0x277CBF2C0];
    v5 = *MEMORY[0x277CBF2C0];
    v6 = *(MEMORY[0x277CBF2C0] + 16);
    *(v3 + 680) = *MEMORY[0x277CBF2C0];
    *(v3 + 696) = v6;
    v7 = *(v4 + 32);
    *(v3 + 712) = v7;
    *(v3 + 776) = v5;
    *(v3 + 792) = v6;
    *(v3 + 808) = v7;
    *(v3 + 728) = v5;
    *(v3 + 744) = v6;
    *(v3 + 760) = v7;
    [v3 addTarget:v3 action:sel__invokeTouchUpInsideHandler forControlEvents:64];
    [v3 addTarget:v3 action:sel__invokeTouchDownHandler forControlEvents:1];
    mEMORY[0x277CBBB70] = [MEMORY[0x277CBBB70] sharedMonitor];
    [mEMORY[0x277CBBB70] addSensitiveUIObserver:v3];

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v10 = *(v3 + 67);
    *(v3 + 67) = weakObjectsHashTable;
  }

  return v3;
}

- (NTKComplicationDisplayWrapperView)initWithFamily:(int64_t)family
{
  result = [(NTKComplicationDisplayWrapperView *)self init];
  if (result)
  {
    result->_family = family;
  }

  return result;
}

- (NTKComplicationDisplayWrapperView)initWithLegacyDisplay:(id)display layoutOverride:(int64_t)override
{
  v6 = [(NTKComplicationDisplayWrapperView *)self initWithLegacyDisplay:?];
  v8 = v6;
  if (v6)
  {
    v6->_layoutOverride = override;
    if (!display)
    {
      if (NTKInternalBuild(v6, v7))
      {
        v9 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [NTKComplicationDisplayWrapperView initWithLegacyDisplay:v9 layoutOverride:?];
        }

        magentaColor = [MEMORY[0x277D75348] magentaColor];
        [(NTKComplicationDisplayWrapperView *)v8 setBackgroundColor:magentaColor];
      }
    }
  }

  return v8;
}

- (NTKComplicationDisplayWrapperView)initWithLegacyDisplay:(id)display
{
  displayCopy = display;
  v5 = [(NTKComplicationDisplayWrapperView *)self init];
  v7 = v5;
  if (v5)
  {
    v5->_hasLegacyDisplay = 1;
    LODWORD(v6) = -1.0;
    [(NTKComplicationDisplayWrapperView *)v5 _setDisplay:displayCopy withComplicationAnimation:0 animationType:0 animationFraction:v6];
  }

  return v7;
}

- (NTKComplicationDisplayWrapperView)initWithCustomRichDisplay:(id)display
{
  displayCopy = display;
  v5 = [(NTKComplicationDisplayWrapperView *)self init];
  v7 = v5;
  if (v5)
  {
    LODWORD(v6) = -1.0;
    [(NTKComplicationDisplayWrapperView *)v5 _setDisplay:displayCopy withComplicationAnimation:0 animationType:0 animationFraction:v6];
  }

  return v7;
}

- (NTKComplicationDisplayWrapperView)initWithCustomTemplateDisplay:(id)display isDetachedDisplay:(BOOL)detachedDisplay family:(int64_t)family
{
  displayCopy = display;
  v9 = [(NTKComplicationDisplayWrapperView *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_family = family;
    v9->_isDetachedDisplay = detachedDisplay;
    [(NTKComplicationDisplayWrapperView *)v9 setCustomDisplay:displayCopy];
  }

  return v10;
}

- (void)dealloc
{
  mEMORY[0x277CBBB70] = [MEMORY[0x277CBBB70] sharedMonitor];
  [mEMORY[0x277CBBB70] removeSensitiveUIObserver:self];

  [(CLKComplicationTemplate *)self->_template endUpdatesForClient:self];
  v4.receiver = self;
  v4.super_class = NTKComplicationDisplayWrapperView;
  [(NTKComplicationDisplayWrapperView *)&v4 dealloc];
}

- (void)_updateConcatenatedTransform
{
  v3 = *(MEMORY[0x277CBF2C0] + 16);
  *&v11.a = *MEMORY[0x277CBF2C0];
  *&v11.c = v3;
  *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
  *&t1.a = *&v11.a;
  *&t1.c = v3;
  *&t1.tx = *&v11.tx;
  v4 = *&self->_editingTransform.c;
  *&t2.a = *&self->_editingTransform.a;
  *&t2.c = v4;
  *&t2.tx = *&self->_editingTransform.tx;
  CGAffineTransformConcat(&v11, &t1, &t2);
  t2 = v11;
  v5 = *&self->_contentTransform.c;
  *&v8.a = *&self->_contentTransform.a;
  *&v8.c = v5;
  *&v8.tx = *&self->_contentTransform.tx;
  CGAffineTransformConcat(&t1, &t2, &v8);
  v11 = t1;
  t2 = t1;
  v6 = *&self->_tritiumTransform.c;
  *&v8.a = *&self->_tritiumTransform.a;
  *&v8.c = v6;
  *&v8.tx = *&self->_tritiumTransform.tx;
  CGAffineTransformConcat(&t1, &t2, &v8);
  v11 = t1;
  v7.receiver = self;
  v7.super_class = NTKComplicationDisplayWrapperView;
  [(NTKComplicationDisplayWrapperView *)&v7 setTransform:&t1];
}

- (void)setEditingTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_editingTransform.a = *&transform->a;
  *&self->_editingTransform.c = v4;
  *&self->_editingTransform.tx = v3;
  [(NTKComplicationDisplayWrapperView *)self _updateConcatenatedTransform];
}

- (void)setTritiumTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_tritiumTransform.a = *&transform->a;
  *&self->_tritiumTransform.c = v4;
  *&self->_tritiumTransform.tx = v3;
  [(NTKComplicationDisplayWrapperView *)self _updateConcatenatedTransform];
}

- (void)setContentTransform:(CGAffineTransform *)transform
{
  v4 = *&transform->c;
  v3 = *&transform->tx;
  *&self->_contentTransform.a = *&transform->a;
  *&self->_contentTransform.c = v4;
  *&self->_contentTransform.tx = v3;
  [(NTKComplicationDisplayWrapperView *)self _updateConcatenatedTransform];
}

- (void)_setComplicationTemplate:(id)template reason:(int64_t)reason animation:(unint64_t)animation animationType:(unint64_t)type animationFraction:(float)fraction
{
  v38 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  if (self->_template != templateCopy)
  {
    [(CLKComplicationTemplate *)self->_prevTemplate endUpdatesForClient:self];
    objc_storeStrong(&self->_prevTemplate, self->_template);
    objc_storeStrong(&self->_template, template);
    if (!self->_paused)
    {
      [(CLKComplicationTemplate *)self->_template beginUpdatesForClient:self];
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = self->_backgroundObservers;
    v15 = [(NSHashTable *)v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        v18 = 0;
        do
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v33 + 1) + 8 * v18++) displayWrapperTemplateBackgroundChanged];
        }

        while (v16 != v18);
        v16 = [(NSHashTable *)v14 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v16);
    }

    display = self->_display;
    if (!self->_isDetachedDisplay)
    {
      v20 = objc_opt_class();
      v21 = NTKComplicationDisplayClassForTemplateAndFamily(templateCopy, self->_family);
      if (!v21)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = objc_opt_class();
        }

        else
        {
          v21 = 0;
        }
      }

      display = [(NTKComplicationDisplayWrapperView *)self display];
      v23 = [display conformsToProtocol:&unk_28A7FCA58];

      if (v23)
      {
        display2 = [(NTKComplicationDisplayWrapperView *)self display];
        complicationTemplate = [display2 complicationTemplate];
        v32 = v20;
        animationCopy = animation;
        reasonCopy = reason;
        typeCopy = type;
        v30 = [(CLKComplicationTemplate *)templateCopy isEqual:complicationTemplate];

        v31 = v30 == 0;
        type = typeCopy;
        reason = reasonCopy;
        animation = animationCopy;
        v20 = v32;
        if (!v31)
        {
          animation = 0;
        }
      }

      if (!v20 || v20 != v21 || animation)
      {
        *&v24 = fraction;
        [(NTKComplicationDisplayWrapperView *)self _replaceDisplayWithDisplayClass:v21 template:templateCopy reason:reason animation:animation animationType:type animationFraction:v24];
        goto LABEL_27;
      }

      if (![(CDComplicationDisplay *)self->_display conformsToProtocol:&unk_28A7FCA58])
      {
LABEL_27:
        [(NTKComplicationDisplayWrapperView *)self _updateVisibilityForSensitivity:[(CLKComplicationTemplate *)templateCopy uiSensitivity]];
        goto LABEL_28;
      }

      display = self->_display;
    }

    [(CDComplicationDisplay *)display setComplicationTemplate:templateCopy reason:reason];
    goto LABEL_27;
  }

LABEL_28:
}

- (void)_replaceDisplayWithDisplayClass:(Class)class template:(id)template reason:(int64_t)reason animation:(unint64_t)animation animationType:(unint64_t)type animationFraction:(float)fraction
{
  animationCopy = animation;
  templateCopy = template;
  display = [(NTKComplicationDisplayWrapperView *)self display];
  v15 = objc_alloc_init(class);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
    [v16 setPaused:{-[NTKComplicationDisplayWrapperView paused](self, "paused")}];
  }

  [v15 setTextLayoutStyle:{-[NTKComplicationDisplayWrapperView textLayoutStyle](self, "textLayoutStyle")}];
  [(NTKComplicationDisplayWrapperView *)self _prepareToSetDisplay:v15 withComplicationAnimation:&animationCopy];
  [v15 setComplicationTemplate:templateCopy reason:reason];

  *&v17 = fraction;
  [(NTKComplicationDisplayWrapperView *)self _setDisplay:v15 withComplicationAnimation:animationCopy animationType:type animationFraction:v17];
  [(NTKComplicationDisplayWrapperView *)self _didSetDisplayFromDisplay:display withComplicationAnimation:animationCopy];
  if (objc_opt_respondsToSelector())
  {
    [(CDComplicationDisplay *)self->_display setTimeTravelDate:self->_timeTravelDate animated:animationCopy != 0];
  }
}

- (void)_prepareToSetDisplay:(id)display withComplicationAnimation:(unint64_t *)animation
{
  displayCopy = display;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    layoutOverride = [objc_opt_class() layoutOverride];
  }

  else
  {
    layoutOverride = 0;
  }

  layoutOverride = self->_layoutOverride;
  self->_didChangeLayoutOverride = layoutOverride != layoutOverride;
  if (layoutOverride != layoutOverride)
  {
    self->_layoutOverride = layoutOverride;
    *animation = 0;
  }
}

- (void)_didSetDisplayFromDisplay:(id)display withComplicationAnimation:(unint64_t)animation
{
  if (self->_didChangeLayoutOverride)
  {
    self->_didChangeLayoutOverride = 0;
    [(NTKComplicationDisplayWrapperView *)self _invokeNeedsResizeHandler:display];
  }
}

- (void)setPaused:(BOOL)paused
{
  if (self->_paused != paused)
  {
    pausedCopy = paused;
    self->_paused = paused;
    v5 = self->_template;
    if (paused)
    {
      [(CLKComplicationTemplate *)v5 endUpdatesForClient:self];
    }

    else
    {
      [(CLKComplicationTemplate *)v5 beginUpdatesForClient:self];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      display = self->_display;

      [(CDComplicationDisplay *)display setPaused:pausedCopy];
    }
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(NTKComplicationDisplayWrapperView *)self _setDisplayEditing:?];
  }
}

- (void)setMaxSize:(CGSize)size
{
  if (size.width != self->_maxSize.width || size.height != self->_maxSize.height)
  {
    self->_maxSize = size;
    [(NTKComplicationDisplayWrapperView *)self _setDisplayMaxSize:?];
  }
}

- (void)setDimmed:(BOOL)dimmed animated:(BOOL)animated
{
  if (self->_dimmed != dimmed)
  {
    self->_dimmed = dimmed;
    [NTKComplicationDisplayWrapperView _setDimmed:"_setDimmed:animated:" animated:?];
  }
}

- (void)_setDimmed:(BOOL)dimmed animated:(BOOL)animated
{
  animatedCopy = animated;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__NTKComplicationDisplayWrapperView__setDimmed_animated___block_invoke;
  v7[3] = &unk_27877F7E8;
  v7[4] = self;
  dimmedCopy = dimmed;
  v5 = _Block_copy(v7);
  v6 = v5;
  if (animatedCopy)
  {
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.2];
  }

  else
  {
    (*(v5 + 2))(v5);
  }
}

uint64_t __57__NTKComplicationDisplayWrapperView__setDimmed_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = 1.0;
  if (*(a1 + 40) == 1)
  {
    [*(a1 + 32) alphaForDimmedState];
  }

  return [v1 setAlpha:v2];
}

- (void)setTapEnabled:(BOOL)enabled
{
  if (self->_tapEnabled != enabled)
  {
    self->_tapEnabled = enabled;
    [(NTKComplicationDisplayWrapperView *)self _tryToSetDisplayHighlighted:0];
    tapEnabled = self->_tapEnabled;

    [(NTKComplicationDisplayWrapperView *)self setUserInteractionEnabled:tapEnabled];
  }
}

- (void)setTapAnimationEnabled:(BOOL)enabled
{
  if (self->_tapAnimationEnabled != enabled)
  {
    self->_tapAnimationEnabled = enabled;
    [(NTKComplicationDisplayWrapperView *)self _tryToSetDisplayHighlighted:0];
  }
}

- (void)setTapInternalInputEnabled:(BOOL)enabled
{
  if (self->_tapInternalInputEnabled != enabled)
  {
    self->_tapInternalInputEnabled = enabled;
    [(NTKComplicationDisplayWrapperView *)self _tryToSetDisplayHighlighted:0];
  }
}

- (BOOL)performTap
{
  touchDownHandler = self->_touchDownHandler;
  if (touchDownHandler)
  {
    display = [(NTKComplicationDisplayWrapperView *)self display];
    touchDownHandler[2](touchDownHandler, display);

    touchUpInsideHandler = self->_touchUpInsideHandler;
    if (!touchUpInsideHandler)
    {
      return 1;
    }

    goto LABEL_5;
  }

  touchUpInsideHandler = self->_touchUpInsideHandler;
  if (touchUpInsideHandler)
  {
LABEL_5:
    display2 = [(NTKComplicationDisplayWrapperView *)self display];
    touchUpInsideHandler[2](touchUpInsideHandler, display2);

    return 1;
  }

  return 0;
}

- (BOOL)_displayIsTappable
{
  display = [(NTKComplicationDisplayWrapperView *)self display];
  v4 = display;
  if (self->_tapEnabled && ([display alpha], v5 > 0.0))
  {
    v6 = [v4 isHidden] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)_invokeTouchUpInsideHandler
{
  if (!self->_touchUpInsideHandler)
  {
    goto LABEL_5;
  }

  _displayIsTappable = [(NTKComplicationDisplayWrapperView *)self _displayIsTappable];
  if (_displayIsTappable)
  {
    if (self->_tapInternalInputEnabled)
    {
      touchUpInsideHandler = self->_touchUpInsideHandler;
      display = [(NTKComplicationDisplayWrapperView *)self display];
      touchUpInsideHandler[2](touchUpInsideHandler, display);

      LOBYTE(_displayIsTappable) = 1;
      return _displayIsTappable;
    }

LABEL_5:
    LOBYTE(_displayIsTappable) = 0;
  }

  return _displayIsTappable;
}

- (void)_invokeTouchDownHandler
{
  if (self->_touchDownHandler && [(NTKComplicationDisplayWrapperView *)self _displayIsTappable]&& self->_tapInternalInputEnabled)
  {
    touchDownHandler = self->_touchDownHandler;
    display = [(NTKComplicationDisplayWrapperView *)self display];
    touchDownHandler[2](touchDownHandler, display);
  }
}

- (void)sensitiveUIStateChanged
{
  complicationTemplate = [(NTKComplicationDisplayWrapperView *)self complicationTemplate];
  -[NTKComplicationDisplayWrapperView _updateVisibilityForSensitivity:](self, "_updateVisibilityForSensitivity:", [complicationTemplate uiSensitivity]);
}

- (void)_invokeNeedsResizeHandler
{
  needsResizeHandler = self->_needsResizeHandler;
  if (needsResizeHandler)
  {
    needsResizeHandler[2]();
  }
}

- (void)_tryToSetDisplayHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  if (objc_opt_respondsToSelector())
  {
    display = self->_display;

    [(CDComplicationDisplay *)display setHighlighted:highlightedCopy];
  }
}

- (void)_setDisplayMaxSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (objc_opt_respondsToSelector())
  {
    display = self->_display;

    [(CDComplicationDisplay *)display setMaxSize:width, height];
  }
}

- (void)_setDisplayEditing:(BOOL)editing
{
  editingCopy = editing;
  if (objc_opt_respondsToSelector())
  {
    display = self->_display;

    [(CDComplicationDisplay *)display setEditing:editingCopy];
  }
}

- (void)_setDisplay:(id)display withComplicationAnimation:(unint64_t)animation animationType:(unint64_t)type animationFraction:(float)fraction
{
  displayCopy = display;
  display = self->_display;
  if (display != displayCopy)
  {
    v18 = displayCopy;
    if (display)
    {
      if (([(CDComplicationDisplay *)displayCopy conformsToProtocol:&unk_28A7FCA58]& 1) == 0)
      {
        v13 = self->_template;
        self->_template = 0;
      }

      [(CDComplicationDisplay *)self->_display setDisplayObserver:0];
      [(NTKComplicationDisplayWrapperView *)self _removeDisplay:self->_display];
    }

    objc_storeStrong(&self->_display, display);
    if (self->_display)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = self->_display;
        filterProvider = [(NTKComplicationDisplayWrapperView *)self filterProvider];
        [(CDComplicationDisplay *)v14 setFilterProvider:filterProvider];
      }

      [(CDComplicationDisplay *)self->_display setDisplayObserver:self];
      [(NTKComplicationDisplayWrapperView *)self _setDisplayEditing:self->_editing];
      [(NTKComplicationDisplayWrapperView *)self _setDisplayMaxSize:self->_maxSize.width, self->_maxSize.height];
      displayConfigurationHandler = self->_displayConfigurationHandler;
      if (displayConfigurationHandler)
      {
        (displayConfigurationHandler)[2](displayConfigurationHandler, v18);
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *&v17 = fraction;
        [(NTKComplicationDisplayWrapperView *)self setComplicationView:v18 withComplicationAnimation:animation animationType:type animationFraction:v17];
      }
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)setFilterProvider:(id)provider
{
  obj = provider;
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_filterProvider, obj);
    if (objc_opt_respondsToSelector())
    {
      [(CDComplicationDisplay *)self->_display setFilterProvider:obj];
    }
  }

  MEMORY[0x2821F9730]();
}

- (CGSize)preferredSize
{
  [(NTKComplicationDisplayWrapperView *)self bounds];

  [(NTKComplicationDisplayWrapperView *)self sizeThatFits:v3, v4];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  [(CDComplicationDisplay *)self->_currentComplicationView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  nextComplicationView = self->_nextComplicationView;
  if (nextComplicationView)
  {
    [(CDComplicationDisplay *)nextComplicationView sizeThatFits:width, height];
    if (v11 > v7)
    {
      v7 = v11;
    }

    if (v12 > v9)
    {
      v9 = v12;
    }
  }

  v13 = v7;
  v14 = v9;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = NTKComplicationDisplayWrapperView;
  [(NTKComplicationDisplayWrapperView *)&v29 layoutSubviews];
  [(NTKComplicationDisplayWrapperView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (self->_isAnimating)
  {
    v30 = CGRectInset(*&v3, 0.0, -2.0);
    [(UIView *)self->_clipView setFrame:v30.origin.x, v30.origin.y, v30.size.width, v30.size.height];
    earlierContainerView = self->_earlierContainerView;
    [(UIView *)self->_clipView bounds];
    [(UIView *)earlierContainerView ntk_setBoundsAndPositionFromFrame:?];
    laterContainerView = self->_laterContainerView;
    [(UIView *)self->_clipView bounds];
    [(UIView *)laterContainerView ntk_setBoundsAndPositionFromFrame:?];
    v8 = v8 + 2.0;
  }

  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  currentComplicationView = self->_currentComplicationView;
  if (currentComplicationView)
  {
    [(CDComplicationDisplay *)currentComplicationView transform];
    currentComplicationView = self->_currentComplicationView;
  }

  v14 = *(MEMORY[0x277CBF2C0] + 16);
  v23 = *MEMORY[0x277CBF2C0];
  v19 = *(MEMORY[0x277CBF2C0] + 32);
  v24 = v14;
  v25 = v19;
  [(CDComplicationDisplay *)currentComplicationView setTransform:&v23, v19, v14, v23];
  [(CDComplicationDisplay *)self->_currentComplicationView setFrame:v7, v8, v9, v10];
  v15 = self->_currentComplicationView;
  v23 = v26;
  v24 = v27;
  v25 = v28;
  [(CDComplicationDisplay *)v15 setTransform:&v23];
  nextComplicationView = self->_nextComplicationView;
  if (nextComplicationView)
  {
    [(CDComplicationDisplay *)nextComplicationView transform];
    v26 = v23;
    v27 = v24;
    v28 = v25;
    v17 = self->_nextComplicationView;
    v23 = v22;
    v24 = v21;
    v25 = v20;
    [(CDComplicationDisplay *)v17 setTransform:&v23];
    [(CDComplicationDisplay *)self->_nextComplicationView setFrame:v7, v8, v9, v10];
    v18 = self->_nextComplicationView;
    v23 = v26;
    v24 = v27;
    v25 = v28;
    [(CDComplicationDisplay *)v18 setTransform:&v23];
  }
}

- (void)willPerformAppLaunchForComplication:(id)complication
{
  WeakRetained = objc_loadWeakRetained(&self->_appLaunchDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_appLaunchDelegate);
    [v5 willLaunchAppForComplicationDisplayWrapper:self];
  }
}

- (void)_updateVisibilityForSensitivity:(int64_t)sensitivity
{
  mEMORY[0x277CBBB70] = [MEMORY[0x277CBBB70] sharedMonitor];
  v6 = [mEMORY[0x277CBBB70] shouldHideForSensitivity:sensitivity];

  if (objc_opt_respondsToSelector() & 1) != 0 && v6 != [(CDComplicationDisplay *)self->_display isHidden]&& (objc_opt_respondsToSelector())
  {
    display = self->_display;

    [(CDComplicationDisplay *)display setHidden:v6];
  }
}

- (void)complicationDisplay:(id)display renderStatsWithTime:(double)time cost:(double)cost
{
  renderStatsHandler = self->_renderStatsHandler;
  if (renderStatsHandler)
  {
    renderStatsHandler[2](renderStatsHandler, self, time, cost);
  }
}

- (void)setTimeTravelDate:(id)date animated:(BOOL)animated
{
  animatedCopy = animated;
  dateCopy = date;
  if (([dateCopy isEqual:self->_timeTravelDate] & 1) == 0)
  {
    objc_storeStrong(&self->_timeTravelDate, date);
    if (objc_opt_respondsToSelector())
    {
      [(CDComplicationDisplay *)self->_display setTimeTravelDate:self->_timeTravelDate animated:animatedCopy];
    }
  }
}

- (void)setComplicationView:(id)view withComplicationAnimation:(unint64_t)animation animationType:(unint64_t)type animationFraction:(float)fraction
{
  v33 = *MEMORY[0x277D85DE8];
  viewCopy = view;
  p_currentComplicationView = &self->_currentComplicationView;
  currentComplicationView = self->_currentComplicationView;
  if (currentComplicationView != viewCopy)
  {
    if (self->_isAnimating)
    {
      objc_storeStrong(&self->_deferredComplicationView, view);
      v12 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        complicationSlotIdentifier = self->_complicationSlotIdentifier;
        v31 = 138412290;
        v32 = complicationSlotIdentifier;
        _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "NTKComplicationDisplayWrapper: deferring animation (%@)", &v31, 0xCu);
      }
    }

    else if (animation && currentComplicationView)
    {
      objc_storeStrong(&self->_nextComplicationView, view);
      [(CDComplicationDisplay *)*p_currentComplicationView removeFromSuperview];
      if (animation == 1)
      {
        p_nextComplicationView = &self->_currentComplicationView;
      }

      else
      {
        p_nextComplicationView = &self->_nextComplicationView;
      }

      v15 = *p_nextComplicationView;
      if (animation == 1)
      {
        v16 = &self->_nextComplicationView;
      }

      else
      {
        v16 = &self->_currentComplicationView;
      }

      v17 = MEMORY[0x277D75D18];
      v18 = *v16;
      v19 = v15;
      v20 = objc_alloc_init(v17);
      clipView = self->_clipView;
      self->_clipView = v20;

      [(UIView *)self->_clipView setClipsToBounds:1];
      [(NTKComplicationDisplayWrapperView *)self addSubview:self->_clipView];
      v22 = objc_alloc_init(MEMORY[0x277D75D18]);
      earlierContainerView = self->_earlierContainerView;
      self->_earlierContainerView = v22;

      v24 = objc_alloc_init(MEMORY[0x277D75D18]);
      laterContainerView = self->_laterContainerView;
      self->_laterContainerView = v24;

      [(UIView *)self->_clipView addSubview:self->_laterContainerView];
      [(UIView *)self->_clipView addSubview:self->_earlierContainerView];
      [(UIView *)self->_earlierContainerView addSubview:v19];
      [(UIView *)self->_laterContainerView addSubview:v18];
      self->_isAnimating = 1;
      [(NTKComplicationDisplayWrapperView *)self setNeedsLayout];
      [(NTKComplicationDisplayWrapperView *)self layoutIfNeeded];
      [(NTKComplicationDisplayWrapperView *)self _timelineAnimationDidFinish];
    }

    else
    {
      v26 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = self->_complicationSlotIdentifier;
        v31 = 138412290;
        v32 = v27;
        _os_log_impl(&dword_22D9C5000, v26, OS_LOG_TYPE_DEFAULT, "NTKComplicationDisplayWrapper: Replace display non-animated (%@)", &v31, 0xCu);
      }

      [(CDComplicationDisplay *)*p_currentComplicationView removeFromSuperview];
      objc_storeStrong(&self->_currentComplicationView, view);
      [(NTKComplicationDisplayWrapperView *)self _resetComplicationViews];
      [(CDComplicationDisplay *)self->_nextComplicationView removeFromSuperview];
      nextComplicationView = self->_nextComplicationView;
      self->_nextComplicationView = 0;

      deferredComplicationView = self->_deferredComplicationView;
      self->_deferredComplicationView = 0;

      [(CDComplicationDisplay *)*p_currentComplicationView setUserInteractionEnabled:0];
      [(CLKComplicationTemplate *)self->_prevTemplate endUpdatesForClient:self];
      prevTemplate = self->_prevTemplate;
      self->_prevTemplate = 0;
    }
  }
}

- (void)_timelineAnimationDidFinish
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    complicationSlotIdentifier = self->_complicationSlotIdentifier;
    v14 = 138412290;
    v15 = complicationSlotIdentifier;
    _os_log_impl(&dword_22D9C5000, v3, OS_LOG_TYPE_DEFAULT, "NTKComplicationDisplayWrapper: Complication animation did finish (%@)", &v14, 0xCu);
  }

  [(CDComplicationDisplay *)self->_nextComplicationView removeFromSuperview];
  [(CDComplicationDisplay *)self->_currentComplicationView removeFromSuperview];
  deferredComplicationView = self->_deferredComplicationView;
  if (!deferredComplicationView)
  {
    deferredComplicationView = self->_nextComplicationView;
  }

  v6 = deferredComplicationView;
  currentComplicationView = self->_currentComplicationView;
  self->_currentComplicationView = v6;

  v8 = self->_deferredComplicationView;
  self->_deferredComplicationView = 0;

  nextComplicationView = self->_nextComplicationView;
  self->_nextComplicationView = 0;

  self->_isAnimating = 0;
  [(NTKComplicationDisplayWrapperView *)self _resetComplicationViews];
  [(CDComplicationDisplay *)self->_currentComplicationView setUserInteractionEnabled:0];
  [(NTKComplicationDisplayWrapperView *)self _invokeNeedsResizeHandler];
  earlierContainerView = self->_earlierContainerView;
  self->_earlierContainerView = 0;

  laterContainerView = self->_laterContainerView;
  self->_laterContainerView = 0;

  [(UIView *)self->_clipView removeFromSuperview];
  clipView = self->_clipView;
  self->_clipView = 0;

  [(CLKComplicationTemplate *)self->_prevTemplate endUpdatesForClient:self];
  prevTemplate = self->_prevTemplate;
  self->_prevTemplate = 0;
}

- (void)_resetComplicationViews
{
  if (self->_currentComplicationView)
  {
    [(NTKComplicationDisplayWrapperView *)self addSubview:?];
    currentComplicationView = self->_currentComplicationView;

    [(CDComplicationDisplay *)currentComplicationView setAlpha:1.0];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_tapAnimationEnabled)
  {
    v8 = v3;
    v9 = v4;
    highlightedCopy = highlighted;
    v7.receiver = self;
    v7.super_class = NTKComplicationDisplayWrapperView;
    [(NTKComplicationDisplayWrapperView *)&v7 setHighlighted:?];
    [(NTKComplicationDisplayWrapperView *)self _tryToSetDisplayHighlighted:highlightedCopy];
  }
}

- (CGAffineTransform)editingTransform
{
  v3 = *&self[14].d;
  *&retstr->a = *&self[14].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[14].ty;
  return self;
}

- (CGAffineTransform)tritiumTransform
{
  v3 = *&self[15].d;
  *&retstr->a = *&self[15].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[15].ty;
  return self;
}

- (CGAffineTransform)contentTransform
{
  v3 = *&self[16].d;
  *&retstr->a = *&self[16].b;
  *&retstr->c = v3;
  *&retstr->tx = *&self[16].ty;
  return self;
}

- (NTKComplicationDisplayWrapperViewAnimationDelegate)animationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_animationDelegate);

  return WeakRetained;
}

- (NTKComplicationDisplayWrapperAppLaunchDelegate)appLaunchDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appLaunchDelegate);

  return WeakRetained;
}

- (CGSize)maxSize
{
  width = self->_maxSize.width;
  height = self->_maxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CLKMonochromeFilterProvider)filterProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_filterProvider);

  return WeakRetained;
}

@end