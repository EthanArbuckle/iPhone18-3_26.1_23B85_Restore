@interface NTKBigNumeralsTimeComponentLabel
+ (id)localeForTypeface:(unint64_t)a3;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NTKBigNumeralsTimeComponentLabel)initWithDevice:(id)a3 timeComponent:(unint64_t)a4 fontVariant:(unint64_t)a5 filledFontSectName:(id)a6 outlineFontSectName:(id)a7 dsoHandle:(const mach_header_64 *)a8 fontSize:(double)a9 useLigatures:(BOOL)a10;
- (id)_attributedStringForTypeface:(unint64_t)a3;
- (id)_fontForStyle:(unint64_t)a3;
- (void)_updateLabelText;
- (void)_updateLocale;
- (void)applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5;
- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)applyTransitionFraction:(double)a3 fromTypeface:(unint64_t)a4 toTypeface:(unint64_t)a5;
- (void)cleanupTransition;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
- (void)setDate:(id)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setTextAlignment:(int64_t)a3;
- (void)setTypeface:(unint64_t)a3;
- (void)setupFontsForSize:(double)a3;
@end

@implementation NTKBigNumeralsTimeComponentLabel

- (NTKBigNumeralsTimeComponentLabel)initWithDevice:(id)a3 timeComponent:(unint64_t)a4 fontVariant:(unint64_t)a5 filledFontSectName:(id)a6 outlineFontSectName:(id)a7 dsoHandle:(const mach_header_64 *)a8 fontSize:(double)a9 useLigatures:(BOOL)a10
{
  v18 = a3;
  v19 = a6;
  v20 = a7;
  v39.receiver = self;
  v39.super_class = NTKBigNumeralsTimeComponentLabel;
  v21 = [(NTKBigNumeralsTimeComponentLabel *)&v39 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_device, a3);
    v22->_useLigatures = a10;
    v22->_typeface = 0;
    v22->_style = 0;
    v23 = [MEMORY[0x277D75348] whiteColor];
    color = v22->_color;
    v22->_color = v23;

    objc_storeStrong(&v22->_filledFontSectName, a6);
    objc_storeStrong(&v22->_outlinedFontSectName, a7);
    v22->_dsoHandle = a8;
    [(NTKBigNumeralsTimeComponentLabel *)v22 setupFontsForSize:a9];
    v25 = [off_27877BEF8 labelWithOptions:0];
    transitioningLabel = v22->_transitioningLabel;
    v22->_transitioningLabel = v25;

    v27 = v22->_transitioningLabel;
    v28 = [(NTKBigNumeralsTimeComponentLabel *)v22 _fontForStyle:v22->_style];
    [(CLKUIColoringLabel *)v27 setFont:v28];

    [(CLKUIColoringLabel *)v22->_transitioningLabel setTextColor:v22->_color];
    [(CLKUIColoringLabel *)v22->_transitioningLabel setLineBreakMode:2];
    [(NTKBigNumeralsTimeComponentLabel *)v22 addSubview:v22->_transitioningLabel];
    v29 = [off_27877BEF8 labelWithOptions:0];
    label = v22->_label;
    v22->_label = v29;

    v31 = v22->_label;
    v32 = [(NTKBigNumeralsTimeComponentLabel *)v22 _fontForStyle:v22->_style];
    [(CLKUIColoringLabel *)v31 setFont:v32];

    [(CLKUIColoringLabel *)v22->_label setTextColor:v22->_color];
    [(CLKUIColoringLabel *)v22->_label setLineBreakMode:2];
    [(NTKBigNumeralsTimeComponentLabel *)v22 addSubview:v22->_label];
    v33 = objc_alloc_init(MEMORY[0x277CCA968]);
    formatter = v22->_formatter;
    v22->_formatter = v33;

    v35 = v22->_formatter;
    v36 = [NTKBigNumeralsTimeComponentLabel localeForTypeface:v22->_typeface];
    [(NSDateFormatter *)v35 setLocale:v36];

    v37 = [MEMORY[0x277CCAB98] defaultCenter];
    [v37 addObserver:v22 selector:sel__updateLocale name:*MEMORY[0x277CBE620] object:0];

    v22->_timeComponent = a4;
    v22->_fontVariant = a5;
    [(NTKBigNumeralsTimeComponentLabel *)v22 _updateLocale];
  }

  return v22;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277CBE620] object:0];

  v4.receiver = self;
  v4.super_class = NTKBigNumeralsTimeComponentLabel;
  [(NTKBigNumeralsTimeComponentLabel *)&v4 dealloc];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKBigNumeralsTimeComponentLabel;
  [(NTKBigNumeralsTimeComponentLabel *)&v5 layoutSubviews];
  label = self->_label;
  [(NTKBigNumeralsTimeComponentLabel *)self bounds];
  [(CLKUIColoringLabel *)label setFrame:?];
  transitioningLabel = self->_transitioningLabel;
  [(NTKBigNumeralsTimeComponentLabel *)self bounds];
  [(CLKUIColoringLabel *)transitioningLabel setFrame:?];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(CLKUIColoringLabel *)self->_label sizeThatFits:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setupFontsForSize:(double)a3
{
  v14 = [NTKFontLoader fontDescriptorForSectName:self->_filledFontSectName fromMachO:self->_dsoHandle];
  v5 = [NTKFontLoader fontDescriptorForSectName:self->_outlinedFontSectName fromMachO:self->_dsoHandle];
  v6 = [MEMORY[0x277CBBB08] fontWithDescriptor:v14 size:a3];
  filledFont = self->_filledFont;
  self->_filledFont = v6;

  v8 = [MEMORY[0x277CBBB08] fontWithDescriptor:v5 size:a3];
  outlinedFont = self->_outlinedFont;
  self->_outlinedFont = v8;

  transitioningLabel = self->_transitioningLabel;
  v11 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:self->_style];
  [(CLKUIColoringLabel *)transitioningLabel setFont:v11];

  label = self->_label;
  v13 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:self->_style];
  [(CLKUIColoringLabel *)label setFont:v13];
}

- (void)setTextAlignment:(int64_t)a3
{
  [(CLKUIColoringLabel *)self->_label setTextAlignment:?];
  transitioningLabel = self->_transitioningLabel;

  [(CLKUIColoringLabel *)transitioningLabel setTextAlignment:a3];
}

- (void)setTypeface:(unint64_t)a3
{
  if (self->_typeface != a3)
  {
    self->_typeface = a3;
    formatter = self->_formatter;
    v6 = [NTKBigNumeralsTimeComponentLabel localeForTypeface:?];
    [(NSDateFormatter *)formatter setLocale:v6];

    [(NTKBigNumeralsTimeComponentLabel *)self cleanupTransition];

    [(NTKBigNumeralsTimeComponentLabel *)self _updateLabelText];
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(NTKBigNumeralsTimeComponentLabel *)self cleanupTransition];
    v6 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:a3];
    [(CLKUIColoringLabel *)self->_label setFont:v6];
    [(CLKUIColoringLabel *)self->_transitioningLabel setFont:v6];
  }
}

- (void)setColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, a3);
    [(NTKBigNumeralsTimeComponentLabel *)self cleanupTransition];
    [(CLKUIColoringLabel *)self->_label setTextColor:v5];
    [(CLKUIColoringLabel *)self->_transitioningLabel setTextColor:v5];
  }
}

- (void)applyTransitionFraction:(double)a3 fromTypeface:(unint64_t)a4 toTypeface:(unint64_t)a5
{
  label = self->_label;
  v10 = [(NTKBigNumeralsTimeComponentLabel *)self _attributedStringForTypeface:?];
  [(CLKUIColoringLabel *)label setAttributedText:v10];

  transitioningLabel = self->_transitioningLabel;
  v12 = [(NTKBigNumeralsTimeComponentLabel *)self _attributedStringForTypeface:a5];
  [(CLKUIColoringLabel *)transitioningLabel setAttributedText:v12];

  v13 = 1.0;
  if (a4 == a5)
  {
    a3 = 0.0;
  }

  else
  {
    v13 = 1.0 - a3;
  }

  [(CLKUIColoringLabel *)self->_label setAlpha:v13];
  v14 = self->_transitioningLabel;

  [(CLKUIColoringLabel *)v14 setAlpha:a3];
}

- (void)applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  label = self->_label;
  v10 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:?];
  [(CLKUIColoringLabel *)label setFont:v10];

  transitioningLabel = self->_transitioningLabel;
  v12 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:a5];
  [(CLKUIColoringLabel *)transitioningLabel setFont:v12];

  v13 = 1.0;
  if (a4 == a5)
  {
    a3 = 0.0;
  }

  else
  {
    v13 = 1.0 - a3;
  }

  [(CLKUIColoringLabel *)self->_label setAlpha:v13];
  v14 = self->_transitioningLabel;

  [(CLKUIColoringLabel *)v14 setAlpha:a3];
}

- (void)applyTransitionFraction:(double)a3 fromColor:(id)a4 toColor:(id)a5
{
  v6 = NTKInterpolateBetweenColors();
  [(CLKUIColoringLabel *)self->_label setTextColor:v6];
  [(CLKUIColoringLabel *)self->_transitioningLabel setTextColor:v6];
}

- (void)cleanupTransition
{
  [(CLKUIColoringLabel *)self->_label setAlpha:1.0];
  [(CLKUIColoringLabel *)self->_transitioningLabel setAlpha:0.0];
  label = self->_label;
  v4 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:self->_style];
  [(CLKUIColoringLabel *)label setFont:v4];

  transitioningLabel = self->_transitioningLabel;
  v6 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:self->_style];
  [(CLKUIColoringLabel *)transitioningLabel setFont:v6];

  v7 = self->_label;
  v8 = [(NTKBigNumeralsTimeComponentLabel *)self _attributedStringForTypeface:self->_typeface];
  [(CLKUIColoringLabel *)v7 setAttributedText:v8];

  v9 = self->_transitioningLabel;
  v10 = [(NTKBigNumeralsTimeComponentLabel *)self _attributedStringForTypeface:self->_typeface];
  [(CLKUIColoringLabel *)v9 setAttributedText:v10];

  [(CLKUIColoringLabel *)self->_label setTextColor:self->_color];
  v11 = self->_transitioningLabel;
  color = self->_color;

  [(CLKUIColoringLabel *)v11 setTextColor:color];
}

- (void)setDate:(id)a3
{
  objc_storeStrong(&self->_date, a3);

  [(NTKBigNumeralsTimeComponentLabel *)self _updateLabelText];
}

- (void)_updateLocale
{
  v5 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = @"h";
  if (self->_fontVariant == 1 && CLKLocaleIs24HourMode())
  {
    v3 = @"HH";
  }

  timeComponent = self->_timeComponent;
  if (timeComponent)
  {
    if (timeComponent != 1)
    {
      goto LABEL_8;
    }

    v3 = @"mm";
  }

  [(NSDateFormatter *)self->_formatter setDateFormat:v3];
LABEL_8:
  [(NTKBigNumeralsTimeComponentLabel *)self _updateLabelText];
}

+ (id)localeForTypeface:(unint64_t)a3
{
  if (a3 <= 3)
  {
    a1 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{off_27877DB80[a3], v3}];
  }

  return a1;
}

- (id)_attributedStringForTypeface:(unint64_t)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  formatter = self->_formatter;
  v6 = [NTKBigNumeralsTimeComponentLabel localeForTypeface:?];
  [(NSDateFormatter *)formatter setLocale:v6];

  v7 = [(NSDateFormatter *)self->_formatter stringFromDate:self->_date];
  v8 = v7;
  if (a3 == 3)
  {
    v18 = [(__CFString *)v7 integerValue]+ 8559;
    v9 = [MEMORY[0x277CCACA8] stringWithCharacters:&v18 length:1];

    v8 = v9;
  }

  v10 = &stru_284110E98;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  useLigatures = self->_useLigatures;
  v13 = objc_alloc(MEMORY[0x277CCA898]);
  v14 = v13;
  if (useLigatures)
  {
    v19 = *MEMORY[0x277D740D8];
    v20[0] = &unk_284181930;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v16 = [v14 initWithString:v11 attributes:v15];

    v11 = v15;
  }

  else
  {
    v16 = [v13 initWithString:v11];
  }

  return v16;
}

- (void)_updateLabelText
{
  v3 = [(NTKBigNumeralsTimeComponentLabel *)self _attributedStringForTypeface:self->_typeface];
  [(CLKUIColoringLabel *)self->_label setAttributedText:v3];
  [(CLKUIColoringLabel *)self->_transitioningLabel setAttributedText:v3];
  [(NTKBigNumeralsTimeComponentLabel *)self setNeedsLayout];
}

- (id)_fontForStyle:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v4 = &OBJC_IVAR___NTKBigNumeralsTimeComponentLabel__outlinedFont;
  }

  else
  {
    v4 = &OBJC_IVAR___NTKBigNumeralsTimeComponentLabel__filledFont;
  }

  a2 = *(&self->super.super.super.isa + *v4);
LABEL_6:

  return a2;
}

@end