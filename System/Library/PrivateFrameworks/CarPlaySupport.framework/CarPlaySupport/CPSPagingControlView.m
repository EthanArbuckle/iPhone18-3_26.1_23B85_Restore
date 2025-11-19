@interface CPSPagingControlView
- (CGSize)buttonSize;
- (CPSPageControlling)pagingDelegate;
- (CPSPagingControlView)initWithFrame:(CGRect)a3;
- (id)_linearFocusItems;
- (void)_invokeDelegateForPageIndex:(unint64_t)a3;
- (void)_update;
- (void)didSelectButton:(id)a3;
- (void)enablePageControlsIfNecessary;
@end

@implementation CPSPagingControlView

- (CPSPagingControlView)initWithFrame:(CGRect)a3
{
  v76[2] = *MEMORY[0x277D85DE8];
  v73 = a3;
  v71 = a2;
  v72 = 0;
  v70.receiver = self;
  v70.super_class = CPSPagingControlView;
  v72 = [(CPSPagingControlView *)&v70 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v72, v72);
  if (v72)
  {
    [(CPSPagingControlView *)v72 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72->_pageIndex = 0;
    v72->_pageCount = 0;
    v69 = [(CPUIButton *)CPSActionButton buttonWithType:?];
    [(CPSActionButton *)v69 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = v69;
    v21 = [(CPSPagingControlView *)v72 traitCollection];
    v20 = CPUIChevronBackwardGlyph();
    [(CPSActionButton *)v19 setButtonImage:?];
    MEMORY[0x277D82BD8](v20);
    *&v3 = MEMORY[0x277D82BD8](v21).n128_u64[0];
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
    v27 = [(CPSPagingControlView *)v72 traitCollection];
    v26 = CPUIChevronForwardGlyph();
    [(CPSActionButton *)v25 setButtonImage:?];
    MEMORY[0x277D82BD8](v26);
    *&v5 = MEMORY[0x277D82BD8](v27).n128_u64[0];
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
    v34 = [MEMORY[0x277D75348] labelColor];
    [v33 setTextColor:?];
    *&v8 = MEMORY[0x277D82BD8](v34).n128_u64[0];
    [v67 setTextAlignment:v8];
    [(CPSPagingControlView *)v72 setPositionLabel:v67];
    [(CPSPagingControlView *)v72 addSubview:v67];
    v35 = MEMORY[0x277CCAAD0];
    v65 = [(CPSPagingControlView *)v72 topAnchor];
    v64 = [(CPSActionButton *)v69 topAnchor];
    v63 = [v65 constraintEqualToAnchor:?];
    v74[0] = v63;
    v62 = [(CPSPagingControlView *)v72 bottomAnchor];
    v61 = [(CPSActionButton *)v69 bottomAnchor];
    v60 = [v62 constraintEqualToAnchor:?];
    v74[1] = v60;
    v59 = [(CPSActionButton *)v69 leftAnchor];
    v58 = [(CPSPagingControlView *)v72 leftAnchor];
    v57 = [v59 constraintEqualToAnchor:?];
    v74[2] = v57;
    v56 = [(CPSActionButton *)v69 widthAnchor];
    [(CPSPagingControlView *)v72 buttonSize];
    v66[7] = v9;
    v66[8] = v10;
    v55 = [v56 constraintEqualToConstant:*&v9];
    v74[3] = v55;
    v54 = [(CPSActionButton *)v69 heightAnchor];
    [(CPSPagingControlView *)v72 buttonSize];
    v66[5] = v11;
    v66[6] = v12;
    v53 = [v54 constraintEqualToConstant:*&v12];
    v74[4] = v53;
    v52 = [(CPSActionButton *)v68 rightAnchor];
    v51 = [(CPSPagingControlView *)v72 rightAnchor];
    v50 = [v52 constraintEqualToAnchor:?];
    v74[5] = v50;
    v49 = [(CPSActionButton *)v68 widthAnchor];
    [(CPSPagingControlView *)v72 buttonSize];
    v66[3] = v13;
    v66[4] = v14;
    v48 = [v49 constraintEqualToConstant:*&v13];
    v74[6] = v48;
    v47 = [(CPSActionButton *)v68 heightAnchor];
    [(CPSPagingControlView *)v72 buttonSize];
    v66[1] = v15;
    v66[2] = v16;
    v46 = [v47 constraintEqualToConstant:*&v16];
    v74[7] = v46;
    v45 = [v67 centerYAnchor];
    v44 = [(CPSPagingControlView *)v72 centerYAnchor];
    v43 = [v45 constraintEqualToAnchor:?];
    v74[8] = v43;
    v42 = [v67 leftAnchor];
    v41 = [(CPSActionButton *)v69 rightAnchor];
    v40 = [v42 constraintEqualToAnchor:2.0 constant:?];
    v74[9] = v40;
    v39 = [v67 rightAnchor];
    v38 = [(CPSActionButton *)v68 leftAnchor];
    v37 = [v39 constraintEqualToAnchor:-2.0 constant:?];
    v74[10] = v37;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:11];
    [v35 activateConstraints:?];
    MEMORY[0x277D82BD8](v36);
    MEMORY[0x277D82BD8](v37);
    MEMORY[0x277D82BD8](v38);
    MEMORY[0x277D82BD8](v39);
    MEMORY[0x277D82BD8](v40);
    MEMORY[0x277D82BD8](v41);
    MEMORY[0x277D82BD8](v42);
    MEMORY[0x277D82BD8](v43);
    MEMORY[0x277D82BD8](v44);
    MEMORY[0x277D82BD8](v45);
    MEMORY[0x277D82BD8](v46);
    MEMORY[0x277D82BD8](v47);
    MEMORY[0x277D82BD8](v48);
    MEMORY[0x277D82BD8](v49);
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v58);
    MEMORY[0x277D82BD8](v59);
    MEMORY[0x277D82BD8](v60);
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
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
  v30 = self;
  v29[1] = a2;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __31__CPSPagingControlView__update__block_invoke;
  v27[3] = &unk_278D93C40;
  v28 = MEMORY[0x277D82BE0](self);
  v29[0] = MEMORY[0x245D2A460](v27);
  v12 = MEMORY[0x277CCACA8];
  v15 = CPSLocalizedStringForKey(@"POSITION_IN_TRIP_PREVIEWS_FORMAT_%@_%@");
  v14 = (*(v29[0] + 2))(v29[0], [(CPSPagingControlView *)v30 pageIndex]+ 1);
  v13 = (*(v29[0] + 2))(v29[0], [(CPSPagingControlView *)v30 pageCount]);
  location = [v12 localizedStringWithFormat:v15, v14, v13];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  *&v2 = MEMORY[0x277D82BD8](v15).n128_u64[0];
  v16 = [(CPSPagingControlView *)v30 positionLabel];
  [(UILabel *)v16 setText:location];
  *&v3 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v25 = [(CPSPagingControlView *)v30 pageIndex];
  v24 = [(CPSPagingControlView *)v30 pageCount];
  v17 = [(CPSPagingControlView *)v30 previousButton];
  [(UIButton *)v17 setEnabled:v25 != 0];
  *&v4 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v18 = [(CPSPagingControlView *)v30 nextButton];
  v19 = 0;
  if (v24 > 1)
  {
    v19 = v25 < v24 - 1;
  }

  [(UIButton *)v18 setEnabled:v19];
  *&v5 = MEMORY[0x277D82BD8](v18).n128_u64[0];
  v10 = [(CPSPagingControlView *)v30 previousButton];
  v22 = 0;
  LOBYTE(v11) = 0;
  if (([(UIButton *)v10 isFocused]& 1) != 0)
  {
    v23 = [(CPSPagingControlView *)v30 previousButton];
    v22 = 1;
    v11 = [(UIButton *)v23 isEnabled]^ 1;
  }

  if (v22)
  {
    MEMORY[0x277D82BD8](v23);
  }

  *&v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    [(CPSPagingControlView *)v30 setNeedsFocusUpdate];
  }

  v8 = [(CPSPagingControlView *)v30 nextButton];
  v20 = 0;
  LOBYTE(v9) = 0;
  if (([(UIButton *)v8 isFocused]& 1) != 0)
  {
    v21 = [(CPSPagingControlView *)v30 nextButton];
    v20 = 1;
    v9 = [(UIButton *)v21 isEnabled]^ 1;
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  *&v7 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    [(CPSPagingControlView *)v30 setNeedsFocusUpdate];
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
  v6 = [(CPSPagingControlView *)self pageIndex];
  v5 = [(CPSPagingControlView *)self pageCount];
  v2 = [(CPSPagingControlView *)self previousButton];
  [(UIButton *)v2 setEnabled:v6 != 0];
  v3 = [(CPSPagingControlView *)self nextButton];
  v4 = 0;
  if (v5 > 1)
  {
    v4 = v6 < v5 - 1;
  }

  [(UIButton *)v3 setEnabled:v4, v2];
  MEMORY[0x277D82BD8](v3);
}

- (void)_invokeDelegateForPageIndex:(unint64_t)a3
{
  v5 = [(CPSPagingControlView *)self pagingDelegate];
  v6 = objc_opt_respondsToSelector();
  *&v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(CPSPagingControlView *)self pagingDelegate];
    [(CPSPageControlling *)v4 pagingControlView:self didSelectPageIndex:a3];
    MEMORY[0x277D82BD8](v4);
  }
}

- (id)_linearFocusItems
{
  v13 = self;
  v12[1] = a2;
  v12[0] = objc_alloc_init(MEMORY[0x277CBEB18]);
  v10 = [(CPSPagingControlView *)v13 previousButton];
  v11 = [(UIButton *)v10 isEnabled];
  v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v9 = [(CPSPagingControlView *)v13 previousButton];
    [v12[0] addObject:?];
    v2 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  v7 = [(CPSPagingControlView *)v13 nextButton];
  v8 = [(UIButton *)v7 isEnabled];
  *&v3 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  if (v8)
  {
    v6 = [(CPSPagingControlView *)v13 nextButton];
    [v12[0] addObject:?];
    MEMORY[0x277D82BD8](v6);
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

- (void)didSelectButton:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = [(CPSPagingControlView *)v13 pageIndex];
  v10 = v11;
  v9 = location[0];
  v8 = [(CPSPagingControlView *)v13 previousButton];
  v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9 == v8)
  {
    if (v11)
    {
      v7 = v11 - 1;
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
    v5 = [(CPSPagingControlView *)v13 nextButton];
    v3 = MEMORY[0x277D82BD8](v5).n128_u64[0];
    if (v6 == v5)
    {
      if (v11 >= [(CPSPagingControlView *)v13 pageCount]- 1)
      {
        v4 = v11;
      }

      else
      {
        v4 = v11 + 1;
      }

      v10 = v4;
    }
  }

  if (v11 != v10)
  {
    [(CPSPagingControlView *)v13 setPageIndex:v10, *&v3];
    [(CPSPagingControlView *)v13 _invokeDelegateForPageIndex:v10];
  }

  objc_storeStrong(location, 0);
}

- (CPSPageControlling)pagingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_pagingDelegate);

  return WeakRetained;
}

@end