@interface HUImageAndTextCell
- (CGSize)imageViewRecommendedSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (HUImageAndTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_resetContentConstraints;
- (void)prepareForReuse;
- (void)setImageViewRecommendedSize:(CGSize)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUImageAndTextCell

- (HUImageAndTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v34.receiver = self;
  v34.super_class = HUImageAndTextCell;
  v4 = [(HUImageAndTextCell *)&v34 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_new();
    messageTextView = v4->_messageTextView;
    v4->_messageTextView = v5;

    v7 = [(HUImageAndTextCell *)v4 messageTextView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(HUImageAndTextCell *)v4 messageTextView];
    [v8 setEditable:0];

    v9 = [(HUImageAndTextCell *)v4 messageTextView];
    [v9 _setInteractiveTextSelectionDisabled:1];

    v10 = [(HUImageAndTextCell *)v4 messageTextView];
    [v10 setScrollEnabled:0];

    v11 = [(HUImageAndTextCell *)v4 messageTextView];
    v12 = [v11 textContainer];
    [v12 setLineFragmentPadding:0.0];

    v13 = [MEMORY[0x277D75348] clearColor];
    v14 = [(HUImageAndTextCell *)v4 messageTextView];
    [v14 setBackgroundColor:v13];

    v15 = *MEMORY[0x277D768C8];
    v16 = *(MEMORY[0x277D768C8] + 8);
    v17 = *(MEMORY[0x277D768C8] + 16);
    v18 = *(MEMORY[0x277D768C8] + 24);
    v19 = [(HUImageAndTextCell *)v4 messageTextView];
    [v19 setTextContainerInset:{v15, v16, v17, v18}];

    v20 = [(HUImageAndTextCell *)v4 messageTextView];
    LODWORD(v21) = 1148846080;
    [v20 setContentCompressionResistancePriority:1 forAxis:v21];

    v22 = [(HUImageAndTextCell *)v4 messageTextView];
    LODWORD(v23) = 1132068864;
    [v22 setContentHuggingPriority:1 forAxis:v23];

    v24 = [(HUImageAndTextCell *)v4 contentView];
    v25 = [(HUImageAndTextCell *)v4 messageTextView];
    [v24 addSubview:v25];

    v26 = objc_opt_new();
    infoImageViewTrailingMarginLayoutGuide = v4->_infoImageViewTrailingMarginLayoutGuide;
    v4->_infoImageViewTrailingMarginLayoutGuide = v26;

    v28 = objc_opt_new();
    infoImageView = v4->_infoImageView;
    v4->_infoImageView = v28;

    v30 = [(HUImageAndTextCell *)v4 infoImageView];
    [v30 setTranslatesAutoresizingMaskIntoConstraints:0];

    v31 = [(HUImageAndTextCell *)v4 contentView];
    v32 = [(HUImageAndTextCell *)v4 infoImageView];
    [v31 addSubview:v32];

    [(HUImageAndTextCell *)v4 setImageViewRecommendedSize:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
    [(HUImageAndTextCell *)v4 setBackgroundColor:0];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUImageAndTextCell;
  [(HUImageAndTextCell *)&v3 prepareForReuse];
  [(HUImageAndTextCell *)self setItem:0];
  [(HUImageAndTextCell *)self setImageViewRecommendedSize:*(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24)];
  [(HUImageAndTextCell *)self updateUIWithAnimation:0];
}

- (void)setImageViewRecommendedSize:(CGSize)a3
{
  if (a3.width != self->_imageViewRecommendedSize.width || a3.height != self->_imageViewRecommendedSize.height)
  {
    self->_imageViewRecommendedSize = a3;
    [(HUImageAndTextCell *)self _resetContentConstraints];
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUImageAndTextCell *)self item];

  if (v4)
  {
    objc_opt_class();
    v5 = [(HUImageAndTextCell *)self item];
    v6 = [v5 latestResults];
    v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v25 = [v9 identifier];

    if (v25)
    {
      v10 = HUImageNamed(v25);
    }

    else
    {
      v10 = 0;
    }

    v14 = [(HUImageAndTextCell *)self infoImageView];
    [v14 setImage:v10];

    v15 = [(HUImageAndTextCell *)self infoImageView];
    [v15 setContentMode:1];

    v16 = [(HUImageAndTextCell *)self item];
    v17 = [v16 latestResults];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

    if ([v18 prefersDynamicString])
    {
      v19 = [(HUImageAndTextCell *)self messageTextView];
      [v19 bounds];
      v22 = [v18 dynamicStringForSize:MEMORY[0x277CBEC10] attributes:{v20, v21}];
      v23 = [(HUImageAndTextCell *)self messageTextView];
      [v23 setAttributedText:v22];
    }

    else
    {
      v19 = [v18 stringWithAttributes:MEMORY[0x277CBEC10]];
      v22 = [(HUImageAndTextCell *)self messageTextView];
      [v22 setAttributedText:v19];
    }

    [(HUImageAndTextCell *)self _resetContentConstraints];
    v24 = [(HUImageAndTextCell *)self messageTextView];
    [v24 invalidateIntrinsicContentSize];

    [(HUImageAndTextCell *)self invalidateIntrinsicContentSize];
  }

  else
  {
    v11 = [(HUImageAndTextCell *)self infoImageView];
    [v11 setImage:0];

    v12 = [(HUImageAndTextCell *)self messageTextView];
    [v12 setAttributedText:0];

    v13 = [(HUImageAndTextCell *)self messageTextView];
    [v13 setText:0];

    [(HUImageAndTextCell *)self _resetContentConstraints];
  }
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  [(HUImageAndTextCell *)self layoutMargins];
  v11 = v10;
  [(HUImageAndTextCell *)self layoutMargins];
  v13 = width - (v11 + v12);
  v14 = [(HUImageAndTextCell *)self infoImageView];
  v15 = [v14 image];

  if (v15)
  {
    v16 = MEMORY[0x277D76C80];
    [(HUImageAndTextCell *)self imageViewRecommendedSize];
    if (v18 == *(MEMORY[0x277CBF390] + 16) && v17 == *(MEMORY[0x277CBF390] + 24))
    {
      v22 = [(HUImageAndTextCell *)self infoImageView];
      v23 = [v22 image];
      [v23 size];
      v21 = v24;
    }

    else
    {
      [(HUImageAndTextCell *)self imageViewRecommendedSize];
      v21 = v20;
    }

    height = *(v16 + 8);
    v13 = v13 - v21 + -24.0;
  }

  v25 = [(HUImageAndTextCell *)self messageTextView];
  *&v26 = a4;
  *&v27 = a5;
  [v25 systemLayoutSizeFittingSize:v13 withHorizontalFittingPriority:height verticalFittingPriority:{v26, v27}];
  v29 = v28;
  v31 = v30;

  v32 = v29;
  v33 = v31;
  result.height = v33;
  result.width = v32;
  return result;
}

- (void)_resetContentConstraints
{
  v68[5] = *MEMORY[0x277D85DE8];
  v3 = 0x277CCA000uLL;
  v4 = MEMORY[0x277CCAAD0];
  v5 = [(HUImageAndTextCell *)self contentConstraints];
  [v4 deactivateConstraints:v5];

  v6 = objc_opt_new();
  v7 = [(HUImageAndTextCell *)self infoImageView];
  v8 = [v7 image];

  v9 = [(HUImageAndTextCell *)self contentView];
  v10 = [(HUImageAndTextCell *)self infoImageViewTrailingMarginLayoutGuide];
  if (v8)
  {
    [v9 addLayoutGuide:v10];

    [(HUImageAndTextCell *)self imageViewRecommendedSize];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __46__HUImageAndTextCell__resetContentConstraints__block_invoke;
    v67[3] = &unk_277DB8928;
    v67[5] = v11;
    v67[6] = v12;
    v67[4] = self;
    v66 = __46__HUImageAndTextCell__resetContentConstraints__block_invoke(v67);
    v65 = [(HUImageAndTextCell *)self infoImageView];
    v63 = [v65 topAnchor];
    v64 = [(HUImageAndTextCell *)self messageTextView];
    v62 = [v64 topAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v68[0] = v61;
    v60 = [(HUImageAndTextCell *)self infoImageView];
    v58 = [v60 leadingAnchor];
    v59 = [(HUImageAndTextCell *)self layoutMarginsGuide];
    v57 = [v59 leadingAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v68[1] = v56;
    v55 = [(HUImageAndTextCell *)self infoImageViewTrailingMarginLayoutGuide];
    v53 = [v55 leadingAnchor];
    v54 = [(HUImageAndTextCell *)self infoImageView];
    v52 = [v54 trailingAnchor];
    v50 = [v53 constraintEqualToAnchor:v52];
    v68[2] = v50;
    v13 = [(HUImageAndTextCell *)self infoImageViewTrailingMarginLayoutGuide];
    v14 = [v13 widthAnchor];
    v15 = [v14 constraintEqualToConstant:24.0];
    v68[3] = v15;
    v16 = [(HUImageAndTextCell *)self messageTextView];
    v17 = [v16 leadingAnchor];
    v18 = [(HUImageAndTextCell *)self infoImageViewTrailingMarginLayoutGuide];
    [v18 trailingAnchor];
    v20 = v19 = v6;
    v21 = [v17 constraintEqualToAnchor:v20];
    v68[4] = v21;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:5];

    v6 = v19;
    v3 = 0x277CCA000;

    [v19 addObjectsFromArray:v51];
    [v19 addObjectsFromArray:v66];
  }

  else
  {
    [v9 removeLayoutGuide:v10];

    v22 = [(HUImageAndTextCell *)self messageTextView];
    v23 = [v22 leadingAnchor];
    v24 = [(HUImageAndTextCell *)self layoutMarginsGuide];
    v25 = [v24 leadingAnchor];
    v26 = [v23 constraintEqualToAnchor:v25];

    [v6 addObject:v26];
    v27 = [(HUImageAndTextCell *)self layoutMarginsGuide];
    v28 = [v27 trailingAnchor];
    v29 = [(HUImageAndTextCell *)self messageTextView];
    v30 = [v29 trailingAnchor];
    v31 = [v28 constraintEqualToAnchor:v30];
    [v6 addObject:v31];
  }

  v32 = [(HUImageAndTextCell *)self contentView];
  v33 = [v32 topAnchor];
  v34 = [(HUImageAndTextCell *)self messageTextView];
  v35 = [v34 topAnchor];
  v36 = [v33 constraintEqualToAnchor:v35];
  [v6 addObject:v36];

  v37 = [(HUImageAndTextCell *)self contentView];
  v38 = [v37 bottomAnchor];
  v39 = [(HUImageAndTextCell *)self messageTextView];
  v40 = [v39 bottomAnchor];
  v41 = [v38 constraintEqualToAnchor:v40];
  [v6 addObject:v41];

  v42 = [(HUImageAndTextCell *)self contentView];
  v43 = [v42 layoutMarginsGuide];
  v44 = [v43 trailingAnchor];
  v45 = [(HUImageAndTextCell *)self messageTextView];
  v46 = [v45 trailingAnchor];
  v47 = [v44 constraintEqualToAnchor:v46];
  [v6 addObject:v47];

  [(HUImageAndTextCell *)self setContentConstraints:v6];
  v48 = *(v3 + 2768);
  v49 = [(HUImageAndTextCell *)self contentConstraints];
  [v48 activateConstraints:v49];
}

id __46__HUImageAndTextCell__resetContentConstraints__block_invoke(uint64_t a1)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v1 = *(MEMORY[0x277CBF390] + 16) == *(a1 + 40) && *(MEMORY[0x277CBF390] + 24) == *(a1 + 48);
  if (v1 || ([*(a1 + 32) infoImageView], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "image"), v4 = objc_claimAutoreleasedReturnValue(), v4, v3, !v4))
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v5 = [*(a1 + 32) infoImageView];
    v6 = [v5 widthAnchor];
    v7 = [v6 constraintEqualToConstant:*(a1 + 40)];
    v13[0] = v7;
    v8 = [*(a1 + 32) infoImageView];
    v9 = [v8 heightAnchor];
    v10 = [v9 constraintEqualToConstant:*(a1 + 48)];
    v13[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  }

  return v11;
}

- (CGSize)imageViewRecommendedSize
{
  width = self->_imageViewRecommendedSize.width;
  height = self->_imageViewRecommendedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end