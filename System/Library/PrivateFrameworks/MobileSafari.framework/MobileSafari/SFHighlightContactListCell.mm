@interface SFHighlightContactListCell
- (SFHighlightContactListCell)initWithContact:(id)a3;
- (SFHighlightContactListCellDelegate)delegate;
- (void)_didReceiveTap:(id)a3;
- (void)_updateMaskedCorners;
- (void)setFirstInList:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setLastInList:(BOOL)a3;
@end

@implementation SFHighlightContactListCell

- (SFHighlightContactListCell)initWithContact:(id)a3
{
  v93[1] = *MEMORY[0x1E69E9840];
  v84 = a3;
  v91.receiver = self;
  v91.super_class = SFHighlightContactListCell;
  v4 = [(SFHighlightContactListCell *)&v91 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v5 = [v84 copy];
    contact = v4->_contact;
    v4->_contact = v5;

    v7 = [MEMORY[0x1E69C8F00] sharedContactStoreManager];
    v79 = [v7 contactStore];

    v78 = [MEMORY[0x1E695D0E0] settingsWithContactStore:v79];
    v80 = [objc_alloc(MEMORY[0x1E695D0C8]) initWithSettings:v78];
    if (v84)
    {
      v93[0] = v84;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v93 count:1];
      [v80 setContacts:v8];
    }

    v9 = [v80 view];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFHighlightContactListCell *)v4 addSubview:v9];
    v85 = v9;
    v77 = objc_alloc_init(MEMORY[0x1E695CD80]);
    v10 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v11 = *MEMORY[0x1E69DDCF8];
    v12 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v10 setFont:v12];
    v86 = v10;

    [v10 setNumberOfLines:0];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v10 setAdjustsFontForContentSizeCategory:1];
    v13 = [v77 stringFromContact:v84];
    [v10 setText:v13];

    LODWORD(v14) = 1144586240;
    [v10 setContentCompressionResistancePriority:0 forAxis:v14];
    LODWORD(v15) = 1131413504;
    [v10 setContentHuggingPriority:0 forAxis:v15];
    [(SFHighlightContactListCell *)v4 addSubview:v10];
    v81 = [MEMORY[0x1E69DC740] borderlessButtonConfiguration];
    [v81 setContentInsets:{*MEMORY[0x1E69DC5C0], *(MEMORY[0x1E69DC5C0] + 8), *(MEMORY[0x1E69DC5C0] + 16), *(MEMORY[0x1E69DC5C0] + 24)}];
    v16 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v11 scale:2];
    [v81 setPreferredSymbolConfigurationForImage:v16];

    v17 = MEMORY[0x1E69DC738];
    v18 = MEMORY[0x1E69DC628];
    v19 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"info.circle"];
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __46__SFHighlightContactListCell_initWithContact___block_invoke;
    v87[3] = &unk_1E721C6E0;
    objc_copyWeak(&v89, &location);
    v88 = v84;
    v20 = [v18 actionWithTitle:&stru_1EFF36230 image:v19 identifier:0 handler:v87];
    v82 = [v17 buttonWithConfiguration:v81 primaryAction:v20];

    [v82 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SFHighlightContactListCell *)v4 addSubview:v82];
    v83 = [(SFHighlightContactListCell *)v4 layoutMarginsGuide];
    v48 = MEMORY[0x1E696ACD8];
    v76 = [v85 leadingAnchor];
    v75 = [v83 leadingAnchor];
    v74 = [v76 constraintEqualToAnchor:v75];
    v92[0] = v74;
    v73 = [v85 widthAnchor];
    v72 = [v73 constraintEqualToConstant:22.0];
    v92[1] = v72;
    v71 = [v85 centerYAnchor];
    v70 = [(SFHighlightContactListCell *)v4 centerYAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v92[2] = v69;
    v68 = [v85 heightAnchor];
    v67 = [v68 constraintEqualToConstant:22.0];
    v92[3] = v67;
    v66 = [v85 topAnchor];
    v65 = [v83 topAnchor];
    v64 = [v66 constraintGreaterThanOrEqualToAnchor:v65];
    v92[4] = v64;
    v63 = [v86 leadingAnchor];
    v62 = [v85 trailingAnchor];
    v61 = [v63 constraintEqualToSystemSpacingAfterAnchor:v62 multiplier:1.0];
    v92[5] = v61;
    v60 = [v86 centerYAnchor];
    v59 = [(SFHighlightContactListCell *)v4 centerYAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v92[6] = v58;
    v57 = [v86 topAnchor];
    v56 = [v83 topAnchor];
    v55 = [v57 constraintGreaterThanOrEqualToAnchor:v56];
    v92[7] = v55;
    v54 = [v82 leadingAnchor];
    v53 = [v86 trailingAnchor];
    v52 = [v54 constraintEqualToSystemSpacingAfterAnchor:v53 multiplier:2.0];
    v92[8] = v52;
    v51 = [v82 centerYAnchor];
    v50 = [(SFHighlightContactListCell *)v4 centerYAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v92[9] = v49;
    v21 = [v82 topAnchor];
    v22 = [v83 topAnchor];
    v23 = [v21 constraintGreaterThanOrEqualToAnchor:v22];
    v92[10] = v23;
    v24 = [v82 trailingAnchor];
    v25 = [v83 trailingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v92[11] = v26;
    v27 = [(SFHighlightContactListCell *)v4 heightAnchor];
    v28 = [v27 constraintGreaterThanOrEqualToConstant:44.0];
    v92[12] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:13];
    [v48 activateConstraints:v29];

    [(SFHighlightContactListCell *)v4 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v38 = objc_alloc(MEMORY[0x1E69DD250]);
    v94.origin.x = v31;
    v94.origin.y = v33;
    v94.size.width = v35;
    v94.size.height = v37;
    Height = CGRectGetHeight(v94);
    v40 = _SFOnePixel();
    v95.origin.x = v31;
    v95.origin.y = v33;
    v95.size.width = v35;
    v95.size.height = v37;
    Width = CGRectGetWidth(v95);
    v42 = [v38 initWithFrame:{0.0, Height - v40, Width, _SFOnePixel()}];
    separator = v4->_separator;
    v4->_separator = v42;

    [(UIView *)v4->_separator setAutoresizingMask:10];
    v44 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v4->_separator setBackgroundColor:v44];

    [(SFHighlightContactListCell *)v4 addSubview:v4->_separator];
    [(SFHighlightContactListCell *)v4 _updateMaskedCorners];
    v45 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel__didReceiveTap_];
    [(SFHighlightContactListCell *)v4 addGestureRecognizer:v45];

    v46 = v4;
    objc_destroyWeak(&v89);

    objc_destroyWeak(&location);
  }

  return v4;
}

void __46__SFHighlightContactListCell_initWithContact___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[61])
  {
    v6 = [MEMORY[0x1E695D148] viewControllerForContact:*(a1 + 32)];
    objc_initWeak(&location, v6);
    v7 = objc_alloc(MEMORY[0x1E69DC708]);
    v8 = MEMORY[0x1E69DC628];
    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __46__SFHighlightContactListCell_initWithContact___block_invoke_2;
    v17 = &unk_1E721C458;
    objc_copyWeak(&v18, &location);
    v9 = [v8 actionWithHandler:&v14];
    v10 = [v7 initWithBarButtonSystemItem:0 primaryAction:{v9, v14, v15, v16, v17}];
    v11 = [v6 navigationItem];
    [v11 setLeftBarButtonItem:v10];

    v12 = v5[61];
    v13 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v6];
    (*(v12 + 16))(v12, v13);

    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

void __46__SFHighlightContactListCell_initWithContact___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
}

- (void)setHighlighted:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = SFHighlightContactListCell;
  [(SFHighlightContactListCell *)&v6 setHighlighted:?];
  if (a3)
  {
    v5 = [MEMORY[0x1E69DC888] systemGray4Color];
    [(SFHighlightContactListCell *)self setBackgroundColor:v5];
  }

  else
  {
    [(SFHighlightContactListCell *)self setBackgroundColor:0];
  }
}

- (void)setFirstInList:(BOOL)a3
{
  if (self->_firstInList != a3)
  {
    self->_firstInList = a3;
    [(SFHighlightContactListCell *)self _updateMaskedCorners];
  }
}

- (void)setLastInList:(BOOL)a3
{
  if (self->_lastInList != a3)
  {
    self->_lastInList = a3;
    [(UIView *)self->_separator setHidden:?];

    [(SFHighlightContactListCell *)self _updateMaskedCorners];
  }
}

- (void)_updateMaskedCorners
{
  v2 = 3;
  if (!self->_firstInList)
  {
    v2 = 0;
  }

  if (self->_lastInList)
  {
    v3 = v2 | 0xC;
  }

  else
  {
    v3 = v2;
  }

  v4 = [(SFHighlightContactListCell *)self layer];
  [v4 setMaskedCorners:v3];
}

- (void)_didReceiveTap:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained cellDidReceiveTap:self];
}

- (SFHighlightContactListCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end