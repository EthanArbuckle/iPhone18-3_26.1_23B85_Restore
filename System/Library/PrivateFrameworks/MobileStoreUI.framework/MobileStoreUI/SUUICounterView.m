@interface SUUICounterView
+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5;
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5;
- (unint64_t)_visibleTimeFieldsForDateFormat:(int64_t)a3;
- (void)_addNumberViewWithViewElement:(id)a3 context:(id)a4;
- (void)_addTimeViewWithViewElement:(id)a3 context:(id)a4;
- (void)_reloadNumberValue;
- (void)_reloadUpdateTimer;
- (void)_startUpdateTimer;
- (void)_stopUpdateTimer;
- (void)_updateTimerAction;
- (void)dealloc;
- (void)didMoveToSuperview;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setAlpha:(double)a3;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setHidden:(BOOL)a3;
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

+ (BOOL)prefetchResourcesForViewElement:(id)a3 reason:(int64_t)a4 context:(id)a5
{
  v7 = a5;
  v8 = [a3 backgroundImageElement];
  if (v8)
  {
    v9 = [v7 prefetchResourcesForViewElement:v8 reason:a4];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = [a3 backgroundImageElement];
  if (v6)
  {
    [v5 sizeForImageElement:v6];
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

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (self->_counterElement != v8)
  {
    [(SUUICounterView *)self _stopUpdateTimer];
    objc_storeStrong(&self->_counterElement, a3);
    numberFormatter = self->_numberFormatter;
    self->_numberFormatter = 0;
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __55__SUUICounterView_reloadWithViewElement_width_context___block_invoke;
  v15[3] = &unk_2798F7950;
  v11 = v8;
  v16 = v11;
  v17 = self;
  v12 = v9;
  v18 = v12;
  [(SUUIViewReuseView *)self modifyUsingBlock:v15];
  v13 = [(SUUICounterViewElement *)v11 counterType];
  if (!v13)
  {
    [(SUUICounterView *)self _addTimeViewWithViewElement:v11 context:v12];
    v14 = &OBJC_IVAR___SUUICounterView__numberView;
    goto LABEL_7;
  }

  if (v13 == 1)
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

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SUUICounterView *)self setNeedsLayout];
  }
}

- (BOOL)setImage:(id)a3 forArtworkRequest:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(SUUICounterViewElement *)self->_counterElement backgroundImageElement];
  if (v11 && (v12 = [v9 requestIdentifier], objc_msgSend(v10, "requestIdentifierForViewElement:", v11), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "unsignedIntegerValue"), v13, v12 == v14))
  {
    [(SUUIImageView *)self->_imageView setImage:v8];
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
      v23 = [(SUUICounterViewElement *)self->_counterElement style];
      v42 = 0;
      v24 = SUUIViewElementPaddingForStyle(v23, &v42);
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
      v34 = [v23 elementPosition];
      if (v34 <= 9)
      {
        if (((1 << v34) & 0x309) != 0)
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
          if (((1 << v34) & 0x32) != 0)
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

- (void)setAlpha:(double)a3
{
  v4.receiver = self;
  v4.super_class = SUUICounterView;
  [(SUUICounterView *)&v4 setAlpha:a3];
  [(SUUICounterView *)self _reloadUpdateTimer];
}

- (void)setHidden:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SUUICounterView;
  [(SUUICounterView *)&v4 setHidden:a3];
  [(SUUICounterView *)self _reloadUpdateTimer];
}

- (void)_addNumberViewWithViewElement:(id)a3 context:(id)a4
{
  v16 = a3;
  v6 = a4;
  if (!self->_numberView)
  {
    v7 = objc_alloc_init(MEMORY[0x277D756B8]);
    numberView = self->_numberView;
    self->_numberView = v7;

    v9 = self->_numberView;
    v10 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v9 setBackgroundColor:v10];

    [(UILabel *)self->_numberView setTextAlignment:1];
  }

  v11 = [v16 style];
  v12 = self->_numberView;
  v13 = SUUIViewElementFontWithStyle(v11);
  [(UILabel *)v12 setFont:v13];

  v14 = [v6 tintColor];
  v15 = SUUIViewElementPlainColorWithStyle(v11, v14);

  [(UILabel *)self->_numberView setTextColor:v15];
  [(UILabel *)self->_numberView setHidden:0];
  [(SUUICounterView *)self addSubview:self->_numberView];
  [(SUUICounterView *)self _reloadNumberValue];
}

- (void)_addTimeViewWithViewElement:(id)a3 context:(id)a4
{
  v20 = a3;
  v6 = a4;
  if (!self->_timeView)
  {
    v7 = [SUUICounterTimeView alloc];
    v8 = [v6 clientContext];
    v9 = [(SUUICounterTimeView *)v7 initWithClientContext:v8];
    timeView = self->_timeView;
    self->_timeView = v9;

    v11 = self->_timeView;
    v12 = [MEMORY[0x277D75348] clearColor];
    [(SUUICounterTimeView *)v11 setBackgroundColor:v12];
  }

  v13 = [v20 style];
  v14 = self->_timeView;
  v15 = [v20 endDate];
  [(SUUICounterTimeView *)v14 setEndDate:v15];

  v16 = [v6 tintColor];
  v17 = SUUIViewElementPlainColorWithStyle(v13, v16);

  [(SUUICounterTimeView *)self->_timeView setTextColor:v17];
  v18 = self->_timeView;
  v19 = SUUIViewElementFontWithStyle(v13);
  [(SUUICounterTimeView *)v18 setValueFont:v19];

  -[SUUICounterTimeView setVisibleFields:](self->_timeView, "setVisibleFields:", -[SUUICounterView _visibleTimeFieldsForDateFormat:](self, "_visibleTimeFieldsForDateFormat:", [v20 dateFormatType]));
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
    v7 = [(SUUICounterViewElement *)self->_counterElement numberFormat];
    [(NSNumberFormatter *)v6 setPositiveFormat:v7];

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

- (unint64_t)_visibleTimeFieldsForDateFormat:(int64_t)a3
{
  if (a3 > 3)
  {
    return 7;
  }

  else
  {
    return qword_259FCB180[a3];
  }
}

@end