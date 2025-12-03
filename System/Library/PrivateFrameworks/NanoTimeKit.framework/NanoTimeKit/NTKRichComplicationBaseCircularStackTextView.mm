@interface NTKRichComplicationBaseCircularStackTextView
- (NTKRichComplicationBaseCircularStackTextView)initWithFamily:(int64_t)family;
- (id)_createAndAddLabel;
- (id)_desiredFontForLabel:(id)label;
- (int64_t)_line1FilterStyle;
- (int64_t)_line2FilterStyle;
- (void)_editingDidEnd;
- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration;
- (void)layoutSubviews;
- (void)transitionToMonochromeWithFraction:(double)fraction;
- (void)updateMonochromeColor;
@end

@implementation NTKRichComplicationBaseCircularStackTextView

- (NTKRichComplicationBaseCircularStackTextView)initWithFamily:(int64_t)family
{
  v10.receiver = self;
  v10.super_class = NTKRichComplicationBaseCircularStackTextView;
  v3 = [(NTKRichComplicationCircularBaseView *)&v10 initWithFamily:family];
  v4 = v3;
  if (v3)
  {
    _createAndAddLabel = [(NTKRichComplicationBaseCircularStackTextView *)v3 _createAndAddLabel];
    line1Label = v4->_line1Label;
    v4->_line1Label = _createAndAddLabel;

    _createAndAddLabel2 = [(NTKRichComplicationBaseCircularStackTextView *)v4 _createAndAddLabel];
    line2Label = v4->_line2Label;
    v4->_line2Label = _createAndAddLabel2;
  }

  return v4;
}

- (id)_createAndAddLabel
{
  v12 = 0;
  v11 = 0u;
  v3 = [(CDRichComplicationView *)self device:0];
  _LayoutConstants_8(v3, [(CDRichComplicationView *)self family], &v10);

  v4 = [off_27877BEF8 alloc];
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  v6 = *(&v11 + 1);
  [v5 setFont:*(&v11 + 1)];
  [v5 setTextAlignment:1];
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v5 setTextColor:whiteColor];

  [v5 setUsesTextProviderTintColoring:1];
  [v5 setMaxWidth:*&v11];
  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView addSubview:v5];

  [v5 setFilterProvider:self];

  return v5;
}

- (id)_desiredFontForLabel:(id)label
{
  labelCopy = label;
  v24 = 0.0;
  v23 = 0u;
  v5 = [(CDRichComplicationView *)self device:0];
  _LayoutConstants_8(v5, [(CDRichComplicationView *)self family], &v22);

  v6 = *&v23;
  v7 = *(&v23 + 1);
  [v7 pointSize];
  v9 = v8;
  [labelCopy widthForMaxWidth:v7 withFont:v6];
  v11 = v10;
  textProvider = [labelCopy textProvider];
  shrinkTextPreference = [textProvider shrinkTextPreference];

  i = v7;
  if (shrinkTextPreference)
  {
    if (shrinkTextPreference == 1)
    {
      v15 = v24;
    }

    else
    {
      v15 = 0.0;
    }

    v16 = *MEMORY[0x277D74410];
    v17 = MEMORY[0x277CBB6C0];
    for (i = v7; v11 > v6 && v9 > v15; i = v19)
    {
      v9 = v9 + -1.0;
      v19 = [MEMORY[0x277CBBB08] systemFontOfSize:*v17 weight:v9 design:v16];

      [labelCopy widthForMaxWidth:v19 withFont:v6];
      v11 = v20;
    }
  }

  return i;
}

- (void)layoutSubviews
{
  v32.receiver = self;
  v32.super_class = NTKRichComplicationBaseCircularStackTextView;
  [(NTKRichComplicationCircularBaseView *)&v32 layoutSubviews];
  contentView = [(NTKRichComplicationCircularBaseView *)self contentView];
  [contentView bounds];
  v27 = v4;
  v28 = v5;

  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  device = [(CDRichComplicationView *)self device];
  _LayoutConstants_8(device, [(CDRichComplicationView *)self family], &v29);

  v7 = [(NTKRichComplicationBaseCircularStackTextView *)self _desiredFontForLabel:self->_line1Label];
  [(CLKUIColoringLabel *)self->_line1Label setFont:v7];
  [(CLKUIColoringLabel *)self->_line1Label sizeToFit];
  [(CLKUIColoringLabel *)self->_line1Label frame];
  [(CLKUIColoringLabel *)self->_line1Label _lastLineBaseline];
  device2 = [(CDRichComplicationView *)self device];
  CLKRectCenteredXInRectForDevice();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  [(CLKUIColoringLabel *)self->_line1Label setFrame:v10, v12, v14, v16];
  v17 = [(NTKRichComplicationBaseCircularStackTextView *)self _desiredFontForLabel:self->_line2Label];
  [(CLKUIColoringLabel *)self->_line2Label setFont:v17];
  [(CLKUIColoringLabel *)self->_line2Label sizeToFit];
  [(CLKUIColoringLabel *)self->_line2Label frame];
  [(CLKUIColoringLabel *)self->_line2Label _lastLineBaseline:v27];
  device3 = [(CDRichComplicationView *)self device];
  CLKRectCenteredXInRectForDevice();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  [(CLKUIColoringLabel *)self->_line2Label setFrame:v20, v22, v24, v26];
}

- (void)_setFontConfiguration:(CDRichComplicationFontConfiguration *)configuration
{
  v10[0] = configuration->var0;
  v5 = configuration->var1;
  var2 = configuration->var2;
  v11 = v5;
  v12 = var2;
  v9.receiver = self;
  v9.super_class = NTKRichComplicationBaseCircularStackTextView;
  [(CDRichComplicationView *)&v9 _setFontConfiguration:v10];
  v7 = configuration->var1;
  if (v7)
  {
    v8 = configuration->var2;
    [(CDRichComplicationView *)self _updateColoringLabel:self->_line1Label withFontDescriptor:v7 andSizeFactor:v8];
    [(CDRichComplicationView *)self _updateColoringLabel:self->_line2Label withFontDescriptor:v7 andSizeFactor:v8];
  }
}

- (void)_editingDidEnd
{
  [(CLKUIColoringLabel *)self->_line1Label editingDidEnd];
  line2Label = self->_line2Label;

  [(CLKUIColoringLabel *)line2Label editingDidEnd];
}

- (void)transitionToMonochromeWithFraction:(double)fraction
{
  v5.receiver = self;
  v5.super_class = NTKRichComplicationBaseCircularStackTextView;
  [(NTKRichComplicationCircularBaseView *)&v5 transitionToMonochromeWithFraction:?];
  [(CLKUIColoringLabel *)self->_line1Label transitionToMonochromeWithFraction:[(NTKRichComplicationBaseCircularStackTextView *)self _line1FilterStyle] style:fraction];
  [(CLKUIColoringLabel *)self->_line2Label transitionToMonochromeWithFraction:[(NTKRichComplicationBaseCircularStackTextView *)self _line2FilterStyle] style:fraction];
}

- (void)updateMonochromeColor
{
  v3.receiver = self;
  v3.super_class = NTKRichComplicationBaseCircularStackTextView;
  [(NTKRichComplicationCircularBaseView *)&v3 updateMonochromeColor];
  [(CLKUIColoringLabel *)self->_line1Label updateMonochromeColorWithStyle:[(NTKRichComplicationBaseCircularStackTextView *)self _line1FilterStyle]];
  [(CLKUIColoringLabel *)self->_line2Label updateMonochromeColorWithStyle:[(NTKRichComplicationBaseCircularStackTextView *)self _line2FilterStyle]];
}

- (int64_t)_line1FilterStyle
{
  device = [(CDRichComplicationView *)self device];
  v4 = NTKShowGossamerUI(device);

  if (v4)
  {
    return 2;
  }

  else
  {
    return 2 * (self->_highlightMode != 0);
  }
}

- (int64_t)_line2FilterStyle
{
  device = [(CDRichComplicationView *)self device];
  v4 = NTKShowGossamerUI(device);

  if (v4)
  {
    return 0;
  }

  else
  {
    return 2 * (self->_highlightMode == 0);
  }
}

@end