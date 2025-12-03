@interface SUUICounterView
+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (unint64_t)_visibleTimeFieldsForDateFormat:(int64_t)format;
- (void)_addNumberViewWithViewElement:(id)element context:(id)context;
- (void)_addTimeViewWithViewElement:(id)element context:(id)context;
- (void)_reloadNumberValue;
- (void)_reloadUpdateTimer;
- (void)_startUpdateTimer;
- (void)_stopUpdateTimer;
- (void)_updateTimerAction;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setAlpha:(double)alpha;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setHidden:(BOOL)hidden;
@end

@implementation SUUICounterView

- (void)dealloc
{
  updateTimer = self->_updateTimer;
  if (updateTimer)
  {
    dispatch_source_cancel(updateTimer);
  }

  v4.receiver = self;
  v4.super_class = SUUICounterView;
  [(SUUIViewReuseView *)&v4 dealloc];
}

+ (BOOL)prefetchResourcesForViewElement:(id)element reason:(int64_t)reason context:(id)context
{
  contextCopy = context;
  backgroundImageElement = [element backgroundImageElement];
  if (backgroundImageElement)
  {
    v9 = [contextCopy prefetchResourcesForViewElement:backgroundImageElement reason:reason];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  contextCopy = context;
  backgroundImageElement = [element backgroundImageElement];
  if (backgroundImageElement)
  {
    [contextCopy sizeForImageElement:backgroundImageElement];
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = *MEMORY[0x277CBF3A8];
    v10 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (self->_counterElement != elementCopy)
  {
    [(SUUICounterView *)self _stopUpdateTimer];
    objc_storeStrong(&self->_counterElement, element);
    numberFormatter = self->_numberFormatter;
    self->_numberFormatter = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__SUUICounterView_reloadWithViewElement_width_context___block_invoke;
  v15[3] = &unk_2798F7950;
  v11 = elementCopy;
  v16 = v11;
  selfCopy = self;
  v12 = contextCopy;
  v18 = v12;
  [(SUUIViewReuseView *)self modifyUsingBlock:v15];
  counterType = [(SUUICounterViewElement *)v11 counterType];
  if (!counterType)
  {
    [(SUUICounterView *)self _addTimeViewWithViewElement:v11 context:v12];
    v14 = &OBJC_IVAR___SUUICounterView__numberView;
    goto LABEL_7;
  }

  if (counterType == 1)
  {
    [(SUUICounterView *)self _addNumberViewWithViewElement:v11 context:v12];
    v14 = &OBJC_IVAR___SUUICounterView__timeView;
LABEL_7:
    [*(&self->super.super.super.super.isa + *v14) setHidden:1];
  }

  [(SUUICounterView *)self _reloadUpdateTimer];
}

void __55__SUUICounterView_reloadWithViewElement_width_context___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) backgroundImageElement];
  if (v3)
  {
    v4 = [v5 addImageViewWithElement:v3 context:*(a1 + 48)];
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong((*(a1 + 40) + 464), v4);
  if (v3)
  {
  }
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUICounterView *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  imageCopy = image;
  requestCopy = request;
  contextCopy = context;
  backgroundImageElement = [(SUUICounterViewElement *)self->_counterElement backgroundImageElement];
  if (backgroundImageElement && (v12 = [requestCopy requestIdentifier], objc_msgSend(contextCopy, "requestIdentifierForViewElement:", backgroundImageElement), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "unsignedIntegerValue"), v13, v12 == v14))
  {
    [(SUUIImageView *)self->_imageView setImage:imageCopy];
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = SUUICounterView;
  [(SUUICounterView *)&v3 didMoveToWindow];
  [(SUUICounterView *)self _reloadUpdateTimer];
}

- (void)didMoveToSuperview
{
  v3.receiver = self;
  v3.super_class = SUUICounterView;
  [(SUUICounterView *)&v3 didMoveToSuperview];
  [(SUUICounterView *)self _reloadUpdateTimer];
}

- (void)layoutSubviews
{
  [(SUUICounterView *)self bounds];
  v6 = v5;
  v8 = v7;
  v9 = v3;
  v10 = v4;
  imageView = self->_imageView;
  if (imageView)
  {
    v12 = v3 - self->_contentInset.left - self->_contentInset.right;
    v13 = v4 - self->_contentInset.bottom - self->_contentInset.top;
    [(SUUIImageView *)imageView frame];
    [(SUUIImageView *)self->_imageView sizeThatFits:v9, v10];
    SUUIImageRectForBounds(0, v14, v15, v6, v8, v9, v10);
    v9 = v16;
    v10 = v17;
    v18 = self->_contentInset.left + (v12 - v16) * 0.5;
    v6 = floorf(v18);
    v19 = self->_contentInset.top + (v13 - v17) * 0.5;
    v8 = floorf(v19);
    [(SUUIImageView *)self->_imageView setFrame:v6, v8, v16, v17];
  }

  v20 = self->_timeView;
  v21 = v20;
  if (v20 && ![(SUUICounterTimeView *)v20 isHidden]|| (v22 = self->_numberView, v21, (v21 = v22) != 0))
  {
    if (([v21 isHidden] & 1) == 0)
    {
      style = [(SUUICounterViewElement *)self->_counterElement style];
      v42 = 0;
      v24 = SUUIViewElementPaddingForStyle(style, &v42);
      v40 = v25;
      v41 = v24;
      v26 = v42;
      [v21 frame];
      v28 = v27;
      [v21 sizeThatFits:{v9, v10}];
      v30 = v29;
      v32 = v31;
      *&v29 = v6 + (v9 - v29) * 0.5;
      v33 = floorf(*&v29);
      elementPosition = [style elementPosition];
      if (elementPosition <= 9)
      {
        if (((1 << elementPosition) & 0x309) != 0)
        {
          if (v26)
          {
            v39 = v40;
          }

          else
          {
            v39 = 4.0;
          }

          v43.origin.x = v6;
          v43.origin.y = v8;
          v43.size.width = v9;
          v43.size.height = v10;
          v28 = CGRectGetMaxY(v43) - v32 - v39;
        }

        else
        {
          v35 = v8 + (v10 - v32) * 0.5;
          v36 = floorf(v35);
          v37 = 4.0;
          if (v26)
          {
            v37 = v41;
          }

          v38 = v8 + v37;
          if (((1 << elementPosition) & 0x32) != 0)
          {
            v28 = v36;
          }

          else
          {
            v28 = v38;
          }
        }
      }

      [v21 setFrame:{v33, v28, v30, v32}];
    }
  }

  [(SUUICounterView *)self _reloadUpdateTimer];
}

- (void)setAlpha:(double)alpha
{
  v4.receiver = self;
  v4.super_class = SUUICounterView;
  [(SUUICounterView *)&v4 setAlpha:alpha];
  [(SUUICounterView *)self _reloadUpdateTimer];
}

- (void)setHidden:(BOOL)hidden
{
  v4.receiver = self;
  v4.super_class = SUUICounterView;
  [(SUUICounterView *)&v4 setHidden:hidden];
  [(SUUICounterView *)self _reloadUpdateTimer];
}

- (void)_addNumberViewWithViewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (!self->_numberView)
  {
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberView = self->_numberView;
    self->_numberView = v7;

    v9 = self->_numberView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v9 setBackgroundColor:clearColor];

    [(UILabel *)self->_numberView setTextAlignment:1];
  }

  style = [elementCopy style];
  v12 = self->_numberView;
  v13 = SUUIViewElementFontWithStyle(style);
  [(UILabel *)v12 setFont:v13];

  tintColor = [contextCopy tintColor];
  v15 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  [(UILabel *)self->_numberView setTextColor:v15];
  [(UILabel *)self->_numberView setHidden:0];
  [(SUUICounterView *)self addSubview:self->_numberView];
  [(SUUICounterView *)self _reloadNumberValue];
}

- (void)_addTimeViewWithViewElement:(id)element context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  if (!self->_timeView)
  {
    v7 = [SUUICounterTimeView alloc];
    clientContext = [contextCopy clientContext];
    v9 = [(SUUICounterTimeView *)v7 initWithClientContext:clientContext];
    timeView = self->_timeView;
    self->_timeView = v9;

    v11 = self->_timeView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(SUUICounterTimeView *)v11 setBackgroundColor:clearColor];
  }

  style = [elementCopy style];
  v14 = self->_timeView;
  endDate = [elementCopy endDate];
  [(SUUICounterTimeView *)v14 setEndDate:endDate];

  tintColor = [contextCopy tintColor];
  v17 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  [(SUUICounterTimeView *)self->_timeView setTextColor:v17];
  v18 = self->_timeView;
  v19 = SUUIViewElementFontWithStyle(style);
  [(SUUICounterTimeView *)v18 setValueFont:v19];

  -[SUUICounterTimeView setVisibleFields:](self->_timeView, "setVisibleFields:", -[SUUICounterView _visibleTimeFieldsForDateFormat:](self, "_visibleTimeFieldsForDateFormat:", [elementCopy dateFormatType]));
  [(SUUICounterTimeView *)self->_timeView setHidden:0];
  [(SUUICounterView *)self addSubview:self->_timeView];
}

- (void)_reloadNumberValue
{
  numberFormatter = self->_numberFormatter;
  if (!numberFormatter)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v5 = self->_numberFormatter;
    self->_numberFormatter = v4;

    [(NSNumberFormatter *)self->_numberFormatter setNumberStyle:1];
    v6 = self->_numberFormatter;
    numberFormat = [(SUUICounterViewElement *)self->_counterElement numberFormat];
    [(NSNumberFormatter *)v6 setPositiveFormat:numberFormat];

    numberFormatter = self->_numberFormatter;
  }

  numberView = self->_numberView;
  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SUUICounterViewElement currentNumberValue](self->_counterElement, "currentNumberValue")}];
  v9 = [(NSNumberFormatter *)numberFormatter stringFromNumber:v10];
  [(UILabel *)numberView setText:v9];
}

- (void)_reloadUpdateTimer
{
  if (([(SUUICounterView *)self isHidden]& 1) != 0 || ([(SUUICounterView *)self alpha], v3 < 0.00000011920929) || ([(SUUICounterView *)self window], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {

    [(SUUICounterView *)self _stopUpdateTimer];
  }

  else
  {

    [(SUUICounterView *)self _startUpdateTimer];
  }
}

- (void)_startUpdateTimer
{
  if (!self->_updateTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
    updateTimer = self->_updateTimer;
    self->_updateTimer = v3;

    if ([(SUUICounterViewElement *)self->_counterElement counterType]== 1)
    {
      [(SUUICounterViewElement *)self->_counterElement changeRatePerSecond];
      v6 = (fmax(1.0 / v5, 0.333333333) * 1000000000.0);
    }

    else
    {
      v6 = 1000000000;
    }

    v7 = self->_updateTimer;
    v8 = dispatch_time(0, v6);
    dispatch_source_set_timer(v7, v8, v6, 0);
    objc_initWeak(&location, self);
    v9 = self->_updateTimer;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __36__SUUICounterView__startUpdateTimer__block_invoke;
    v10[3] = &unk_2798F67A0;
    objc_copyWeak(&v11, &location);
    dispatch_source_set_event_handler(v9, v10);
    dispatch_resume(self->_updateTimer);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&location);
  }
}

void __36__SUUICounterView__startUpdateTimer__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateTimerAction];
}

- (void)_stopUpdateTimer
{
  updateTimer = self->_updateTimer;
  if (updateTimer)
  {
    dispatch_source_cancel(updateTimer);
    v4 = self->_updateTimer;
    self->_updateTimer = 0;
  }
}

- (void)_updateTimerAction
{
  timeView = self->_timeView;
  if (timeView && ([(SUUICounterTimeView *)timeView isHidden]& 1) == 0)
  {
    [(SUUICounterTimeView *)self->_timeView reloadTimeValue];
  }

  numberView = self->_numberView;
  if (numberView && ([(UILabel *)numberView isHidden]& 1) == 0)
  {

    [(SUUICounterView *)self _reloadNumberValue];
  }
}

- (unint64_t)_visibleTimeFieldsForDateFormat:(int64_t)format
{
  if (format > 3)
  {
    return 7;
  }

  else
  {
    return qword_259FCB180[format];
  }
}

@end