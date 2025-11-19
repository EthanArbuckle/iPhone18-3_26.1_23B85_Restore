@interface NTKComplicationDisplayWrapperView
- (BOOL)_displayIsTappable;
- (BOOL)_invokeTouchUpInsideHandler;
- (BOOL)performTap;
- (CGAffineTransform)contentTransform;
- (CGAffineTransform)editingTransform;
- (CGAffineTransform)tritiumTransform;
- (CGSize)maxSize;
- (CGSize)preferredSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CLKMonochromeFilterProvider)filterProvider;
- (NTKComplicationDisplayWrapperAppLaunchDelegate)appLaunchDelegate;
- (NTKComplicationDisplayWrapperView)init;
- (NTKComplicationDisplayWrapperView)initWithCustomRichDisplay:(id)a3;
- (NTKComplicationDisplayWrapperView)initWithCustomTemplateDisplay:(id)a3 isDetachedDisplay:(BOOL)a4 family:(int64_t)a5;
- (NTKComplicationDisplayWrapperView)initWithFamily:(int64_t)a3;
- (NTKComplicationDisplayWrapperView)initWithLegacyDisplay:(id)a3;
- (NTKComplicationDisplayWrapperView)initWithLegacyDisplay:(id)a3 layoutOverride:(int64_t)a4;
- (NTKComplicationDisplayWrapperViewAnimationDelegate)animationDelegate;
- (void)_didSetDisplayFromDisplay:(id)a3 withComplicationAnimation:(unint64_t)a4;
- (void)_invokeNeedsResizeHandler;
- (void)_invokeTouchDownHandler;
- (void)_prepareToSetDisplay:(id)a3 withComplicationAnimation:(unint64_t *)a4;
- (void)_replaceDisplayWithDisplayClass:(Class)a3 template:(id)a4 reason:(int64_t)a5 animation:(unint64_t)a6 animationType:(unint64_t)a7 animationFraction:(float)a8;
- (void)_resetComplicationViews;
- (void)_setComplicationTemplate:(id)a3 reason:(int64_t)a4 animation:(unint64_t)a5 animationType:(unint64_t)a6 animationFraction:(float)a7;
- (void)_setDimmed:(BOOL)a3 animated:(BOOL)a4;
- (void)_setDisplay:(id)a3 withComplicationAnimation:(unint64_t)a4 animationType:(unint64_t)a5 animationFraction:(float)a6;
- (void)_setDisplayEditing:(BOOL)a3;
- (void)_setDisplayMaxSize:(CGSize)a3;
- (void)_timelineAnimationDidFinish;
- (void)_tryToSetDisplayHighlighted:(BOOL)a3;
- (void)_updateConcatenatedTransform;
- (void)_updateVisibilityForSensitivity:(int64_t)a3;
- (void)complicationDisplay:(id)a3 renderStatsWithTime:(double)a4 cost:(double)a5;
- (void)dealloc;
- (void)layoutSubviews;
- (void)sensitiveUIStateChanged;
- (void)setComplicationView:(id)a3 withComplicationAnimation:(unint64_t)a4 animationType:(unint64_t)a5 animationFraction:(float)a6;
- (void)setContentTransform:(CGAffineTransform *)a3;
- (void)setDimmed:(BOOL)a3 animated:(BOOL)a4;
- (void)setEditing:(BOOL)a3;
- (void)setEditingTransform:(CGAffineTransform *)a3;
- (void)setFilterProvider:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMaxSize:(CGSize)a3;
- (void)setPaused:(BOOL)a3;
- (void)setTapAnimationEnabled:(BOOL)a3;
- (void)setTapEnabled:(BOOL)a3;
- (void)setTapInternalInputEnabled:(BOOL)a3;
- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4;
- (void)setTritiumTransform:(CGAffineTransform *)a3;
- (void)willPerformAppLaunchForComplication:(id)a3;
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
    v8 = [MEMORY[0x277CBBB70] sharedMonitor];
    [v8 addSensitiveUIObserver:v3];

    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v10 = *(v3 + 67);
    *(v3 + 67) = v9;
  }

  return v3;
}

- (NTKComplicationDisplayWrapperView)initWithFamily:(int64_t)a3
{
  result = [(NTKComplicationDisplayWrapperView *)self init];
  if (result)
  {
    result->_family = a3;
  }

  return result;
}

- (NTKComplicationDisplayWrapperView)initWithLegacyDisplay:(id)a3 layoutOverride:(int64_t)a4
{
  v6 = [(NTKComplicationDisplayWrapperView *)self initWithLegacyDisplay:?];
  v8 = v6;
  if (v6)
  {
    v6->_layoutOverride = a4;
    if (!a3)
    {
      if (NTKInternalBuild(v6, v7))
      {
        v9 = _NTKLoggingObjectForDomain(0, "NTKLoggingDomainDefault");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [NTKComplicationDisplayWrapperView initWithLegacyDisplay:v9 layoutOverride:?];
        }

        v10 = [MEMORY[0x277D75348] magentaColor];
        [(NTKComplicationDisplayWrapperView *)v8 setBackgroundColor:v10];
      }
    }
  }

  return v8;
}

- (NTKComplicationDisplayWrapperView)initWithLegacyDisplay:(id)a3
{
  v4 = a3;
  v5 = [(NTKComplicationDisplayWrapperView *)self init];
  v7 = v5;
  if (v5)
  {
    v5->_hasLegacyDisplay = 1;
    LODWORD(v6) = -1.0;
    [(NTKComplicationDisplayWrapperView *)v5 _setDisplay:v4 withComplicationAnimation:0 animationType:0 animationFraction:v6];
  }

  return v7;
}

- (NTKComplicationDisplayWrapperView)initWithCustomRichDisplay:(id)a3
{
  v4 = a3;
  v5 = [(NTKComplicationDisplayWrapperView *)self init];
  v7 = v5;
  if (v5)
  {
    LODWORD(v6) = -1.0;
    [(NTKComplicationDisplayWrapperView *)v5 _setDisplay:v4 withComplicationAnimation:0 animationType:0 animationFraction:v6];
  }

  return v7;
}

- (NTKComplicationDisplayWrapperView)initWithCustomTemplateDisplay:(id)a3 isDetachedDisplay:(BOOL)a4 family:(int64_t)a5
{
  v8 = a3;
  v9 = [(NTKComplicationDisplayWrapperView *)self init];
  v10 = v9;
  if (v9)
  {
    v9->_family = a5;
    v9->_isDetachedDisplay = a4;
    [(NTKComplicationDisplayWrapperView *)v9 setCustomDisplay:v8];
  }

  return v10;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CBBB70] sharedMonitor];
  [v3 removeSensitiveUIObserver:self];

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

- (void)setEditingTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_editingTransform.a = *&a3->a;
  *&self->_editingTransform.c = v4;
  *&self->_editingTransform.tx = v3;
  [(NTKComplicationDisplayWrapperView *)self _updateConcatenatedTransform];
}

- (void)setTritiumTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_tritiumTransform.a = *&a3->a;
  *&self->_tritiumTransform.c = v4;
  *&self->_tritiumTransform.tx = v3;
  [(NTKComplicationDisplayWrapperView *)self _updateConcatenatedTransform];
}

- (void)setContentTransform:(CGAffineTransform *)a3
{
  v4 = *&a3->c;
  v3 = *&a3->tx;
  *&self->_contentTransform.a = *&a3->a;
  *&self->_contentTransform.c = v4;
  *&self->_contentTransform.tx = v3;
  [(NTKComplicationDisplayWrapperView *)self _updateConcatenatedTransform];
}

- (void)_setComplicationTemplate:(id)a3 reason:(int64_t)a4 animation:(unint64_t)a5 animationType:(unint64_t)a6 animationFraction:(float)a7
{
  v38 = *MEMORY[0x277D85DE8];
  v13 = a3;
  if (self->_template != v13)
  {
    [(CLKComplicationTemplate *)self->_prevTemplate endUpdatesForClient:self];
    objc_storeStrong(&self->_prevTemplate, self->_template);
    objc_storeStrong(&self->_template, a3);
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
      v21 = NTKComplicationDisplayClassForTemplateAndFamily(v13, self->_family);
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

      v22 = [(NTKComplicationDisplayWrapperView *)self display];
      v23 = [v22 conformsToProtocol:&unk_28A7FCA58];

      if (v23)
      {
        v25 = [(NTKComplicationDisplayWrapperView *)self display];
        v26 = [v25 complicationTemplate];
        v32 = v20;
        v27 = a5;
        v28 = a4;
        v29 = a6;
        v30 = [(CLKComplicationTemplate *)v13 isEqual:v26];

        v31 = v30 == 0;
        a6 = v29;
        a4 = v28;
        a5 = v27;
        v20 = v32;
        if (!v31)
        {
          a5 = 0;
        }
      }

      if (!v20 || v20 != v21 || a5)
      {
        *&v24 = a7;
        [(NTKComplicationDisplayWrapperView *)self _replaceDisplayWithDisplayClass:v21 template:v13 reason:a4 animation:a5 animationType:a6 animationFraction:v24];
        goto LABEL_27;
      }

      if (![(CDComplicationDisplay *)self->_display conformsToProtocol:&unk_28A7FCA58])
      {
LABEL_27:
        [(NTKComplicationDisplayWrapperView *)self _updateVisibilityForSensitivity:[(CLKComplicationTemplate *)v13 uiSensitivity]];
        goto LABEL_28;
      }

      display = self->_display;
    }

    [(CDComplicationDisplay *)display setComplicationTemplate:v13 reason:a4];
    goto LABEL_27;
  }

LABEL_28:
}

- (void)_replaceDisplayWithDisplayClass:(Class)a3 template:(id)a4 reason:(int64_t)a5 animation:(unint64_t)a6 animationType:(unint64_t)a7 animationFraction:(float)a8
{
  v18 = a6;
  v13 = a4;
  v14 = [(NTKComplicationDisplayWrapperView *)self display];
  v15 = objc_alloc_init(a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
    [v16 setPaused:{-[NTKComplicationDisplayWrapperView paused](self, "paused")}];
  }

  [v15 setTextLayoutStyle:{-[NTKComplicationDisplayWrapperView textLayoutStyle](self, "textLayoutStyle")}];
  [(NTKComplicationDisplayWrapperView *)self _prepareToSetDisplay:v15 withComplicationAnimation:&v18];
  [v15 setComplicationTemplate:v13 reason:a5];

  *&v17 = a8;
  [(NTKComplicationDisplayWrapperView *)self _setDisplay:v15 withComplicationAnimation:v18 animationType:a7 animationFraction:v17];
  [(NTKComplicationDisplayWrapperView *)self _didSetDisplayFromDisplay:v14 withComplicationAnimation:v18];
  if (objc_opt_respondsToSelector())
  {
    [(CDComplicationDisplay *)self->_display setTimeTravelDate:self->_timeTravelDate animated:v18 != 0];
  }
}

- (void)_prepareToSetDisplay:(id)a3 withComplicationAnimation:(unint64_t *)a4
{
  v8 = a3;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v6 = [objc_opt_class() layoutOverride];
  }

  else
  {
    v6 = 0;
  }

  layoutOverride = self->_layoutOverride;
  self->_didChangeLayoutOverride = v6 != layoutOverride;
  if (v6 != layoutOverride)
  {
    self->_layoutOverride = v6;
    *a4 = 0;
  }
}

- (void)_didSetDisplayFromDisplay:(id)a3 withComplicationAnimation:(unint64_t)a4
{
  if (self->_didChangeLayoutOverride)
  {
    self->_didChangeLayoutOverride = 0;
    [(NTKComplicationDisplayWrapperView *)self _invokeNeedsResizeHandler:a3];
  }
}

- (void)setPaused:(BOOL)a3
{
  if (self->_paused != a3)
  {
    v3 = a3;
    self->_paused = a3;
    v5 = self->_template;
    if (a3)
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

      [(CDComplicationDisplay *)display setPaused:v3];
    }
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(NTKComplicationDisplayWrapperView *)self _setDisplayEditing:?];
  }
}

- (void)setMaxSize:(CGSize)a3
{
  if (a3.width != self->_maxSize.width || a3.height != self->_maxSize.height)
  {
    self->_maxSize = a3;
    [(NTKComplicationDisplayWrapperView *)self _setDisplayMaxSize:?];
  }
}

- (void)setDimmed:(BOOL)a3 animated:(BOOL)a4
{
  if (self->_dimmed != a3)
  {
    self->_dimmed = a3;
    [NTKComplicationDisplayWrapperView _setDimmed:"_setDimmed:animated:" animated:?];
  }
}

- (void)_setDimmed:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__NTKComplicationDisplayWrapperView__setDimmed_animated___block_invoke;
  v7[3] = &unk_27877F7E8;
  v7[4] = self;
  v8 = a3;
  v5 = _Block_copy(v7);
  v6 = v5;
  if (v4)
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

- (void)setTapEnabled:(BOOL)a3
{
  if (self->_tapEnabled != a3)
  {
    self->_tapEnabled = a3;
    [(NTKComplicationDisplayWrapperView *)self _tryToSetDisplayHighlighted:0];
    tapEnabled = self->_tapEnabled;

    [(NTKComplicationDisplayWrapperView *)self setUserInteractionEnabled:tapEnabled];
  }
}

- (void)setTapAnimationEnabled:(BOOL)a3
{
  if (self->_tapAnimationEnabled != a3)
  {
    self->_tapAnimationEnabled = a3;
    [(NTKComplicationDisplayWrapperView *)self _tryToSetDisplayHighlighted:0];
  }
}

- (void)setTapInternalInputEnabled:(BOOL)a3
{
  if (self->_tapInternalInputEnabled != a3)
  {
    self->_tapInternalInputEnabled = a3;
    [(NTKComplicationDisplayWrapperView *)self _tryToSetDisplayHighlighted:0];
  }
}

- (BOOL)performTap
{
  touchDownHandler = self->_touchDownHandler;
  if (touchDownHandler)
  {
    v4 = [(NTKComplicationDisplayWrapperView *)self display];
    touchDownHandler[2](touchDownHandler, v4);

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
    v6 = [(NTKComplicationDisplayWrapperView *)self display];
    touchUpInsideHandler[2](touchUpInsideHandler, v6);

    return 1;
  }

  return 0;
}

- (BOOL)_displayIsTappable
{
  v3 = [(NTKComplicationDisplayWrapperView *)self display];
  v4 = v3;
  if (self->_tapEnabled && ([v3 alpha], v5 > 0.0))
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

  v3 = [(NTKComplicationDisplayWrapperView *)self _displayIsTappable];
  if (v3)
  {
    if (self->_tapInternalInputEnabled)
    {
      touchUpInsideHandler = self->_touchUpInsideHandler;
      v5 = [(NTKComplicationDisplayWrapperView *)self display];
      touchUpInsideHandler[2](touchUpInsideHandler, v5);

      LOBYTE(v3) = 1;
      return v3;
    }

LABEL_5:
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (void)_invokeTouchDownHandler
{
  if (self->_touchDownHandler && [(NTKComplicationDisplayWrapperView *)self _displayIsTappable]&& self->_tapInternalInputEnabled)
  {
    touchDownHandler = self->_touchDownHandler;
    v4 = [(NTKComplicationDisplayWrapperView *)self display];
    touchDownHandler[2](touchDownHandler, v4);
  }
}

- (void)sensitiveUIStateChanged
{
  v3 = [(NTKComplicationDisplayWrapperView *)self complicationTemplate];
  -[NTKComplicationDisplayWrapperView _updateVisibilityForSensitivity:](self, "_updateVisibilityForSensitivity:", [v3 uiSensitivity]);
}

- (void)_invokeNeedsResizeHandler
{
  needsResizeHandler = self->_needsResizeHandler;
  if (needsResizeHandler)
  {
    needsResizeHandler[2]();
  }
}

- (void)_tryToSetDisplayHighlighted:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    display = self->_display;

    [(CDComplicationDisplay *)display setHighlighted:v3];
  }
}

- (void)_setDisplayMaxSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  if (objc_opt_respondsToSelector())
  {
    display = self->_display;

    [(CDComplicationDisplay *)display setMaxSize:width, height];
  }
}

- (void)_setDisplayEditing:(BOOL)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    display = self->_display;

    [(CDComplicationDisplay *)display setEditing:v3];
  }
}

- (void)_setDisplay:(id)a3 withComplicationAnimation:(unint64_t)a4 animationType:(unint64_t)a5 animationFraction:(float)a6
{
  v11 = a3;
  display = self->_display;
  if (display != v11)
  {
    v18 = v11;
    if (display)
    {
      if (([(CDComplicationDisplay *)v11 conformsToProtocol:&unk_28A7FCA58]& 1) == 0)
      {
        v13 = self->_template;
        self->_template = 0;
      }

      [(CDComplicationDisplay *)self->_display setDisplayObserver:0];
      [(NTKComplicationDisplayWrapperView *)self _removeDisplay:self->_display];
    }

    objc_storeStrong(&self->_display, a3);
    if (self->_display)
    {
      if (objc_opt_respondsToSelector())
      {
        v14 = self->_display;
        v15 = [(NTKComplicationDisplayWrapperView *)self filterProvider];
        [(CDComplicationDisplay *)v14 setFilterProvider:v15];
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
        *&v17 = a6;
        [(NTKComplicationDisplayWrapperView *)self setComplicationView:v18 withComplicationAnimation:a4 animationType:a5 animationFraction:v17];
      }
    }
  }

  MEMORY[0x2821F9730]();
}

- (void)setFilterProvider:(id)a3
{
  obj = a3;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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

- (void)willPerformAppLaunchForComplication:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_appLaunchDelegate);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_appLaunchDelegate);
    [v5 willLaunchAppForComplicationDisplayWrapper:self];
  }
}

- (void)_updateVisibilityForSensitivity:(int64_t)a3
{
  v5 = [MEMORY[0x277CBBB70] sharedMonitor];
  v6 = [v5 shouldHideForSensitivity:a3];

  if (objc_opt_respondsToSelector() & 1) != 0 && v6 != [(CDComplicationDisplay *)self->_display isHidden]&& (objc_opt_respondsToSelector())
  {
    display = self->_display;

    [(CDComplicationDisplay *)display setHidden:v6];
  }
}

- (void)complicationDisplay:(id)a3 renderStatsWithTime:(double)a4 cost:(double)a5
{
  renderStatsHandler = self->_renderStatsHandler;
  if (renderStatsHandler)
  {
    renderStatsHandler[2](renderStatsHandler, self, a4, a5);
  }
}

- (void)setTimeTravelDate:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (([v7 isEqual:self->_timeTravelDate] & 1) == 0)
  {
    objc_storeStrong(&self->_timeTravelDate, a3);
    if (objc_opt_respondsToSelector())
    {
      [(CDComplicationDisplay *)self->_display setTimeTravelDate:self->_timeTravelDate animated:v4];
    }
  }
}

- (void)setComplicationView:(id)a3 withComplicationAnimation:(unint64_t)a4 animationType:(unint64_t)a5 animationFraction:(float)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  p_currentComplicationView = &self->_currentComplicationView;
  currentComplicationView = self->_currentComplicationView;
  if (currentComplicationView != v9)
  {
    if (self->_isAnimating)
    {
      objc_storeStrong(&self->_deferredComplicationView, a3);
      v12 = _NTKLoggingObjectForDomain(23, "NTKLoggingDomainFace");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        complicationSlotIdentifier = self->_complicationSlotIdentifier;
        v31 = 138412290;
        v32 = complicationSlotIdentifier;
        _os_log_impl(&dword_22D9C5000, v12, OS_LOG_TYPE_DEFAULT, "NTKComplicationDisplayWrapper: deferring animation (%@)", &v31, 0xCu);
      }
    }

    else if (a4 && currentComplicationView)
    {
      objc_storeStrong(&self->_nextComplicationView, a3);
      [(CDComplicationDisplay *)*p_currentComplicationView removeFromSuperview];
      if (a4 == 1)
      {
        p_nextComplicationView = &self->_currentComplicationView;
      }

      else
      {
        p_nextComplicationView = &self->_nextComplicationView;
      }

      v15 = *p_nextComplicationView;
      if (a4 == 1)
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
      objc_storeStrong(&self->_currentComplicationView, a3);
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

- (void)setHighlighted:(BOOL)a3
{
  if (self->_tapAnimationEnabled)
  {
    v8 = v3;
    v9 = v4;
    v5 = a3;
    v7.receiver = self;
    v7.super_class = NTKComplicationDisplayWrapperView;
    [(NTKComplicationDisplayWrapperView *)&v7 setHighlighted:?];
    [(NTKComplicationDisplayWrapperView *)self _tryToSetDisplayHighlighted:v5];
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