@interface CNFRegLoadingView
- (CNFRegLoadingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setMessage:(id)a3;
@end

@implementation CNFRegLoadingView

- (CNFRegLoadingView)initWithFrame:(CGRect)a3
{
  v18.receiver = self;
  v18.super_class = CNFRegLoadingView;
  v3 = [(CNFRegLoadingView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] blackColor];
    v5 = [v4 colorWithAlphaComponent:0.600000024];
    [(CNFRegLoadingView *)v3 setBackgroundColor:v5];

    v6 = objc_alloc(MEMORY[0x277D756B8]);
    v7 = [v6 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    label = v3->_label;
    v3->_label = v7;

    v9 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
    [(UILabel *)v3->_label setFont:v9];

    v10 = CommunicationsSetupUIBundle();
    v11 = CNFRegStringTableName();
    v12 = [v10 localizedStringForKey:@"LOADING" value:&stru_2856D3978 table:v11];
    [(UILabel *)v3->_label setText:v12];

    v13 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v3->_label setTextColor:v13];

    v14 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)v3->_label setBackgroundColor:v14];

    [(CNFRegLoadingView *)v3 addSubview:v3->_label];
    v15 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:1];
    spinner = v3->_spinner;
    v3->_spinner = v15;

    [(UIActivityIndicatorView *)v3->_spinner startAnimating];
    [(CNFRegLoadingView *)v3 addSubview:v3->_spinner];
  }

  return v3;
}

- (void)layoutSubviews
{
  [(CNFRegLoadingView *)self bounds];
  v35 = v4;
  v36 = v3;
  v34 = v5;
  v7 = v6;
  [(UILabel *)self->_label sizeToFit];
  [(UILabel *)self->_label bounds];
  v9 = v8;
  v32 = v10;
  v33 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v31 = v14;
  [(UIActivityIndicatorView *)self->_spinner sizeToFit];
  [(UIActivityIndicatorView *)self->_spinner bounds];
  y = v38.origin.y;
  x = v38.origin.x;
  width = v38.size.width;
  height = v38.size.height;
  v18 = CGRectGetHeight(v38);
  v39.origin.x = v9;
  v39.origin.y = v11;
  v39.size.width = v13;
  v39.size.height = v15;
  v19 = CGRectGetHeight(v39);
  if (v19 <= 0.0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 + v19 + 5.0;
  }

  v28 = v20;
  v40.origin.x = v36;
  v40.origin.y = v35;
  v40.size.width = v34;
  v40.size.height = v7;
  MidX = CGRectGetMidX(v40);
  v41.origin.x = v36;
  v41.origin.y = v35;
  v41.size.width = v34;
  v41.size.height = v7;
  MidY = CGRectGetMidY(v41);
  v42.origin.y = y;
  v42.origin.x = x;
  v42.size.width = width;
  v42.size.height = height;
  v23 = MidX - CGRectGetWidth(v42) * 0.5;
  v24 = MidY - v28 * 0.5;
  v43.origin.y = v32;
  v43.origin.x = v33;
  v43.size.width = v13;
  v43.size.height = v31;
  v25 = MidX - CGRectGetWidth(v43) * 0.5;
  v44.origin.x = v23;
  v44.origin.y = v24;
  v44.size.width = width;
  v44.size.height = height;
  v26 = CGRectGetMaxY(v44) + 5.0;
  [(UIActivityIndicatorView *)self->_spinner setFrame:v23, v24, width, height];
  label = self->_label;

  [(UILabel *)label setFrame:v25, v26, v13, v31];
}

- (void)setMessage:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    v5 = CommunicationsSetupUIBundle();
    v6 = CNFRegStringTableName();
    v4 = [v5 localizedStringForKey:@"LOADING" value:&stru_2856D3978 table:v6];
  }

  v7 = [(UILabel *)self->_label text];
  v8 = [v4 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(UILabel *)self->_label setText:v4];
    [(CNFRegLoadingView *)self setNeedsLayout];
  }
}

@end