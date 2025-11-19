@interface DDConversionPreviewController
- (CGSize)preferredContentSize;
- (DDConversionPreviewController)initWithTitle:(id)a3 subTitle:(id)a4 finance:(BOOL)a5;
- (double)preferredWidth;
- (id)view;
@end

@implementation DDConversionPreviewController

- (DDConversionPreviewController)initWithTitle:(id)a3 subTitle:(id)a4 finance:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v15.receiver = self;
  v15.super_class = DDConversionPreviewController;
  v10 = [(DDConversionPreviewController *)&v15 init];
  v11 = v10;
  if (v10)
  {
    if (v8)
    {
      v12 = v8;
    }

    else
    {
      v12 = &stru_282C1E0A8;
    }

    objc_storeStrong(&v10->_title, v12);
    if (v9)
    {
      v13 = v9;
    }

    else
    {
      v13 = &stru_282C1E0A8;
    }

    objc_storeStrong(&v11->_subtitle, v13);
    v11->_finance = a5;
  }

  return v11;
}

- (id)view
{
  mainView = self->_mainView;
  if (!mainView)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75D18]);
    v5 = self->_mainView;
    self->_mainView = v4;

    [(UIView *)self->_mainView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)self->_mainView setBackgroundColor:v6];

    v7 = objc_alloc_init(MEMORY[0x277D75D18]);
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_mainView addSubview:v7];
    v8 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v8 setText:self->_title];
    [v8 setTextAlignment:1];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    [v8 setFont:v9];

    v10 = [MEMORY[0x277D75348] secondaryLabelColor];
    [v8 setTextColor:v10];

    [v8 setAdjustsFontSizeToFitWidth:1];
    [v7 addSubview:v8];
    v11 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v11 setTextAlignment:1];
    [v11 setText:self->_subtitle];
    v12 = [MEMORY[0x277D75348] labelColor];
    [v11 setTextColor:v12];

    v13 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76A20]];
    [v11 setFont:v13];

    [v11 setAdjustsFontSizeToFitWidth:1];
    [v7 addSubview:v11];
    if (!self->_finance)
    {
      goto LABEL_5;
    }

    v14 = MEMORY[0x277D755B8];
    v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v16 = [v14 imageNamed:@"YahooFinance" inBundle:v15];

    v17 = [v16 imageWithRenderingMode:2];

    v18 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v17];
    v19 = [MEMORY[0x277D75348] labelColor];
    [v18 setTintColor:v19];

    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)self->_mainView addSubview:v18];

    if (v18)
    {
      v20 = _NSDictionaryOfVariableBindings(&cfstr_TitleSubtitleT.isa, v8, v11, v7, v18, 0);

      v65 = 0;
    }

    else
    {
LABEL_5:
      v20 = _NSDictionaryOfVariableBindings(&cfstr_TitleSubtitleT_0.isa, v8, v11, v7, 0);
      v65 = 1;
    }

    v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(>=0)-[title]-(>=0)-|" options:0 metrics:&unk_282C2CEF8 views:v20];
    [v7 addConstraints:v21];

    v22 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(>=0)-[subtitle]-(>=0)-|" options:0 metrics:&unk_282C2CEF8 views:v20];
    [v7 addConstraints:v22];

    v23 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[title][subtitle]|" options:0 metrics:&unk_282C2CEF8 views:v20];
    [v7 addConstraints:v23];

    v24 = [v7 centerXAnchor];
    v25 = [v8 centerXAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    [v26 setActive:1];

    v27 = [v7 centerXAnchor];
    v28 = [v11 centerXAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    [v29 setActive:1];

    v30 = [(UIView *)self->_mainView centerXAnchor];
    v31 = [v7 centerXAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];
    [v32 setActive:1];

    v33 = self->_mainView;
    v34 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(>=margin)-[textContainer]-(>=margin)-|" options:0 metrics:&unk_282C2CEF8 views:v20];
    [(UIView *)v33 addConstraints:v34];

    v35 = self->_mainView;
    v36 = MEMORY[0x277CCAAD0];
    if (v65)
    {
      v37 = @"V:|-(>=margin)-[textContainer]-(>=margin)-|";
    }

    else
    {
      v38 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-(>=margin)-[attribution(77)]-(margin)-|" options:0 metrics:&unk_282C2CEF8 views:v20];
      [(UIView *)v35 addConstraints:v38];

      v35 = self->_mainView;
      v36 = MEMORY[0x277CCAAD0];
      v37 = @"V:|-(>=margin)-[textContainer]-(>=margin)-[attribution(11)]-(margin)-|";
    }

    v39 = [v36 constraintsWithVisualFormat:v37 options:0 metrics:&unk_282C2CEF8 views:v20];
    [(UIView *)v35 addConstraints:v39];

    v40 = [v7 centerXAnchor];
    v41 = [(UIView *)self->_mainView centerXAnchor];
    v42 = [v40 constraintEqualToAnchor:v41];
    [v42 setActive:1];

    v43 = [v7 centerYAnchor];
    v44 = [(UIView *)self->_mainView centerYAnchor];
    v45 = [v43 constraintEqualToAnchor:v44];
    [v45 setActive:1];

    [(DDConversionPreviewController *)self preferredWidth];
    v47 = v46;
    [(DDConversionPreviewController *)self preferredWidth];
    v49 = fmin(v48, v47);
    v50 = v47 + -20.0;
    [v8 setPreferredMaxLayoutWidth:v50];
    [v11 setPreferredMaxLayoutWidth:v50];
    [v8 sizeThatFits:{v49 + -20.0, -1.0}];
    v53 = v51;
    v54 = v52;
    if (v51 > v50)
    {
      v54 = v52 * v50 / v51;
      v53 = v50;
    }

    [v11 sizeThatFits:{v49 + -20.0, -1.0}];
    if (v55 <= v50)
    {
      v50 = v55;
    }

    else
    {
      v56 = v56 * v50 / v55;
    }

    v57 = 21.0;
    if (v65)
    {
      v57 = 0.0;
    }

    v58 = fmax(v49, fmax(v50, v53) + 20.0);
    v59 = fmax(v54 + 20.0 + v56, 85.0) + v57;
    v60 = [(UIView *)self->_mainView widthAnchor];
    v61 = [v60 constraintEqualToConstant:v58];
    [v61 setActive:1];

    v62 = [(UIView *)self->_mainView heightAnchor];
    v63 = [v62 constraintEqualToConstant:v59];
    [v63 setActive:1];

    self->_naturalTextSize.width = v58;
    self->_naturalTextSize.height = v59;

    mainView = self->_mainView;
  }

  return mainView;
}

- (double)preferredWidth
{
  v2 = [MEMORY[0x277D75418] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 325.0;
  }

  v4 = [MEMORY[0x277D75128] sharedApplication];
  v5 = [v4 statusBarOrientation];

  if ((v5 - 5) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    return 325.0;
  }

  else
  {
    return 270.0;
  }
}

- (CGSize)preferredContentSize
{
  width = self->_naturalTextSize.width;
  height = self->_naturalTextSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end