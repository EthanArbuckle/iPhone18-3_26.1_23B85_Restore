@interface FMRule
- (FMRule)initWithFrame:(CGRect)a3;
- (void)awakeFromNib;
- (void)commonSetup;
- (void)prepareForInterfaceBuilder;
- (void)setColor:(id)a3;
- (void)setLeading:(BOOL)a3;
@end

@implementation FMRule

- (FMRule)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = FMRule;
  v3 = [(FMRule *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

  v5 = [(FMRule *)self imageView];
  [(FMRule *)self addSubview:v5];

  v6 = objc_opt_class();
  v7 = [(FMRule *)self color];
  v9 = [v6 imageWithColor:v7 leading:{-[FMRule leading](self, "leading")}];

  v8 = [(FMRule *)self imageView];
  [v8 setImage:v9];
}

- (void)setColor:(id)a3
{
  objc_storeStrong(&self->_color, a3);
  v4 = objc_opt_class();
  v5 = [(FMRule *)self color];
  v7 = [v4 imageWithColor:v5 leading:{-[FMRule leading](self, "leading")}];

  v6 = [(FMRule *)self imageView];
  [v6 setImage:v7];
}

- (void)setLeading:(BOOL)a3
{
  self->_leading = a3;
  v4 = objc_opt_class();
  v5 = [(FMRule *)self color];
  v7 = [v4 imageWithColor:v5 leading:{-[FMRule leading](self, "leading")}];

  v6 = [(FMRule *)self imageView];
  [v6 setImage:v7];
}

@end