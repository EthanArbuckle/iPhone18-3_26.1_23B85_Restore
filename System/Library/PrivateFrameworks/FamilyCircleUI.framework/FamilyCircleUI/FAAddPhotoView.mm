@interface FAAddPhotoView
- (FAAddPhotoView)initWithTarget:(id)a3 action:(SEL)a4;
- (void)drawRect:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation FAAddPhotoView

- (FAAddPhotoView)initWithTarget:(id)a3 action:(SEL)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = FAAddPhotoView;
  v7 = [(FAAddPhotoView *)&v19 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v7)
  {
    v8 = [MEMORY[0x277D75220] buttonWithType:1];
    addPhotoButton = v7->_addPhotoButton;
    v7->_addPhotoButton = v8;

    v10 = v7->_addPhotoButton;
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = [v11 localizedStringForKey:@"FAMILY_SETUP_ADD_PROFILE_PICTURE_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];
    [(UIButton *)v10 setTitle:v12 forState:0];

    v13 = v7->_addPhotoButton;
    v14 = [MEMORY[0x277D75348] systemBlueColor];
    [(UIButton *)v13 setTintColor:v14];

    v15 = [(UIButton *)v7->_addPhotoButton titleLabel];
    [v15 setNumberOfLines:0];

    v16 = [(UIButton *)v7->_addPhotoButton titleLabel];
    [v16 setTextAlignment:1];

    [(UIButton *)v7->_addPhotoButton addTarget:v6 action:a4 forControlEvents:64];
    [(FAAddPhotoView *)v7 addSubview:v7->_addPhotoButton];
    v17 = [MEMORY[0x277D75348] clearColor];
    [(FAAddPhotoView *)v7 setBackgroundColor:v17];
  }

  return v7;
}

- (void)drawRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v8.receiver = self;
  v8.super_class = FAAddPhotoView;
  [(FAAddPhotoView *)&v8 drawRect:a3.origin.x, a3.origin.y];
  CurrentContext = UIGraphicsGetCurrentContext();
  v6 = [MEMORY[0x277D75348] clearColor];
  CGContextSetFillColorWithColor(CurrentContext, [v6 CGColor]);

  v7 = [MEMORY[0x277D75348] systemBlueColor];
  CGContextSetStrokeColorWithColor(CurrentContext, [v7 CGColor]);

  v9.origin.x = 1.0;
  v9.origin.y = 1.0;
  v9.size.width = width + -2.0;
  v9.size.height = height + -2.0;
  CGContextStrokeEllipseInRect(CurrentContext, v9);
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = FAAddPhotoView;
  [(FAAddPhotoView *)&v10 layoutSubviews];
  [(UIButton *)self->_addPhotoButton sizeToFit];
  [(UIButton *)self->_addPhotoButton frame];
  v4 = v3;
  v6 = v5;
  [(FAAddPhotoView *)self frame];
  v8 = (v7 - v6) * 0.5;
  [(FAAddPhotoView *)self frame];
  [(UIButton *)self->_addPhotoButton setFrame:(v9 - v4) * 0.5, v8, v4, v6];
}

@end