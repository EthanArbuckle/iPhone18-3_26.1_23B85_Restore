@interface CPSPagingControlView
- (CGSize)buttonSize;
- (CPSPageControlling)pagingDelegate;
- (CPSPagingControlView)initWithFrame:(CGRect)frame;
- (id)_linearFocusItems;
- (void)_invokeDelegateForPageIndex:(unint64_t)index;
- (void)_update;
- (void)didSelectButton:(id)button;
- (void)enablePageControlsIfNecessary;
@end

@implementation CPSPagingControlView

- (CPSPagingControlView)initWithFrame:(CGRect)frame
{
  v76[2] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v71 = a2;
  v72 = 0;
  v70.receiver = self;
  v70.super_class = CPSPagingControlView;
  v72 = [(CPSPagingControlView *)&v70 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v72, v72);
  if (v72)
  {
    [(CPSPagingControlView *)v72 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72->_pageIndex = 0;
    v72->_pageCount = 0;
    v69 = [(CPUIButton *)CPSActionButton buttonWithType:?];
    [(CPSActionButton *)v69 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = v69;
    traitCollection = [(CPSPagingControlView *)v72 traitCollection];
    v20 = CPUIChevronBackwardGlyph();
    [(CPSActionButton *)v19 setButtonImage:?];
    MEMORY[0x277D82BD8](v20);
    *&v3 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
    [(CPUITemplateButton *)v69 setDelegate:v72, v3];
    [(CPSActionButton *)v69 setLayoutDelegate:v72];
    v24 = CPSLocalizedStringForKey(@"MAPS_PREVIOUS");
    v76[0] = v24;
    v23 = CPSLocalizedStringForKey(@"MAPS_LEFT");
    v76[1] = v23;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:?];
    [(CPSActionButton *)v69 setAccessibilityUserInputLabels:?];
    MEMORY[0x277D82BD8](v22);
    MEMORY[0x277D82BD8](v23);
    *&v4 = MEMORY[0x277D82BD8](v24).n128_u64[0];
    [(CPSPagingControlView *)v72 setPreviousButton:v69, v4];
    [(CPSPagingControlView *)v72 addSubview:v69];
    v68 = [(CPUIButton *)CPSActionButton buttonWithType:0];
    [(CPSActionButton *)v68 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = v68;
    traitCollection2 = [(CPSPagingControlView *)v72 traitCollection];
    v26 = CPUIChevronForwardGlyph();
    [(CPSActionButton *)v25 setButtonImage:?];
    MEMORY[0x277D82BD8](v26);
    *&v5 = MEMORY[0x277D82BD8](traitCollection2).n128_u64[0];
    [(CPUITemplateButton *)v68 setDelegate:v72, v5];
    [(CPSActionButton *)v68 setLayoutDelegate:v72];
    v30 = CPSLocalizedStringForKey(@"MAPS_NEXT");
    v75[0] = v30;
    v29 = CPSLocalizedStringForKey(@"MAPS_RIGHT");
    v75[1] = v29;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
    [(CPSActionButton *)v68 setAccessibilityUserInputLabels:?];
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    *&v6 = MEMORY[0x277D82BD8](v30).n128_u64[0];
    [(CPSPagingControlView *)v72 setNextButton:v68, v6];
    [(CPSPagingControlView *)v72 addSubview:v68];
    v67 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v67 setTranslatesAutoresizingMaskIntoConstraints:0];
    v31 = v67;
    v32 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    [v31 setFont:?];
    *&v7 = MEMORY[0x277D82BD8](v32).n128_u64[0];
    v33 = v67;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v33 setTextColor:?];
    *&v8 = MEMORY[0x277D82BD8](labelColor).n128_u64[0];
    [v67 setTextAlignment:v8];
    [(CPSPagingControlView *)v72 setPositionLabel:v67];
    [(CPSPagingControlView *)v72 addSubview:v67];
    v35 = MEMORY[0x277CCAAD0];
    topAnchor = [(CPSPagingControlView *)v72 topAnchor];
    topAnchor2 = [(CPSActionButton *)v69 topAnchor];
    v63 = [topAnchor constraintEqualToAnchor:?];
    v74[0] = v63;
    bottomAnchor = [(CPSPagingControlView *)v72 bottomAnchor];
    bottomAnchor2 = [(CPSActionButton *)v69 bottomAnchor];
    v60 = [bottomAnchor constraintEqualToAnchor:?];
    v74[1] = v60;
    leftAnchor = [(CPSActionButton *)v69 leftAnchor];
    leftAnchor2 = [(CPSPagingControlView *)v72 leftAnchor];
    v57 = [leftAnchor constraintEqualToAnchor:?];
    v74[2] = v57;
    widthAnchor = [(CPSActionButton *)v69 widthAnchor];
    [(CPSPagingControlView *)v72 buttonSize];
    v66[7] = v9;
    v66[8] = v10;
    v55 = [widthAnchor constraintEqualToConstant:*&v9];
    v74[3] = v55;
    heightAnchor = [(CPSActionButton *)v69 heightAnchor];
    [(CPSPagingControlView *)v72 buttonSize];
    v66[5] = v11;
    v66[6] = v12;
    v53 = [heightAnchor constraintEqualToConstant:*&v12];
    v74[4] = v53;
    rightAnchor = [(CPSActionButton *)v68 rightAnchor];
    rightAnchor2 = [(CPSPagingControlView *)v72 rightAnchor];
    v50 = [rightAnchor constraintEqualToAnchor:?];
    v74[5] = v50;
    widthAnchor2 = [(CPSActionButton *)v68 widthAnchor];
    [(CPSPagingControlView *)v72 buttonSize];
    v66[3] = v13;
    v66[4] = v14;
    v48 = [widthAnchor2 constraintEqualToConstant:*&v13];
    v74[6] = v48;
    heightAnchor2 = [(CPSActionButton *)v68 heightAnchor];
    [(CPSPagingControlView *)v72 buttonSize];
    v66[1] = v15;
    v66[2] = v16;
    v46 = [heightAnchor2 constraintEqualToConstant:*&v16];
    v74[7] = v46;
    centerYAnchor = [v67 centerYAnchor];
    centerYAnchor2 = [(CPSPagingControlView *)v72 centerYAnchor];
    v43 = [centerYAnchor constraintEqualToAnchor:?];
    v74[8] = v43;
    leftAnchor3 = [v67 leftAnchor];
    rightAnchor3 = [(CPSActionButton *)v69 rightAnchor];
    v40 = [leftAnchor3 constraintEqualToAnchor:2.0 constant:?];
    v74[9] = v40;
    rightAnchor4 = [v67 rightAnchor];
    leftAnchor4 = [(CPSActionButton *)v68 leftAnchor];
    v37 = [rightAnchor4 constraintEqualToAnchor:-2.0 constant:?];
    v74[10] = v37;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:11];
    [v35 activateConstraints:?];
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](leftAnchor4);
    MEMORY[0x277D82BD8](rightAnchor4);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](rightAnchor3);
    MEMORY[0x277D82BD8](leftAnchor3);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](heightAnchor2);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](widthAnchor2);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](rightAnchor);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](heightAnchor);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](leftAnchor2);
    MEMORY[0x277D82BD8](leftAnchor);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    v66[0] = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v66[0] setNumberStyle:1];
    [v66[0] setUsesGroupingSeparator:1];
    [(CPSPagingControlView *)v72 setNumberFormatter:v66[0]];
    objc_storeStrong(v66, 0);
    objc_storeStrong(&v67, 0);
    objc_storeStrong(&v68, 0);
    objc_storeStrong(&v69, 0);
  }

  v18 = MEMORY[0x277D82BE0](v72);
  objc_storeStrong(&v72, 0);
  return v18;
}

- (void)_update
{
  selfCopy = self;
  v29[1] = a2;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __31__CPSPagingControlView__update__block_invoke;
  v27[3] = &unk_278D93C40;
  v28 = MEMORY[0x277D82BE0](self);
  v29[0] = MEMORY[0x245D2A460](v27);
  v12 = MEMORY[0x277CCACA8];
  v15 = CPSLocalizedStringForKey(@"POSITION_IN_TRIP_PREVIEWS_FORMAT_%@_%@");
  v14 = (*(v29[0] + 2))(v29[0], [(CPSPagingControlView *)selfCopy pageIndex]+ 1);
  v13 = (*(v29[0] + 2))(v29[0], [(CPSPagingControlView *)selfCopy pageCount]);
  location = [v12 localizedStringWithFormat:v15, v14, v13];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  *&v2 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  positionLabel = [(CPSPagingControlView *)selfCopy positionLabel];
  [(UILabel *)positionLabel setText:location];
  *&v3 = MEMORY[0x277D82BD8](positionLabel).n128_u64[0];
  pageIndex = [(CPSPagingControlView *)selfCopy pageIndex];
  pageCount = [(CPSPagingControlView *)selfCopy pageCount];
  previousButton = [(CPSPagingControlView *)selfCopy previousButton];
  [(UIButton *)previousButton setEnabled:pageIndex != 0];
  *&v4 = MEMORY[0x277D82BD8](previousButton).n128_u64[0];
  nextButton = [(CPSPagingControlView *)selfCopy nextButton];
  v19 = 0;
  if (pageCount > 1)
  {
    v19 = pageIndex < pageCount - 1;
  }

  [(UIButton *)nextButton setEnabled:v19];
  *&v5 = MEMORY[0x277D82BD8](nextButton).n128_u64[0];
  previousButton2 = [(CPSPagingControlView *)selfCopy previousButton];
  v22 = 0;
  LOBYTE(v11) = 0;
  if (([(UIButton *)previousButton2 isFocused]& 1) != 0)
  {
    previousButton3 = [(CPSPagingControlView *)selfCopy previousButton];
    v22 = 1;
    v11 = [(UIButton *)previousButton3 isEnabled]^ 1;
  }

  if (v22)
  {
    MEMORY[0x277D82BD8](previousButton3);
  }

  *&v6 = MEMORY[0x277D82BD8](previousButton2).n128_u64[0];
  if (v11)
  {
    [(CPSPagingControlView *)selfCopy setNeedsFocusUpdate];
  }

  nextButton2 = [(CPSPagingControlView *)selfCopy nextButton];
  v20 = 0;
  LOBYTE(v9) = 0;
  if (([(UIButton *)nextButton2 isFocused]& 1) != 0)
  {
    nextButton3 = [(CPSPagingControlView *)selfCopy nextButton];
    v20 = 1;
    v9 = [(UIButton *)nextButton3 isEnabled]^ 1;
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](nextButton3);
  }

  *&v7 = MEMORY[0x277D82BD8](nextButton2).n128_u64[0];
  if (v9)
  {
    [(CPSPagingControlView *)selfCopy setNeedsFocusUpdate];
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v29, 0);
  objc_storeStrong(&v28, 0);
}

id __31__CPSPagingControlView__update__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) numberFormatter];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v4 stringFromNumber:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (void)enablePageControlsIfNecessary
{
  pageIndex = [(CPSPagingControlView *)self pageIndex];
  pageCount = [(CPSPagingControlView *)self pageCount];
  previousButton = [(CPSPagingControlView *)self previousButton];
  [(UIButton *)previousButton setEnabled:pageIndex != 0];
  nextButton = [(CPSPagingControlView *)self nextButton];
  v4 = 0;
  if (pageCount > 1)
  {
    v4 = pageIndex < pageCount - 1;
  }

  [(UIButton *)nextButton setEnabled:v4, previousButton];
  MEMORY[0x277D82BD8](nextButton);
}

- (void)_invokeDelegateForPageIndex:(unint64_t)index
{
  pagingDelegate = [(CPSPagingControlView *)self pagingDelegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](pagingDelegate).n128_u64[0];
  if (v6)
  {
    pagingDelegate2 = [(CPSPagingControlView *)self pagingDelegate];
    [(CPSPageControlling *)pagingDelegate2 pagingControlView:self didSelectPageIndex:index];
    MEMORY[0x277D82BD8](pagingDelegate2);
  }
}

- (id)_linearFocusItems
{
  selfCopy = self;
  v12[1] = a2;
  v12[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  previousButton = [(CPSPagingControlView *)selfCopy previousButton];
  isEnabled = [(UIButton *)previousButton isEnabled];
  v2 = MEMORY[0x277D82BD8](previousButton).n128_u64[0];
  if (isEnabled)
  {
    previousButton2 = [(CPSPagingControlView *)selfCopy previousButton];
    [v12[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](previousButton2).n128_u64[0];
  }

  nextButton = [(CPSPagingControlView *)selfCopy nextButton];
  isEnabled2 = [(UIButton *)nextButton isEnabled];
  *&v3 = MEMORY[0x277D82BD8](nextButton).n128_u64[0];
  if (isEnabled2)
  {
    nextButton2 = [(CPSPagingControlView *)selfCopy nextButton];
    [v12[0] addObject:?];
    MEMORY[0x277D82BD8](nextButton2);
  }

  v5 = MEMORY[0x277D82BE0](v12[0]);
  objc_storeStrong(v12, 0);

  return v5;
}

- (CGSize)buttonSize
{
  CGSizeMake_12();
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)didSelectButton:(id)button
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  pageIndex = [(CPSPagingControlView *)selfCopy pageIndex];
  v10 = pageIndex;
  v9 = location[0];
  previousButton = [(CPSPagingControlView *)selfCopy previousButton];
  v3 = MEMORY[0x277D82BD8](previousButton).n128_u64[0];
  if (v9 == previousButton)
  {
    if (pageIndex)
    {
      v7 = pageIndex - 1;
    }

    else
    {
      v7 = 0;
    }

    v10 = v7;
  }

  else
  {
    v6 = location[0];
    nextButton = [(CPSPagingControlView *)selfCopy nextButton];
    v3 = MEMORY[0x277D82BD8](nextButton).n128_u64[0];
    if (v6 == nextButton)
    {
      if (pageIndex >= [(CPSPagingControlView *)selfCopy pageCount]- 1)
      {
        v4 = pageIndex;
      }

      else
      {
        v4 = pageIndex + 1;
      }

      v10 = v4;
    }
  }

  if (pageIndex != v10)
  {
    [(CPSPagingControlView *)selfCopy setPageIndex:v10, *&v3];
    [(CPSPagingControlView *)selfCopy _invokeDelegateForPageIndex:v10];
  }

  objc_storeStrong(location, 0);
}

- (CPSPageControlling)pagingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pagingDelegate);

  return WeakRetained;
}

@end