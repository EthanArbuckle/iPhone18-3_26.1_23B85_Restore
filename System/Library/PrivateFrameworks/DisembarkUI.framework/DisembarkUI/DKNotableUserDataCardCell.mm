@interface DKNotableUserDataCardCell
- (DKNotableUserDataCardCell)initWithTitle:(id)title subtitle:(id)subtitle accessoryView:(id)view;
- (id)_bodyFont;
- (id)_stateFont;
- (id)_titleFont;
- (int64_t)_stateStackViewAxis;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation DKNotableUserDataCardCell

- (DKNotableUserDataCardCell)initWithTitle:(id)title subtitle:(id)subtitle accessoryView:(id)view
{
  v69[7] = *MEMORY[0x277D85DE8];
  titleCopy = title;
  subtitleCopy = subtitle;
  viewCopy = view;
  v67.receiver = self;
  v67.super_class = DKNotableUserDataCardCell;
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [(DKNotableUserDataCardCell *)&v67 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
  v16 = v15;
  if (v15)
  {
    v64 = viewCopy;
    objc_storeStrong(&v15->_accessoryView, view);
    [(UIView *)v16->_accessoryView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (titleCopy)
    {
      v17 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
      titleLabel = v16->_titleLabel;
      v16->_titleLabel = v17;

      [(UILabel *)v16->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      _titleFont = [(DKNotableUserDataCardCell *)v16 _titleFont];
      [(UILabel *)v16->_titleLabel setFont:_titleFont];

      [(UILabel *)v16->_titleLabel setText:titleCopy];
      [(UILabel *)v16->_titleLabel setNumberOfLines:0];
    }

    v66 = titleCopy;
    v20 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{v11, v12, v13, v14}];
    subtitleLabel = v16->_subtitleLabel;
    v16->_subtitleLabel = v20;

    [(UILabel *)v16->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v16->_subtitleLabel setTextColor:secondaryLabelColor];

    _bodyFont = [(DKNotableUserDataCardCell *)v16 _bodyFont];
    [(UILabel *)v16->_subtitleLabel setFont:_bodyFont];

    v65 = subtitleCopy;
    [(UILabel *)v16->_subtitleLabel setText:subtitleCopy];
    [(UILabel *)v16->_subtitleLabel setNumberOfLines:0];
    v24 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v11, v12, v13, v14}];
    labelContainer = v16->_labelContainer;
    v16->_labelContainer = v24;

    [(UIStackView *)v16->_labelContainer setAxis:1];
    [(UIStackView *)v16->_labelContainer setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v16->_labelContainer addArrangedSubview:v16->_titleLabel];
    [(UIStackView *)v16->_labelContainer addArrangedSubview:v16->_subtitleLabel];
    [(DKNotableUserDataCardCell *)v16 addSubview:v16->_labelContainer];
    if (v16->_accessoryView)
    {
      [(DKNotableUserDataCardCell *)v16 addSubview:?];
      widthAnchor = [(UIView *)v16->_accessoryView widthAnchor];
      v56 = [widthAnchor constraintEqualToConstant:40.0];
      v69[0] = v56;
      heightAnchor = [(UIView *)v16->_accessoryView heightAnchor];
      v62 = [heightAnchor constraintEqualToConstant:40.0];
      v69[1] = v62;
      leadingAnchor = [(UIView *)v16->_accessoryView leadingAnchor];
      leadingAnchor2 = [(DKNotableUserDataCardCell *)v16 leadingAnchor];
      v55 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v69[2] = v55;
      topAnchor = [(UIView *)v16->_accessoryView topAnchor];
      topAnchor2 = [(DKNotableUserDataCardCell *)v16 topAnchor];
      v50 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v69[3] = v50;
      leadingAnchor3 = [(UIStackView *)v16->_labelContainer leadingAnchor];
      trailingAnchor = [(UIView *)v16->_accessoryView trailingAnchor];
      v26 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:14.0];
      v69[4] = v26;
      topAnchor3 = [(UIStackView *)v16->_labelContainer topAnchor];
      topAnchor4 = [(UIView *)v16->_accessoryView topAnchor];
      v29 = [topAnchor3 constraintLessThanOrEqualToAnchor:topAnchor4];
      v69[5] = v29;
      bottomAnchor = [(UIStackView *)v16->_labelContainer bottomAnchor];
      bottomAnchor2 = [(UIView *)v16->_accessoryView bottomAnchor];
      v32 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
      v69[6] = v32;
      v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:7];
      [(DKNotableUserDataCardCell *)v16 addConstraints:v33];

      leadingAnchor4 = widthAnchor;
      leadingAnchor5 = v56;

      v36 = heightAnchor;
    }

    else
    {
      leadingAnchor4 = [(UIStackView *)v16->_labelContainer leadingAnchor];
      leadingAnchor5 = [(DKNotableUserDataCardCell *)v16 leadingAnchor];
      v36 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:54.0];
      [(DKNotableUserDataCardCell *)v16 addConstraint:v36];
    }

    trailingAnchor2 = [(UIStackView *)v16->_labelContainer trailingAnchor];
    trailingAnchor3 = [(DKNotableUserDataCardCell *)v16 trailingAnchor];
    v59 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
    v68[0] = v59;
    centerYAnchor = [(UIStackView *)v16->_labelContainer centerYAnchor];
    centerYAnchor2 = [(DKNotableUserDataCardCell *)v16 centerYAnchor];
    v38 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v68[1] = v38;
    topAnchor5 = [(UIStackView *)v16->_labelContainer topAnchor];
    topAnchor6 = [(DKNotableUserDataCardCell *)v16 topAnchor];
    v41 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
    v68[2] = v41;
    bottomAnchor3 = [(UIStackView *)v16->_labelContainer bottomAnchor];
    bottomAnchor4 = [(DKNotableUserDataCardCell *)v16 bottomAnchor];
    v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v68[3] = v44;
    v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:4];
    [(DKNotableUserDataCardCell *)v16 addConstraints:v45];

    subtitleCopy = v65;
    titleCopy = v66;
    viewCopy = v64;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = DKNotableUserDataCardCell;
  [(DKNotableUserDataCardCell *)&v8 traitCollectionDidChange:change];
  _titleFont = [(DKNotableUserDataCardCell *)self _titleFont];
  titleLabel = [(DKNotableUserDataCardCell *)self titleLabel];
  [titleLabel setFont:_titleFont];

  _bodyFont = [(DKNotableUserDataCardCell *)self _bodyFont];
  subtitleLabel = [(DKNotableUserDataCardCell *)self subtitleLabel];
  [subtitleLabel setFont:_bodyFont];
}

- (id)_titleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (id)_stateFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968]];
  v3 = [v2 fontDescriptorWithSymbolicTraits:2];

  v4 = [MEMORY[0x277D74300] fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (id)_bodyFont
{
  v2 = MEMORY[0x277D74300];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v4 = [v2 fontWithDescriptor:v3 size:0.0];

  return v4;
}

- (int64_t)_stateStackViewAxis
{
  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  preferredContentSizeCategory = [mEMORY[0x277D75128] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  return IsAccessibilityCategory;
}

@end