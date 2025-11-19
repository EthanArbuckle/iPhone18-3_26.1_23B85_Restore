@interface SUUICommentHeaderViewController
- (SUUICommentHeaderViewController)initWithTitle:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation SUUICommentHeaderViewController

- (SUUICommentHeaderViewController)initWithTitle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SUUICommentHeaderViewController;
  v6 = [(SUUICommentHeaderViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_title, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = SUUICommentHeaderViewController;
  [(SUUICommentHeaderViewController *)&v11 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277D756B8]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v4;

  [(UILabel *)self->_titleLabel setText:self->_title];
  v6 = self->_titleLabel;
  v7 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
  [(UILabel *)v6 setTextColor:v7];

  v8 = self->_titleLabel;
  v9 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  [(UILabel *)v8 setFont:v9];

  v10 = [(SUUICommentHeaderViewController *)self view];
  [v10 addSubview:self->_titleLabel];
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = SUUICommentHeaderViewController;
  [(SUUICommentHeaderViewController *)&v15 viewWillLayoutSubviews];
  v3 = [(SUUICommentHeaderViewController *)self view];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  [(UILabel *)self->_titleLabel frame];
  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  [(UILabel *)self->_titleLabel sizeThatFits:CGRectGetWidth(v16) + -10.0 + -10.0, v11];
  v13 = v12;
  *&v12 = (v11 - v14) * 0.5;
  [(UILabel *)self->_titleLabel setFrame:10.0, floorf(*&v12), v13, v14];
}

@end