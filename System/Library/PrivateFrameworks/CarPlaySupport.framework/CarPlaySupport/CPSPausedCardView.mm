@interface CPSPausedCardView
+ (id)createPlatterView;
- (CGSize)intrinsicContentSize;
- (CPSPausedCardView)initWithReason:(unint64_t)reason title:(id)title backgroundColor:(id)color;
- (void)setCardBackgroundColor:(id)color;
@end

@implementation CPSPausedCardView

- (CPSPausedCardView)initWithReason:(unint64_t)reason title:(id)title backgroundColor:(id)color
{
  v89[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v85 = a2;
  reasonCopy = reason;
  location = 0;
  objc_storeStrong(&location, title);
  v82 = 0;
  objc_storeStrong(&v82, color);
  v5 = selfCopy;
  selfCopy = 0;
  v81.receiver = v5;
  v81.super_class = CPSPausedCardView;
  selfCopy = [(CPSPausedCardView *)&v81 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    if (_UISolariumEnabled())
    {
      v80 = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
      [v80 setTranslatesAutoresizingMaskIntoConstraints:0];
      objc_storeStrong(&selfCopy->_contentView, v80);
      objc_storeStrong(&v80, 0);
    }

    else
    {
      createPlatterView = [objc_opt_class() createPlatterView];
      objc_storeStrong(&selfCopy->_contentView, createPlatterView);
      objc_storeStrong(&createPlatterView, 0);
    }

    [(CPSPausedCardView *)selfCopy addSubview:selfCopy->_contentView];
    v60 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIView *)selfCopy->_contentView leadingAnchor];
    leadingAnchor2 = [(CPSPausedCardView *)selfCopy leadingAnchor];
    v71 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:?];
    v89[0] = v71;
    topAnchor = [(UIView *)selfCopy->_contentView topAnchor];
    topAnchor2 = [(CPSPausedCardView *)selfCopy topAnchor];
    v68 = [(NSLayoutYAxisAnchor *)topAnchor constraintEqualToAnchor:?];
    v89[1] = v68;
    trailingAnchor = [(UIView *)selfCopy->_contentView trailingAnchor];
    trailingAnchor2 = [(CPSPausedCardView *)selfCopy trailingAnchor];
    v65 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:?];
    v89[2] = v65;
    bottomAnchor = [(UIView *)selfCopy->_contentView bottomAnchor];
    bottomAnchor2 = [(CPSPausedCardView *)selfCopy bottomAnchor];
    v62 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:?];
    v89[3] = v62;
    v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:4];
    [v60 activateConstraints:?];
    MEMORY[0x277D82BD8](v61);
    MEMORY[0x277D82BD8](v62);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v65);
    MEMORY[0x277D82BD8](trailingAnchor2);
    MEMORY[0x277D82BD8](trailingAnchor);
    MEMORY[0x277D82BD8](v68);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v71);
    MEMORY[0x277D82BD8](leadingAnchor2);
    v6 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
    v78 = 0;
    v77 = 0;
    switch(reasonCopy)
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

    [(CPSPausedCardView *)selfCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    v76 = objc_alloc_init(MEMORY[0x277D756B8]);
    [v76 setTranslatesAutoresizingMaskIntoConstraints:0];
    labelColor = [MEMORY[0x277D75348] labelColor];
    [v76 setTextColor:?];
    [v76 setTextAlignment:{1, MEMORY[0x277D82BD8](labelColor).n128_f64[0]}];
    titleFont = [objc_opt_class() titleFont];
    [v76 setFont:?];
    *&v17 = MEMORY[0x277D82BD8](titleFont).n128_u64[0];
    [v76 setText:{location, v17}];
    [v76 setNumberOfLines:2];
    [v76 setMinimumScaleFactor:0.7];
    [v76 setAdjustsFontSizeToFitWidth:1];
    objc_storeStrong(&selfCopy->_title, v76);
    [(UIView *)selfCopy->_contentView addSubview:v76];
    v49 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [v76 leadingAnchor];
    leadingAnchor4 = [(CPSPausedCardView *)selfCopy leadingAnchor];
    v57 = [leadingAnchor3 constraintEqualToAnchor:9.0 constant:?];
    v88[0] = v57;
    trailingAnchor3 = [v76 trailingAnchor];
    trailingAnchor4 = [(CPSPausedCardView *)selfCopy trailingAnchor];
    v54 = [trailingAnchor3 constraintEqualToAnchor:-9.0 constant:?];
    v88[1] = v54;
    topAnchor3 = [v76 topAnchor];
    topAnchor4 = [(CPSPausedCardView *)selfCopy topAnchor];
    v51 = [topAnchor3 constraintEqualToAnchor:10.0 constant:?];
    v88[2] = v51;
    v50 = [MEMORY[0x277CBEA60] arrayWithObjects:v88 count:3];
    [v49 activateConstraints:?];
    MEMORY[0x277D82BD8](v50);
    MEMORY[0x277D82BD8](v51);
    MEMORY[0x277D82BD8](topAnchor4);
    MEMORY[0x277D82BD8](topAnchor3);
    MEMORY[0x277D82BD8](v54);
    MEMORY[0x277D82BD8](trailingAnchor4);
    MEMORY[0x277D82BD8](trailingAnchor3);
    MEMORY[0x277D82BD8](v57);
    MEMORY[0x277D82BD8](leadingAnchor4);
    *&v18 = MEMORY[0x277D82BD8](leadingAnchor3).n128_u64[0];
    if (v77)
    {
      v75 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
      [v75 setTranslatesAutoresizingMaskIntoConstraints:0];
      objc_storeStrong(&selfCopy->_spinner, v75);
      [(UIView *)selfCopy->_contentView addSubview:v75];
      v26 = MEMORY[0x277CCAAD0];
      centerXAnchor = [v75 centerXAnchor];
      centerXAnchor2 = [(CPSPausedCardView *)selfCopy centerXAnchor];
      v44 = [centerXAnchor constraintEqualToAnchor:?];
      v87[0] = v44;
      widthAnchor = [v75 widthAnchor];
      v42 = [widthAnchor constraintEqualToConstant:?];
      v87[1] = v42;
      heightAnchor = [v75 heightAnchor];
      v40 = [heightAnchor constraintEqualToConstant:26.0];
      v87[2] = v40;
      leadingAnchor5 = [v75 leadingAnchor];
      leadingAnchor6 = [(CPSPausedCardView *)selfCopy leadingAnchor];
      v37 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:9.0 constant:?];
      v87[3] = v37;
      trailingAnchor5 = [v75 trailingAnchor];
      trailingAnchor6 = [(CPSPausedCardView *)selfCopy trailingAnchor];
      v34 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:-9.0 constant:?];
      v87[4] = v34;
      topAnchor5 = [v75 topAnchor];
      lastBaselineAnchor = [v76 lastBaselineAnchor];
      v31 = [topAnchor5 constraintEqualToAnchor:8.0 constant:?];
      v87[5] = v31;
      bottomAnchor3 = [v75 bottomAnchor];
      bottomAnchor4 = [(CPSPausedCardView *)selfCopy bottomAnchor];
      v28 = [bottomAnchor3 constraintEqualToAnchor:-8.0 constant:?];
      v87[6] = v28;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:7];
      [v26 activateConstraints:?];
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](bottomAnchor4);
      MEMORY[0x277D82BD8](bottomAnchor3);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](lastBaselineAnchor);
      MEMORY[0x277D82BD8](topAnchor5);
      MEMORY[0x277D82BD8](v34);
      MEMORY[0x277D82BD8](trailingAnchor6);
      MEMORY[0x277D82BD8](trailingAnchor5);
      MEMORY[0x277D82BD8](v37);
      MEMORY[0x277D82BD8](leadingAnchor6);
      MEMORY[0x277D82BD8](leadingAnchor5);
      MEMORY[0x277D82BD8](v40);
      MEMORY[0x277D82BD8](heightAnchor);
      MEMORY[0x277D82BD8](v42);
      MEMORY[0x277D82BD8](widthAnchor);
      MEMORY[0x277D82BD8](v44);
      MEMORY[0x277D82BD8](centerXAnchor2);
      *&v19 = MEMORY[0x277D82BD8](centerXAnchor).n128_u64[0];
      [v75 startAnimating];
      objc_storeStrong(&v75, 0);
    }

    else
    {
      v22 = selfCopy;
      bottomAnchor5 = [v76 bottomAnchor];
      bottomAnchor6 = [(CPSPausedCardView *)selfCopy bottomAnchor];
      v23 = [bottomAnchor5 constraintEqualToAnchor:-10.0 constant:?];
      [(CPSPausedCardView *)v22 addConstraint:?];
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](bottomAnchor6);
      MEMORY[0x277D82BD8](bottomAnchor5);
    }

    objc_storeStrong(&v76, 0);
    objc_storeStrong(&v78, 0);
  }

  v21 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v82, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v21;
}

- (CGSize)intrinsicContentSize
{
  [(CPSPausedCardView *)self bounds];
  v11 = CGRectGetWidth(v14) - 18.0;
  title = [(CPSPausedCardView *)self title];
  text = [(UILabel *)title text];
  title2 = [(CPSPausedCardView *)self title];
  font = [(UILabel *)title2 font];
  traitCollection = [(CPSPausedCardView *)self traitCollection];
  [traitCollection displayScale];
  CPSSizeForText(text, font, 0, v11, v2);
  MEMORY[0x277D82BD8](traitCollection);
  MEMORY[0x277D82BD8](font);
  MEMORY[0x277D82BD8](title2);
  MEMORY[0x277D82BD8](text);
  spinner = [(CPSPausedCardView *)self spinner];
  MEMORY[0x277D82BD8](spinner);
  [(CPSPausedCardView *)self bounds];
  CGRectGetWidth(v15);
  CGSizeMake();
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)setCardBackgroundColor:(id)color
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, color);
  objc_storeStrong(&selfCopy->_cardBackgroundColor, location[0]);
  if (_UISolariumEnabled())
  {
    [(UIView *)selfCopy->_contentView setGlassTintColor:location[0]];
  }

  else
  {
    [(UIView *)selfCopy->_contentView setPlatterBackgroundColor:location[0]];
  }

  objc_storeStrong(location, 0);
}

+ (id)createPlatterView
{
  v5[2] = self;
  v5[1] = a2;
  v2 = [CPSCardPlatterView alloc];
  v5[0] = [(CPSCardPlatterView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v4 = MEMORY[0x277D82BE0](v5[0]);
  objc_storeStrong(v5, 0);

  return v4;
}

@end