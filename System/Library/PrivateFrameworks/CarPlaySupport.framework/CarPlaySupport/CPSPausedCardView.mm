@interface CPSPausedCardView
+ (id)createPlatterView;
- (CGSize)intrinsicContentSize;
- (CPSPausedCardView)initWithReason:(unint64_t)a3 title:(id)a4 backgroundColor:(id)a5;
- (void)setCardBackgroundColor:(id)a3;
@end

@implementation CPSPausedCardView

- (CPSPausedCardView)initWithReason:(unint64_t)a3 title:(id)a4 backgroundColor:(id)a5
{
  v89[4] = *MEMORY[0x277D85DE8];
  v86 = self;
  v85 = a2;
  v84 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v82 = 0;
  objc_storeStrong(&v82, a5);
  v5 = v86;
  v86 = 0;
  v81.receiver = v5;
  v81.super_class = CPSPausedCardView;
  v86 = [(CPSPausedCardView *)&v81 init];
  objc_storeStrong(&v86, v86);
  if (v86)
  {
    if (_UISolariumEnabled())
    {
      v80 = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
      [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
      objc_storeStrong(&v86->_contentView, v80);
      objc_storeStrong(&v80, 0);
    }

    else
    {
      v79 = [objc_opt_class() createPlatterView];
      objc_storeStrong(&v86->_contentView, v79);
      objc_storeStrong(&v79, 0);
    }

    [(CPSPausedCardView *)v86 addSubview:v86->_contentView];
    v60 = MEMORY[0x277CCAAD0];
    v73 = [(UIView *)v86->_contentView leadingAnchor];
    v72 = [(CPSPausedCardView *)v86 leadingAnchor];
    v71 = [(NSLayoutXAxisAnchor *)v73 constraintEqualToAnchor:?];
    v89[0] = v71;
    v70 = [(UIView *)v86->_contentView topAnchor];
    v69 = [(CPSPausedCardView *)v86 topAnchor];
    v68 = [(NSLayoutYAxisAnchor *)v70 constraintEqualToAnchor:?];
    v89[1] = v68;
    v67 = [(UIView *)v86->_contentView trailingAnchor];
    v66 = [(CPSPausedCardView *)v86 trailingAnchor];
    v65 = [(NSLayoutXAxisAnchor *)v67 constraintEqualToAnchor:?];
    v89[2] = v65;
    v64 = [(UIView *)v86->_contentView bottomAnchor];
    v63 = [(CPSPausedCardView *)v86 bottomAnchor];
    v62 = [(NSLayoutYAxisAnchor *)v64 constraintEqualToAnchor:?];
    v89[3] = v62;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:4];
    [v60 activateConstraints:?];
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](v63);
    MEMORY[0x277D82BD8](v64);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](v66);
    MEMORY[0x277D82BD8](v67);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](v69);
    MEMORY[0x277D82BD8](v70);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](v72);
    v6 = MEMORY[0x277D82BD8](v73).n128_u64[0];
    v78 = 0;
    v77 = 0;
    switch(v84)
    {
      case 1uLL:
        v7 = CPSLocalizedStringForKey(@"ARRIVED");
        v8 = v78;
        v78 = v7;
        v6 = MEMORY[0x277D82BD8](v8).n128_u64[0];
        v77 = 0;
        break;
      case 2uLL:
        v9 = CPSLocalizedStringForKey(@"LOADING");
        v10 = v78;
        v78 = v9;
        v6 = MEMORY[0x277D82BD8](v10).n128_u64[0];
        v77 = 1;
        break;
      case 3uLL:
        v11 = CPSLocalizedStringForKey(@"LOCATING");
        v12 = v78;
        v78 = v11;
        v6 = MEMORY[0x277D82BD8](v12).n128_u64[0];
        v77 = 1;
        break;
      case 4uLL:
        v13 = CPSLocalizedStringForKey(@"REROUTING");
        v14 = v78;
        v78 = v13;
        v6 = MEMORY[0x277D82BD8](v14).n128_u64[0];
        v77 = 1;
        break;
      case 5uLL:
        v15 = CPSLocalizedStringForKey(@"PROCEED_TO_ROUTE");
        v16 = v78;
        v78 = v15;
        v6 = MEMORY[0x277D82BD8](v16).n128_u64[0];
        v77 = 0;
        break;
    }

    if (![location length])
    {
      objc_storeStrong(&location, v78);
    }

    [(CPSPausedCardView *)v86 setTranslatesAutoresizingMaskIntoConstraints:0];
    v76 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
    v47 = [MEMORY[0x277D75348] labelColor];
    [v76 setTextColor:?];
    [v76 setTextAlignment:{1, MEMORY[0x277D82BD8](v47).n128_f64[0]}];
    v48 = [objc_opt_class() titleFont];
    [v76 setFont:?];
    *&v17 = MEMORY[0x277D82BD8](v48).n128_u64[0];
    [v76 setText:{location, v17}];
    [v76 setNumberOfLines:2];
    [v76 setMinimumScaleFactor:0.7];
    [v76 setAdjustsFontSizeToFitWidth:1];
    objc_storeStrong(&v86->_title, v76);
    [(UIView *)v86->_contentView addSubview:v76];
    v49 = MEMORY[0x277CCAAD0];
    v59 = [v76 leadingAnchor];
    v58 = [(CPSPausedCardView *)v86 leadingAnchor];
    v57 = [v59 constraintEqualToAnchor:9.0 constant:?];
    v88[0] = v57;
    v56 = [v76 trailingAnchor];
    v55 = [(CPSPausedCardView *)v86 trailingAnchor];
    v54 = [v56 constraintEqualToAnchor:-9.0 constant:?];
    v88[1] = v54;
    v53 = [v76 topAnchor];
    v52 = [(CPSPausedCardView *)v86 topAnchor];
    v51 = [v53 constraintEqualToAnchor:10.0 constant:?];
    v88[2] = v51;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];
    [v49 activateConstraints:?];
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](v52);
    MEMORY[0x277D82BD8](v53);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](v55);
    MEMORY[0x277D82BD8](v56);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](v58);
    *&v18 = MEMORY[0x277D82BD8](v59).n128_u64[0];
    if (v77)
    {
      v75 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
      objc_storeStrong(&v86->_spinner, v75);
      [(UIView *)v86->_contentView addSubview:v75];
      v26 = MEMORY[0x277CCAAD0];
      v46 = [v75 centerXAnchor];
      v45 = [(CPSPausedCardView *)v86 centerXAnchor];
      v44 = [v46 constraintEqualToAnchor:?];
      v87[0] = v44;
      v43 = [v75 widthAnchor];
      v42 = [v43 constraintEqualToConstant:?];
      v87[1] = v42;
      v41 = [v75 heightAnchor];
      v40 = [v41 constraintEqualToConstant:26.0];
      v87[2] = v40;
      v39 = [v75 leadingAnchor];
      v38 = [(CPSPausedCardView *)v86 leadingAnchor];
      v37 = [v39 constraintGreaterThanOrEqualToAnchor:9.0 constant:?];
      v87[3] = v37;
      v36 = [v75 trailingAnchor];
      v35 = [(CPSPausedCardView *)v86 trailingAnchor];
      v34 = [v36 constraintLessThanOrEqualToAnchor:-9.0 constant:?];
      v87[4] = v34;
      v33 = [v75 topAnchor];
      v32 = [v76 lastBaselineAnchor];
      v31 = [v33 constraintEqualToAnchor:8.0 constant:?];
      v87[5] = v31;
      v30 = [v75 bottomAnchor];
      v29 = [(CPSPausedCardView *)v86 bottomAnchor];
      v28 = [v30 constraintEqualToAnchor:-8.0 constant:?];
      v87[6] = v28;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:7];
      [v26 activateConstraints:?];
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](v35);
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
      *&v19 = MEMORY[0x277D82BD8](v46).n128_u64[0];
      [v75 startAnimating];
      objc_storeStrong(&v75, 0);
    }

    else
    {
      v22 = v86;
      v25 = [v76 bottomAnchor];
      v24 = [(CPSPausedCardView *)v86 bottomAnchor];
      v23 = [v25 constraintEqualToAnchor:-10.0 constant:?];
      [(CPSPausedCardView *)v22 addConstraint:?];
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
    }

    objc_storeStrong(&v76, 0);
    objc_storeStrong(&v78, 0);
  }

  v21 = MEMORY[0x277D82BE0](v86);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v86, 0);
  return v21;
}

- (CGSize)intrinsicContentSize
{
  [(CPSPausedCardView *)self bounds];
  v11 = CGRectGetWidth(v14) - 18.0;
  v9 = [(CPSPausedCardView *)self title];
  v8 = [(UILabel *)v9 text];
  v7 = [(CPSPausedCardView *)self title];
  v6 = [(UILabel *)v7 font];
  v5 = [(CPSPausedCardView *)self traitCollection];
  [v5 displayScale];
  CPSSizeForText(v8, v6, 0, v11, v2);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  v10 = [(CPSPausedCardView *)self spinner];
  MEMORY[0x277D82BD8](v10);
  [(CPSPausedCardView *)self bounds];
  CGRectGetWidth(v15);
  CGSizeMake();
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setCardBackgroundColor:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_cardBackgroundColor, location[0]);
  if (_UISolariumEnabled())
  {
    [(UIView *)v4->_contentView setGlassTintColor:location[0]];
  }

  else
  {
    [(UIView *)v4->_contentView setPlatterBackgroundColor:location[0]];
  }

  objc_storeStrong(location, 0);
}

+ (id)createPlatterView
{
  v5[2] = a1;
  v5[1] = a2;
  v2 = [CPSCardPlatterView alloc];
  v5[0] = [(CPSCardPlatterView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);

  return v4;
}

@end