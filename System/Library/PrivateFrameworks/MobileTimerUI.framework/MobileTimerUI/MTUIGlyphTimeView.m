@interface MTUIGlyphTimeView
- (MTUIGlyphTimeView)initWithFont:(id)a3 textColor:(id)a4 glyphName:(id)a5 style:(unint64_t)a6;
- (void)setComponentColor:(id)a3;
- (void)setupConstraints;
- (void)setupGlyphName:(id)a3 size:(double)a4 glyphColor:(id)a5;
- (void)setupTimeLabelWithFont:(id)a3 textColor:(id)a4 style:(unint64_t)a5;
@end

@implementation MTUIGlyphTimeView

- (MTUIGlyphTimeView)initWithFont:(id)a3 textColor:(id)a4 glyphName:(id)a5 style:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v17.receiver = self;
  v17.super_class = MTUIGlyphTimeView;
  v13 = [(MTUIGlyphTimeView *)&v17 init];
  v14 = v13;
  if (v13)
  {
    [(MTUIGlyphTimeView *)v13 setGlyphName:v12];
    [(MTUIGlyphTimeView *)v14 setStyle:a6];
    [(MTUIGlyphTimeView *)v14 setupTimeLabelWithFont:v10 textColor:v11 style:a6];
    [v10 capHeight];
    [(MTUIGlyphTimeView *)v14 setupGlyphName:v12 size:v11 glyphColor:v15 * 1.2];
    [(MTUIGlyphTimeView *)v14 setupConstraints];
  }

  return v14;
}

- (void)setupTimeLabelWithFont:(id)a3 textColor:(id)a4 style:(unint64_t)a5
{
  v8 = MEMORY[0x277D756B8];
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(v8);
  [(MTUIGlyphTimeView *)self setTimeLabel:v11];

  v12 = [(MTUIGlyphTimeView *)self timeLabel];
  [v12 setTextColor:v9];

  v13 = [MEMORY[0x277D75348] clearColor];
  v14 = [(MTUIGlyphTimeView *)self timeLabel];
  [v14 setBackgroundColor:v13];

  v15 = [(MTUIGlyphTimeView *)self timeLabel];
  [v15 setOpaque:0];

  v16 = [MEMORY[0x277D75348] blackColor];
  v17 = [(MTUIGlyphTimeView *)self timeLabel];
  [v17 setShadowColor:v16];

  v18 = [(MTUIGlyphTimeView *)self timeLabel];
  [v18 setFont:v10];

  v19 = [(MTUIGlyphTimeView *)self timeLabel];
  [v19 setTextAlignment:1];

  v20 = [(MTUIGlyphTimeView *)self timeLabel];
  [v20 setBaselineAdjustment:1];

  v21 = [(MTUIGlyphTimeView *)self timeLabel];
  [v21 setLineBreakMode:2];

  v22 = [(MTUIGlyphTimeView *)self timeLabel];
  [v22 setAdjustsFontSizeToFitWidth:1];

  v23 = [(MTUIGlyphTimeView *)self timeLabel];
  [(MTUIGlyphTimeView *)self addSubview:v23];

  v24 = [(MTUIGlyphTimeView *)self timeLabel];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [(MTUIGlyphTimeView *)self timeLabel];
  [v25 setAdjustsFontForContentSizeCategory:1];

  if ((a5 & 0xFFFFFFFFFFFFFFFELL) == 6)
  {
    v26 = *MEMORY[0x277D76818];
    v27 = [(MTUIGlyphTimeView *)self timeLabel];
    [v27 setMaximumContentSizeCategory:v26];
  }
}

- (void)setupGlyphName:(id)a3 size:(double)a4 glyphColor:(id)a5
{
  v9 = [MEMORY[0x277D755B8] mtui_imageWithSymbolName:a3 pointSize:a5 color:a4];
  v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
  [(MTUIGlyphTimeView *)self setGlyphImageView:v6];

  v7 = [(MTUIGlyphTimeView *)self glyphImageView];
  [(MTUIGlyphTimeView *)self addSubview:v7];

  v8 = [(MTUIGlyphTimeView *)self glyphImageView];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)setupConstraints
{
  v30 = objc_opt_new();
  v3 = [(MTUIGlyphTimeView *)self glyphImageView];
  v4 = [v3 leadingAnchor];
  v5 = [(MTUIGlyphTimeView *)self leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [v30 addObject:v6];

  v7 = [(MTUIGlyphTimeView *)self glyphImageView];
  v8 = [v7 centerYAnchor];
  v9 = [(MTUIGlyphTimeView *)self centerYAnchor];
  v10 = [v8 constraintEqualToAnchor:v9];
  [v30 addObject:v10];

  v11 = [(MTUIGlyphTimeView *)self timeLabel];
  v12 = [v11 leadingAnchor];
  v13 = [(MTUIGlyphTimeView *)self glyphImageView];
  v14 = [v13 trailingAnchor];
  v15 = [(MTUIGlyphTimeView *)self style];
  v16 = 2.0;
  if (v15 == 1)
  {
    v16 = 5.0;
  }

  v17 = [v12 constraintEqualToAnchor:v14 constant:v16];
  [v30 addObject:v17];

  v18 = [(MTUIGlyphTimeView *)self timeLabel];
  v19 = [v18 topAnchor];
  v20 = [(MTUIGlyphTimeView *)self topAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [v30 addObject:v21];

  v22 = [(MTUIGlyphTimeView *)self timeLabel];
  v23 = [v22 bottomAnchor];
  v24 = [(MTUIGlyphTimeView *)self bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  [v30 addObject:v25];

  v26 = [(MTUIGlyphTimeView *)self timeLabel];
  v27 = [v26 trailingAnchor];
  v28 = [(MTUIGlyphTimeView *)self trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  [v30 addObject:v29];

  [MEMORY[0x277CCAAD0] activateConstraints:v30];
}

- (void)setComponentColor:(id)a3
{
  v4 = a3;
  v5 = [(MTUIGlyphTimeView *)self timeLabel];
  [v5 setTextColor:v4];

  v6 = MEMORY[0x277D755B8];
  v7 = [(MTUIGlyphTimeView *)self glyphName];
  v8 = [(MTUIGlyphTimeView *)self timeLabel];
  v9 = [v8 font];
  [v9 capHeight];
  v12 = [v6 mtui_imageWithSymbolName:v7 pointSize:v4 color:v10 * 1.2];

  v11 = [(MTUIGlyphTimeView *)self glyphImageView];
  [v11 setImage:v12];
}

@end