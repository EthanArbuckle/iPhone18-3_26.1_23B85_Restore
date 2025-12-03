@interface FMRule
- (FMRule)initWithFrame:(CGRect)frame;
- (void)awakeFromNib;
- (void)commonSetup;
- (void)prepareForInterfaceBuilder;
- (void)setColor:(id)color;
- (void)setLeading:(BOOL)leading;
@end

@implementation FMRule

- (FMRule)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = FMRule;
  v3 = [(FMRule *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(FMRule *)v3 commonSetup];
  }

  return v4;
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = FMRule;
  [(FMRule *)&v3 awakeFromNib];
  [(FMRule *)self commonSetup];
}

- (void)prepareForInterfaceBuilder
{
  v3.receiver = self;
  v3.super_class = FMRule;
  [(FMRule *)&v3 prepareForInterfaceBuilder];
  [(FMRule *)self commonSetup];
}

- (void)commonSetup
{
  v3 = objc_alloc(MEMORY[0x277D755E8]);
  [(FMRule *)self bounds];
  v4 = [v3 initWithFrame:?];
  [(FMRule *)self setImageView:v4];

  imageView = [(FMRule *)self imageView];
  [(FMRule *)self addSubview:imageView];

  v6 = objc_opt_class();
  color = [(FMRule *)self color];
  v9 = [v6 imageWithColor:color leading:{-[FMRule leading](self, "leading")}];

  imageView2 = [(FMRule *)self imageView];
  [imageView2 setImage:v9];
}

- (void)setColor:(id)color
{
  objc_storeStrong(&self->_color, color);
  v4 = objc_opt_class();
  color = [(FMRule *)self color];
  v7 = [v4 imageWithColor:color leading:{-[FMRule leading](self, "leading")}];

  imageView = [(FMRule *)self imageView];
  [imageView setImage:v7];
}

- (void)setLeading:(BOOL)leading
{
  self->_leading = leading;
  v4 = objc_opt_class();
  color = [(FMRule *)self color];
  v7 = [v4 imageWithColor:color leading:{-[FMRule leading](self, "leading")}];

  imageView = [(FMRule *)self imageView];
  [imageView setImage:v7];
}

@end