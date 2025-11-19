@interface PBUIReplicaDebugView
+ (id)debugFont;
- (PBUIReplicaDebugView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setColor:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation PBUIReplicaDebugView

+ (id)debugFont
{
  if (debugFont_onceToken != -1)
  {
    +[PBUIReplicaDebugView debugFont];
  }

  v3 = debugFont___font;

  return v3;
}

void __33__PBUIReplicaDebugView_debugFont__block_invoke()
{
  v2 = [MEMORY[0x277D74310] _preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76920] design:*MEMORY[0x277D74360] weight:*MEMORY[0x277D74418]];
  v0 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];
  v1 = debugFont___font;
  debugFont___font = v0;
}

- (PBUIReplicaDebugView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v19.receiver = self;
  v19.super_class = PBUIReplicaDebugView;
  v7 = [(PBUIReplicaDebugView *)&v19 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    v7->_labelViewNeedsLayout = 0;
    v9 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    borderView = v8->_borderView;
    v8->_borderView = v9;

    v11 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{x, y, width, height}];
    labelView = v8->_labelView;
    v8->_labelView = v11;

    [(UIView *)v8->_borderView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v8->_labelView setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = v8->_labelView;
    v14 = [objc_opt_class() debugFont];
    [(UILabel *)v13 setFont:v14];

    [(UILabel *)v8->_labelView setNumberOfLines:1];
    v15 = [(UIView *)v8->_borderView layer];
    v16 = [MEMORY[0x277D75348] redColor];
    [v15 setBorderColor:{objc_msgSend(v16, "CGColor")}];

    v17 = [(UIView *)v8->_borderView layer];
    [v17 setBorderWidth:15.0];

    [(PBUIReplicaDebugView *)v8 addSubview:v8->_borderView];
    [(PBUIReplicaDebugView *)v8 addSubview:v8->_labelView];
  }

  return v8;
}

- (void)setTitle:(id)a3
{
  [(UILabel *)self->_labelView setText:a3];
  self->_labelViewNeedsLayout = 1;

  [(PBUIReplicaDebugView *)self setNeedsLayout];
}

- (void)setColor:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277D75348] redColor];
  }

  objc_storeStrong(&self->_color, v4);
  if (!v6)
  {
  }

  v5 = [(UIView *)self->_borderView layer];
  [v5 setBorderColor:{-[UIColor CGColor](self->_color, "CGColor")}];
}

- (void)layoutSubviews
{
  borderView = self->_borderView;
  [(PBUIReplicaDebugView *)self bounds];
  [(UIView *)borderView setFrame:?];
  if (self->_labelViewNeedsLayout)
  {
    self->_labelViewNeedsLayout = 0;
    [(UILabel *)self->_labelView sizeToFit];
  }

  [(PBUIReplicaDebugView *)self bounds];
  v5 = v4;
  v7 = v6;
  [(PBUIReplicaDebugView *)self safeAreaInsets];
  v9 = v5 + v8;
  v11 = v7 + v10;
  labelView = self->_labelView;
  [(UILabel *)labelView frame];

  [(UILabel *)labelView setFrame:v9, v11];
}

@end