@interface MTUIAlarmView
- (BOOL)isSwitchVisible;
- (MTUIAlarmView)initWithFrame:(CGRect)frame;
- (void)_loadFontsWithTextStyles;
- (void)setLayoutMargins:(UIEdgeInsets)margins;
- (void)setName:(id)name andRepeatText:(id)text textColor:(id)color;
- (void)setNameFont:(id)font;
- (void)setRepeatFont:(id)font;
- (void)setShouldAddLayoutConstraints:(BOOL)constraints;
- (void)setStyle:(int64_t)style;
- (void)setSwitchVisible:(BOOL)visible;
- (void)tearDownContentSizeChangeObserver;
@end

@implementation MTUIAlarmView

- (MTUIAlarmView)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = MTUIAlarmView;
  v3 = [(NUIContainerGridView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MTUIAlarmView *)v3 setEdgesPreservingSuperviewLayoutMargins:10];
    v5 = objc_alloc_init(MTUIDigitalClockLabel);
    timeLabel = v4->_timeLabel;
    v4->_timeLabel = v5;

    dateLabel = [(MTUIDateLabel *)v4->_timeLabel dateLabel];
    [dateLabel setAdjustsFontSizeToFitWidth:1];

    mtui_thinTimeFont = [MEMORY[0x277D74300] mtui_thinTimeFont];
    [(MTUIDateLabel *)v4->_timeLabel setFont:mtui_thinTimeFont];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(MTUIDigitalClockLabel *)v4->_timeLabel setBackgroundColor:clearColor];

    v10 = [MEMORY[0x277D74300] _lightSystemFontOfSize:30.0];
    [(MTUIDateLabel *)v4->_timeLabel setTimeDesignatorFont:v10];

    LODWORD(v10) = [(UIView *)v4 mtui_isRTL];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    detailLabel = v4->_detailLabel;
    v4->_detailLabel = v11;

    if (v10)
    {
      v13 = 8;
    }

    else
    {
      v13 = 7;
    }

    [(UILabel *)v4->_detailLabel setContentMode:v13];
    v14 = objc_alloc_init(MEMORY[0x277D75AE8]);
    enabledSwitch = v4->_enabledSwitch;
    v4->_enabledSwitch = v14;

    mtui_switchTintColor = [MEMORY[0x277D75348] mtui_switchTintColor];
    [(UISwitch *)v4->_enabledSwitch setTintColor:mtui_switchTintColor];

    LODWORD(v17) = 1148846080;
    [(UISwitch *)v4->_enabledSwitch setLayoutSize:*MEMORY[0x277CEC620] withContentPriority:*(MEMORY[0x277CEC620] + 8), v17];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __31__MTUIAlarmView_initWithFrame___block_invoke;
    v22[3] = &unk_279917A80;
    v18 = v4;
    v23 = v18;
    [(MTUIAlarmView *)v18 performBatchUpdates:v22];
    v19 = [(MTUIAlarmView *)v18 na_addNotificationBlockObserverForName:*MEMORY[0x277D76810] object:0 queue:0 usingBlock:&__block_literal_global_2];
    contentSizeFontAdjustObserver = v18->_contentSizeFontAdjustObserver;
    v18->_contentSizeFontAdjustObserver = v19;
  }

  return v4;
}

uint64_t __31__MTUIAlarmView_initWithFrame___block_invoke(uint64_t a1)
{
  v10[2] = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setLayoutMarginsRelativeArrangement:1];
  [*(a1 + 32) setBaselineRelativeArrangement:1];
  [*(a1 + 32) setLayoutMargins:{60.0, 0.0, 17.0, 0.0}];
  [*(a1 + 32) setBaselineRelativeLayoutMarginsForArrangement:1];
  [*(a1 + 32) setRowSpacing:19.0];
  [*(a1 + 32) setColumnSpacing:8.0];
  v2 = *(a1 + 32);
  v10[0] = v2[97];
  v10[1] = v2[103];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v4 = [v2 addRowWithArrangedSubviews:v3];

  v5 = *(a1 + 32);
  v9[0] = v5[100];
  v9[1] = v5[103];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v7 = [v5 addRowWithArrangedSubviews:v6];

  [*(a1 + 32) setAlignment:3 forView:*(*(a1 + 32) + 824) inAxis:1];
  return [*(a1 + 32) _loadFontsWithTextStyles];
}

- (void)setShouldAddLayoutConstraints:(BOOL)constraints
{
  v6 = MTLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(MTUIAlarmView *)a2 setShouldAddLayoutConstraints:v6];
  }

  self->_shouldAddLayoutConstraints = constraints;
}

- (void)setSwitchVisible:(BOOL)visible
{
  visibleCopy = visible;
  v4 = [(NUIContainerGridView *)self columnAtIndex:1];
  [v4 setHidden:!visibleCopy];
}

- (BOOL)isSwitchVisible
{
  v2 = [(NUIContainerGridView *)self columnAtIndex:1];
  isHidden = [v2 isHidden];

  return isHidden ^ 1;
}

- (void)setNameFont:(id)font
{
  objc_storeStrong(&self->_nameFont, font);

  [(MTUIAlarmView *)self tearDownContentSizeChangeObserver];
}

- (void)setRepeatFont:(id)font
{
  objc_storeStrong(&self->_repeatFont, font);

  [(MTUIAlarmView *)self tearDownContentSizeChangeObserver];
}

- (void)tearDownContentSizeChangeObserver
{
  if (self->_contentSizeFontAdjustObserver)
  {
    [(MTUIAlarmView *)self na_removeNotificationBlockObserver:?];
    contentSizeFontAdjustObserver = self->_contentSizeFontAdjustObserver;
    self->_contentSizeFontAdjustObserver = 0;
  }
}

- (void)setStyle:(int64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(MTUIAlarmView *)self setNeedsUpdateConstraints];
  }
}

- (void)setName:(id)name andRepeatText:(id)text textColor:(id)color
{
  v32[2] = *MEMORY[0x277D85DE8];
  colorCopy = color;
  textCopy = text;
  nameCopy = name;
  [(MTUIAlarmView *)self setName:nameCopy];
  [(MTUIAlarmView *)self setRepeatText:textCopy];
  if (nameCopy)
  {
    v11 = nameCopy;
  }

  else
  {
    v11 = &stru_286BC5E38;
  }

  v12 = v11;

  if (textCopy)
  {
    v13 = textCopy;
  }

  else
  {
    v13 = &stru_286BC5E38;
  }

  v14 = v13;

  nameFont = self->_nameFont;
  v17 = *MEMORY[0x277D740C0];
  v31[0] = *MEMORY[0x277D740A8];
  v15 = v31[0];
  v31[1] = v17;
  v32[0] = nameFont;
  v32[1] = colorCopy;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  repeatFont = self->_repeatFont;
  v29[0] = v15;
  v29[1] = v17;
  v30[0] = repeatFont;
  v30[1] = colorCopy;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v21 = v12;
  if ([(__CFString *)v21 length])
  {
    v22 = v21;
    if (![(__CFString *)v14 length])
    {
      goto LABEL_12;
    }

    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v24 = [v23 localizedStringForKey:@"ALARM_DETAIL_FORMAT" value:&stru_286BC5E38 table:@"MobileTimerUI"];

    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v24, v21, v14];
  }

  else
  {
    v22 = v14;
    v24 = v21;
  }

LABEL_12:
  v25 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v22 attributes:v18];
  if ([(__CFString *)v14 length])
  {
    if ([(UIView *)self mtui_isRTL])
    {
      v26 = 2;
    }

    else
    {
      v26 = 6;
    }

    v27 = [(__CFString *)v22 rangeOfString:v14 options:v26];
    if (v28)
    {
      [v25 setAttributes:v20 range:{v27, v28}];
    }
  }

  [(UILabel *)self->_detailLabel setAttributedText:v25];
  [(MTUIAlarmView *)self setNeedsLayout];
}

- (void)_loadFontsWithTextStyles
{
  v3 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74418]];
  objc_storeStrong(&self->_repeatFont, v3);
  nameFont = self->_nameFont;
  self->_nameFont = v3;
}

- (void)setLayoutMargins:(UIEdgeInsets)margins
{
  v4.receiver = self;
  v4.super_class = MTUIAlarmView;
  [(MTUIAlarmView *)&v4 setLayoutMargins:margins.top, margins.left, margins.bottom, margins.right];
  [(MTUIAlarmView *)self setBaselineRelativeLayoutMarginsForArrangement:0];
}

- (void)setShouldAddLayoutConstraints:(const char *)a1 .cold.1(const char *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromSelector(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_25A0D1000, a2, OS_LOG_TYPE_DEBUG, "%@ is a no-op and should not be used.", &v4, 0xCu);
}

@end