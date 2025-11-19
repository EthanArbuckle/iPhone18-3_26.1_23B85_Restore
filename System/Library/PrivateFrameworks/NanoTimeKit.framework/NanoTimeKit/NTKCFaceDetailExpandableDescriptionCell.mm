@interface NTKCFaceDetailExpandableDescriptionCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailExpandableDescriptionCell)init;
- (NTKCFaceDetailExpandableDescriptionCellDelegate)delegate;
- (void)_fontSizeDidChange;
- (void)_moreTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setAttributedText:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setText:(id)a3;
@end

@implementation NTKCFaceDetailExpandableDescriptionCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (NTKCFaceDetailExpandableDescriptionCell)init
{
  v15.receiver = self;
  v15.super_class = NTKCFaceDetailExpandableDescriptionCell;
  v2 = [(NTKCFaceDetailDescriptionCell *)&v15 init];
  v3 = v2;
  if (v2)
  {
    [(NTKCFaceDetailExpandableDescriptionCell *)v2 setClipsToBounds:1];
    v4 = [MEMORY[0x277D75220] buttonWithType:1];
    moreButton = v3->_moreButton;
    v3->_moreButton = v4;

    v6 = BPSBridgeTintColor();
    [(UIButton *)v3->_moreButton setTintColor:v6];

    v7 = [(NTKCFaceDetailDescriptionCell *)v3 textView];
    v8 = [v7 font];
    v9 = [(UIButton *)v3->_moreButton titleLabel];
    [v9 setFont:v8];

    v10 = v3->_moreButton;
    v12 = NTKCCustomizationLocalizedString(@"ACTION_MORE", @"more", v11);
    [(UIButton *)v10 setTitle:v12 forState:0];

    [(UIButton *)v3->_moreButton addTarget:v3 action:sel__moreTapped forControlEvents:64];
    v13 = [(NTKCFaceDetailExpandableDescriptionCell *)v3 contentView];
    [v13 addSubview:v3->_moreButton];

    v3->_shouldLayoutText = 1;
    v3->_laidOutWidth = 0.0;
  }

  return v3;
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    self->_shouldLayoutText = 1;
    [(NTKCFaceDetailExpandableDescriptionCell *)self setNeedsLayout];
  }
}

- (void)setText:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKCFaceDetailExpandableDescriptionCell;
  [(NTKCFaceDetailDescriptionCell *)&v4 setText:a3];
  self->_shouldLayoutText = 1;
}

- (void)setAttributedText:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKCFaceDetailExpandableDescriptionCell;
  [(NTKCFaceDetailDescriptionCell *)&v4 setAttributedText:a3];
  self->_shouldLayoutText = 1;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailExpandableDescriptionCell;
  [(NTKCFaceDetailExpandableDescriptionCell *)&v3 prepareForReuse];
  self->_shouldLayoutText = 1;
}

- (void)layoutSubviews
{
  v100[1] = *MEMORY[0x277D85DE8];
  v99.receiver = self;
  v99.super_class = NTKCFaceDetailExpandableDescriptionCell;
  [(NTKCFaceDetailDescriptionCell *)&v99 layoutSubviews];
  v3 = [(NTKCFaceDetailExpandableDescriptionCell *)self contentView];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v101.origin.x = v5;
  v101.origin.y = v7;
  v101.size.width = v9;
  v101.size.height = v11;
  Width = CGRectGetWidth(v101);
  [(NTKCFaceDetailExpandableDescriptionCell *)self separatorInset];
  v14 = Width + v13 * -2.0;
  IsRTL = CLKLayoutIsRTL();
  if (self->_shouldLayoutText || self->_laidOutWidth != v14)
  {
    v16 = [(NTKCFaceDetailDescriptionCell *)self textView];
    v17 = [v16 textContainer];
    [v17 setExclusionPaths:MEMORY[0x277CBEBF8]];

    v18 = [(NTKCFaceDetailDescriptionCell *)self textView];
    v19 = [v18 textContainer];
    [v19 setMaximumNumberOfLines:3];

    v20 = [(NTKCFaceDetailDescriptionCell *)self textView];
    [v20 sizeThatFits:{v14, 1.79769313e308}];
    rect_16 = v21;

    v22 = [(NTKCFaceDetailDescriptionCell *)self textView];
    v23 = [v22 textContainer];
    [v23 setMaximumNumberOfLines:0];

    v24 = [(NTKCFaceDetailDescriptionCell *)self textView];
    [v24 sizeThatFits:{v14, 1.79769313e308}];
    rect_8 = v25;

    if (self->_expanded)
    {
      v26 = 0;
    }

    else
    {
      v26 = 3;
    }

    v27 = [(NTKCFaceDetailDescriptionCell *)self textView];
    v28 = [v27 textContainer];
    [v28 setMaximumNumberOfLines:v26];

    v29 = [(NTKCFaceDetailDescriptionCell *)self textView];
    [v29 frame];

    v30 = [(NTKCFaceDetailDescriptionCell *)self textView];
    [v30 sizeThatFits:{v14, 1.79769313e308}];
    v32 = v31;

    [(NTKCFaceDetailExpandableDescriptionCell *)self separatorInset];
    v34 = v33;
    v35 = [(NTKCFaceDetailDescriptionCell *)self textView];
    v36 = [v35 font];
    [v36 _scaledValueForValue:13.5];
    v38 = v37;

    v39 = [(NTKCFaceDetailDescriptionCell *)self textView];
    [v39 setFrame:{v34, v38, v14, v32}];

    v40 = [(NTKCFaceDetailExpandableDescriptionCell *)self moreButton];
    [v40 sizeToFit];

    v41 = [(NTKCFaceDetailExpandableDescriptionCell *)self moreButton];
    [v41 layoutIfNeeded];

    v42 = [(NTKCFaceDetailExpandableDescriptionCell *)self moreButton];
    [v42 frame];
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v50 = v49;

    rect = v44;
    v102.origin.x = v44;
    v102.origin.y = v46;
    v102.size.width = v48;
    v102.size.height = v50;
    Height = CGRectGetHeight(v102);
    v52 = [(NTKCFaceDetailExpandableDescriptionCell *)self moreButton];
    v53 = [v52 titleLabel];
    [v53 frame];
    rect_24 = Height - CGRectGetMaxY(v103);

    v54 = v34;
    v55 = v38;
    v56 = v14;
    v57 = v32;
    if (IsRTL)
    {
      MinX = CGRectGetMinX(*&v54);
    }

    else
    {
      v94 = v14;
      v59 = v38;
      v60 = v34;
      v61 = v32;
      MaxX = CGRectGetMaxX(*&v54);
      v104.origin.x = rect;
      v104.origin.y = v46;
      v104.size.width = v48;
      v104.size.height = v50;
      MinX = MaxX - CGRectGetWidth(v104);
      v32 = v61;
      v34 = v60;
      v38 = v59;
      v14 = v94;
    }

    v105.origin.x = v34;
    v105.origin.y = v38;
    v105.size.width = v14;
    v105.size.height = v32;
    v63 = rect_24 + CGRectGetMaxY(v105) - Height;
    v64 = [(NTKCFaceDetailExpandableDescriptionCell *)self moreButton];
    [v64 setFrame:{MinX, v63, v48, v50}];

    expanded = self->_expanded;
    v66 = [(NTKCFaceDetailExpandableDescriptionCell *)self moreButton];
    v69 = v66;
    if (expanded || (v68 = rect_8, v67 = rect_16, rect_8 <= rect_16))
    {
      [v66 setHidden:{1, v67, v68}];
    }

    else
    {
      [v66 setHidden:{0, rect_16, rect_8}];

      v70 = [(NTKCFaceDetailDescriptionCell *)self textView];
      v71 = [(NTKCFaceDetailExpandableDescriptionCell *)self moreButton];
      v72 = [v71 titleLabel];
      [v72 frame];
      v74 = v73;
      v76 = v75;
      v77 = v14;
      v79 = v78;
      v81 = v80;
      v82 = [(NTKCFaceDetailExpandableDescriptionCell *)self moreButton];
      [v70 convertRect:v82 fromView:{v74, v76, v79, v81}];
      v84 = v83;
      v86 = v85;
      v88 = v87;
      v90 = v89;

      v106.origin.x = v84;
      v106.origin.y = v86;
      v106.size.width = v88;
      v14 = v77;
      v106.size.height = v90;
      v107 = CGRectInset(v106, 0.0, 1.0);
      v69 = [MEMORY[0x277D75208] bezierPathWithRect:{v107.origin.x, v107.origin.y, v107.size.width, v107.size.height}];
      v100[0] = v69;
      v91 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:1];
      v92 = [(NTKCFaceDetailDescriptionCell *)self textView];
      v93 = [v92 textContainer];
      [v93 setExclusionPaths:v91];
    }

    self->_shouldLayoutText = 0;
    self->_laidOutWidth = v14;
  }
}

- (void)_moreTapped
{
  [(NTKCFaceDetailExpandableDescriptionCell *)self setExpanded:1];
  v3 = [(NTKCFaceDetailExpandableDescriptionCell *)self delegate];
  [v3 descriptionCellDidExpand:self];
}

- (void)_fontSizeDidChange
{
  v6.receiver = self;
  v6.super_class = NTKCFaceDetailExpandableDescriptionCell;
  [(NTKCFaceDetailDescriptionCell *)&v6 _fontSizeDidChange];
  v3 = [(NTKCFaceDetailDescriptionCell *)self textView];
  v4 = [v3 font];
  v5 = [(UIButton *)self->_moreButton titleLabel];
  [v5 setFont:v4];

  self->_shouldLayoutText = 1;
  [(NTKCFaceDetailExpandableDescriptionCell *)self setNeedsLayout];
}

- (NTKCFaceDetailExpandableDescriptionCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end