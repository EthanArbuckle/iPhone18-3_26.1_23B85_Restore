@interface PHHandsetDialerNameLabelView
- (CGSize)intrinsicContentSize;
- (PHHandsetDialerNameLabelView)initWithFrame:(CGRect)frame;
- (void)setFontSize:(double)size;
- (void)showName:(id)name label:(id)label animated:(BOOL)animated;
@end

@implementation PHHandsetDialerNameLabelView

- (PHHandsetDialerNameLabelView)initWithFrame:(CGRect)frame
{
  v20[1] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = PHHandsetDialerNameLabelView;
  v3 = [(PHHandsetDialerNameLabelView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PHHandsetDialerNameLabelView *)v3 setFontSize:11.0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(PHHandsetDialerNameLabelView *)v4 setBackgroundColor:clearColor];

    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v6 setText:&stru_285532CB8];
    clearColor2 = [MEMORY[0x277D75348] clearColor];
    [v6 setBackgroundColor:clearColor2];

    [v6 setOpaque:0];
    textColor = [(PHHandsetDialerNameLabelView *)v4 textColor];
    [v6 setTextColor:textColor];

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
    nameAndLabelLabel = [(PHHandsetDialerNameLabelView *)v4 nameAndLabelLabel];
    v20[0] = nameAndLabelLabel;
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

- (void)setFontSize:(double)size
{
  self->_fontSize = size;
  displayedName = [(PHHandsetDialerNameLabelView *)self displayedName];
  displayedLabel = [(PHHandsetDialerNameLabelView *)self displayedLabel];
  [(PHHandsetDialerNameLabelView *)self showName:displayedName label:displayedLabel animated:0];
}

- (CGSize)intrinsicContentSize
{
  [(UILabel *)self->_nameAndLabelLabel intrinsicContentSize];
  v3 = 25.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)showName:(id)name label:(id)label animated:(BOOL)animated
{
  animatedCopy = animated;
  nameCopy = name;
  labelCopy = label;
  if (labelCopy)
  {
    v10 = labelCopy;
    labelCopy = [MEMORY[0x277CCACA8] stringWithFormat:@" %@", labelCopy];
  }

  else
  {
    labelCopy = &stru_285532CB8;
  }

  [(PHHandsetDialerNameLabelView *)self setDisplayedName:nameCopy];
  [(PHHandsetDialerNameLabelView *)self setDisplayedLabel:labelCopy];
  v12 = objc_alloc(MEMORY[0x277CCAB48]);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", nameCopy, labelCopy];
  v14 = [v12 initWithString:v13];

  v15 = MEMORY[0x277D74300];
  [(PHHandsetDialerNameLabelView *)self fontSize];
  v16 = [v15 systemFontOfSize:?];
  v17 = MEMORY[0x277D74300];
  [(PHHandsetDialerNameLabelView *)self fontSize];
  v18 = [v17 boldSystemFontOfSize:?];
  v19 = *MEMORY[0x277D740A8];
  [v14 addAttribute:*MEMORY[0x277D740A8] value:v16 range:{0, objc_msgSend(nameCopy, "length")}];
  [v14 addAttribute:v19 value:v18 range:{objc_msgSend(v14, "length") - -[__CFString length](labelCopy, "length"), -[__CFString length](labelCopy, "length")}];
  if (![nameCopy length])
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

    if (animatedCopy)
    {
      goto LABEL_6;
    }

LABEL_8:
    v21[2](v21);
    goto LABEL_9;
  }

  nameAndLabelLabel = [(PHHandsetDialerNameLabelView *)self nameAndLabelLabel];
  [nameAndLabelLabel setAttributedText:v14];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PHHandsetDialerNameLabelView_showName_label_animated___block_invoke;
  aBlock[3] = &unk_278D749E0;
  aBlock[4] = self;
  v21 = _Block_copy(aBlock);
  v22 = 0;
  if (!animatedCopy)
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