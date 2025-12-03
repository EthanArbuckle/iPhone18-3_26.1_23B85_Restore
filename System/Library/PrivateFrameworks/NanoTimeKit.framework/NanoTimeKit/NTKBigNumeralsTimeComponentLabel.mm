@interface NTKBigNumeralsTimeComponentLabel
+ (id)localeForTypeface:(unint64_t)typeface;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NTKBigNumeralsTimeComponentLabel)initWithDevice:(id)device timeComponent:(unint64_t)component fontVariant:(unint64_t)variant filledFontSectName:(id)name outlineFontSectName:(id)sectName dsoHandle:(const mach_header_64 *)handle fontSize:(double)size useLigatures:(BOOL)self0;
- (id)_attributedStringForTypeface:(unint64_t)typeface;
- (id)_fontForStyle:(unint64_t)style;
- (void)_updateLabelText;
- (void)_updateLocale;
- (void)applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor;
- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)applyTransitionFraction:(double)fraction fromTypeface:(unint64_t)typeface toTypeface:(unint64_t)toTypeface;
- (void)cleanupTransition;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setColor:(id)color;
- (void)setDate:(id)date;
- (void)setStyle:(unint64_t)style;
- (void)setTextAlignment:(int64_t)alignment;
- (void)setTypeface:(unint64_t)typeface;
- (void)setupFontsForSize:(double)size;
@end

@implementation NTKBigNumeralsTimeComponentLabel

- (NTKBigNumeralsTimeComponentLabel)initWithDevice:(id)device timeComponent:(unint64_t)component fontVariant:(unint64_t)variant filledFontSectName:(id)name outlineFontSectName:(id)sectName dsoHandle:(const mach_header_64 *)handle fontSize:(double)size useLigatures:(BOOL)self0
{
  deviceCopy = device;
  nameCopy = name;
  sectNameCopy = sectName;
  v39.receiver = self;
  v39.super_class = NTKBigNumeralsTimeComponentLabel;
  v21 = [(NTKBigNumeralsTimeComponentLabel *)&v39 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_device, device);
    v22->_useLigatures = ligatures;
    v22->_typeface = 0;
    v22->_style = 0;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    color = v22->_color;
    v22->_color = whiteColor;

    objc_storeStrong(&v22->_filledFontSectName, name);
    objc_storeStrong(&v22->_outlinedFontSectName, sectName);
    v22->_dsoHandle = handle;
    [(NTKBigNumeralsTimeComponentLabel *)v22 setupFontsForSize:size];
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v22 selector:sel__updateLocale name:*MEMORY[0x277CBE620] object:0];

    v22->_timeComponent = component;
    v22->_fontVariant = variant;
    [(NTKBigNumeralsTimeComponentLabel *)v22 _updateLocale];
  }

  return v22;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277CBE620] object:0];

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

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(CLKUIColoringLabel *)self->_label sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setupFontsForSize:(double)size
{
  v14 = [NTKFontLoader fontDescriptorForSectName:self->_filledFontSectName fromMachO:self->_dsoHandle];
  v5 = [NTKFontLoader fontDescriptorForSectName:self->_outlinedFontSectName fromMachO:self->_dsoHandle];
  v6 = [MEMORY[0x277CBBB08] fontWithDescriptor:v14 size:size];
  filledFont = self->_filledFont;
  self->_filledFont = v6;

  v8 = [MEMORY[0x277CBBB08] fontWithDescriptor:v5 size:size];
  outlinedFont = self->_outlinedFont;
  self->_outlinedFont = v8;

  transitioningLabel = self->_transitioningLabel;
  v11 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:self->_style];
  [(CLKUIColoringLabel *)transitioningLabel setFont:v11];

  label = self->_label;
  v13 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:self->_style];
  [(CLKUIColoringLabel *)label setFont:v13];
}

- (void)setTextAlignment:(int64_t)alignment
{
  [(CLKUIColoringLabel *)self->_label setTextAlignment:?];
  transitioningLabel = self->_transitioningLabel;

  [(CLKUIColoringLabel *)transitioningLabel setTextAlignment:alignment];
}

- (void)setTypeface:(unint64_t)typeface
{
  if (self->_typeface != typeface)
  {
    self->_typeface = typeface;
    formatter = self->_formatter;
    v6 = [NTKBigNumeralsTimeComponentLabel localeForTypeface:?];
    [(NSDateFormatter *)formatter setLocale:v6];

    [(NTKBigNumeralsTimeComponentLabel *)self cleanupTransition];

    [(NTKBigNumeralsTimeComponentLabel *)self _updateLabelText];
  }
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
  {
    self->_style = style;
    [(NTKBigNumeralsTimeComponentLabel *)self cleanupTransition];
    v6 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:style];
    [(CLKUIColoringLabel *)self->_label setFont:v6];
    [(CLKUIColoringLabel *)self->_transitioningLabel setFont:v6];
  }
}

- (void)setColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_color isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_color, color);
    [(NTKBigNumeralsTimeComponentLabel *)self cleanupTransition];
    [(CLKUIColoringLabel *)self->_label setTextColor:colorCopy];
    [(CLKUIColoringLabel *)self->_transitioningLabel setTextColor:colorCopy];
  }
}

- (void)applyTransitionFraction:(double)fraction fromTypeface:(unint64_t)typeface toTypeface:(unint64_t)toTypeface
{
  label = self->_label;
  v10 = [(NTKBigNumeralsTimeComponentLabel *)self _attributedStringForTypeface:?];
  [(CLKUIColoringLabel *)label setAttributedText:v10];

  transitioningLabel = self->_transitioningLabel;
  v12 = [(NTKBigNumeralsTimeComponentLabel *)self _attributedStringForTypeface:toTypeface];
  [(CLKUIColoringLabel *)transitioningLabel setAttributedText:v12];

  v13 = 1.0;
  if (typeface == toTypeface)
  {
    fraction = 0.0;
  }

  else
  {
    v13 = 1.0 - fraction;
  }

  [(CLKUIColoringLabel *)self->_label setAlpha:v13];
  v14 = self->_transitioningLabel;

  [(CLKUIColoringLabel *)v14 setAlpha:fraction];
}

- (void)applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  label = self->_label;
  v10 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:?];
  [(CLKUIColoringLabel *)label setFont:v10];

  transitioningLabel = self->_transitioningLabel;
  v12 = [(NTKBigNumeralsTimeComponentLabel *)self _fontForStyle:toStyle];
  [(CLKUIColoringLabel *)transitioningLabel setFont:v12];

  v13 = 1.0;
  if (style == toStyle)
  {
    fraction = 0.0;
  }

  else
  {
    v13 = 1.0 - fraction;
  }

  [(CLKUIColoringLabel *)self->_label setAlpha:v13];
  v14 = self->_transitioningLabel;

  [(CLKUIColoringLabel *)v14 setAlpha:fraction];
}

- (void)applyTransitionFraction:(double)fraction fromColor:(id)color toColor:(id)toColor
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

- (void)setDate:(id)date
{
  objc_storeStrong(&self->_date, date);

  [(NTKBigNumeralsTimeComponentLabel *)self _updateLabelText];
}

- (void)_updateLocale
{
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
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

+ (id)localeForTypeface:(unint64_t)typeface
{
  if (typeface <= 3)
  {
    self = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:{off_27877DB80[typeface], v3}];
  }

  return self;
}

- (id)_attributedStringForTypeface:(unint64_t)typeface
{
  v20[1] = *MEMORY[0x277D85DE8];
  formatter = self->_formatter;
  v6 = [NTKBigNumeralsTimeComponentLabel localeForTypeface:?];
  [(NSDateFormatter *)formatter setLocale:v6];

  v7 = [(NSDateFormatter *)self->_formatter stringFromDate:self->_date];
  v8 = v7;
  if (typeface == 3)
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

- (id)_fontForStyle:(unint64_t)style
{
  if (style)
  {
    if (style != 1)
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