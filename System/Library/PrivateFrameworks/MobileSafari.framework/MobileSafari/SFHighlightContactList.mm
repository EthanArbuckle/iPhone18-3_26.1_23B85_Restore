@interface SFHighlightContactList
- (SFHighlightContactList)initWithContacts:(id)contacts;
- (void)_didTapManage:(id)manage;
- (void)_updateList;
- (void)cellDidReceiveTap:(id)tap;
- (void)layoutSubviews;
- (void)setContacts:(id)contacts;
- (void)setInfoViewControllerHandler:(id)handler;
@end

@implementation SFHighlightContactList

- (SFHighlightContactList)initWithContacts:(id)contacts
{
  v69[10] = *MEMORY[0x1E69E9840];
  contactsCopy = contacts;
  v67.receiver = self;
  v67.super_class = SFHighlightContactList;
  v5 = [(SFHighlightContactList *)&v67 initWithFrame:0.0, 0.0, 240.0, 1000.0];
  if (v5)
  {
    v6 = [contactsCopy copy];
    contacts = v5->_contacts;
    v5->_contacts = v6;

    v8 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    stackView = v5->_stackView;
    v5->_stackView = v8;

    [(UIStackView *)v5->_stackView setAxis:1];
    [(UIStackView *)v5->_stackView setLayoutMarginsRelativeArrangement:1];
    [(UIStackView *)v5->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
    [(UIStackView *)v5->_stackView setBackgroundColor:secondarySystemGroupedBackgroundColor];

    [(UIStackView *)v5->_stackView _setContinuousCornerRadius:12.0];
    [(UIStackView *)v5->_stackView sizeToFit];
    [(SFHighlightContactList *)v5 addSubview:v5->_stackView];
    v11 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    headerLabel = v5->_headerLabel;
    v5->_headerLabel = v11;

    v66 = contactsCopy;
    v13 = _WBSLocalizedString();
    [(UILabel *)v5->_headerLabel setText:v13];

    [(UILabel *)v5->_headerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(UILabel *)v5->_headerLabel setFont:v14];

    [(UILabel *)v5->_headerLabel setAdjustsFontForContentSizeCategory:1];
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v5->_headerLabel setTextColor:secondaryLabelColor];

    [(SFHighlightContactList *)v5 addSubview:v5->_headerLabel];
    v16 = objc_alloc_init(SFHighlightContactListButton);
    manageButton = v5->_manageButton;
    v5->_manageButton = v16;

    [(SFHighlightContactListButton *)v5->_manageButton _setContinuousCornerRadius:12.0];
    [(SFHighlightContactListButton *)v5->_manageButton setDirectionalLayoutMargins:8.0, 16.0, 8.0, 16.0];
    v18 = _WBSLocalizedString();
    [(SFHighlightContactListButton *)v5->_manageButton setTitle:v18];

    [(SFHighlightContactListButton *)v5->_manageButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFHighlightContactListButton *)v5->_manageButton addTarget:v5 action:sel__didTapManage_ forControlEvents:64];
    [(SFHighlightContactList *)v5 addSubview:v5->_manageButton];
    topAnchor = [(SFHighlightContactListButton *)v5->_manageButton topAnchor];
    topAnchor2 = [(SFHighlightContactList *)v5 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    manageButtonTopConstraintForEmptyList = v5->_manageButtonTopConstraintForEmptyList;
    v5->_manageButtonTopConstraintForEmptyList = v21;

    topAnchor3 = [(SFHighlightContactListButton *)v5->_manageButton topAnchor];
    bottomAnchor = [(UIStackView *)v5->_stackView bottomAnchor];
    v25 = [topAnchor3 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor multiplier:2.0];
    manageButtonTopConstraintForNonEmptyList = v5->_manageButtonTopConstraintForNonEmptyList;
    v5->_manageButtonTopConstraintForNonEmptyList = v25;

    layoutMarginsGuide = [(SFHighlightContactList *)v5 layoutMarginsGuide];
    layoutMarginsGuide2 = [(SFHighlightContactListButton *)v5->_manageButton layoutMarginsGuide];
    v53 = MEMORY[0x1E696ACD8];
    topAnchor4 = [(UILabel *)v5->_headerLabel topAnchor];
    topAnchor5 = [(SFHighlightContactList *)v5 topAnchor];
    v62 = [topAnchor4 constraintEqualToAnchor:topAnchor5];
    v69[0] = v62;
    v65 = layoutMarginsGuide2;
    leadingAnchor = [layoutMarginsGuide2 leadingAnchor];
    leadingAnchor2 = [(UILabel *)v5->_headerLabel leadingAnchor];
    v59 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:8.0];
    v69[1] = v59;
    trailingAnchor = [(UILabel *)v5->_headerLabel trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
    v56 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v69[2] = v56;
    leadingAnchor3 = [layoutMarginsGuide leadingAnchor];
    leadingAnchor4 = [(UIStackView *)v5->_stackView leadingAnchor];
    v52 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:8.0];
    v69[3] = v52;
    trailingAnchor3 = [(UIStackView *)v5->_stackView trailingAnchor];
    trailingAnchor4 = [layoutMarginsGuide trailingAnchor];
    v48 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:8.0];
    v69[4] = v48;
    topAnchor6 = [(UIStackView *)v5->_stackView topAnchor];
    bottomAnchor2 = [(UILabel *)v5->_headerLabel bottomAnchor];
    v45 = [topAnchor6 constraintEqualToAnchor:bottomAnchor2 constant:4.0];
    v69[5] = v45;
    leadingAnchor5 = [layoutMarginsGuide leadingAnchor];
    leadingAnchor6 = [(SFHighlightContactListButton *)v5->_manageButton leadingAnchor];
    v42 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:8.0];
    v69[6] = v42;
    trailingAnchor5 = [(SFHighlightContactListButton *)v5->_manageButton trailingAnchor];
    v51 = layoutMarginsGuide;
    trailingAnchor6 = [layoutMarginsGuide trailingAnchor];
    v31 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:8.0];
    v69[7] = v31;
    heightAnchor = [(SFHighlightContactListButton *)v5->_manageButton heightAnchor];
    v33 = [heightAnchor constraintGreaterThanOrEqualToConstant:44.0];
    v69[8] = v33;
    bottomAnchor3 = [(SFHighlightContactListButton *)v5->_manageButton bottomAnchor];
    bottomAnchor4 = [layoutMarginsGuide bottomAnchor];
    v36 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v69[9] = v36;
    v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:10];
    [v53 activateConstraints:v37];

    contactsCopy = v66;
    [(SFHighlightContactList *)v5 setDirectionalLayoutMargins:*MEMORY[0x1E69DEAE0], 8.0, *MEMORY[0x1E69DEAE0], 8.0];
    [(SFHighlightContactList *)v5 _updateList];
    v68 = objc_opt_class();
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
    v39 = [(SFHighlightContactList *)v5 registerForTraitChanges:v38 withTarget:v5 action:sel__setNeedsResizeAfterLayout];

    v40 = v5;
  }

  return v5;
}

- (void)setInfoViewControllerHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = _Block_copy(handlerCopy);
  v6 = _Block_copy(self->_infoViewControllerHandler);
  v7 = WBSIsEqual();

  if ((v7 & 1) == 0)
  {
    v8 = [handlerCopy copy];
    infoViewControllerHandler = self->_infoViewControllerHandler;
    self->_infoViewControllerHandler = v8;

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
    v11 = [arrangedSubviews countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v16;
      do
      {
        v14 = 0;
        do
        {
          if (*v16 != v13)
          {
            objc_enumerationMutation(arrangedSubviews);
          }

          [*(*(&v15 + 1) + 8 * v14++) setInfoViewControllerHandler:handlerCopy];
        }

        while (v12 != v14);
        v12 = [arrangedSubviews countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v12);
    }
  }
}

- (void)setContacts:(id)contacts
{
  contactsCopy = contacts;
  if ((WBSIsEqual() & 1) == 0)
  {
    v4 = [contactsCopy copy];
    contacts = self->_contacts;
    self->_contacts = v4;

    [(SFHighlightContactList *)self _updateList];
  }
}

- (void)_updateList
{
  v45 = *MEMORY[0x1E69E9840];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  arrangedSubviews = [(UIStackView *)self->_stackView arrangedSubviews];
  v4 = [arrangedSubviews countByEnumeratingWithState:&v39 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(arrangedSubviews);
        }

        [*(*(&v39 + 1) + 8 * i) removeFromSuperview];
      }

      v5 = [arrangedSubviews countByEnumeratingWithState:&v39 objects:v44 count:16];
    }

    while (v5);
  }

  contacts = self->_contacts;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __37__SFHighlightContactList__updateList__block_invoke;
  v38[3] = &unk_1E721EFA0;
  v38[4] = self;
  v9 = [(NSArray *)contacts safari_mapObjectsUsingBlock:v38];
  v10 = [MEMORY[0x1E695CD58] comparatorForNameSortOrder:1];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __37__SFHighlightContactList__updateList__block_invoke_2;
  v36[3] = &unk_1E721EFC8;
  v11 = v10;
  v37 = v11;
  v12 = [v9 sortedArrayUsingComparator:v36];

  firstObject = [v12 firstObject];
  [firstObject setFirstInList:1];

  lastObject = [v12 lastObject];
  [lastObject setLastInList:1];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v32 objects:v43 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(UIStackView *)self->_stackView addArrangedSubview:*(*(&v32 + 1) + 8 * j), v32];
      }

      v17 = [v15 countByEnumeratingWithState:&v32 objects:v43 count:16];
    }

    while (v17);
  }

  [(SFHighlightContactList *)self layoutIfNeeded];
  v20 = [v15 count];
  v21 = v20 != 0;
  v22 = v20 == 0;
  if (v20)
  {
    v23 = @"person.crop.circle.badge.checkmark";
  }

  else
  {
    v23 = @"person.crop.circle.badge.plus";
  }

  [(UILabel *)self->_headerLabel setHidden:v22, v32];
  v24 = [MEMORY[0x1E69DCAB8] systemImageNamed:v23];
  [(SFHighlightContactListButton *)self->_manageButton setImage:v24];

  [(NSLayoutConstraint *)self->_manageButtonTopConstraintForEmptyList setActive:v22];
  [(NSLayoutConstraint *)self->_manageButtonTopConstraintForNonEmptyList setActive:v21];
  [(SFHighlightContactList *)self frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(SFHighlightContactList *)self systemLayoutSizeFittingSize:*MEMORY[0x1E69DE090], *(MEMORY[0x1E69DE090] + 8)];
  [(SFHighlightContactList *)self setFrame:v26, v28, v30, v31];
}

SFHighlightContactListCell *__37__SFHighlightContactList__updateList__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SFHighlightContactListCell alloc] initWithContact:v3];

  [(SFHighlightContactListCell *)v4 _setContinuousCornerRadius:12.0];
  [(SFHighlightContactListCell *)v4 setDirectionalLayoutMargins:8.0, 16.0, 8.0, 16.0];
  [(SFHighlightContactListCell *)v4 setDelegate:*(a1 + 32)];
  [(SFHighlightContactListCell *)v4 setInfoViewControllerHandler:*(*(a1 + 32) + 456)];

  return v4;
}

uint64_t __37__SFHighlightContactList__updateList__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 contact];
  v7 = [v5 contact];

  v8 = (*(v4 + 16))(v4, v6, v7);
  return v8;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = SFHighlightContactList;
  [(SFHighlightContactList *)&v11 layoutSubviews];
  if (self->_needsResizeAfterLayout)
  {
    self->_needsResizeAfterLayout = 0;
    [(SFHighlightContactList *)self frame];
    x = v12.origin.x;
    y = v12.origin.y;
    width = v12.size.width;
    v6 = CGRectGetWidth(v12);
    LODWORD(v7) = 1148846080;
    LODWORD(v8) = 1112014848;
    [(SFHighlightContactList *)self systemLayoutSizeFittingSize:v6 withHorizontalFittingPriority:0.0 verticalFittingPriority:v7, v8];
    [(SFHighlightContactList *)self setFrame:x, y, width, v9];
    resizeHandler = self->_resizeHandler;
    if (resizeHandler)
    {
      resizeHandler[2](resizeHandler, self);
    }
  }
}

- (void)_didTapManage:(id)manage
{
  manageHandler = self->_manageHandler;
  if (manageHandler)
  {
    manageHandler[2]();
  }
}

- (void)cellDidReceiveTap:(id)tap
{
  rowTapHandler = self->_rowTapHandler;
  if (rowTapHandler)
  {
    tapCopy = tap;
    contact = [tapCopy contact];
    contacts = self->_contacts;
    contact2 = [tapCopy contact];

    rowTapHandler[2](rowTapHandler, contact, [(NSArray *)contacts indexOfObject:contact2]);
  }
}

@end