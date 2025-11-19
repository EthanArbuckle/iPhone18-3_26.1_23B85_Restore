@interface PHHandsetDialerNameLabelView
- (CGSize)intrinsicContentSize;
- (PHHandsetDialerNameLabelView)initWithFrame:(CGRect)a3;
- (void)setFontSize:(double)a3;
- (void)showName:(id)a3 label:(id)a4 animated:(BOOL)a5;
@end

@implementation PHHandsetDialerNameLabelView

- (PHHandsetDialerNameLabelView)initWithFrame:(CGRect)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = PHHandsetDialerNameLabelView;
  v3 = [(PHHandsetDialerNameLabelView *)&v18 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHHandsetDialerNameLabelView *)v3 setFontSize:11.0];
    v5 = [MEMORY[0x277D75348] clearColor];
    [(PHHandsetDialerNameLabelView *)v4 setBackgroundColor:v5];

    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setText:&stru_285532CB8];
    v7 = [MEMORY[0x277D75348] clearColor];
    [v6 setBackgroundColor:v7];

    [v6 setOpaque:0];
    v8 = [(PHHandsetDialerNameLabelView *)v4 textColor];
    [v6 setTextColor:v8];

    [v6 setTextAlignment:1];
    v9 = MEMORY[0x277D74300];
    [(PHHandsetDialerNameLabelView *)v4 fontSize];
    v10 = [v9 systemFontOfSize:?];
    [v6 setFont:v10];

    [v6 setAlpha:0.0];
    LODWORD(v11) = 1148846080;
    [v6 setContentCompressionResistancePriority:0 forAxis:v11];
    [(PHHandsetDialerNameLabelView *)v4 addSubview:v6];
    [(PHHandsetDialerNameLabelView *)v4 setNameAndLabelLabel:v6];
    v19 = @"nameAndLabelLabel";
    v12 = [(PHHandsetDialerNameLabelView *)v4 nameAndLabelLabel];
    v20[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];

    v14 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"|[nameAndLabelLabel]|" options:0 metrics:0 views:v13];
    [(PHHandsetDialerNameLabelView *)v4 addConstraints:v14];

    v15 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[nameAndLabelLabel]|" options:0 metrics:0 views:v13];
    [(PHHandsetDialerNameLabelView *)v4 addConstraints:v15];

    [(PHHandsetDialerNameLabelView *)v4 invalidateIntrinsicContentSize];
  }

  v16 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setFontSize:(double)a3
{
  self->_fontSize = a3;
  v5 = [(PHHandsetDialerNameLabelView *)self displayedName];
  v4 = [(PHHandsetDialerNameLabelView *)self displayedLabel];
  [(PHHandsetDialerNameLabelView *)self showName:v5 label:v4 animated:0];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_nameAndLabelLabel intrinsicContentSize];
  v3 = 25.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)showName:(id)a3 label:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = v9;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", v9];
  }

  else
  {
    v11 = &stru_285532CB8;
  }

  [(PHHandsetDialerNameLabelView *)self setDisplayedName:v8];
  [(PHHandsetDialerNameLabelView *)self setDisplayedLabel:v11];
  v12 = objc_alloc(MEMORY[0x277CCAB48]);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v8, v11];
  v14 = [v12 initWithString:v13];

  v15 = MEMORY[0x277D74300];
  [(PHHandsetDialerNameLabelView *)self fontSize];
  v16 = [v15 systemFontOfSize:?];
  v17 = MEMORY[0x277D74300];
  [(PHHandsetDialerNameLabelView *)self fontSize];
  v18 = [v17 boldSystemFontOfSize:?];
  v19 = *MEMORY[0x277D740A8];
  [v14 addAttribute:*MEMORY[0x277D740A8] value:v16 range:{0, objc_msgSend(v8, "length")}];
  [v14 addAttribute:v19 value:v18 range:{objc_msgSend(v14, "length") - -[__CFString length](v11, "length"), -[__CFString length](v11, "length")}];
  if (![v8 length])
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke_2;
    v25[3] = &unk_278D749E0;
    v25[4] = self;
    v21 = _Block_copy(v25);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke_3;
    v23[3] = &unk_278D74A08;
    v23[4] = self;
    v24 = v14;
    v22 = _Block_copy(v23);

    if (v5)
    {
      goto LABEL_6;
    }

LABEL_8:
    v21[2](v21);
    goto LABEL_9;
  }

  v20 = [(PHHandsetDialerNameLabelView *)self nameAndLabelLabel];
  [v20 setAttributedText:v14];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke;
  aBlock[3] = &unk_278D749E0;
  aBlock[4] = self;
  v21 = _Block_copy(aBlock);
  v22 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_6:
  [MEMORY[0x277D75D18] animateWithDuration:v21 animations:v22 completion:0.200000003];
LABEL_9:
  [(PHHandsetDialerNameLabelView *)self invalidateIntrinsicContentSize];
}

void __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) nameAndLabelLabel];
  [v1 setAlpha:1.0];
}

void __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) nameAndLabelLabel];
  [v1 setAlpha:0.0];
}

void __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) nameAndLabelLabel];
  [v2 setAttributedText:v1];
}

@end