@interface DKNotableUserDataCardView
- (DKNotableUserDataCardView)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5;
- (void)_toggleExpanded;
- (void)addCardCell:(id)a3;
@end

@implementation DKNotableUserDataCardView

- (DKNotableUserDataCardView)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5
{
  v49[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v47.receiver = self;
  v47.super_class = DKNotableUserDataCardView;
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [(DKNotableUserDataCardView *)&v47 initWithFrame:*MEMORY[0x277CBF3A0], v12, v13, v14];
  if (v15)
  {
    v16 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(DKNotableUserDataCardView *)v15 setBackgroundColor:v16];

    [(DKNotableUserDataCardView *)v15 _setContinuousCornerRadius:10.0];
    v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cells = v15->_cells;
    v15->_cells = v17;

    v19 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v11, v12, v13, v14}];
    stackView = v15->_stackView;
    v15->_stackView = v19;

    [(UIStackView *)v15->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v15->_stackView setAxis:1];
    [(UIStackView *)v15->_stackView setSpacing:16.0];
    [(DKNotableUserDataCardView *)v15 addSubview:v15->_stackView];
    v21 = [(DKNotableUserDataCardView *)v15 bottomAnchor];
    [(UIStackView *)v15->_stackView bottomAnchor];
    v22 = v46 = v8;
    v23 = [v21 constraintEqualToAnchor:v22 constant:0.0];
    bottomStackViewConstraint = v15->_bottomStackViewConstraint;
    v15->_bottomStackViewConstraint = v23;

    v43 = [(UIStackView *)v15->_stackView topAnchor];
    v42 = [(DKNotableUserDataCardView *)v15 topAnchor];
    v25 = [v43 constraintEqualToAnchor:v42];
    v49[0] = v25;
    v49[1] = v15->_bottomStackViewConstraint;
    [(UIStackView *)v15->_stackView leadingAnchor];
    v26 = v45 = v9;
    [(DKNotableUserDataCardView *)v15 leadingAnchor];
    v27 = v44 = v10;
    v28 = [v26 constraintEqualToAnchor:v27];
    v49[2] = v28;
    v29 = [(DKNotableUserDataCardView *)v15 trailingAnchor];
    v30 = [(UIStackView *)v15->_stackView trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v49[3] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
    [(DKNotableUserDataCardView *)v15 addConstraints:v32];

    v10 = v44;
    v9 = v45;

    v8 = v46;
    v33 = [[DKNotableUserDataCardPrimaryCell alloc] initWithTitle:v46 subtitle:v45 icon:v44];
    primaryCell = v15->_primaryCell;
    v15->_primaryCell = v33;

    [(DKNotableUserDataCardPrimaryCell *)v15->_primaryCell setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DKNotableUserDataCardPrimaryCell *)v15->_primaryCell setDirectionalLayoutMargins:0.0, 16.0, 0.0, 16.0];
    [(DKNotableUserDataCardPrimaryCell *)v15->_primaryCell setHideChevron:1];
    [(UIStackView *)v15->_stackView addArrangedSubview:v15->_primaryCell];
    v35 = [(DKNotableUserDataCardPrimaryCell *)v15->_primaryCell heightAnchor];
    v36 = [v35 constraintGreaterThanOrEqualToConstant:60.0];
    v48 = v36;
    v37 = [MEMORY[0x277CBEA60] arrayWithObjects:&v48 count:1];
    [(DKNotableUserDataCardView *)v15 addConstraints:v37];

    v38 = [objc_alloc(MEMORY[0x277D75A68]) initWithFrame:{v11, v12, v13, v14}];
    secondaryStackView = v15->_secondaryStackView;
    v15->_secondaryStackView = v38;

    [(UIStackView *)v15->_secondaryStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v15->_secondaryStackView setAxis:1];
    [(UIStackView *)v15->_secondaryStackView setSpacing:16.0];
    [(UIStackView *)v15->_secondaryStackView setLayoutMarginsRelativeArrangement:1];
    [(DKNotableUserDataCardPrimaryCell *)v15->_primaryCell directionalLayoutMargins];
    [(UIStackView *)v15->_secondaryStackView setDirectionalLayoutMargins:?];
  }

  v40 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)addCardCell:(id)a3
{
  v4 = a3;
  v5 = [(DKNotableUserDataCardView *)self cells];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel__toggleExpanded];
    [(DKNotableUserDataCardPrimaryCell *)self->_primaryCell addGestureRecognizer:v7];
  }

  [(DKNotableUserDataCardPrimaryCell *)self->_primaryCell setHideChevron:0];
  v8 = [(DKNotableUserDataCardView *)self cells];
  [v8 addObject:v4];
}

- (void)_toggleExpanded
{
  v3 = [(DKNotableUserDataCardView *)self isExpanded]^ 1;

  [(DKNotableUserDataCardView *)self setExpanded:v3];
}

@end