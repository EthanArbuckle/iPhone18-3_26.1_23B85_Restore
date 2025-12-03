@interface MTUIGlyphTimeView
- (MTUIGlyphTimeView)initWithFont:(id)font textColor:(id)color glyphName:(id)name style:(unint64_t)style;
- (void)setComponentColor:(id)color;
- (void)setupConstraints;
- (void)setupGlyphName:(id)name size:(double)size glyphColor:(id)color;
- (void)setupTimeLabelWithFont:(id)font textColor:(id)color style:(unint64_t)style;
@end

@implementation MTUIGlyphTimeView

- (MTUIGlyphTimeView)initWithFont:(id)font textColor:(id)color glyphName:(id)name style:(unint64_t)style
{
  fontCopy = font;
  colorCopy = color;
  nameCopy = name;
  v17.receiver = self;
  v17.super_class = MTUIGlyphTimeView;
  v13 = [(MTUIGlyphTimeView *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(MTUIGlyphTimeView *)v13 setGlyphName:nameCopy];
    [(MTUIGlyphTimeView *)v14 setStyle:style];
    [(MTUIGlyphTimeView *)v14 setupTimeLabelWithFont:fontCopy textColor:colorCopy style:style];
    [fontCopy capHeight];
    [(MTUIGlyphTimeView *)v14 setupGlyphName:nameCopy size:colorCopy glyphColor:v15 * 1.2];
    [(MTUIGlyphTimeView *)v14 setupConstraints];
  }

  return v14;
}

- (void)setupTimeLabelWithFont:(id)font textColor:(id)color style:(unint64_t)style
{
  v8 = MEMORY[0x277D756B8];
  colorCopy = color;
  fontCopy = font;
  v11 = objc_alloc_init(v8);
  [(MTUIGlyphTimeView *)self setTimeLabel:v11];

  timeLabel = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel setTextColor:colorCopy];

  clearColor = [MEMORY[0x277D75348] clearColor];
  timeLabel2 = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel2 setBackgroundColor:clearColor];

  timeLabel3 = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel3 setOpaque:0];

  blackColor = [MEMORY[0x277D75348] blackColor];
  timeLabel4 = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel4 setShadowColor:blackColor];

  timeLabel5 = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel5 setFont:fontCopy];

  timeLabel6 = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel6 setTextAlignment:1];

  timeLabel7 = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel7 setBaselineAdjustment:1];

  timeLabel8 = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel8 setLineBreakMode:2];

  timeLabel9 = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel9 setAdjustsFontSizeToFitWidth:1];

  timeLabel10 = [(MTUIGlyphTimeView *)self timeLabel];
  [(MTUIGlyphTimeView *)self addSubview:timeLabel10];

  timeLabel11 = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel11 setTranslatesAutoresizingMaskIntoConstraints:0];

  timeLabel12 = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel12 setAdjustsFontForContentSizeCategory:1];

  if ((style & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v26 = *MEMORY[0x277D76818];
    timeLabel13 = [(MTUIGlyphTimeView *)self timeLabel];
    [timeLabel13 setMaximumContentSizeCategory:v26];
  }
}

- (void)setupGlyphName:(id)name size:(double)size glyphColor:(id)color
{
  v9 = [MEMORY[0x277D755B8] mtui_imageWithSymbolName:name pointSize:color color:size];
  v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
  [(MTUIGlyphTimeView *)self setGlyphImageView:v6];

  glyphImageView = [(MTUIGlyphTimeView *)self glyphImageView];
  [(MTUIGlyphTimeView *)self addSubview:glyphImageView];

  glyphImageView2 = [(MTUIGlyphTimeView *)self glyphImageView];
  [glyphImageView2 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)setupConstraints
{
  v30 = objc_opt_new();
  glyphImageView = [(MTUIGlyphTimeView *)self glyphImageView];
  leadingAnchor = [glyphImageView leadingAnchor];
  leadingAnchor2 = [(MTUIGlyphTimeView *)self leadingAnchor];
  v6 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v30 addObject:v6];

  glyphImageView2 = [(MTUIGlyphTimeView *)self glyphImageView];
  centerYAnchor = [glyphImageView2 centerYAnchor];
  centerYAnchor2 = [(MTUIGlyphTimeView *)self centerYAnchor];
  v10 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [v30 addObject:v10];

  timeLabel = [(MTUIGlyphTimeView *)self timeLabel];
  leadingAnchor3 = [timeLabel leadingAnchor];
  glyphImageView3 = [(MTUIGlyphTimeView *)self glyphImageView];
  trailingAnchor = [glyphImageView3 trailingAnchor];
  style = [(MTUIGlyphTimeView *)self style];
  v16 = 2.0;
  if (style == 1)
  {
    v16 = 5.0;
  }

  v17 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:v16];
  [v30 addObject:v17];

  timeLabel2 = [(MTUIGlyphTimeView *)self timeLabel];
  topAnchor = [timeLabel2 topAnchor];
  topAnchor2 = [(MTUIGlyphTimeView *)self topAnchor];
  v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v30 addObject:v21];

  timeLabel3 = [(MTUIGlyphTimeView *)self timeLabel];
  bottomAnchor = [timeLabel3 bottomAnchor];
  bottomAnchor2 = [(MTUIGlyphTimeView *)self bottomAnchor];
  v25 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v30 addObject:v25];

  timeLabel4 = [(MTUIGlyphTimeView *)self timeLabel];
  trailingAnchor2 = [timeLabel4 trailingAnchor];
  trailingAnchor3 = [(MTUIGlyphTimeView *)self trailingAnchor];
  v29 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  [v30 addObject:v29];

  [MEMORY[0x277CCAAD0] activateConstraints:v30];
}

- (void)setComponentColor:(id)color
{
  colorCopy = color;
  timeLabel = [(MTUIGlyphTimeView *)self timeLabel];
  [timeLabel setTextColor:colorCopy];

  v6 = MEMORY[0x277D755B8];
  glyphName = [(MTUIGlyphTimeView *)self glyphName];
  timeLabel2 = [(MTUIGlyphTimeView *)self timeLabel];
  font = [timeLabel2 font];
  [font capHeight];
  v12 = [v6 mtui_imageWithSymbolName:glyphName pointSize:colorCopy color:v10 * 1.2];

  glyphImageView = [(MTUIGlyphTimeView *)self glyphImageView];
  [glyphImageView setImage:v12];
}

@end