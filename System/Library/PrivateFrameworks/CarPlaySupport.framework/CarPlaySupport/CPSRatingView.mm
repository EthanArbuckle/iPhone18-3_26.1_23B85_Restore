@interface CPSRatingView
- (CGSize)intrinsicContentSize;
- (CPSRatingView)initWithInformationItem:(id)item layout:(int64_t)layout;
@end

@implementation CPSRatingView

- (CPSRatingView)initWithInformationItem:(id)item layout:(int64_t)layout
{
  v58[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  layoutCopy = layout;
  v4 = selfCopy;
  selfCopy = 0;
  v54.receiver = v4;
  v54.super_class = CPSRatingView;
  selfCopy = [(CPSRatingView *)&v54 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    v53 = layoutCopy == 1;
    v5 = objc_alloc(MEMORY[0x277D75A68]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    stackView = selfCopy->_stackView;
    selfCopy->_stackView = v6;
    *&v8 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
    [(UIStackView *)selfCopy->_stackView setTranslatesAutoresizingMaskIntoConstraints:0, v8];
    [(UIStackView *)selfCopy->_stackView setAlignment:1];
    [(UIStackView *)selfCopy->_stackView setDistribution:?];
    [(UIStackView *)selfCopy->_stackView setAxis:0];
    traitCollection = [(CPSRatingView *)selfCopy traitCollection];
    v52 = CPUIImageStarRatingEmpty();
    *&v9 = MEMORY[0x277D82BD8](traitCollection).n128_u64[0];
    rating = [location[0] rating];
    [rating floatValue];
    v46 = (v10 * 2.0);
    v11 = MEMORY[0x277D82BD8](rating).n128_u64[0];
    v51 = v46;
    for (i = 0; ; ++i)
    {
      v43 = i;
      maximumRating = [location[0] maximumRating];
      [maximumRating floatValue];
      v42 = (v12 * 2.0);
      v11 = MEMORY[0x277D82BD8](maximumRating).n128_u64[0];
      if (v43 >= v42)
      {
        break;
      }

      if (i % 2 == 1)
      {
        if (i < v51)
        {
          traitCollection2 = [(CPSRatingView *)selfCopy traitCollection];
          v13 = CPUIImageStarRatingFull();
          v14 = v52;
          v52 = v13;
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](traitCollection2);
        }

        v15 = objc_alloc(MEMORY[0x277D755E8]);
        v49 = [v15 initWithImage:v52];
        [v49 setContentHuggingPriority:0 forAxis:?];
        LODWORD(v16) = 1148846080;
        [v49 setContentHuggingPriority:1 forAxis:v16];
        systemYellowColor = [MEMORY[0x277D75348] systemYellowColor];
        [v49 setTintColor:?];
        *&v17 = MEMORY[0x277D82BD8](systemYellowColor).n128_u64[0];
        [(UIStackView *)selfCopy->_stackView addArrangedSubview:v49, v17];
        traitCollection3 = [(CPSRatingView *)selfCopy traitCollection];
        v18 = CPUIImageStarRatingEmpty();
        v19 = v52;
        v52 = v18;
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](traitCollection3);
        objc_storeStrong(&v49, 0);
      }

      else if (i < v51)
      {
        traitCollection4 = [(CPSRatingView *)selfCopy traitCollection];
        v20 = CPUIImageStarRatingHalf();
        v21 = v52;
        v52 = v20;
        MEMORY[0x277D82BD8](v21);
        v11 = MEMORY[0x277D82BD8](traitCollection4).n128_u64[0];
      }
    }

    [(CPSRatingView *)selfCopy addSubview:selfCopy->_stackView, *&v11];
    leadingAnchor = [(UIStackView *)selfCopy->_stackView leadingAnchor];
    leadingAnchor2 = [(CPSRatingView *)selfCopy leadingAnchor];
    v34 = [leadingAnchor constraintEqualToAnchor:?];
    v58[0] = v34;
    topAnchor = [(UIStackView *)selfCopy->_stackView topAnchor];
    topAnchor2 = [(CPSRatingView *)selfCopy topAnchor];
    v31 = [topAnchor constraintEqualToAnchor:?];
    v58[1] = v31;
    centerYAnchor = [(UIStackView *)selfCopy->_stackView centerYAnchor];
    centerYAnchor2 = [(CPSRatingView *)selfCopy centerYAnchor];
    v28 = [centerYAnchor constraintEqualToAnchor:?];
    v58[2] = v28;
    widthAnchor = [(CPSRatingView *)selfCopy widthAnchor];
    widthAnchor2 = [(UIStackView *)selfCopy->_stackView widthAnchor];
    v25 = [widthAnchor constraintGreaterThanOrEqualToAnchor:?];
    v58[3] = v25;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](widthAnchor2);
    MEMORY[0x277D82BD8](widthAnchor);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](centerYAnchor2);
    MEMORY[0x277D82BD8](centerYAnchor);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](leadingAnchor2);
    *&v22 = MEMORY[0x277D82BD8](leadingAnchor).n128_u64[0];
    [MEMORY[0x277CCAAD0] activateConstraints:{v48, v22}];
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v52, 0);
  }

  v24 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v24;
}

- (CGSize)intrinsicContentSize
{
  stackView = [(CPSRatingView *)self stackView];
  [(UIStackView *)stackView frame];
  v7 = v2;
  v8 = v3;
  MEMORY[0x277D82BD8](stackView);
  v5 = v8;
  v4 = v7;
  result.height = v5;
  result.width = v4;
  return result;
}

@end