@interface CPSRatingView
- (CGSize)intrinsicContentSize;
- (CPSRatingView)initWithInformationItem:(id)a3 layout:(int64_t)a4;
@end

@implementation CPSRatingView

- (CPSRatingView)initWithInformationItem:(id)a3 layout:(int64_t)a4
{
  v58[4] = *MEMORY[0x277D85DE8];
  v57 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v55 = a4;
  v4 = v57;
  v57 = 0;
  v54.receiver = v4;
  v54.super_class = CPSRatingView;
  v57 = [(CPSRatingView *)&v54 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  objc_storeStrong(&v57, v57);
  if (v57)
  {
    v53 = v55 == 1;
    v5 = objc_alloc(MEMORY[0x277D75A68]);
    v6 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    stackView = v57->_stackView;
    v57->_stackView = v6;
    *&v8 = MEMORY[0x277D82BD8](stackView).n128_u64[0];
    [(UIStackView *)v57->_stackView setTranslatesAutoresizingMaskIntoConstraints:0, v8];
    [(UIStackView *)v57->_stackView setAlignment:1];
    [(UIStackView *)v57->_stackView setDistribution:?];
    [(UIStackView *)v57->_stackView setAxis:0];
    v44 = [(CPSRatingView *)v57 traitCollection];
    v52 = CPUIImageStarRatingEmpty();
    *&v9 = MEMORY[0x277D82BD8](v44).n128_u64[0];
    v45 = [location[0] rating];
    [v45 floatValue];
    v46 = (v10 * 2.0);
    v11 = MEMORY[0x277D82BD8](v45).n128_u64[0];
    v51 = v46;
    for (i = 0; ; ++i)
    {
      v43 = i;
      v41 = [location[0] maximumRating];
      [v41 floatValue];
      v42 = (v12 * 2.0);
      v11 = MEMORY[0x277D82BD8](v41).n128_u64[0];
      if (v43 >= v42)
      {
        break;
      }

      if (i % 2 == 1)
      {
        if (i < v51)
        {
          v40 = [(CPSRatingView *)v57 traitCollection];
          v13 = CPUIImageStarRatingFull();
          v14 = v52;
          v52 = v13;
          MEMORY[0x277D82BD8](v14);
          MEMORY[0x277D82BD8](v40);
        }

        v15 = objc_alloc(MEMORY[0x277D755E8]);
        v49 = [v15 initWithImage:v52];
        [v49 setContentHuggingPriority:0 forAxis:?];
        LODWORD(v16) = 1148846080;
        [v49 setContentHuggingPriority:1 forAxis:v16];
        v38 = [MEMORY[0x277D75348] systemYellowColor];
        [v49 setTintColor:?];
        *&v17 = MEMORY[0x277D82BD8](v38).n128_u64[0];
        [(UIStackView *)v57->_stackView addArrangedSubview:v49, v17];
        v39 = [(CPSRatingView *)v57 traitCollection];
        v18 = CPUIImageStarRatingEmpty();
        v19 = v52;
        v52 = v18;
        MEMORY[0x277D82BD8](v19);
        MEMORY[0x277D82BD8](v39);
        objc_storeStrong(&v49, 0);
      }

      else if (i < v51)
      {
        v37 = [(CPSRatingView *)v57 traitCollection];
        v20 = CPUIImageStarRatingHalf();
        v21 = v52;
        v52 = v20;
        MEMORY[0x277D82BD8](v21);
        v11 = MEMORY[0x277D82BD8](v37).n128_u64[0];
      }
    }

    [(CPSRatingView *)v57 addSubview:v57->_stackView, *&v11];
    v36 = [(UIStackView *)v57->_stackView leadingAnchor];
    v35 = [(CPSRatingView *)v57 leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:?];
    v58[0] = v34;
    v33 = [(UIStackView *)v57->_stackView topAnchor];
    v32 = [(CPSRatingView *)v57 topAnchor];
    v31 = [v33 constraintEqualToAnchor:?];
    v58[1] = v31;
    v30 = [(UIStackView *)v57->_stackView centerYAnchor];
    v29 = [(CPSRatingView *)v57 centerYAnchor];
    v28 = [v30 constraintEqualToAnchor:?];
    v58[2] = v28;
    v27 = [(CPSRatingView *)v57 widthAnchor];
    v26 = [(UIStackView *)v57->_stackView widthAnchor];
    v25 = [v27 constraintGreaterThanOrEqualToAnchor:?];
    v58[3] = v25;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:4];
    MEMORY[0x277D82BD8](v25);
    MEMORY[0x277D82BD8](v26);
    MEMORY[0x277D82BD8](v27);
    MEMORY[0x277D82BD8](v28);
    MEMORY[0x277D82BD8](v29);
    MEMORY[0x277D82BD8](v30);
    MEMORY[0x277D82BD8](v31);
    MEMORY[0x277D82BD8](v32);
    MEMORY[0x277D82BD8](v33);
    MEMORY[0x277D82BD8](v34);
    MEMORY[0x277D82BD8](v35);
    *&v22 = MEMORY[0x277D82BD8](v36).n128_u64[0];
    [MEMORY[0x277CCAAD0] activateConstraints:{v48, v22}];
    objc_storeStrong(&v48, 0);
    objc_storeStrong(&v52, 0);
  }

  v24 = MEMORY[0x277D82BE0](v57);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v57, 0);
  return v24;
}

- (CGSize)intrinsicContentSize
{
  v6 = [(CPSRatingView *)self stackView];
  [(UIStackView *)v6 frame];
  v7 = v2;
  v8 = v3;
  MEMORY[0x277D82BD8](v6);
  v5 = v8;
  v4 = v7;
  result.height = v5;
  result.width = v4;
  return result;
}

@end